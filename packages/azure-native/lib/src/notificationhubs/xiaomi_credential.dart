// ignore_for_file: unused_element, unnecessary_cast


/// Description of a NotificationHub XiaomiCredential.
class XiaomiCredential {
  /// Gets or sets app secret.
  final String? appSecret;
  /// Gets or sets xiaomi service endpoint.
  final String? endpoint;

  /// Creates a new [XiaomiCredential].
  /// [appSecret] Gets or sets app secret.
  /// [endpoint] Gets or sets xiaomi service endpoint.
  XiaomiCredential({
    this.appSecret,
    this.endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appSecret': ?appSecret,
      'endpoint': ?endpoint,
    };
  }

  factory XiaomiCredential.fromMap(Map<String, dynamic> map) {
    return XiaomiCredential(
      appSecret: map['appSecret'] == null ? null : map['appSecret'] as String,
      endpoint: map['endpoint'] == null ? null : map['endpoint'] as String,
    );
  }
}

