// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'git_hub_organization.dart';

/// GitHub organization profile
class GitHubOrganizationProfile {
  /// Discriminator property for OrganizationProfile.
  /// Expected value is 'GitHub'.
  final pulumi.Input<String> kind;
  /// The list of GitHub organizations/repositories the pool should be present in.
  final pulumi.Input<List<GitHubOrganization>> organizations;

  /// Creates a new [GitHubOrganizationProfile].
  /// [kind] Discriminator property for OrganizationProfile.
  /// [organizations] The list of GitHub organizations/repositories the pool should be present in.
  GitHubOrganizationProfile({
    required this.kind,
    required this.organizations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'organizations': pulumi.Input.mapInputValue<List<GitHubOrganization>, List<Map<String, dynamic>>>(organizations, (value) => pulumi.Input.encodeList<GitHubOrganization, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GitHubOrganizationProfile.fromMap(Map<String, dynamic> map) {
    return GitHubOrganizationProfile(
      kind: pulumi.Input.fromValue(map['kind'] as String),
      organizations: pulumi.Input.fromValue(pulumi.Input.decodeList<GitHubOrganization>(map['organizations']!, (value) => GitHubOrganization.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

