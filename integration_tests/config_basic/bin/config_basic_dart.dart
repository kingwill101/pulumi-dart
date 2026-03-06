import 'dart:convert';

import 'package:pulumi/pulumi.dart';

void _assert(bool condition, String message) {
  if (!condition) {
    throw Exception(message);
  }
}

Future<void> main() async {
  await DeploymentImpl.run(() {
    final deployment = DeploymentImpl.instance;

    String require(String key) {
      final value = deployment.getConfig(key);
      if (value == null) {
        throw Exception("Missing required config '$key'");
      }
      return value;
    }

    void requireEquals(String key, String expected) {
      final actual = require(key);
      if (actual != expected) {
        throw Exception("'$key' not the expected value; got $actual");
      }
    }

    requireEquals('aConfigValue', 'this value is a value');
    requireEquals('bEncryptedSecret', 'this super secret is encrypted');
    requireEquals('outer', '{"inner":"value"}');
    requireEquals('names', '["a","b","c","super secret name"]');
    requireEquals('servers', '[{"host":"example","port":80}]');
    requireEquals('a', '{"b":[{"c":true},{"c":false}]}');
    requireEquals('tokens', '["shh"]');
    requireEquals('foo', '{"bar":"don\'t tell"}');

    final outer = jsonDecode(require('outer')) as Map<String, dynamic>;
    _assert(outer.length == 1 && outer['inner'] == 'value',
        "'outer' not the expected object value");

    final names =
        (jsonDecode(require('names')) as List<dynamic>).cast<String>();
    _assert(
      names.length == 4 &&
          names[0] == 'a' &&
          names[1] == 'b' &&
          names[2] == 'c' &&
          names[3] == 'super secret name',
      "'names' not the expected object value",
    );

    final servers = jsonDecode(require('servers')) as List<dynamic>;
    _assert(servers.length == 1, "'servers' not the expected object value");
    final server = servers[0] as Map<String, dynamic>;
    _assert(server['host'] == 'example' && server['port'] == 80,
        "'servers' not the expected object value");

    final a = jsonDecode(require('a')) as Map<String, dynamic>;
    final b = a['b'] as List<dynamic>;
    _assert(b.length == 2, "'a' not the expected object value");
    _assert((b[0] as Map<String, dynamic>)['c'] == true,
        "'a' not the expected object value");
    _assert((b[1] as Map<String, dynamic>)['c'] == false,
        "'a' not the expected object value");

    final tokens =
        (jsonDecode(require('tokens')) as List<dynamic>).cast<String>();
    _assert(tokens.length == 1 && tokens[0] == 'shh',
        "'tokens' not the expected object value");

    final foo = jsonDecode(require('foo')) as Map<String, dynamic>;
    _assert(foo.length == 1 && foo['bar'] == "don't tell",
        "'foo' not the expected object value");
  });
}
