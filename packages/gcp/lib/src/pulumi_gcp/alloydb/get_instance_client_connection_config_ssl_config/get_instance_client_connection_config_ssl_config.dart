// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceClientConnectionConfigSslConfig {
  /// SSL mode. Specifies client-server SSL/TLS connection behavior. Possible values: ["ENCRYPTED_ONLY", "ALLOW_UNENCRYPTED_AND_ENCRYPTED"]
  final String sslMode;

  GetInstanceClientConnectionConfigSslConfig({
    required this.sslMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sslMode'] = sslMode;
    return map;
  }

  factory GetInstanceClientConnectionConfigSslConfig.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceClientConnectionConfigSslConfig(
      sslMode: map['sslMode'] as String,
    );
  }
}
