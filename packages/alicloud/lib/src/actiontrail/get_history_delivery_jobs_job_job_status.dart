// ignore_for_file: unused_element, unnecessary_cast


class GetHistoryDeliveryJobsJobJobStatus {
  /// The region of the delivery job.
  final String region;
  /// The status of the task. Valid values: `0`, `1`, `2`, `3`. `0`: The task is initializing. `1`: The task is delivering historical events. `2`: The delivery of historical events is complete. `3`: The task fails.
  final int status;

  /// Creates a new [GetHistoryDeliveryJobsJobJobStatus].
  /// [region] The region of the delivery job.
  /// [status] The status of the task. Valid values: `0`, `1`, `2`, `3`. `0`: The task is initializing. `1`: The task is delivering historical events. `2`: The delivery of historical events is complete. `3`: The task fails.
  GetHistoryDeliveryJobsJobJobStatus({
    required this.region,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': region,
      'status': status,
    };
  }

  factory GetHistoryDeliveryJobsJobJobStatus.fromMap(Map<String, dynamic> map) {
    return GetHistoryDeliveryJobsJobJobStatus(
      region: map['region'] as String,
      status: map['status'] as int,
    );
  }
}

