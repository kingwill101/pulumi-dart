// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_storage_pool_args_doc}
/// Arguments for getStoragePool.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_storage_pool_args_doc}
class GetStoragePoolArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> storagePool;
  final pulumi.Input<String> zone;

  /// Creates a new [GetStoragePoolArgs].
  /// [project] Optional.
  /// [storagePool] Required.
  /// [zone] Required.
  GetStoragePoolArgs({
    String? project,
    required String storagePool,
    required String zone,
  })  : project = pulumi.Input.asOptionalInput<String>(project),
        storagePool = pulumi.Input.asInput<String>(storagePool),
        zone = pulumi.Input.asInput<String>(zone);

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
      project: map['project'] == null ? null : map['project'] as String,
      storagePool: map['storagePool'] as String,
      zone: map['zone'] as String,
    );
  }
}
