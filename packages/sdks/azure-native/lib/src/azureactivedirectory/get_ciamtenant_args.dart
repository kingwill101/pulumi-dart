// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azureactivedirectory_get_ciamtenant_args_doc}
/// Arguments for getCIAMTenant.
/// {@endtemplate}
/// {@macro pulumi_azureactivedirectory_get_ciamtenant_args_doc}
class GetCIAMTenantArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The initial sub domain of the tenant.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetCIAMTenantArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The initial sub domain of the tenant.
  GetCIAMTenantArgs({
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetCIAMTenantArgs.fromMap(Map<String, dynamic> map) {
    return GetCIAMTenantArgs(
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceName: (map['resourceName'] as String).input(),
    );
  }
}

