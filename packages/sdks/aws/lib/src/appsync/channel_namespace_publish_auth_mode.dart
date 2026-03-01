// ignore_for_file: unused_element, unnecessary_cast


class ChannelNamespacePublishAuthMode {
  /// Type of authentication. Valid values: `API_KEY`, `AWS_IAM`, `AMAZON_COGNITO_USER_POOLS`, `OPENID_CONNECT`, `AWS_LAMBDA`.
  final String authType;

  /// Creates a new [ChannelNamespacePublishAuthMode].
  /// [authType] Type of authentication. Valid values: `API_KEY`, `AWS_IAM`, `AMAZON_COGNITO_USER_POOLS`, `OPENID_CONNECT`, `AWS_LAMBDA`.
  ChannelNamespacePublishAuthMode({
    required this.authType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authType': authType,
    };
  }

  factory ChannelNamespacePublishAuthMode.fromMap(Map<String, dynamic> map) {
    return ChannelNamespacePublishAuthMode(
      authType: map['authType'] as String,
    );
  }
}

