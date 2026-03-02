// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines a GitHub organization
class GitHubOrganizationResponse {
  /// Optional list of repositories in which the pool should be created.
  final pulumi.Input<List<String>>? repositories;
  /// The GitHub organization URL in which the pool should be created.
  final pulumi.Input<String> url;

  /// Creates a new [GitHubOrganizationResponse].
  /// [repositories] Optional list of repositories in which the pool should be created.
  /// [url] The GitHub organization URL in which the pool should be created.
  GitHubOrganizationResponse({
    this.repositories,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'repositories': ?repositories,
      'url': url,
    };
  }

  factory GitHubOrganizationResponse.fromMap(Map<String, dynamic> map) {
    return GitHubOrganizationResponse(
      repositories: map['repositories'] == null ? null : ((map['repositories'] as List).cast<String>()).input(),
      url: (map['url'] as String).input(),
    );
  }
}

