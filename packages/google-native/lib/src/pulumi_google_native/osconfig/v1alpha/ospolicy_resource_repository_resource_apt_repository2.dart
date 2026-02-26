// ignore_for_file: unused_element, unnecessary_cast

import 'ospolicy_resource_repository_resource_apt_repository_archive_type2.dart';

/// Represents a single apt package repository. These will be added to a repo file that will be managed at `/etc/apt/sources.list.d/google_osconfig.list`.
class OSPolicyResourceRepositoryResourceAptRepository2 {
  /// Type of archive files in this repository.
  final OSPolicyResourceRepositoryResourceAptRepositoryArchiveType2 archiveType;

  /// List of components for this repository. Must contain at least one item.
  final List<String> components;

  /// Distribution of this repository.
  final String distribution;

  /// URI of the key file for this repository. The agent maintains a keyring at `/etc/apt/trusted.gpg.d/osconfig_agent_managed.gpg`.
  final String? gpgKey;

  /// URI for this repository.
  final String uri;

  OSPolicyResourceRepositoryResourceAptRepository2({
    required this.archiveType,
    required this.components,
    required this.distribution,
    this.gpgKey,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['archiveType'] = archiveType.value;
    map['components'] = components;
    map['distribution'] = distribution;
    final gpgKeyValue = gpgKey;
    if (gpgKeyValue != null) {
      map['gpgKey'] = gpgKeyValue;
    }
    map['uri'] = uri;
    return map;
  }

  factory OSPolicyResourceRepositoryResourceAptRepository2.fromMap(
      Map<String, dynamic> map) {
    return OSPolicyResourceRepositoryResourceAptRepository2(
      archiveType:
          OSPolicyResourceRepositoryResourceAptRepositoryArchiveType2.fromValue(
              map['archiveType'] as String),
      components: (map['components'] as List).cast<String>(),
      distribution: map['distribution'] as String,
      gpgKey: map['gpgKey'] == null ? null : map['gpgKey'] as String,
      uri: map['uri'] as String,
    );
  }
}
