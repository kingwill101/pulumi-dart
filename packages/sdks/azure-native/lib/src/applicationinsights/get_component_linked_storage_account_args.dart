// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_applicationinsights_get_component_linked_storage_account_args_doc}
/// Arguments for getComponentLinkedStorageAccount.
/// {@endtemplate}
/// {@macro pulumi_applicationinsights_get_component_linked_storage_account_args_doc}
class GetComponentLinkedStorageAccountArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Application Insights component resource.
  final pulumi.Input<String> resourceName;
  /// The type of the Application Insights component data source for the linked storage account.
  final pulumi.Input<String> storageType;

  /// Creates a new [GetComponentLinkedStorageAccountArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the Application Insights component resource.
  /// [storageType] The type of the Application Insights component data source for the linked storage account.
  const GetComponentLinkedStorageAccountArgs({
    required this.resourceGroupName,
    required this.resourceName,
    required this.storageType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'storageType': storageType,
    };
  }

  factory GetComponentLinkedStorageAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetComponentLinkedStorageAccountArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
      storageType: pulumi.Input.fromValue(map['storageType'] as String),
    );
  }
}
