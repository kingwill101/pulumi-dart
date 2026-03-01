// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dbformysql_get_azure_adadministrator_args_doc}
/// Arguments for getAzureADAdministrator.
/// {@endtemplate}
/// {@macro pulumi_dbformysql_get_azure_adadministrator_args_doc}
class GetAzureADAdministratorArgs {
  /// The name of the Azure AD Administrator.
  final pulumi.Input<String> administratorName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [GetAzureADAdministratorArgs].
  /// [administratorName] The name of the Azure AD Administrator.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverName] The name of the server.
  GetAzureADAdministratorArgs({
    required pulumi.Output<String> administratorName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serverName,
  }) :
      administratorName = pulumi.Input.asInput<String>(administratorName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorName': administratorName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory GetAzureADAdministratorArgs.fromMap(Map<String, dynamic> map) {
    return GetAzureADAdministratorArgs(
      administratorName: pulumi.Output.create<String>(map['administratorName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: pulumi.Output.create<String>(map['serverName'] as String),
    );
  }
}

