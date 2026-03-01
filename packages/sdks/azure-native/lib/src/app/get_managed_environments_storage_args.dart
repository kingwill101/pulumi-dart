// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_app_get_managed_environments_storage_args_doc}
/// Arguments for getManagedEnvironmentsStorage.
/// {@endtemplate}
/// {@macro pulumi_app_get_managed_environments_storage_args_doc}
class GetManagedEnvironmentsStorageArgs {
  /// Name of the Environment.
  final pulumi.Input<String> environmentName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the storage.
  final pulumi.Input<String> storageName;

  /// Creates a new [GetManagedEnvironmentsStorageArgs].
  /// [environmentName] Name of the Environment.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageName] Name of the storage.
  GetManagedEnvironmentsStorageArgs({
    required pulumi.Output<String> environmentName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> storageName,
  }) :
      environmentName = pulumi.Input.asInput<String>(environmentName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      storageName = pulumi.Input.asInput<String>(storageName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentName': environmentName,
      'resourceGroupName': resourceGroupName,
      'storageName': storageName,
    };
  }

  factory GetManagedEnvironmentsStorageArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedEnvironmentsStorageArgs(
      environmentName: pulumi.Output.create<String>(map['environmentName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      storageName: pulumi.Output.create<String>(map['storageName'] as String),
    );
  }
}

