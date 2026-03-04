// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FunctionSyncConfigLambdaConflictHandlerConfig {
  /// ARN for the Lambda function to use as the Conflict Handler.
  final pulumi.Input<String>? lambdaConflictHandlerArn;

  /// Creates a new [FunctionSyncConfigLambdaConflictHandlerConfig].
  /// [lambdaConflictHandlerArn] ARN for the Lambda function to use as the Conflict Handler.
  FunctionSyncConfigLambdaConflictHandlerConfig({
    this.lambdaConflictHandlerArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lambdaConflictHandlerArn': ?lambdaConflictHandlerArn,
    };
  }

  factory FunctionSyncConfigLambdaConflictHandlerConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return FunctionSyncConfigLambdaConflictHandlerConfig(
      lambdaConflictHandlerArn: (() {
        final guardedValue = map['lambdaConflictHandlerArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
