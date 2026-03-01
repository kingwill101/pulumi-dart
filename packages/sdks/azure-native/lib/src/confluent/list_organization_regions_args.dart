// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_confluent_list_organization_regions_args_doc}
/// Arguments for listOrganizationRegions.
/// {@endtemplate}
/// {@macro pulumi_confluent_list_organization_regions_args_doc}
class ListOrganizationRegionsArgs {
  /// Organization resource name
  final pulumi.Input<String> organizationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Search filters for the request
  final pulumi.Input<Map<String, String>>? searchFilters;

  /// Creates a new [ListOrganizationRegionsArgs].
  /// [organizationName] Organization resource name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [searchFilters] Search filters for the request
  ListOrganizationRegionsArgs({
    required pulumi.Output<String> organizationName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? searchFilters,
  }) :
      organizationName = pulumi.Input.asInput<String>(organizationName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      searchFilters = pulumi.Input.asOptionalInput<Map<String, String>>(searchFilters);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organizationName': organizationName,
      'resourceGroupName': resourceGroupName,
      'searchFilters': ?searchFilters,
    };
  }

  factory ListOrganizationRegionsArgs.fromMap(Map<String, dynamic> map) {
    return ListOrganizationRegionsArgs(
      organizationName: pulumi.Output.create<String>(map['organizationName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      searchFilters: map['searchFilters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['searchFilters'] as Map).cast<String, String>()),
    );
  }
}

