// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataSetRowLevelPermissionDataSet {
  final pulumi.Input<String> arn;
  final pulumi.Input<String> formatVersion;
  final pulumi.Input<String> namespace;
  final pulumi.Input<String> permissionPolicy;
  final pulumi.Input<String> status;

  /// Creates a new [GetDataSetRowLevelPermissionDataSet].
  /// [arn] Required.
  /// [formatVersion] Required.
  /// [namespace] Required.
  /// [permissionPolicy] Required.
  /// [status] Required.
  GetDataSetRowLevelPermissionDataSet({
    required this.arn,
    required this.formatVersion,
    required this.namespace,
    required this.permissionPolicy,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'formatVersion': formatVersion,
      'namespace': namespace,
      'permissionPolicy': permissionPolicy,
      'status': status,
    };
  }

  factory GetDataSetRowLevelPermissionDataSet.fromMap(Map<String, dynamic> map) {
    return GetDataSetRowLevelPermissionDataSet(
      arn: (map['arn'] as String).input(),
      formatVersion: (map['formatVersion'] as String).input(),
      namespace: (map['namespace'] as String).input(),
      permissionPolicy: (map['permissionPolicy'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

