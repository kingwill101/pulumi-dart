// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'git_hub_organization_response.dart';

/// GitHub organization profile
class GitHubOrganizationProfileResponse {
  /// Discriminator property for OrganizationProfile.
  /// Expected value is 'GitHub'.
  final String kind;
  /// The list of GitHub organizations/repositories the pool should be present in.
  final List<GitHubOrganizationResponse> organizations;

  /// Creates a new [GitHubOrganizationProfileResponse].
  /// [kind] Discriminator property for OrganizationProfile.
  /// [organizations] The list of GitHub organizations/repositories the pool should be present in.
  GitHubOrganizationProfileResponse({
    required this.kind,
    required this.organizations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'organizations': pulumi.Input.encodeList<GitHubOrganizationResponse, Map<String, dynamic>>(organizations, (value) => value.toMap()),
    };
  }

  factory GitHubOrganizationProfileResponse.fromMap(Map<String, dynamic> map) {
    return GitHubOrganizationProfileResponse(
      kind: map['kind'] as String,
      organizations: pulumi.Input.decodeList<GitHubOrganizationResponse>(map['organizations'], (value) => GitHubOrganizationResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

