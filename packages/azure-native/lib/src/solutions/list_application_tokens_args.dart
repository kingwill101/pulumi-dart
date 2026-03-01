// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_solutions_list_application_tokens_args_doc}
/// Arguments for listApplicationTokens.
/// {@endtemplate}
/// {@macro pulumi_solutions_list_application_tokens_args_doc}
class ListApplicationTokensArgs {
  /// The name of the managed application.
  final pulumi.Input<String> applicationName;
  /// The authorization audience.
  final pulumi.Input<String>? authorizationAudience;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The user assigned identities.
  final pulumi.Input<List<String>>? userAssignedIdentities;

  /// Creates a new [ListApplicationTokensArgs].
  /// [applicationName] The name of the managed application.
  /// [authorizationAudience] The authorization audience.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [userAssignedIdentities] The user assigned identities.
  ListApplicationTokensArgs({
    required String applicationName,
    String? authorizationAudience,
    required String resourceGroupName,
    List<String>? userAssignedIdentities,
  }) :
      applicationName = pulumi.Input.asInput<String>(applicationName),
      authorizationAudience = pulumi.Input.asOptionalInput<String>(authorizationAudience),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      userAssignedIdentities = pulumi.Input.asOptionalInput<List<String>>(userAssignedIdentities);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': applicationName,
      'authorizationAudience': ?authorizationAudience,
      'resourceGroupName': resourceGroupName,
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory ListApplicationTokensArgs.fromMap(Map<String, dynamic> map) {
    return ListApplicationTokensArgs(
      applicationName: map['applicationName'] as String,
      authorizationAudience: map['authorizationAudience'] == null ? null : map['authorizationAudience'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : (map['userAssignedIdentities'] as List).cast<String>(),
    );
  }
}

