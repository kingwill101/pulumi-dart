// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azureactivedirectory_get_b2_ctenant_args_doc}
/// Arguments for getB2CTenant.
/// {@endtemplate}
/// {@macro pulumi_azureactivedirectory_get_b2_ctenant_args_doc}
class GetB2CTenantArgs {
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The initial domain name of the Azure AD B2C tenant.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetB2CTenantArgs].
  /// [resourceGroupName] The name of the resource group.
  /// [resourceName] The initial domain name of the Azure AD B2C tenant.
  const GetB2CTenantArgs({
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetB2CTenantArgs.fromMap(Map<String, dynamic> map) {
    return GetB2CTenantArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}
