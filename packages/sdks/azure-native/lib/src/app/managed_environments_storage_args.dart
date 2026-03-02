// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_environment_storage_properties.dart';

/// {@template pulumi_app_managed_environments_storage_args_doc}
/// The set of arguments for ManagedEnvironmentsStorage.
/// {@endtemplate}
/// {@macro pulumi_app_managed_environments_storage_args_doc}
class ManagedEnvironmentsStorageArgs {
  /// Name of the Environment.
  final pulumi.Input<String> environmentName;
  /// Storage properties
  final pulumi.Input<ManagedEnvironmentStorageProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the storage.
  final pulumi.Input<String>? storageName;

  /// Creates a new [ManagedEnvironmentsStorageArgs].
  /// [environmentName] Name of the Environment.
  /// [properties] Storage properties
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageName] Name of the storage.
  ManagedEnvironmentsStorageArgs({
    required this.environmentName,
    this.properties,
    required this.resourceGroupName,
    this.storageName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentName': environmentName,
      'properties': ?pulumi.Input.mapOptionalInputValue<ManagedEnvironmentStorageProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'storageName': ?storageName,
    };
  }

  factory ManagedEnvironmentsStorageArgs.fromMap(Map<String, dynamic> map) {
    return ManagedEnvironmentsStorageArgs(
      environmentName: (map['environmentName'] as String).input(),
      properties: map['properties'] == null ? null : (ManagedEnvironmentStorageProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      storageName: map['storageName'] == null ? null : (map['storageName'] as String).input(),
    );
  }
}

