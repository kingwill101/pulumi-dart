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
    required this.organizationName,
    required this.resourceGroupName,
    this.searchFilters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organizationName': organizationName,
      'resourceGroupName': resourceGroupName,
      'searchFilters': ?searchFilters,
    };
  }

  factory ListOrganizationRegionsArgs.fromMap(Map<String, dynamic> map) {
    return ListOrganizationRegionsArgs(
      organizationName: pulumi.Input.fromValue(
        map['organizationName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      searchFilters: (() {
        final guardedValue = map['searchFilters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
