// ignore_for_file: unused_element, unnecessary_cast

/// Represents a single Apt package repository. This repository is added to a repo file that is stored at `/etc/apt/sources.list.d/google_osconfig.list`.
class AptRepositoryResponse2 {
  /// Type of archive files in this repository. The default behavior is DEB.
  final String archiveType;

  /// List of components for this repository. Must contain at least one item.
  final List<String> components;

  /// Distribution of this repository.
  final String distribution;

  /// URI of the key file for this repository. The agent maintains a keyring at `/etc/apt/trusted.gpg.d/osconfig_agent_managed.gpg` containing all the keys in any applied guest policy.
  final String gpgKey;

  /// URI for this repository.
  final String uri;

  AptRepositoryResponse2({
    required this.archiveType,
    required this.components,
    required this.distribution,
    required this.gpgKey,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['archiveType'] = archiveType;
    map['components'] = components;
    map['distribution'] = distribution;
    map['gpgKey'] = gpgKey;
    map['uri'] = uri;
    return map;
  }

  factory AptRepositoryResponse2.fromMap(Map<String, dynamic> map) {
    return AptRepositoryResponse2(
      archiveType: map['archiveType'] as String,
      components: (map['components'] as List).cast<String>(),
      distribution: map['distribution'] as String,
      gpgKey: map['gpgKey'] as String,
      uri: map['uri'] as String,
    );
  }
}
