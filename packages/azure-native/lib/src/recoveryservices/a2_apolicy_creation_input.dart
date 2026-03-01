// ignore_for_file: unused_element, unnecessary_cast


/// A2A Policy creation input.
class A2APolicyCreationInput {
  /// The app consistent snapshot frequency (in minutes).
  final int? appConsistentFrequencyInMinutes;
  /// The crash consistent snapshot frequency (in minutes).
  final int? crashConsistentFrequencyInMinutes;
  /// The class type.
  /// Expected value is 'A2A'.
  final String instanceType;
  /// A value indicating whether multi-VM sync has to be enabled. Value should be 'Enabled' or 'Disabled'.
  final String multiVmSyncStatus;
  /// The duration in minutes until which the recovery points need to be stored.
  final int? recoveryPointHistory;

  /// Creates a new [A2APolicyCreationInput].
  /// [appConsistentFrequencyInMinutes] The app consistent snapshot frequency (in minutes).
  /// [crashConsistentFrequencyInMinutes] The crash consistent snapshot frequency (in minutes).
  /// [instanceType] The class type.
  /// [multiVmSyncStatus] A value indicating whether multi-VM sync has to be enabled. Value should be 'Enabled' or 'Disabled'.
  /// [recoveryPointHistory] The duration in minutes until which the recovery points need to be stored.
  A2APolicyCreationInput({
    this.appConsistentFrequencyInMinutes,
    this.crashConsistentFrequencyInMinutes,
    required this.instanceType,
    required this.multiVmSyncStatus,
    this.recoveryPointHistory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appConsistentFrequencyInMinutes': ?appConsistentFrequencyInMinutes,
      'crashConsistentFrequencyInMinutes': ?crashConsistentFrequencyInMinutes,
      'instanceType': instanceType,
      'multiVmSyncStatus': multiVmSyncStatus,
      'recoveryPointHistory': ?recoveryPointHistory,
    };
  }

  factory A2APolicyCreationInput.fromMap(Map<String, dynamic> map) {
    return A2APolicyCreationInput(
      appConsistentFrequencyInMinutes: map['appConsistentFrequencyInMinutes'] == null ? null : map['appConsistentFrequencyInMinutes'] as int,
      crashConsistentFrequencyInMinutes: map['crashConsistentFrequencyInMinutes'] == null ? null : map['crashConsistentFrequencyInMinutes'] as int,
      instanceType: map['instanceType'] as String,
      multiVmSyncStatus: map['multiVmSyncStatus'] as String,
      recoveryPointHistory: map['recoveryPointHistory'] == null ? null : map['recoveryPointHistory'] as int,
    );
  }
}

