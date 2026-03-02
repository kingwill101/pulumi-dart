// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_baremetalinfrastructure_get_azure_bare_metal_storage_instance_args_doc}
/// Arguments for getAzureBareMetalStorageInstance.
/// {@endtemplate}
/// {@macro pulumi_baremetalinfrastructure_get_azure_bare_metal_storage_instance_args_doc}
class GetAzureBareMetalStorageInstanceArgs {
  /// Name of the Azure Bare Metal Storage Instance, also known as the ResourceName.
  final pulumi.Input<String> azureBareMetalStorageInstanceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAzureBareMetalStorageInstanceArgs].
  /// [azureBareMetalStorageInstanceName] Name of the Azure Bare Metal Storage Instance, also known as the ResourceName.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetAzureBareMetalStorageInstanceArgs({
    required this.azureBareMetalStorageInstanceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBareMetalStorageInstanceName': azureBareMetalStorageInstanceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAzureBareMetalStorageInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetAzureBareMetalStorageInstanceArgs(
      azureBareMetalStorageInstanceName: (map['azureBareMetalStorageInstanceName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

