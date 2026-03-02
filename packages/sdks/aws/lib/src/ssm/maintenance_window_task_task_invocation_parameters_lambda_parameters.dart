// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MaintenanceWindowTaskTaskInvocationParametersLambdaParameters {
  /// Pass client-specific information to the Lambda function that you are invoking.
  final pulumi.Input<String>? clientContext;
  /// JSON to provide to your Lambda function as input.
  final pulumi.Input<String>? payload;
  /// Specify a Lambda function version or alias name.
  final pulumi.Input<String>? qualifier;

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

  factory MaintenanceWindowTaskTaskInvocationParametersLambdaParameters.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindowTaskTaskInvocationParametersLambdaParameters(
      clientContext: map['clientContext'] == null ? null : ((map['clientContext'] as String).input()).input(),
      payload: map['payload'] == null ? null : ((map['payload'] as String).input()).input(),
      qualifier: map['qualifier'] == null ? null : ((map['qualifier'] as String).input()).input(),
    );
  }
}

