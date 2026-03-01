// ignore_for_file: unused_element, unnecessary_cast


class GetBackupJobsFilter {
  /// The key of the field to filter. Valid values: `PlanId`, `VaultId`, `InstanceId`, `Bucket`, `FileSystemId`, `CompleteTime`.
  final String? key;
  /// The operator of the field to filter. Valid values: `EQUAL`, `NOT_EQUAL`, `GREATER_THAN`, `GREATER_THAN_OR_EQUAL`, `LESS_THAN`, `LESS_THAN_OR_EQUAL`, `BETWEEN`, `IN`.
  final String? operator;
  /// Set of values that are accepted for the given field.
  ///
  /// > **NOTE:** Numeric types such as `CompleteTime` do not support `IN` operations for the time being.
  final List<String>? values;

  /// Creates a new [GetBackupJobsFilter].
  /// [key] The key of the field to filter. Valid values: `PlanId`, `VaultId`, `InstanceId`, `Bucket`, `FileSystemId`, `CompleteTime`.
  /// [operator] The operator of the field to filter. Valid values: `EQUAL`, `NOT_EQUAL`, `GREATER_THAN`, `GREATER_THAN_OR_EQUAL`, `LESS_THAN`, `LESS_THAN_OR_EQUAL`, `BETWEEN`, `IN`.
  /// [values] Set of values that are accepted for the given field.
  GetBackupJobsFilter({
    this.key,
    this.operator,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'operator': ?operator,
      'values': ?values,
    };
  }

  factory GetBackupJobsFilter.fromMap(Map<String, dynamic> map) {
    return GetBackupJobsFilter(
      key: map['key'] == null ? null : map['key'] as String,
      operator: map['operator'] == null ? null : map['operator'] as String,
      values: map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}

