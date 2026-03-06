// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// HyperV To AzStackHCI Policy model custom properties.
class HyperVToAzStackHCIPolicyModelCustomProperties {
  /// Gets or sets the app consistent snapshot frequency (in minutes).
  final pulumi.Input<int> appConsistentFrequencyInMinutes;
  /// Gets or sets the crash consistent snapshot frequency (in minutes).
  final pulumi.Input<int> crashConsistentFrequencyInMinutes;
  /// Gets or sets the instance type.
  /// Expected value is 'HyperVToAzStackHCI'.
  final pulumi.Input<String> instanceType;
  /// Gets or sets the duration in minutes until which the recovery points need to be
  /// stored.
  final pulumi.Input<int> recoveryPointHistoryInMinutes;

  /// Creates a new [HyperVToAzStackHCIPolicyModelCustomProperties].
  /// [appConsistentFrequencyInMinutes] Gets or sets the app consistent snapshot frequency (in minutes).
  /// [crashConsistentFrequencyInMinutes] Gets or sets the crash consistent snapshot frequency (in minutes).
  /// [instanceType] Gets or sets the instance type.
  /// [recoveryPointHistoryInMinutes] Gets or sets the duration in minutes until which the recovery points need to be
  const HyperVToAzStackHCIPolicyModelCustomProperties({
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

  factory HyperVToAzStackHCIPolicyModelCustomProperties.fromMap(Map<String, dynamic> map) {
    return HyperVToAzStackHCIPolicyModelCustomProperties(
      appConsistentFrequencyInMinutes: pulumi.Input.fromValue(map['appConsistentFrequencyInMinutes'] as int),
      crashConsistentFrequencyInMinutes: pulumi.Input.fromValue(map['crashConsistentFrequencyInMinutes'] as int),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      recoveryPointHistoryInMinutes: pulumi.Input.fromValue(map['recoveryPointHistoryInMinutes'] as int),
    );
  }
}

