import 'dart:async';
import 'dart:convert';

import 'package:pulumi/pulumi.dart';

class _Config {
  _Config(this._deployment);

  final Deployment _deployment;

  String _fullKey(String key) {
    if (key.contains(':')) {
      return key;
    }
    return '${_deployment.projectName}:$key';
  }

  void _warnIfSecret(String key, String nonSecretApi, String secretApi) {
    if (_deployment.isConfigSecret(key)) {
      unawaited(
        _deployment.logger.warn(
          "Configuration '${_fullKey(key)}' value is a secret; use `$secretApi` instead of `$nonSecretApi`",
        ),
      );
    }
  }

  String? get(String key) {
    _warnIfSecret(key, 'Get', 'GetSecret');
    return _deployment.getConfig(key);
  }

  String require(String key) {
    _warnIfSecret(key, 'Require', 'RequireSecret');
    final value = _deployment.getConfig(key);
    if (value == null) {
      throw Exception("Missing required configuration variable '$key'");
    }
    return value;
  }

  String? getSecret(String key) => _deployment.getConfig(key);

  String requireSecret(String key) {
    final value = _deployment.getConfig(key);
    if (value == null) {
      throw Exception("Missing required configuration variable '$key'");
    }
    return value;
  }

  bool? getBoolean(String key) {
    _warnIfSecret(key, 'GetBoolean', 'GetSecretBoolean');
    final value = _deployment.getConfig(key);
    if (value == null) {
      return null;
    }
    return _parseBool(key, value);
  }

  bool requireBoolean(String key) {
    _warnIfSecret(key, 'RequireBoolean', 'RequireSecretBoolean');
    final value = _deployment.getConfig(key);
    if (value == null) {
      throw Exception("Missing required configuration variable '$key'");
    }
    return _parseBool(key, value);
  }

  bool? getSecretBoolean(String key) {
    final value = _deployment.getConfig(key);
    if (value == null) {
      return null;
    }
    return _parseBool(key, value);
  }

  bool requireSecretBoolean(String key) {
    final value = _deployment.getConfig(key);
    if (value == null) {
      throw Exception("Missing required configuration variable '$key'");
    }
    return _parseBool(key, value);
  }

  int? getInt32(String key) {
    _warnIfSecret(key, 'GetInt32', 'GetSecretInt32');
    final value = _deployment.getConfig(key);
    if (value == null) {
      return null;
    }
    return _parseInt32(key, value);
  }

  int requireInt32(String key) {
    _warnIfSecret(key, 'RequireInt32', 'RequireSecretInt32');
    final value = _deployment.getConfig(key);
    if (value == null) {
      throw Exception("Missing required configuration variable '$key'");
    }
    return _parseInt32(key, value);
  }

  int? getSecretInt32(String key) {
    final value = _deployment.getConfig(key);
    if (value == null) {
      return null;
    }
    return _parseInt32(key, value);
  }

  int requireSecretInt32(String key) {
    final value = _deployment.getConfig(key);
    if (value == null) {
      throw Exception("Missing required configuration variable '$key'");
    }
    return _parseInt32(key, value);
  }

  double? getDouble(String key) {
    _warnIfSecret(key, 'GetDouble', 'GetSecretDouble');
    final value = _deployment.getConfig(key);
    if (value == null) {
      return null;
    }
    return _parseDouble(key, value);
  }

  double requireDouble(String key) {
    _warnIfSecret(key, 'RequireDouble', 'RequireSecretDouble');
    final value = _deployment.getConfig(key);
    if (value == null) {
      throw Exception("Missing required configuration variable '$key'");
    }
    return _parseDouble(key, value);
  }

  double? getSecretDouble(String key) {
    final value = _deployment.getConfig(key);
    if (value == null) {
      return null;
    }
    return _parseDouble(key, value);
  }

