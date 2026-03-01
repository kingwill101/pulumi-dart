// ignore_for_file: unused_element, unnecessary_cast


/// A2A specific policy details.
class A2APolicyDetailsResponse {
  /// The app consistent snapshot frequency in minutes.
  final int? appConsistentFrequencyInMinutes;
  /// The crash consistent snapshot frequency in minutes.
  final int? crashConsistentFrequencyInMinutes;
  /// Gets the class type. Overridden in derived classes.
  /// Expected value is 'A2A'.
  final String instanceType;
  /// A value indicating whether multi-VM sync has to be enabled.
  final String? multiVmSyncStatus;
  /// The duration in minutes until which the recovery points need to be stored.
  final int? recoveryPointHistory;
  /// The recovery point threshold in minutes.
  final int? recoveryPointThresholdInMinutes;

  /// Creates a new [A2APolicyDetailsResponse].
  /// [appConsistentFrequencyInMinutes] The app consistent snapshot frequency in minutes.
  /// [crashConsistentFrequencyInMinutes] The crash consistent snapshot frequency in minutes.
  /// [instanceType] Gets the class type. Overridden in derived classes.
  /// [multiVmSyncStatus] A value indicating whether multi-VM sync has to be enabled.
  /// [recoveryPointHistory] The duration in minutes until which the recovery points need to be stored.
  /// [recoveryPointThresholdInMinutes] The recovery point threshold in minutes.
  A2APolicyDetailsResponse({
    this.appConsistentFrequencyInMinutes,
    this.crashConsistentFrequencyInMinutes,
    required this.instanceType,
    this.multiVmSyncStatus,
    this.recoveryPointHistory,
    this.recoveryPointThresholdInMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appConsistentFrequencyInMinutes': ?appConsistentFrequencyInMinutes,
      'crashConsistentFrequencyInMinutes': ?crashConsistentFrequencyInMinutes,
      'instanceType': instanceType,
      'multiVmSyncStatus': ?multiVmSyncStatus,
      'recoveryPointHistory': ?recoveryPointHistory,
      'recoveryPointThresholdInMinutes': ?recoveryPointThresholdInMinutes,
    };
  }

  factory A2APolicyDetailsResponse.fromMap(Map<String, dynamic> map) {
    return A2APolicyDetailsResponse(
      appConsistentFrequencyInMinutes: map['appConsistentFrequencyInMinutes'] == null ? null : map['appConsistentFrequencyInMinutes'] as int,
      crashConsistentFrequencyInMinutes: map['crashConsistentFrequencyInMinutes'] == null ? null : map['crashConsistentFrequencyInMinutes'] as int,
      instanceType: map['instanceType'] as String,
      multiVmSyncStatus: map['multiVmSyncStatus'] == null ? null : map['multiVmSyncStatus'] as String,
      recoveryPointHistory: map['recoveryPointHistory'] == null ? null : map['recoveryPointHistory'] as int,
      recoveryPointThresholdInMinutes: map['recoveryPointThresholdInMinutes'] == null ? null : map['recoveryPointThresholdInMinutes'] as int,
    );
  }
}

