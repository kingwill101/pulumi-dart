// ignore_for_file: unused_element, unnecessary_cast

class FunctionSyncConfigLambdaConflictHandlerConfig {
  /// ARN for the Lambda function to use as the Conflict Handler.
  final String? lambdaConflictHandlerArn;

  /// Creates a new [FunctionSyncConfigLambdaConflictHandlerConfig].
  /// [lambdaConflictHandlerArn] ARN for the Lambda function to use as the Conflict Handler.
  FunctionSyncConfigLambdaConflictHandlerConfig({
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

  factory FunctionSyncConfigLambdaConflictHandlerConfig.fromMap(
      Map<String, dynamic> map) {
    return FunctionSyncConfigLambdaConflictHandlerConfig(
      lambdaConflictHandlerArn: map['lambdaConflictHandlerArn'] == null
          ? null
          : map['lambdaConflictHandlerArn'] as String,
    );
  }
}
