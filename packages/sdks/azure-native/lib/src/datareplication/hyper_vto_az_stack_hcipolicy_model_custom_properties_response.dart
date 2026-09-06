// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// HyperV To AzStackHCI Policy model custom properties.
class HyperVToAzStackHCIPolicyModelCustomPropertiesResponse {
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

  /// Creates a new [HyperVToAzStackHCIPolicyModelCustomPropertiesResponse].
  /// [appConsistentFrequencyInMinutes] Gets or sets the app consistent snapshot frequency (in minutes).
  /// [crashConsistentFrequencyInMinutes] Gets or sets the crash consistent snapshot frequency (in minutes).
  /// [instanceType] Gets or sets the instance type.
  /// [recoveryPointHistoryInMinutes] Gets or sets the duration in minutes until which the recovery points need to be
  const HyperVToAzStackHCIPolicyModelCustomPropertiesResponse({
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

  factory HyperVToAzStackHCIPolicyModelCustomPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return HyperVToAzStackHCIPolicyModelCustomPropertiesResponse(
      appConsistentFrequencyInMinutes: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['appConsistentFrequencyInMinutes'])),
      crashConsistentFrequencyInMinutes: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['crashConsistentFrequencyInMinutes'])),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      recoveryPointHistoryInMinutes: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['recoveryPointHistoryInMinutes'])),
    );
  }
}
