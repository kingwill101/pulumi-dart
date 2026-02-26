// ignore_for_file: unused_element, unnecessary_cast

class ApiEventConfigDefaultSubscribeAuthMode {
  /// Type of authentication. Valid values: `API_KEY`, `AWS_IAM`, `AMAZON_COGNITO_USER_POOLS`, `OPENID_CONNECT`, `AWS_LAMBDA`.
  final String authType;

  ApiEventConfigDefaultSubscribeAuthMode({
    required this.authType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authType'] = authType;
    return map;
  }

  factory ApiEventConfigDefaultSubscribeAuthMode.fromMap(
      Map<String, dynamic> map) {
    return ApiEventConfigDefaultSubscribeAuthMode(
      authType: map['authType'] as String,
    );
  }
}
