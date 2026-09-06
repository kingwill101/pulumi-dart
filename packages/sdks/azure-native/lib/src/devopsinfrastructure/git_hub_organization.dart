// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines a GitHub organization
class GitHubOrganization {
  /// Optional list of repositories in which the pool should be created.
  final pulumi.Input<List<String>?>? repositories;
  /// The GitHub organization URL in which the pool should be created.
  final pulumi.Input<String> url;

  /// Creates a new [GitHubOrganization].
  /// [repositories] Optional list of repositories in which the pool should be created.
  /// [url] The GitHub organization URL in which the pool should be created.
  const GitHubOrganization({
    this.repositories,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'repositories': ?repositories,
      'url': url,
    };
  }

  factory GitHubOrganization.fromMap(Map<String, dynamic> map) {
    return GitHubOrganization(
      repositories: (() { final guardedValue = map['repositories']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
