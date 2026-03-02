// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_organizations_organization_args_doc}
/// Arguments for getOrganizationsOrganization.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_organizations_organization_args_doc}
class GetOrganizationsOrganizationArgs {
  /// Name of OrganizationsOrganization
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetOrganizationsOrganizationArgs].
  /// [name] Name of OrganizationsOrganization
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetOrganizationsOrganizationArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetOrganizationsOrganizationArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationsOrganizationArgs(
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

