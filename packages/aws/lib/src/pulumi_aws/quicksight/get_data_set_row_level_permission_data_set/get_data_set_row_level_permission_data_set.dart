// ignore_for_file: unused_element, unnecessary_cast

class GetDataSetRowLevelPermissionDataSet {
  final String arn;
  final String formatVersion;
  final String namespace;
  final String permissionPolicy;
  final String status;

  GetDataSetRowLevelPermissionDataSet({
    required this.arn,
    required this.formatVersion,
    required this.namespace,
    required this.permissionPolicy,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['formatVersion'] = formatVersion;
    map['namespace'] = namespace;
    map['permissionPolicy'] = permissionPolicy;
    map['status'] = status;
    return map;
  }

  factory GetDataSetRowLevelPermissionDataSet.fromMap(
      Map<String, dynamic> map) {
    return GetDataSetRowLevelPermissionDataSet(
      arn: map['arn'] as String,
      formatVersion: map['formatVersion'] as String,
      namespace: map['namespace'] as String,
      permissionPolicy: map['permissionPolicy'] as String,
      status: map['status'] as String,
    );
  }
}
