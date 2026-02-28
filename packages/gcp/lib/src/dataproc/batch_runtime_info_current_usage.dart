// ignore_for_file: unused_element, unnecessary_cast


class BatchRuntimeInfoCurrentUsage {
  /// (Output)
  /// Accelerator type being used, if any.
  final String? acceleratorType;
  /// (Output)
  /// Milli (one-thousandth) accelerator..
  final String? milliAccelerator;
  /// (Output)
  /// Milli (one-thousandth) Dataproc Compute Units (DCUs).
  final String? milliDcu;
  /// (Output)
  /// Milli (one-thousandth) Dataproc Compute Units (DCUs) charged at premium tier.
  final String? milliDcuPremium;
  /// (Output)
  /// Shuffle Storage in gigabytes (GB).
  final String? shuffleStorageGb;
  /// (Output)
  /// Shuffle Storage in gigabytes (GB) charged at premium tier.
  final String? shuffleStorageGbPremium;
  /// (Output)
  /// The timestamp of the usage snapshot.
  final String? snapshotTime;

  /// Creates a new [BatchRuntimeInfoCurrentUsage].
  /// [acceleratorType] (Output)
  /// [milliAccelerator] (Output)
  /// [milliDcu] (Output)
  /// [milliDcuPremium] (Output)
  /// [shuffleStorageGb] (Output)
  /// [shuffleStorageGbPremium] (Output)
  /// [snapshotTime] (Output)
  BatchRuntimeInfoCurrentUsage({
    this.acceleratorType,
    this.milliAccelerator,
    this.milliDcu,
    this.milliDcuPremium,
    this.shuffleStorageGb,
    this.shuffleStorageGbPremium,
    this.snapshotTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorType': ?acceleratorType,
      'milliAccelerator': ?milliAccelerator,
      'milliDcu': ?milliDcu,
      'milliDcuPremium': ?milliDcuPremium,
      'shuffleStorageGb': ?shuffleStorageGb,
      'shuffleStorageGbPremium': ?shuffleStorageGbPremium,
      'snapshotTime': ?snapshotTime,
    };
  }

  factory BatchRuntimeInfoCurrentUsage.fromMap(Map<String, dynamic> map) {
    return BatchRuntimeInfoCurrentUsage(
      acceleratorType: map['acceleratorType'] == null ? null : map['acceleratorType'] as String,
      milliAccelerator: map['milliAccelerator'] == null ? null : map['milliAccelerator'] as String,
      milliDcu: map['milliDcu'] == null ? null : map['milliDcu'] as String,
      milliDcuPremium: map['milliDcuPremium'] == null ? null : map['milliDcuPremium'] as String,
      shuffleStorageGb: map['shuffleStorageGb'] == null ? null : map['shuffleStorageGb'] as String,
      shuffleStorageGbPremium: map['shuffleStorageGbPremium'] == null ? null : map['shuffleStorageGbPremium'] as String,
      snapshotTime: map['snapshotTime'] == null ? null : map['snapshotTime'] as String,
    );
  }
}

