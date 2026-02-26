// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getStoragePoolTypes.
class GetStoragePoolTypesArgs {
  final Input<String>? project;
  final Input<String> storagePoolType;
  final Input<String> zone;

  GetStoragePoolTypesArgs({
    this.project,
    required this.storagePoolType,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['storagePoolType'] = storagePoolType;
    map['zone'] = zone;
    return map;
  }

  factory GetStoragePoolTypesArgs.fromMap(Map<String, dynamic> map) {
    return GetStoragePoolTypesArgs(
      project: Input.asOptionalInput<String>(map['project']),
      storagePoolType: Input.asInput<String>(map['storagePoolType']),
      zone: Input.asInput<String>(map['zone']),
    );
  }
}
