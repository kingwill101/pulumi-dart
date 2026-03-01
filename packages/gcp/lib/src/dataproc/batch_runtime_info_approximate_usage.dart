// ignore_for_file: unused_element, unnecessary_cast


class BatchRuntimeInfoApproximateUsage {
  /// (Output)
  /// Accelerator type being used, if any.
  final String? acceleratorType;
  /// (Output)
  /// Accelerator usage in (milliAccelerator x seconds)
  final String? milliAcceleratorSeconds;
  /// (Output)
  /// DCU (Dataproc Compute Units) usage in (milliDCU x seconds)
  final String? milliDcuSeconds;
  /// (Output)
  /// Shuffle storage usage in (GB x seconds)
  final String? shuffleStorageGbSeconds;

  /// Creates a new [BatchRuntimeInfoApproximateUsage].
  /// [acceleratorType] (Output)
  /// [milliAcceleratorSeconds] (Output)
  /// [milliDcuSeconds] (Output)
  /// [shuffleStorageGbSeconds] (Output)
  BatchRuntimeInfoApproximateUsage({
    this.acceleratorType,
    this.milliAcceleratorSeconds,
    this.milliDcuSeconds,
    this.shuffleStorageGbSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorType': ?acceleratorType,
      'milliAcceleratorSeconds': ?milliAcceleratorSeconds,
      'milliDcuSeconds': ?milliDcuSeconds,
      'shuffleStorageGbSeconds': ?shuffleStorageGbSeconds,
    };
  }

  factory BatchRuntimeInfoApproximateUsage.fromMap(Map<String, dynamic> map) {
    return BatchRuntimeInfoApproximateUsage(
      acceleratorType: map['acceleratorType'] == null ? null : map['acceleratorType'] as String,
      milliAcceleratorSeconds: map['milliAcceleratorSeconds'] == null ? null : map['milliAcceleratorSeconds'] as String,
      milliDcuSeconds: map['milliDcuSeconds'] == null ? null : map['milliDcuSeconds'] as String,
      shuffleStorageGbSeconds: map['shuffleStorageGbSeconds'] == null ? null : map['shuffleStorageGbSeconds'] as String,
    );
  }
}

