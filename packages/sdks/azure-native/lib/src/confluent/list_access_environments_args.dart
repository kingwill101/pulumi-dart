// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_confluent_list_access_environments_args_doc}
/// Arguments for listAccessEnvironments.
/// {@endtemplate}
/// {@macro pulumi_confluent_list_access_environments_args_doc}
class ListAccessEnvironmentsArgs {
  /// Organization resource name
  final pulumi.Input<String> organizationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Search filters for the request
  final pulumi.Input<Map<String, String>>? searchFilters;

  /// Creates a new [ListAccessEnvironmentsArgs].
  /// [organizationName] Organization resource name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [searchFilters] Search filters for the request
  ListAccessEnvironmentsArgs({
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

  factory ListAccessEnvironmentsArgs.fromMap(Map<String, dynamic> map) {
    return ListAccessEnvironmentsArgs(
      organizationName: (map['organizationName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      searchFilters: map['searchFilters'] == null ? null : ((map['searchFilters'] as Map).cast<String, String>()).input(),
    );
  }
}

