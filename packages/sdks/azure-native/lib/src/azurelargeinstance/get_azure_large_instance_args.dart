// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurelargeinstance_get_azure_large_instance_args_doc}
/// Arguments for getAzureLargeInstance.
/// {@endtemplate}
/// {@macro pulumi_azurelargeinstance_get_azure_large_instance_args_doc}
class GetAzureLargeInstanceArgs {
  /// Name of the AzureLargeInstance.
  final pulumi.Input<String> azureLargeInstanceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAzureLargeInstanceArgs].
  /// [azureLargeInstanceName] Name of the AzureLargeInstance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetAzureLargeInstanceArgs({
    required this.azureLargeInstanceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureLargeInstanceName': azureLargeInstanceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAzureLargeInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetAzureLargeInstanceArgs(
      azureLargeInstanceName: pulumi.Input.fromValue(map['azureLargeInstanceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

