// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_list_web_app_azure_storage_accounts_args_doc}
/// Arguments for listWebAppAzureStorageAccounts.
/// {@endtemplate}
/// {@macro pulumi_web_list_web_app_azure_storage_accounts_args_doc}
class ListWebAppAzureStorageAccountsArgs {
  /// Name of the app.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListWebAppAzureStorageAccountsArgs].
  /// [name] Name of the app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  ListWebAppAzureStorageAccountsArgs({
    required String name,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListWebAppAzureStorageAccountsArgs.fromMap(Map<String, dynamic> map) {
    return ListWebAppAzureStorageAccountsArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

