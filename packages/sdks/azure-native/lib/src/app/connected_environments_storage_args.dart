// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connected_environment_storage_properties.dart';

/// {@template pulumi_app_connected_environments_storage_args_doc}
/// The set of arguments for ConnectedEnvironmentsStorage.
/// {@endtemplate}
/// {@macro pulumi_app_connected_environments_storage_args_doc}
class ConnectedEnvironmentsStorageArgs {
  /// Name of the Environment.
  final pulumi.Input<String> connectedEnvironmentName;
  /// Storage properties
  final pulumi.Input<ConnectedEnvironmentStorageProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the storage.
  final pulumi.Input<String>? storageName;

  /// Creates a new [ConnectedEnvironmentsStorageArgs].
  /// [connectedEnvironmentName] Name of the Environment.
  /// [properties] Storage properties
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageName] Name of the storage.
  ConnectedEnvironmentsStorageArgs({
    required pulumi.Output<String> connectedEnvironmentName,
    pulumi.Output<ConnectedEnvironmentStorageProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? storageName,
  }) :
      connectedEnvironmentName = pulumi.Input.asInput<String>(connectedEnvironmentName),
      properties = pulumi.Input.asOptionalInput<ConnectedEnvironmentStorageProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      storageName = pulumi.Input.asOptionalInput<String>(storageName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectedEnvironmentName': connectedEnvironmentName,
      'properties': ?pulumi.Input.mapOptionalInputValue<ConnectedEnvironmentStorageProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'storageName': ?storageName,
    };
  }

  factory ConnectedEnvironmentsStorageArgs.fromMap(Map<String, dynamic> map) {
    return ConnectedEnvironmentsStorageArgs(
      connectedEnvironmentName: pulumi.Output.create<String>(map['connectedEnvironmentName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<ConnectedEnvironmentStorageProperties>(ConnectedEnvironmentStorageProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      storageName: map['storageName'] == null ? null : pulumi.Output.create<String>(map['storageName'] as String),
    );
  }
}

