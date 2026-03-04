// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Environment
class EnvironmentResponse {
  /// Environment variable key-value pairs. For more information, see [Using Lambda environment variables](https://docs.aws.amazon.com/lambda/latest/dg/configuration-envvars.html).
  final pulumi.Input<Map<String, String>>? variables;

  /// Creates a new [EnvironmentResponse].
  /// [variables] Environment variable key-value pairs. For more information, see [Using Lambda environment variables](https://docs.aws.amazon.com/lambda/latest/dg/configuration-envvars.html).
  EnvironmentResponse({this.variables});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'variables': ?variables};
  }

  factory EnvironmentResponse.fromMap(Map<String, dynamic> map) {
    return EnvironmentResponse(
      variables: (() {
        final guardedValue = map['variables'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
