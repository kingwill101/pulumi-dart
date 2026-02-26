// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for MetricsDestination.
class MetricsDestinationArgs {
  /// The name of the CloudWatch RUM app monitor that will send the metrics.
  final Input<String> appMonitorName;

  /// Defines the destination to send the metrics to. Valid values are `CloudWatch` and `Evidently`. If you specify `Evidently`, you must also specify the ARN of the CloudWatchEvidently experiment that is to be the destination and an IAM role that has permission to write to the experiment.
  final Input<String> destination;

  /// Use this parameter only if Destination is Evidently. This parameter specifies the ARN of the Evidently experiment that will receive the extended metrics.
  final Input<String>? destinationArn;

  /// This parameter is required if Destination is Evidently. If Destination is CloudWatch, do not use this parameter.
  final Input<String>? iamRoleArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  MetricsDestinationArgs({
    required this.appMonitorName,
    required this.destination,
    this.destinationArn,
    this.iamRoleArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appMonitorName'] = appMonitorName;
    map['destination'] = destination;
    final destinationArnValue = destinationArn;
    if (destinationArnValue != null) {
      map['destinationArn'] = destinationArnValue;
    }
    final iamRoleArnValue = iamRoleArn;
    if (iamRoleArnValue != null) {
      map['iamRoleArn'] = iamRoleArnValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory MetricsDestinationArgs.fromMap(Map<String, dynamic> map) {
    return MetricsDestinationArgs(
      appMonitorName: Input.asInput<String>(map['appMonitorName']),
      destination: Input.asInput<String>(map['destination']),
      destinationArn: Input.asOptionalInput<String>(map['destinationArn']),
      iamRoleArn: Input.asOptionalInput<String>(map['iamRoleArn']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
