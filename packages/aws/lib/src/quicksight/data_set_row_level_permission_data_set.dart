// ignore_for_file: unused_element, unnecessary_cast

class DataSetRowLevelPermissionDataSet {
  /// ARN of the dataset that contains permissions for RLS.
  final String arn;

  /// User or group rules associated with the dataset that contains permissions for RLS.
  final String? formatVersion;

  /// Namespace associated with the dataset that contains permissions for RLS.
  final String? namespace;

  /// Type of permissions to use when interpreting the permissions for RLS. Valid values are `GRANT_ACCESS` and `DENY_ACCESS`.
  final String permissionPolicy;

  /// Status of the row-level security permission dataset. If enabled, the status is `ENABLED`. If disabled, the status is `DISABLED`.
  final String? status;

  /// Creates a new [DataSetRowLevelPermissionDataSet].
  /// [arn] ARN of the dataset that contains permissions for RLS.
  /// [formatVersion] User or group rules associated with the dataset that contains permissions for RLS.
  /// [namespace] Namespace associated with the dataset that contains permissions for RLS.
  /// [permissionPolicy] Type of permissions to use when interpreting the permissions for RLS. Valid values are `GRANT_ACCESS` and `DENY_ACCESS`.
  /// [status] Status of the row-level security permission dataset. If enabled, the status is `ENABLED`. If disabled, the status is `DISABLED`.
  DataSetRowLevelPermissionDataSet({
    required this.arn,
    this.formatVersion,
    this.namespace,
    required this.permissionPolicy,
    this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    final formatVersionValue = formatVersion;
    if (formatVersionValue != null) {
      map['formatVersion'] = formatVersionValue;
    }
    final namespaceValue = namespace;
    if (namespaceValue != null) {
      map['namespace'] = namespaceValue;
    }
    map['permissionPolicy'] = permissionPolicy;
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    return map;
  }

  factory DataSetRowLevelPermissionDataSet.fromMap(Map<String, dynamic> map) {
    return DataSetRowLevelPermissionDataSet(
      arn: map['arn'] as String,
      formatVersion:
          map['formatVersion'] == null ? null : map['formatVersion'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      permissionPolicy: map['permissionPolicy'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}
