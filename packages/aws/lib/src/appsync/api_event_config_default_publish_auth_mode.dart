// ignore_for_file: unused_element, unnecessary_cast

class ApiEventConfigDefaultPublishAuthMode {
  /// Type of authentication. Valid values: `API_KEY`, `AWS_IAM`, `AMAZON_COGNITO_USER_POOLS`, `OPENID_CONNECT`, `AWS_LAMBDA`.
  final String authType;

  /// Creates a new [ApiEventConfigDefaultPublishAuthMode].
  /// [authType] Type of authentication. Valid values: `API_KEY`, `AWS_IAM`, `AMAZON_COGNITO_USER_POOLS`, `OPENID_CONNECT`, `AWS_LAMBDA`.
  ApiEventConfigDefaultPublishAuthMode({
    required this.authType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authType'] = authType;
    return map;
  }

  factory ApiEventConfigDefaultPublishAuthMode.fromMap(
      Map<String, dynamic> map) {
    return ApiEventConfigDefaultPublishAuthMode(
      authType: map['authType'] as String,
    );
  }
}
