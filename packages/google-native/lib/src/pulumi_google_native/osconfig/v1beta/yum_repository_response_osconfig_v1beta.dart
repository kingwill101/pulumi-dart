// ignore_for_file: unused_element, unnecessary_cast

/// Represents a single Yum package repository. This repository is added to a repo file that is stored at `/etc/yum.repos.d/google_osconfig.repo`.
class YumRepositoryResponseOsconfigV1beta {
  /// The location of the repository directory.
  final String baseUrl;

  /// The display name of the repository.
  final String displayName;

  /// URIs of GPG keys.
  final List<String> gpgKeys;

  YumRepositoryResponseOsconfigV1beta({
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

  factory YumRepositoryResponseOsconfigV1beta.fromMap(
      Map<String, dynamic> map) {
    return YumRepositoryResponseOsconfigV1beta(
      baseUrl: map['baseUrl'] as String,
      displayName: map['displayName'] as String,
      gpgKeys: (map['gpgKeys'] as List).cast<String>(),
    );
  }
}
