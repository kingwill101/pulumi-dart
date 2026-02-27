// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getStoragePool.
class GetStoragePoolArgs {
  /// The name of the Storage Pool.
  final pulumi.Input<String> name;

  /// The project in which the Storage Pool exists. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The zone where the Storage Pool resides.
  final pulumi.Input<String> zone;

  GetStoragePoolArgs({
    required this.name,
    this.project,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['zone'] = zone;
    return map;
  }

  factory GetStoragePoolArgs.fromMap(Map<String, dynamic> map) {
    return GetStoragePoolArgs(
      name: pulumi.Input.asInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      zone: pulumi.Input.asInput<String>(map['zone']),
    );
  }
}
