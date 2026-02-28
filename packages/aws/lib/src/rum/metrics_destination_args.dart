// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rum_metrics_destination_metrics_destination_args_doc}
/// The set of arguments for MetricsDestination.
/// {@endtemplate}
/// {@macro pulumi_rum_metrics_destination_metrics_destination_args_doc}
class MetricsDestinationArgs {
  /// The name of the CloudWatch RUM app monitor that will send the metrics.
  final pulumi.Input<String> appMonitorName;
  /// Defines the destination to send the metrics to. Valid values are `CloudWatch` and `Evidently`. If you specify `Evidently`, you must also specify the ARN of the CloudWatchEvidently experiment that is to be the destination and an IAM role that has permission to write to the experiment.
  final pulumi.Input<String> destination;
  /// Use this parameter only if Destination is Evidently. This parameter specifies the ARN of the Evidently experiment that will receive the extended metrics.
  final pulumi.Input<String>? destinationArn;
  /// This parameter is required if Destination is Evidently. If Destination is CloudWatch, do not use this parameter.
  final pulumi.Input<String>? iamRoleArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [MetricsDestinationArgs].
  /// [appMonitorName] The name of the CloudWatch RUM app monitor that will send the metrics.
  /// [destination] Defines the destination to send the metrics to. Valid values are `CloudWatch` and `Evidently`. If you specify `Evidently`, you must also specify the ARN of the CloudWatchEvidently experiment that is to be the destination and an IAM role that has permission to write to the experiment.
  /// [destinationArn] Use this parameter only if Destination is Evidently. This parameter specifies the ARN of the Evidently experiment that will receive the extended metrics.
  /// [iamRoleArn] This parameter is required if Destination is Evidently. If Destination is CloudWatch, do not use this parameter.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  MetricsDestinationArgs({
    required String appMonitorName,
    required String destination,
    String? destinationArn,
    String? iamRoleArn,
    String? region,
  }) :
      appMonitorName = pulumi.Input.asInput<String>(appMonitorName),
      destination = pulumi.Input.asInput<String>(destination),
      destinationArn = pulumi.Input.asOptionalInput<String>(destinationArn),
      iamRoleArn = pulumi.Input.asOptionalInput<String>(iamRoleArn),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appMonitorName': appMonitorName,
      'destination': destination,
      'destinationArn': ?destinationArn,
      'iamRoleArn': ?iamRoleArn,
      'region': ?region,
    };
  }

  factory MetricsDestinationArgs.fromMap(Map<String, dynamic> map) {
    return MetricsDestinationArgs(
      appMonitorName: map['appMonitorName'] as String,
      destination: map['destination'] as String,
      destinationArn: map['destinationArn'] == null ? null : map['destinationArn'] as String,
      iamRoleArn: map['iamRoleArn'] == null ? null : map['iamRoleArn'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

