// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_app_get_connected_environments_storage_args_doc}
/// Arguments for getConnectedEnvironmentsStorage.
/// {@endtemplate}
/// {@macro pulumi_app_get_connected_environments_storage_args_doc}
class GetConnectedEnvironmentsStorageArgs {
  /// Name of the Environment.
  final pulumi.Input<String> connectedEnvironmentName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the storage.
  final pulumi.Input<String> storageName;

  /// Creates a new [GetConnectedEnvironmentsStorageArgs].
  /// [connectedEnvironmentName] Name of the Environment.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageName] Name of the storage.
  GetConnectedEnvironmentsStorageArgs({
    required String connectedEnvironmentName,
    required String resourceGroupName,
    required String storageName,
  }) :
      connectedEnvironmentName = pulumi.Input.asInput<String>(connectedEnvironmentName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      storageName = pulumi.Input.asInput<String>(storageName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectedEnvironmentName': connectedEnvironmentName,
      'resourceGroupName': resourceGroupName,
      'storageName': storageName,
    };
  }

  factory GetConnectedEnvironmentsStorageArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectedEnvironmentsStorageArgs(
      connectedEnvironmentName: map['connectedEnvironmentName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      storageName: map['storageName'] as String,
    );
  }
}

