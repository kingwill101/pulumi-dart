// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiEventConfigDefaultSubscribeAuthMode {
  /// Type of authentication. Valid values: `API_KEY`, `AWS_IAM`, `AMAZON_COGNITO_USER_POOLS`, `OPENID_CONNECT`, `AWS_LAMBDA`.
  final pulumi.Input<String> authType;

  /// Creates a new [ApiEventConfigDefaultSubscribeAuthMode].
  /// [authType] Type of authentication. Valid values: `API_KEY`, `AWS_IAM`, `AMAZON_COGNITO_USER_POOLS`, `OPENID_CONNECT`, `AWS_LAMBDA`.
  const ApiEventConfigDefaultSubscribeAuthMode({
    required this.authType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authType': authType,
    };
  }

  factory ApiEventConfigDefaultSubscribeAuthMode.fromMap(Map<String, dynamic> map) {
    return ApiEventConfigDefaultSubscribeAuthMode(
      authType: pulumi.Input.fromValue(map['authType'] as String),
    );
  }
}

