// ignore_for_file: unused_element, unnecessary_cast

class ApiEventConfigDefaultSubscribeAuthMode {
  /// Type of authentication. Valid values: `API_KEY`, `AWS_IAM`, `AMAZON_COGNITO_USER_POOLS`, `OPENID_CONNECT`, `AWS_LAMBDA`.
  final String authType;

  /// Creates a new [ApiEventConfigDefaultSubscribeAuthMode].
  /// [authType] Type of authentication. Valid values: `API_KEY`, `AWS_IAM`, `AMAZON_COGNITO_USER_POOLS`, `OPENID_CONNECT`, `AWS_LAMBDA`.
  ApiEventConfigDefaultSubscribeAuthMode({required this.authType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'authType': authType};
  }

  factory ApiEventConfigDefaultSubscribeAuthMode.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApiEventConfigDefaultSubscribeAuthMode(
      authType: map['authType'] as String,
    );
  }
}
