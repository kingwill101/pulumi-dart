// ignore_for_file: unused_element, unnecessary_cast


/// Represents a repository.
class RepoResponse {
  /// Array of branches.
  final List<String>? branches;
  /// The name of the repository.
  final String? fullName;
  /// The installation id of the repository.
  final double? installationId;
  /// The url to access the repository.
  final String? url;

  /// Creates a new [RepoResponse].
  /// [branches] Array of branches.
  /// [fullName] The name of the repository.
  /// [installationId] The installation id of the repository.
  /// [url] The url to access the repository.
  RepoResponse({
    this.branches,
    this.fullName,
    this.installationId,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branches': ?branches,
      'fullName': ?fullName,
      'installationId': ?installationId,
      'url': ?url,
    };
  }

  factory RepoResponse.fromMap(Map<String, dynamic> map) {
    return RepoResponse(
      branches: map['branches'] == null ? null : (map['branches'] as List).cast<String>(),
      fullName: map['fullName'] == null ? null : map['fullName'] as String,
      installationId: map['installationId'] == null ? null : map['installationId'] as double,
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

