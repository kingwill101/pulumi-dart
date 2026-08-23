// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_baremetalinfrastructure_get_azure_bare_metal_instance_args_doc}
/// Arguments for getAzureBareMetalInstance.
/// {@endtemplate}
/// {@macro pulumi_baremetalinfrastructure_get_azure_bare_metal_instance_args_doc}
class GetAzureBareMetalInstanceArgs {
  /// Name of the Azure Bare Metal Instance, also known as the ResourceName.
  final pulumi.Input<String> azureBareMetalInstanceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAzureBareMetalInstanceArgs].
  /// [azureBareMetalInstanceName] Name of the Azure Bare Metal Instance, also known as the ResourceName.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetAzureBareMetalInstanceArgs({
    required this.azureBareMetalInstanceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBareMetalInstanceName': azureBareMetalInstanceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAzureBareMetalInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetAzureBareMetalInstanceArgs(
      azureBareMetalInstanceName: pulumi.Input.fromValue(map['azureBareMetalInstanceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
