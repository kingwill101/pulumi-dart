// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a volume that is populated with the contents of a git repository
class GitRepoVolumeResponse {
  /// Target directory name. Must not contain or start with '..'.  If '.' is supplied, the volume directory will be the git repository.  Otherwise, if specified, the volume will contain the git repository in the subdirectory with the given name.
  final pulumi.Input<String>? directory;
  /// Repository URL
  final pulumi.Input<String> repository;
  /// Commit hash for the specified revision.
  final pulumi.Input<String>? revision;

  /// Creates a new [GitRepoVolumeResponse].
  /// [directory] Target directory name. Must not contain or start with '..'.  If '.' is supplied, the volume directory will be the git repository.  Otherwise, if specified, the volume will contain the git repository in the subdirectory with the given name.
  /// [repository] Repository URL
  /// [revision] Commit hash for the specified revision.
  const GitRepoVolumeResponse({
    this.directory,
    required this.repository,
    this.revision,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directory': ?directory,
      'repository': repository,
      'revision': ?revision,
    };
  }

  factory GitRepoVolumeResponse.fromMap(Map<String, dynamic> map) {
    return GitRepoVolumeResponse(
      directory: (() { final guardedValue = map['directory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repository: pulumi.Input.fromValue(map['repository'] as String),
      revision: (() { final guardedValue = map['revision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
