// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_storage_pool_get_storage_pool_args_doc}
/// Arguments for getStoragePool.
/// {@endtemplate}
/// {@macro pulumi_compute_get_storage_pool_get_storage_pool_args_doc}
class GetStoragePoolArgs {
  /// The name of the Storage Pool.
  final pulumi.Input<String> name;
  /// The project in which the Storage Pool exists. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The zone where the Storage Pool resides.
  final pulumi.Input<String> zone;

  /// Creates a new [GetStoragePoolArgs].
  /// [name] The name of the Storage Pool.
  /// [project] The project in which the Storage Pool exists. If it is not provided, the provider project is used.
  /// [zone] The zone where the Storage Pool resides.
  GetStoragePoolArgs({
    required String name,
    String? project,
    required String zone,
  }) :
      name = pulumi.Input.asInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'project': ?project,
      'zone': zone,
    };
  }

  factory GetStoragePoolArgs.fromMap(Map<String, dynamic> map) {
    return GetStoragePoolArgs(
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      zone: map['zone'] as String,
    );
  }
}

