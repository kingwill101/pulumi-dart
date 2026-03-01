// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_managed_instance_azure_adonly_authentication_args_doc}
/// Arguments for getManagedInstanceAzureADOnlyAuthentication.
/// {@endtemplate}
/// {@macro pulumi_sql_get_managed_instance_azure_adonly_authentication_args_doc}
class GetManagedInstanceAzureADOnlyAuthenticationArgs {
  /// The name of server azure active directory only authentication.
  final pulumi.Input<String> authenticationName;
  /// The name of the managed instance.
  final pulumi.Input<String> managedInstanceName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetManagedInstanceAzureADOnlyAuthenticationArgs].
  /// [authenticationName] The name of server azure active directory only authentication.
  /// [managedInstanceName] The name of the managed instance.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  GetManagedInstanceAzureADOnlyAuthenticationArgs({
    required String authenticationName,
    required String managedInstanceName,
    required String resourceGroupName,
  }) :
      authenticationName = pulumi.Input.asInput<String>(authenticationName),
      managedInstanceName = pulumi.Input.asInput<String>(managedInstanceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationName': authenticationName,
      'managedInstanceName': managedInstanceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetManagedInstanceAzureADOnlyAuthenticationArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedInstanceAzureADOnlyAuthenticationArgs(
      authenticationName: map['authenticationName'] as String,
      managedInstanceName: map['managedInstanceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

