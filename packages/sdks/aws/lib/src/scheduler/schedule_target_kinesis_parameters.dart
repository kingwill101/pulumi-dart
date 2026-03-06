// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScheduleTargetKinesisParameters {
  /// Specifies the shard to which EventBridge Scheduler sends the event. Up to 256 characters.
  final pulumi.Input<String> partitionKey;

  /// Creates a new [ScheduleTargetKinesisParameters].
  /// [partitionKey] Specifies the shard to which EventBridge Scheduler sends the event. Up to 256 characters.
  const ScheduleTargetKinesisParameters({
    required this.partitionKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partitionKey': partitionKey,
    };
  }

  factory ScheduleTargetKinesisParameters.fromMap(Map<String, dynamic> map) {
    return ScheduleTargetKinesisParameters(
      partitionKey: pulumi.Input.fromValue(map['partitionKey'] as String),
    );
  }
}

