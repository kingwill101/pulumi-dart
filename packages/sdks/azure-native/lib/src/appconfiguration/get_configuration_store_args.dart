// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appconfiguration_get_configuration_store_args_doc}
/// Arguments for getConfigurationStore.
/// {@endtemplate}
/// {@macro pulumi_appconfiguration_get_configuration_store_args_doc}
class GetConfigurationStoreArgs {
  /// The name of the configuration store.
  final pulumi.Input<String> configStoreName;
  /// The name of the resource group to which the container registry belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetConfigurationStoreArgs].
  /// [configStoreName] The name of the configuration store.
  /// [resourceGroupName] The name of the resource group to which the container registry belongs.
  const GetConfigurationStoreArgs({
    required this.configStoreName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configStoreName': configStoreName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetConfigurationStoreArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigurationStoreArgs(
      configStoreName: pulumi.Input.fromValue(map['configStoreName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

