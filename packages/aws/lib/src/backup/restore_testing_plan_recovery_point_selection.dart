// ignore_for_file: unused_element, unnecessary_cast

class RestoreTestingPlanRecoveryPointSelection {
  /// Specifies the algorithm used for selecting recovery points. Valid values are "RANDOM_WITHIN_WINDOW" and "LATEST_WITHIN_WINDOW".
  final String algorithm;

  /// Specifies the backup vaults to exclude from the recovery point selection. Each value must be a valid AWS ARN for a backup vault or "*" to exclude all backup vaults.
  final List<String>? excludeVaults;

  /// Specifies the backup vaults to include in the recovery point selection. Each value must be a valid AWS ARN for a backup vault or "*" to include all backup vaults.
  final List<String> includeVaults;

  /// Specifies the types of recovery points to include in the selection. Valid values are "CONTINUOUS" and "SNAPSHOT".
  final List<String> recoveryPointTypes;

  /// Specifies the number of days within which the recovery points should be selected. Must be a value between 1 and 365.
  final int? selectionWindowDays;

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
    final map = <String, dynamic>{};
    map['algorithm'] = algorithm;
    final excludeVaultsValue = excludeVaults;
    if (excludeVaultsValue != null) {
      map['excludeVaults'] = excludeVaultsValue;
    }
    map['includeVaults'] = includeVaults;
    map['recoveryPointTypes'] = recoveryPointTypes;
    final selectionWindowDaysValue = selectionWindowDays;
    if (selectionWindowDaysValue != null) {
      map['selectionWindowDays'] = selectionWindowDaysValue;
    }
    return map;
  }

  factory RestoreTestingPlanRecoveryPointSelection.fromMap(
      Map<String, dynamic> map) {
    return RestoreTestingPlanRecoveryPointSelection(
      algorithm: map['algorithm'] as String,
      excludeVaults: map['excludeVaults'] == null
          ? null
          : (map['excludeVaults'] as List).cast<String>(),
      includeVaults: (map['includeVaults'] as List).cast<String>(),
      recoveryPointTypes: (map['recoveryPointTypes'] as List).cast<String>(),
      selectionWindowDays: map['selectionWindowDays'] == null
          ? null
          : map['selectionWindowDays'] as int,
    );
  }
}
