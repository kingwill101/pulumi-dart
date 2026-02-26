// ignore_for_file: unused_element, unnecessary_cast

/// The usage snapshot represents the resources consumed by a workload at a specified time.
class UsageSnapshotResponse {
  /// Optional. Accelerator type being used, if any
  final String acceleratorType;

  /// Optional. Milli (one-thousandth) accelerator. (see Dataproc Serverless pricing (https://cloud.google.com/dataproc-serverless/pricing))
  final String milliAccelerator;

  /// Optional. Milli (one-thousandth) Dataproc Compute Units (DCUs) (see Dataproc Serverless pricing (https://cloud.google.com/dataproc-serverless/pricing)).
  final String milliDcu;

  /// Optional. Milli (one-thousandth) Dataproc Compute Units (DCUs) charged at premium tier (see Dataproc Serverless pricing (https://cloud.google.com/dataproc-serverless/pricing)).
  final String milliDcuPremium;

  /// Optional. Shuffle Storage in gigabytes (GB). (see Dataproc Serverless pricing (https://cloud.google.com/dataproc-serverless/pricing))
  final String shuffleStorageGb;

  /// Optional. Shuffle Storage in gigabytes (GB) charged at premium tier. (see Dataproc Serverless pricing (https://cloud.google.com/dataproc-serverless/pricing))
  final String shuffleStorageGbPremium;

  /// Optional. The timestamp of the usage snapshot.
  final String snapshotTime;

  UsageSnapshotResponse({
    required this.acceleratorType,
    required this.milliAccelerator,
    required this.milliDcu,
    required this.milliDcuPremium,
    required this.shuffleStorageGb,
    required this.shuffleStorageGbPremium,
    required this.snapshotTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['acceleratorType'] = acceleratorType;
    map['milliAccelerator'] = milliAccelerator;
    map['milliDcu'] = milliDcu;
    map['milliDcuPremium'] = milliDcuPremium;
    map['shuffleStorageGb'] = shuffleStorageGb;
    map['shuffleStorageGbPremium'] = shuffleStorageGbPremium;
    map['snapshotTime'] = snapshotTime;
    return map;
  }

  factory UsageSnapshotResponse.fromMap(Map<String, dynamic> map) {
    return UsageSnapshotResponse(
      acceleratorType: map['acceleratorType'] as String,
      milliAccelerator: map['milliAccelerator'] as String,
      milliDcu: map['milliDcu'] as String,
      milliDcuPremium: map['milliDcuPremium'] as String,
      shuffleStorageGb: map['shuffleStorageGb'] as String,
      shuffleStorageGbPremium: map['shuffleStorageGbPremium'] as String,
      snapshotTime: map['snapshotTime'] as String,
    );
  }
}
