// ignore_for_file: unused_element, unnecessary_cast


/// VMware To AzStackHCI Policy model custom properties.
class VMwareToAzStackHCIPolicyModelCustomPropertiesResponse {
  /// Gets or sets the app consistent snapshot frequency (in minutes).
  final int appConsistentFrequencyInMinutes;
  /// Gets or sets the crash consistent snapshot frequency (in minutes).
  final int crashConsistentFrequencyInMinutes;
  /// Gets or sets the instance type.
  /// Expected value is 'VMwareToAzStackHCI'.
  final String instanceType;
  /// Gets or sets the duration in minutes until which the recovery points need to be
  /// stored.
  final int recoveryPointHistoryInMinutes;

  /// Creates a new [VMwareToAzStackHCIPolicyModelCustomPropertiesResponse].
  /// [appConsistentFrequencyInMinutes] Gets or sets the app consistent snapshot frequency (in minutes).
  /// [crashConsistentFrequencyInMinutes] Gets or sets the crash consistent snapshot frequency (in minutes).
  /// [instanceType] Gets or sets the instance type.
  /// [recoveryPointHistoryInMinutes] Gets or sets the duration in minutes until which the recovery points need to be
  VMwareToAzStackHCIPolicyModelCustomPropertiesResponse({
    required this.appConsistentFrequencyInMinutes,
    required this.crashConsistentFrequencyInMinutes,
    required this.instanceType,
    required this.recoveryPointHistoryInMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appConsistentFrequencyInMinutes': appConsistentFrequencyInMinutes,
      'crashConsistentFrequencyInMinutes': crashConsistentFrequencyInMinutes,
      'instanceType': instanceType,
      'recoveryPointHistoryInMinutes': recoveryPointHistoryInMinutes,
    };
  }

  factory VMwareToAzStackHCIPolicyModelCustomPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VMwareToAzStackHCIPolicyModelCustomPropertiesResponse(
      appConsistentFrequencyInMinutes: map['appConsistentFrequencyInMinutes'] as int,
      crashConsistentFrequencyInMinutes: map['crashConsistentFrequencyInMinutes'] as int,
      instanceType: map['instanceType'] as String,
      recoveryPointHistoryInMinutes: map['recoveryPointHistoryInMinutes'] as int,
    );
  }
}

