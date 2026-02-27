// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getStoragePool.
class GetStoragePoolArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> storagePool;
  final pulumi.Input<String> zone;

  GetStoragePoolArgs({
    this.project,
    required this.storagePool,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['storagePool'] = storagePool;
    map['zone'] = zone;
    return map;
  }

  factory GetStoragePoolArgs.fromMap(Map<String, dynamic> map) {
    return GetStoragePoolArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      storagePool: pulumi.Input.asInput<String>(map['storagePool']),
      zone: pulumi.Input.asInput<String>(map['zone']),
    );
  }
}
