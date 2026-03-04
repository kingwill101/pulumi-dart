// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_applicationinsights_component_linked_storage_account_args_doc}
/// The set of arguments for ComponentLinkedStorageAccount.
/// {@endtemplate}
/// {@macro pulumi_applicationinsights_component_linked_storage_account_args_doc}
class ComponentLinkedStorageAccountArgs {
  /// Linked storage account resource ID
  final pulumi.Input<String>? linkedStorageAccount;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the Application Insights component resource.
  final pulumi.Input<String> resourceName;

  /// The type of the Application Insights component data source for the linked storage account.
  final pulumi.Input<String>? storageType;

  /// Creates a new [ComponentLinkedStorageAccountArgs].
  /// [linkedStorageAccount] Linked storage account resource ID
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the Application Insights component resource.
  /// [storageType] The type of the Application Insights component data source for the linked storage account.
  ComponentLinkedStorageAccountArgs({
    this.linkedStorageAccount,
    required this.resourceGroupName,
    required this.resourceName,
    this.storageType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedStorageAccount': ?linkedStorageAccount,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'storageType': ?storageType,
    };
  }

  factory ComponentLinkedStorageAccountArgs.fromMap(Map<String, dynamic> map) {
    return ComponentLinkedStorageAccountArgs(
      linkedStorageAccount: (() {
        final guardedValue = map['linkedStorageAccount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
      storageType: (() {
        final guardedValue = map['storageType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
