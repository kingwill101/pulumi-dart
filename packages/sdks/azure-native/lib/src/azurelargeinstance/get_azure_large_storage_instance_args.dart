// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurelargeinstance_get_azure_large_storage_instance_args_doc}
/// Arguments for getAzureLargeStorageInstance.
/// {@endtemplate}
/// {@macro pulumi_azurelargeinstance_get_azure_large_storage_instance_args_doc}
class GetAzureLargeStorageInstanceArgs {
  /// Name of the AzureLargeStorageInstance.
  final pulumi.Input<String> azureLargeStorageInstanceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAzureLargeStorageInstanceArgs].
  /// [azureLargeStorageInstanceName] Name of the AzureLargeStorageInstance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetAzureLargeStorageInstanceArgs({
    required this.azureLargeStorageInstanceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureLargeStorageInstanceName': azureLargeStorageInstanceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAzureLargeStorageInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetAzureLargeStorageInstanceArgs(
      azureLargeStorageInstanceName: pulumi.Input.fromValue(map['azureLargeStorageInstanceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
