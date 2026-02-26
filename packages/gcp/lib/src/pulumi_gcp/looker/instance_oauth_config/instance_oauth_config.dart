// ignore_for_file: unused_element, unnecessary_cast

class InstanceOauthConfig {
  /// The client ID for the Oauth config.
  final String clientId;

  /// The client secret for the Oauth config.
  final String clientSecret;

  InstanceOauthConfig({
    required this.clientId,
    required this.clientSecret,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clientId'] = clientId;
    map['clientSecret'] = clientSecret;
    return map;
  }

  factory InstanceOauthConfig.fromMap(Map<String, dynamic> map) {
    return InstanceOauthConfig(
      clientId: map['clientId'] as String,
      clientSecret: map['clientSecret'] as String,
    );
  }
}
