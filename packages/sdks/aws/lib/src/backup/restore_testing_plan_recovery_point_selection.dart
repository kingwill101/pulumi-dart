// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RestoreTestingPlanRecoveryPointSelection {
  /// Specifies the algorithm used for selecting recovery points. Valid values are "RANDOM_WITHIN_WINDOW" and "LATEST_WITHIN_WINDOW".
  final pulumi.Input<String> algorithm;
  /// Specifies the backup vaults to exclude from the recovery point selection. Each value must be a valid AWS ARN for a backup vault or "*" to exclude all backup vaults.
  final pulumi.Input<List<String>>? excludeVaults;
  /// Specifies the backup vaults to include in the recovery point selection. Each value must be a valid AWS ARN for a backup vault or "*" to include all backup vaults.
  final pulumi.Input<List<String>> includeVaults;
  /// Specifies the types of recovery points to include in the selection. Valid values are "CONTINUOUS" and "SNAPSHOT".
  final pulumi.Input<List<String>> recoveryPointTypes;
  /// Specifies the number of days within which the recovery points should be selected. Must be a value between 1 and 365.
  final pulumi.Input<int>? selectionWindowDays;

  /// Creates a new [RestoreTestingPlanRecoveryPointSelection].
  /// [algorithm] Specifies the algorithm used for selecting recovery points. Valid values are "RANDOM_WITHIN_WINDOW" and "LATEST_WITHIN_WINDOW".
  /// [excludeVaults] Specifies the backup vaults to exclude from the recovery point selection. Each value must be a valid AWS ARN for a backup vault or "*" to exclude all backup vaults.
  /// [includeVaults] Specifies the backup vaults to include in the recovery point selection. Each value must be a valid AWS ARN for a backup vault or "*" to include all backup vaults.
  /// [recoveryPointTypes] Specifies the types of recovery points to include in the selection. Valid values are "CONTINUOUS" and "SNAPSHOT".
  /// [selectionWindowDays] Specifies the number of days within which the recovery points should be selected. Must be a value between 1 and 365.
  RestoreTestingPlanRecoveryPointSelection({
    required this.algorithm,
    this.excludeVaults,
    required this.includeVaults,
    required this.recoveryPointTypes,
    this.selectionWindowDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': algorithm,
      'excludeVaults': ?excludeVaults,
      'includeVaults': includeVaults,
      'recoveryPointTypes': recoveryPointTypes,
      'selectionWindowDays': ?selectionWindowDays,
    };
  }

  factory RestoreTestingPlanRecoveryPointSelection.fromMap(Map<String, dynamic> map) {
    return RestoreTestingPlanRecoveryPointSelection(
      algorithm: pulumi.Input.fromValue(map['algorithm'] as String),
      excludeVaults: (() { final guardedValue = map['excludeVaults']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includeVaults: pulumi.Input.fromValue((map['includeVaults'] as List).cast<String>()),
      recoveryPointTypes: pulumi.Input.fromValue((map['recoveryPointTypes'] as List).cast<String>()),
      selectionWindowDays: (() { final guardedValue = map['selectionWindowDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

