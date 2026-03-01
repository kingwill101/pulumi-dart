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
  GetAzureLargeInstanceArgs({
    required String azureLargeInstanceName,
    required String resourceGroupName,
  }) :
      azureLargeInstanceName = pulumi.Input.asInput<String>(azureLargeInstanceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureLargeInstanceName': azureLargeInstanceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAzureLargeInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetAzureLargeInstanceArgs(
      azureLargeInstanceName: map['azureLargeInstanceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

