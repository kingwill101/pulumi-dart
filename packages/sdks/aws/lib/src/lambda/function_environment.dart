// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FunctionEnvironment {
  /// Map of environment variables available to your Lambda function during execution.
  final pulumi.Input<Map<String, String>?>? variables;

  /// Creates a new [FunctionEnvironment].
  /// [variables] Map of environment variables available to your Lambda function during execution.
  const FunctionEnvironment({
    this.variables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'variables': ?variables,
    };
  }

  factory FunctionEnvironment.fromMap(Map<String, dynamic> map) {
    return FunctionEnvironment(
      variables: (() { final guardedValue = map['variables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
