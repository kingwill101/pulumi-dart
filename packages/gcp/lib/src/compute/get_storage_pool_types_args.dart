// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_storage_pool_types_get_storage_pool_types_args_doc}
/// Arguments for getStoragePoolTypes.
/// {@endtemplate}
/// {@macro pulumi_compute_get_storage_pool_types_get_storage_pool_types_args_doc}
class GetStoragePoolTypesArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> storagePoolType;
  final pulumi.Input<String> zone;

  /// Creates a new [GetStoragePoolTypesArgs].
  /// [project] Optional.
  /// [storagePoolType] Required.
  /// [zone] Required.
  GetStoragePoolTypesArgs({
    String? project,
    required String storagePoolType,
    required String zone,
  }) : project = pulumi.Input.asOptionalInput<String>(project),
       storagePoolType = pulumi.Input.asInput<String>(storagePoolType),
       zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'storagePoolType': storagePoolType,
      'zone': zone,
    };
  }

  factory GetStoragePoolTypesArgs.fromMap(Map<String, dynamic> map) {
    return GetStoragePoolTypesArgs(
      project: map['project'] == null ? null : map['project'] as String,
      storagePoolType: map['storagePoolType'] as String,
      zone: map['zone'] as String,
    );
  }
}
