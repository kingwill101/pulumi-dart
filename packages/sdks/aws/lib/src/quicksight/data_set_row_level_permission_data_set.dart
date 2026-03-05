// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSetRowLevelPermissionDataSet {
  /// ARN of the dataset that contains permissions for RLS.
  final pulumi.Input<String> arn;
  /// User or group rules associated with the dataset that contains permissions for RLS.
  final pulumi.Input<String>? formatVersion;
  /// Namespace associated with the dataset that contains permissions for RLS.
  final pulumi.Input<String>? namespace;
  /// Type of permissions to use when interpreting the permissions for RLS. Valid values are `GRANT_ACCESS` and `DENY_ACCESS`.
  final pulumi.Input<String> permissionPolicy;
  /// Status of the row-level security permission dataset. If enabled, the status is `ENABLED`. If disabled, the status is `DISABLED`.
  final pulumi.Input<String>? status;

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
    return <String, dynamic>{
      'arn': arn,
      'formatVersion': ?formatVersion,
      'namespace': ?namespace,
      'permissionPolicy': permissionPolicy,
      'status': ?status,
    };
  }

  factory DataSetRowLevelPermissionDataSet.fromMap(Map<String, dynamic> map) {
    return DataSetRowLevelPermissionDataSet(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      formatVersion: (() { final guardedValue = map['formatVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permissionPolicy: pulumi.Input.fromValue(map['permissionPolicy'] as String),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

