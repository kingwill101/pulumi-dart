// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VMware To AzStackHCI Policy model custom properties.
class VMwareToAzStackHCIPolicyModelCustomProperties {
  /// Gets or sets the app consistent snapshot frequency (in minutes).
  final pulumi.Input<int> appConsistentFrequencyInMinutes;

  /// Gets or sets the crash consistent snapshot frequency (in minutes).
  final pulumi.Input<int> crashConsistentFrequencyInMinutes;

  /// Gets or sets the instance type.
  /// Expected value is 'VMwareToAzStackHCI'.
  final pulumi.Input<String> instanceType;

  /// Gets or sets the duration in minutes until which the recovery points need to be
  /// stored.
  final pulumi.Input<int> recoveryPointHistoryInMinutes;

  /// Creates a new [VMwareToAzStackHCIPolicyModelCustomProperties].
  /// [appConsistentFrequencyInMinutes] Gets or sets the app consistent snapshot frequency (in minutes).
  /// [crashConsistentFrequencyInMinutes] Gets or sets the crash consistent snapshot frequency (in minutes).
  /// [instanceType] Gets or sets the instance type.
  /// [recoveryPointHistoryInMinutes] Gets or sets the duration in minutes until which the recovery points need to be
  VMwareToAzStackHCIPolicyModelCustomProperties({
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

  factory VMwareToAzStackHCIPolicyModelCustomProperties.fromMap(
    Map<String, dynamic> map,
  ) {
    return VMwareToAzStackHCIPolicyModelCustomProperties(
      appConsistentFrequencyInMinutes: pulumi.Input.fromValue(
        map['appConsistentFrequencyInMinutes'] as int,
      ),
      crashConsistentFrequencyInMinutes: pulumi.Input.fromValue(
        map['crashConsistentFrequencyInMinutes'] as int,
      ),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      recoveryPointHistoryInMinutes: pulumi.Input.fromValue(
        map['recoveryPointHistoryInMinutes'] as int,
      ),
    );
  }
}
