// ignore_for_file: unused_element, unnecessary_cast

/// Usage metrics represent approximate total resources consumed by a workload.
class UsageMetricsResponse {
  /// Optional. Accelerator type being used, if any
  final String acceleratorType;

  /// Optional. Accelerator usage in (milliAccelerator x seconds) (see Dataproc Serverless pricing (https://cloud.google.com/dataproc-serverless/pricing)).
  final String milliAcceleratorSeconds;

  /// Optional. DCU (Dataproc Compute Units) usage in (milliDCU x seconds) (see Dataproc Serverless pricing (https://cloud.google.com/dataproc-serverless/pricing)).
  final String milliDcuSeconds;

  /// Optional. Shuffle storage usage in (GB x seconds) (see Dataproc Serverless pricing (https://cloud.google.com/dataproc-serverless/pricing)).
  final String shuffleStorageGbSeconds;

  UsageMetricsResponse({
    required this.acceleratorType,
    required this.milliAcceleratorSeconds,
    required this.milliDcuSeconds,
    required this.shuffleStorageGbSeconds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['acceleratorType'] = acceleratorType;
    map['milliAcceleratorSeconds'] = milliAcceleratorSeconds;
    map['milliDcuSeconds'] = milliDcuSeconds;
    map['shuffleStorageGbSeconds'] = shuffleStorageGbSeconds;
    return map;
  }

  factory UsageMetricsResponse.fromMap(Map<String, dynamic> map) {
    return UsageMetricsResponse(
      acceleratorType: map['acceleratorType'] as String,
      milliAcceleratorSeconds: map['milliAcceleratorSeconds'] as String,
      milliDcuSeconds: map['milliDcuSeconds'] as String,
      shuffleStorageGbSeconds: map['shuffleStorageGbSeconds'] as String,
    );
  }
}
