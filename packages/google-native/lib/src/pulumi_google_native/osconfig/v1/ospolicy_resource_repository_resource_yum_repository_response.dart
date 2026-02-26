// ignore_for_file: unused_element, unnecessary_cast

/// Represents a single yum package repository. These are added to a repo file that is managed at `/etc/yum.repos.d/google_osconfig.repo`.
class OSPolicyResourceRepositoryResourceYumRepositoryResponse {
  /// The location of the repository directory.
  final String baseUrl;

  /// The display name of the repository.
  final String displayName;

  /// URIs of GPG keys.
  final List<String> gpgKeys;

  OSPolicyResourceRepositoryResourceYumRepositoryResponse({
    required this.baseUrl,
    required this.displayName,
    required this.gpgKeys,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['baseUrl'] = baseUrl;
    map['displayName'] = displayName;
    map['gpgKeys'] = gpgKeys;
    return map;
  }

  factory OSPolicyResourceRepositoryResourceYumRepositoryResponse.fromMap(
      Map<String, dynamic> map) {
    return OSPolicyResourceRepositoryResourceYumRepositoryResponse(
      baseUrl: map['baseUrl'] as String,
      displayName: map['displayName'] as String,
      gpgKeys: (map['gpgKeys'] as List).cast<String>(),
    );
  }
}
