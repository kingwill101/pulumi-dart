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
    final map = <String, dynamic>{};
    final acceleratorTypeValue = acceleratorType;
    if (acceleratorTypeValue != null) {
      map['acceleratorType'] = acceleratorTypeValue;
    }
    final milliAcceleratorValue = milliAccelerator;
    if (milliAcceleratorValue != null) {
      map['milliAccelerator'] = milliAcceleratorValue;
    }
    final milliDcuValue = milliDcu;
    if (milliDcuValue != null) {
      map['milliDcu'] = milliDcuValue;
    }
    final milliDcuPremiumValue = milliDcuPremium;
    if (milliDcuPremiumValue != null) {
      map['milliDcuPremium'] = milliDcuPremiumValue;
    }
    final shuffleStorageGbValue = shuffleStorageGb;
    if (shuffleStorageGbValue != null) {
      map['shuffleStorageGb'] = shuffleStorageGbValue;
    }
    final shuffleStorageGbPremiumValue = shuffleStorageGbPremium;
    if (shuffleStorageGbPremiumValue != null) {
      map['shuffleStorageGbPremium'] = shuffleStorageGbPremiumValue;
    }
    final snapshotTimeValue = snapshotTime;
    if (snapshotTimeValue != null) {
      map['snapshotTime'] = snapshotTimeValue;
    }
    return map;
  }

  factory BatchRuntimeInfoCurrentUsage.fromMap(Map<String, dynamic> map) {
    return BatchRuntimeInfoCurrentUsage(
      acceleratorType: map['acceleratorType'] == null
          ? null
          : map['acceleratorType'] as String,
      milliAccelerator: map['milliAccelerator'] == null
          ? null
          : map['milliAccelerator'] as String,
      milliDcu: map['milliDcu'] == null ? null : map['milliDcu'] as String,
      milliDcuPremium: map['milliDcuPremium'] == null
          ? null
          : map['milliDcuPremium'] as String,
      shuffleStorageGb: map['shuffleStorageGb'] == null
          ? null
          : map['shuffleStorageGb'] as String,
      shuffleStorageGbPremium: map['shuffleStorageGbPremium'] == null
          ? null
          : map['shuffleStorageGbPremium'] as String,
      snapshotTime:
          map['snapshotTime'] == null ? null : map['snapshotTime'] as String,
    );
  }
}
