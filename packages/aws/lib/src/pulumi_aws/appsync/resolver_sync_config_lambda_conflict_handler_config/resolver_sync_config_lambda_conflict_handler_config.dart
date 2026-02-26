// ignore_for_file: unused_element, unnecessary_cast

class ResolverSyncConfigLambdaConflictHandlerConfig {
  /// ARN for the Lambda function to use as the Conflict Handler.
  final String? lambdaConflictHandlerArn;

  ResolverSyncConfigLambdaConflictHandlerConfig({
    this.lambdaConflictHandlerArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final lambdaConflictHandlerArnValue = lambdaConflictHandlerArn;
    if (lambdaConflictHandlerArnValue != null) {
      map['lambdaConflictHandlerArn'] = lambdaConflictHandlerArnValue;
    }
    return map;
  }

  factory ResolverSyncConfigLambdaConflictHandlerConfig.fromMap(
      Map<String, dynamic> map) {
    return ResolverSyncConfigLambdaConflictHandlerConfig(
      lambdaConflictHandlerArn: map['lambdaConflictHandlerArn'] == null
          ? null
          : map['lambdaConflictHandlerArn'] as String,
    );
  }
}
