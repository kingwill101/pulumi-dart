// ignore_for_file: unused_element, unnecessary_cast


/// Represents a volume that is populated with the contents of a git repository
class GitRepoVolumeResponse {
  /// Target directory name. Must not contain or start with '..'.  If '.' is supplied, the volume directory will be the git repository.  Otherwise, if specified, the volume will contain the git repository in the subdirectory with the given name.
  final String? directory;
  /// Repository URL
  final String repository;
  /// Commit hash for the specified revision.
  final String? revision;

  /// Creates a new [GitRepoVolumeResponse].
  /// [directory] Target directory name. Must not contain or start with '..'.  If '.' is supplied, the volume directory will be the git repository.  Otherwise, if specified, the volume will contain the git repository in the subdirectory with the given name.
  /// [repository] Repository URL
  /// [revision] Commit hash for the specified revision.
  GitRepoVolumeResponse({
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
      directory: map['directory'] == null ? null : map['directory'] as String,
      repository: map['repository'] as String,
      revision: map['revision'] == null ? null : map['revision'] as String,
    );
  }
}

