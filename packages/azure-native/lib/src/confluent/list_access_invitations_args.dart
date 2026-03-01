// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_confluent_list_access_invitations_args_doc}
/// Arguments for listAccessInvitations.
/// {@endtemplate}
/// {@macro pulumi_confluent_list_access_invitations_args_doc}
class ListAccessInvitationsArgs {
  /// Organization resource name
  final pulumi.Input<String> organizationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Search filters for the request
  final pulumi.Input<Map<String, String>>? searchFilters;

  /// Creates a new [ListAccessInvitationsArgs].
  /// [organizationName] Organization resource name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [searchFilters] Search filters for the request
  ListAccessInvitationsArgs({
    required String organizationName,
    required String resourceGroupName,
    Map<String, String>? searchFilters,
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

  factory ListAccessInvitationsArgs.fromMap(Map<String, dynamic> map) {
    return ListAccessInvitationsArgs(
      organizationName: map['organizationName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      searchFilters: map['searchFilters'] == null ? null : (map['searchFilters'] as Map).cast<String, String>(),
    );
  }
}

