// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getStoragePoolTypes.
class GetStoragePoolTypesArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> storagePoolType;
  final pulumi.Input<String> zone;

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
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      storagePoolType: pulumi.Input.asInput<String>(map['storagePoolType']),
      zone: pulumi.Input.asInput<String>(map['zone']),
    );
  }
}
