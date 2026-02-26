// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getStoragePool.
class GetStoragePoolArgs {
  final Input<String>? project;
  final Input<String> storagePool;
  final Input<String> zone;

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
      project: Input.asOptionalInput<String>(map['project']),
      storagePool: Input.asInput<String>(map['storagePool']),
      zone: Input.asInput<String>(map['zone']),
    );
  }
}
