// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiEventConfigDefaultPublishAuthMode {
  /// Type of authentication. Valid values: `API_KEY`, `AWS_IAM`, `AMAZON_COGNITO_USER_POOLS`, `OPENID_CONNECT`, `AWS_LAMBDA`.
  final pulumi.Input<String> authType;

  /// Creates a new [ApiEventConfigDefaultPublishAuthMode].
  /// [authType] Type of authentication. Valid values: `API_KEY`, `AWS_IAM`, `AMAZON_COGNITO_USER_POOLS`, `OPENID_CONNECT`, `AWS_LAMBDA`.
  ApiEventConfigDefaultPublishAuthMode({required this.authType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'authType': authType};
  }

  factory ApiEventConfigDefaultPublishAuthMode.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApiEventConfigDefaultPublishAuthMode(
      authType: pulumi.Input.fromValue(map['authType'] as String),
    );
  }
}