  double requireSecretDouble(String key) {
    final value = _deployment.getConfig(key);
    if (value == null) {
      throw Exception("Missing required configuration variable '$key'");
    }
    return _parseDouble(key, value);
  }

  Object? getObject(String key) {
    _warnIfSecret(key, 'GetObject', 'GetSecretObject');
    final value = _deployment.getConfig(key);
    if (value == null) {
      return null;
    }
    return _parseObject(key, value);
  }

  Object requireObject(String key) {
    _warnIfSecret(key, 'RequireObject', 'RequireSecretObject');
    final value = _deployment.getConfig(key);
    if (value == null) {
      throw Exception("Missing required configuration variable '$key'");
    }
    return _parseObject(key, value);
  }

  Object? getSecretObject(String key) {
    final value = _deployment.getConfig(key);
    if (value == null) {
      return null;
    }
    return _parseObject(key, value);
  }

  Object requireSecretObject(String key) {
    final value = _deployment.getConfig(key);
    if (value == null) {
      throw Exception("Missing required configuration variable '$key'");
    }
    return _parseObject(key, value);
  }

  bool _parseBool(String key, String value) {
    final lowered = value.toLowerCase();
    if (lowered == 'true') {
      return true;
    }
    if (lowered == 'false') {
      return false;
    }
    throw Exception(
      "Configuration variable '$key' value '$value' is not a valid bool",
    );
  }

  int _parseInt32(String key, String value) {
    try {
      return int.parse(value);
    } catch (_) {
      throw Exception(
        "Configuration variable '$key' value '$value' is not a valid int",
      );
    }
  }

  double _parseDouble(String key, String value) {
    try {
      return double.parse(value);
    } catch (_) {
      throw Exception(
        "Configuration variable '$key' value '$value' is not a valid double",
      );
    }
  }

  Object _parseObject(String key, String value) {
    try {
      return jsonDecode(value);
    } catch (_) {
      throw Exception(
        "Configuration variable '$key' value '$value' is not a valid JSON object",
      );
    }
  }
}

Future<void> main() async {
  await DeploymentImpl.run(() {
    final config = _Config(DeploymentImpl.instance);

    config.get('plainstr1');
    config.require('plainstr2');
    config.getSecret('plainstr3');
    config.requireSecret('plainstr4');

    config.getBoolean('plainbool1');
    config.requireBoolean('plainbool2');
    config.getSecretBoolean('plainbool3');
    config.requireSecretBoolean('plainbool4');

    config.getInt32('plainint1');
    config.requireInt32('plainint2');
    config.getSecretInt32('plainint3');
    config.requireSecretInt32('plainint4');

    config.getDouble('plaindouble1');
    config.requireDouble('plaindouble2');
    config.getSecretDouble('plaindouble3');
    config.requireSecretDouble('plaindouble4');

    config.getObject('plainobj1');
    config.requireObject('plainobj2');
    config.getSecretObject('plainobj3');
    config.requireSecretObject('plainobj4');

    config.get('str1');
    config.require('str2');
    config.getSecret('str3');
    config.requireSecret('str4');

    config.getBoolean('bool1');
    config.requireBoolean('bool2');
    config.getSecretBoolean('bool3');
    config.requireSecretBoolean('bool4');

    config.getInt32('int1');
    config.requireInt32('int2');
    config.getSecretInt32('int3');
    config.requireSecretInt32('int4');

    config.getDouble('double1');
    config.requireDouble('double2');
    config.getSecretDouble('double3');
    config.requireSecretDouble('double4');

    config.getObject('obj1');
    config.requireObject('obj2');
    config.getSecretObject('obj3');
    config.requireSecretObject('obj4');

    config.getObject('parent1');
    config.requireObject('parent2');
    config.getSecretObject('parent1');
    config.requireSecretObject('parent2');

    config.getObject('names1');
    config.requireObject('names2');
    config.getSecretObject('names1');
    config.requireSecretObject('names2');
  });
}
