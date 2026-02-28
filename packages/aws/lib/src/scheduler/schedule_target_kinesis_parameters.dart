// ignore_for_file: unused_element, unnecessary_cast

class ScheduleTargetKinesisParameters {
  /// Specifies the shard to which EventBridge Scheduler sends the event. Up to 256 characters.
  final String partitionKey;

  /// Creates a new [ScheduleTargetKinesisParameters].
  /// [partitionKey] Specifies the shard to which EventBridge Scheduler sends the event. Up to 256 characters.
  ScheduleTargetKinesisParameters({
    required this.partitionKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['partitionKey'] = partitionKey;
    return map;
  }

  factory ScheduleTargetKinesisParameters.fromMap(Map<String, dynamic> map) {
    return ScheduleTargetKinesisParameters(
      partitionKey: map['partitionKey'] as String,
    );
  }
}
