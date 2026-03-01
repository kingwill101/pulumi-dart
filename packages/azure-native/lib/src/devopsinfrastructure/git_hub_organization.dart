// ignore_for_file: unused_element, unnecessary_cast


/// Defines a GitHub organization
class GitHubOrganization {
  /// Optional list of repositories in which the pool should be created.
  final List<String>? repositories;
  /// The GitHub organization URL in which the pool should be created.
  final String url;

  /// Creates a new [GitHubOrganization].
  /// [repositories] Optional list of repositories in which the pool should be created.
  /// [url] The GitHub organization URL in which the pool should be created.
  GitHubOrganization({
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
      repositories: map['repositories'] == null ? null : (map['repositories'] as List).cast<String>(),
      url: map['url'] as String,
    );
  }
}

