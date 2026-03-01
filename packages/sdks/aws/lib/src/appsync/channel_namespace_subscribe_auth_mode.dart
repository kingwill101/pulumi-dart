// ignore_for_file: unused_element, unnecessary_cast


class ChannelNamespaceSubscribeAuthMode {
  /// Type of authentication. Valid values: `API_KEY`, `AWS_IAM`, `AMAZON_COGNITO_USER_POOLS`, `OPENID_CONNECT`, `AWS_LAMBDA`.
  final String authType;

  /// Creates a new [ChannelNamespaceSubscribeAuthMode].
  /// [authType] Type of authentication. Valid values: `API_KEY`, `AWS_IAM`, `AMAZON_COGNITO_USER_POOLS`, `OPENID_CONNECT`, `AWS_LAMBDA`.
  ChannelNamespaceSubscribeAuthMode({
    required this.authType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authType': authType,
    };
  }

  factory ChannelNamespaceSubscribeAuthMode.fromMap(Map<String, dynamic> map) {
    return ChannelNamespaceSubscribeAuthMode(
      authType: map['authType'] as String,
    );
  }
}

