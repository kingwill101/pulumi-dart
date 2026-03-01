// ignore_for_file: unused_element, unnecessary_cast

class MaintenanceWindowTaskTaskInvocationParametersLambdaParameters {
  /// Pass client-specific information to the Lambda function that you are invoking.
  final String? clientContext;

  /// JSON to provide to your Lambda function as input.
  final String? payload;

  /// Specify a Lambda function version or alias name.
  final String? qualifier;

  /// Creates a new [MaintenanceWindowTaskTaskInvocationParametersLambdaParameters].
  /// [clientContext] Pass client-specific information to the Lambda function that you are invoking.
  /// [payload] JSON to provide to your Lambda function as input.
  /// [qualifier] Specify a Lambda function version or alias name.
  MaintenanceWindowTaskTaskInvocationParametersLambdaParameters({
    this.clientContext,
    this.payload,
    this.qualifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientContext': ?clientContext,
      'payload': ?payload,
      'qualifier': ?qualifier,
    };
  }

  factory MaintenanceWindowTaskTaskInvocationParametersLambdaParameters.fromMap(
    Map<String, dynamic> map,
  ) {
    return MaintenanceWindowTaskTaskInvocationParametersLambdaParameters(
      clientContext: map['clientContext'] == null
          ? null
          : map['clientContext'] as String,
      payload: map['payload'] == null ? null : map['payload'] as String,
      qualifier: map['qualifier'] == null ? null : map['qualifier'] as String,
    );
  }
}
