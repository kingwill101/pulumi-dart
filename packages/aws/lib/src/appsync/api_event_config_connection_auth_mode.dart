// ignore_for_file: unused_element, unnecessary_cast

class ApiEventConfigConnectionAuthMode {
  /// Type of authentication. Valid values: `API_KEY`, `AWS_IAM`, `AMAZON_COGNITO_USER_POOLS`, `OPENID_CONNECT`, `AWS_LAMBDA`.
  final String authType;

  /// Creates a new [ApiEventConfigConnectionAuthMode].
  /// [authType] Type of authentication. Valid values: `API_KEY`, `AWS_IAM`, `AMAZON_COGNITO_USER_POOLS`, `OPENID_CONNECT`, `AWS_LAMBDA`.
  ApiEventConfigConnectionAuthMode({
    required this.authType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authType'] = authType;
    return map;
  }

  factory ApiEventConfigConnectionAuthMode.fromMap(Map<String, dynamic> map) {
    return ApiEventConfigConnectionAuthMode(
      authType: map['authType'] as String,
    );
  }
}
