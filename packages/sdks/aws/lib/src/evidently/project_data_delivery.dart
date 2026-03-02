// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_data_delivery_cloudwatch_logs.dart';
import 'project_data_delivery_s3_destination.dart';

class ProjectDataDelivery {
  /// A block that defines the CloudWatch Log Group that stores the evaluation events. See below.
  final pulumi.Input<ProjectDataDeliveryCloudwatchLogs>? cloudwatchLogs;
  /// A block that defines the S3 bucket and prefix that stores the evaluation events. See below.
  final pulumi.Input<ProjectDataDeliveryS3Destination>? s3Destination;

  /// Creates a new [ProjectDataDelivery].
  /// [cloudwatchLogs] A block that defines the CloudWatch Log Group that stores the evaluation events. See below.
  /// [s3Destination] A block that defines the S3 bucket and prefix that stores the evaluation events. See below.
  ProjectDataDelivery({
    this.cloudwatchLogs,
    this.s3Destination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudwatchLogs': ?pulumi.Input.mapOptionalInputValue<ProjectDataDeliveryCloudwatchLogs, Map<String, dynamic>>(cloudwatchLogs, (value) => value.toMap()),
      's3Destination': ?pulumi.Input.mapOptionalInputValue<ProjectDataDeliveryS3Destination, Map<String, dynamic>>(s3Destination, (value) => value.toMap()),
    };
  }

  factory ProjectDataDelivery.fromMap(Map<String, dynamic> map) {
    return ProjectDataDelivery(
      cloudwatchLogs: map['cloudwatchLogs'] == null ? null : (ProjectDataDeliveryCloudwatchLogs.fromMap((map['cloudwatchLogs'] as Map).cast<String, dynamic>())).input(),
      s3Destination: map['s3Destination'] == null ? null : (ProjectDataDeliveryS3Destination.fromMap((map['s3Destination'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

