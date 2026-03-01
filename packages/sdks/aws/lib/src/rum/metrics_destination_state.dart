// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MetricsDestination resources.
class MetricsDestinationState {
  /// The name of the CloudWatch RUM app monitor that will send the metrics.
  final pulumi.Input<String>? appMonitorName;
  /// Defines the destination to send the metrics to. Valid values are `CloudWatch` and `Evidently`. If you specify `Evidently`, you must also specify the ARN of the CloudWatchEvidently experiment that is to be the destination and an IAM role that has permission to write to the experiment.
  final pulumi.Input<String>? destination;
  /// Use this parameter only if Destination is Evidently. This parameter specifies the ARN of the Evidently experiment that will receive the extended metrics.
  final pulumi.Input<String>? destinationArn;
  /// This parameter is required if Destination is Evidently. If Destination is CloudWatch, do not use this parameter.
  final pulumi.Input<String>? iamRoleArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [MetricsDestinationState].
  /// [appMonitorName] The name of the CloudWatch RUM app monitor that will send the metrics.
  /// [destination] Defines the destination to send the metrics to. Valid values are `CloudWatch` and `Evidently`. If you specify `Evidently`, you must also specify the ARN of the CloudWatchEvidently experiment that is to be the destination and an IAM role that has permission to write to the experiment.
  /// [destinationArn] Use this parameter only if Destination is Evidently. This parameter specifies the ARN of the Evidently experiment that will receive the extended metrics.
  /// [iamRoleArn] This parameter is required if Destination is Evidently. If Destination is CloudWatch, do not use this parameter.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  MetricsDestinationState({
    pulumi.Output<String>? appMonitorName,
    pulumi.Output<String>? destination,
    pulumi.Output<String>? destinationArn,
    pulumi.Output<String>? iamRoleArn,
    pulumi.Output<String>? region,
  }) :
      appMonitorName = pulumi.Input.asOptionalInput<String>(appMonitorName),
      destination = pulumi.Input.asOptionalInput<String>(destination),
      destinationArn = pulumi.Input.asOptionalInput<String>(destinationArn),
      iamRoleArn = pulumi.Input.asOptionalInput<String>(iamRoleArn),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appMonitorName': ?appMonitorName,
      'destination': ?destination,
      'destinationArn': ?destinationArn,
      'iamRoleArn': ?iamRoleArn,
      'region': ?region,
    };
  }

  factory MetricsDestinationState.fromMap(Map<String, dynamic> map) {
    return MetricsDestinationState(
      appMonitorName: map['appMonitorName'] == null ? null : pulumi.Output.create<String>(map['appMonitorName'] as String),
      destination: map['destination'] == null ? null : pulumi.Output.create<String>(map['destination'] as String),
      destinationArn: map['destinationArn'] == null ? null : pulumi.Output.create<String>(map['destinationArn'] as String),
      iamRoleArn: map['iamRoleArn'] == null ? null : pulumi.Output.create<String>(map['iamRoleArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

