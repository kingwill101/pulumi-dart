// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'git_hub_organization_response.dart';

/// GitHub organization profile
class GitHubOrganizationProfileResponse {
  /// Discriminator property for OrganizationProfile.
  /// Expected value is 'GitHub'.
  final pulumi.Input<String> kind;
  /// The list of GitHub organizations/repositories the pool should be present in.
  final pulumi.Input<List<GitHubOrganizationResponse>> organizations;

  /// Creates a new [GitHubOrganizationProfileResponse].
  /// [kind] Discriminator property for OrganizationProfile.
  /// [organizations] The list of GitHub organizations/repositories the pool should be present in.
  const GitHubOrganizationProfileResponse({
    required this.kind,
    required this.organizations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'organizations': pulumi.Input.mapInputValue<List<GitHubOrganizationResponse>, List<Map<String, dynamic>>>(organizations, (value) => pulumi.Input.encodeList<GitHubOrganizationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GitHubOrganizationProfileResponse.fromMap(Map<String, dynamic> map) {
    return GitHubOrganizationProfileResponse(
      kind: pulumi.Input.fromValue(map['kind'] as String),
      organizations: pulumi.Input.fromValue(pulumi.Input.decodeList<GitHubOrganizationResponse>(map['organizations']!, (value) => GitHubOrganizationResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

