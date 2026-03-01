// ignore_for_file: unused_element, unnecessary_cast

import 'ospolicy_resource_repository_resource_apt_repository_archive_type.dart';

/// Represents a single apt package repository. These will be added to a repo file that will be managed at `/etc/apt/sources.list.d/google_osconfig.list`.
class OSPolicyResourceRepositoryResourceAptRepository {
  /// Type of archive files in this repository.
  final OSPolicyResourceRepositoryResourceAptRepositoryArchiveType archiveType;

  /// List of components for this repository. Must contain at least one item.
  final List<String> components;

  /// Distribution of this repository.
  final String distribution;

  /// URI of the key file for this repository. The agent maintains a keyring at `/etc/apt/trusted.gpg.d/osconfig_agent_managed.gpg`.
  final String? gpgKey;

  /// URI for this repository.
  final String uri;

  /// Creates a new [OSPolicyResourceRepositoryResourceAptRepository].
  /// [archiveType] Type of archive files in this repository.
  /// [components] List of components for this repository. Must contain at least one item.
  /// [distribution] Distribution of this repository.
  /// [gpgKey] URI of the key file for this repository. The agent maintains a keyring at `/etc/apt/trusted.gpg.d/osconfig_agent_managed.gpg`.
  /// [uri] URI for this repository.
  OSPolicyResourceRepositoryResourceAptRepository({
    required this.archiveType,
    required this.components,
    required this.distribution,
    this.gpgKey,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveType': archiveType.value,
      'components': components,
      'distribution': distribution,
      'gpgKey': ?gpgKey,
      'uri': uri,
    };
  }

  factory OSPolicyResourceRepositoryResourceAptRepository.fromMap(
    Map<String, dynamic> map,
  ) {
    return OSPolicyResourceRepositoryResourceAptRepository(
      archiveType:
          OSPolicyResourceRepositoryResourceAptRepositoryArchiveType.fromValue(
            map['archiveType'] as String,
          ),
      components: (map['components'] as List).cast<String>(),
      distribution: map['distribution'] as String,
      gpgKey: map['gpgKey'] == null ? null : map['gpgKey'] as String,
      uri: map['uri'] as String,
    );
  }
}
