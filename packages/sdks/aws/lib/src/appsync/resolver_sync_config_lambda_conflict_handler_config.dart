// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResolverSyncConfigLambdaConflictHandlerConfig {
  /// ARN for the Lambda function to use as the Conflict Handler.
  final pulumi.Input<String>? lambdaConflictHandlerArn;

  /// Creates a new [ResolverSyncConfigLambdaConflictHandlerConfig].
  /// [lambdaConflictHandlerArn] ARN for the Lambda function to use as the Conflict Handler.
  ResolverSyncConfigLambdaConflictHandlerConfig({
    this.lambdaConflictHandlerArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lambdaConflictHandlerArn': ?lambdaConflictHandlerArn,
    };
  }

  factory ResolverSyncConfigLambdaConflictHandlerConfig.fromMap(Map<String, dynamic> map) {
    return ResolverSyncConfigLambdaConflictHandlerConfig(
      lambdaConflictHandlerArn: map['lambdaConflictHandlerArn'] == null ? null : ((map['lambdaConflictHandlerArn'] as String).input()).input(),
    );
  }
}

