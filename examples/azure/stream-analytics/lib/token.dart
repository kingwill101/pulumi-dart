import 'dart:convert';

import 'package:crypto/crypto.dart';

String createSharedAccessToken(String uri, String saName, String saKey) {
  if (uri.isEmpty || saName.isEmpty || saKey.isEmpty) {
    throw ArgumentError('Missing required parameter.');
  }

  final encoded = Uri.encodeComponent(uri);
  const weekInSeconds = 60 * 60 * 24 * 7;
  final ttl =
      (DateTime.now().toUtc().millisecondsSinceEpoch ~/ 1000) + weekInSeconds;
  final signature = '$encoded\n$ttl';
  final hash = Hmac(sha256, utf8.encode(saKey)).convert(utf8.encode(signature));

  return 'SharedAccessSignature sr=$encoded&sig=${Uri.encodeComponent(base64.encode(hash.bytes))}&se=$ttl&skn=$saName';
}
