// ignore_for_file: unused_element, unnecessary_cast


class GetAppServiceSourceControl {
  /// The branch of the remote repository in use.
  final String branch;
  /// Limits to manual integration.
  final bool manualIntegration;
  /// The URL of the source code repository.
  final String repoUrl;
  /// Is roll-back enabled for the repository.
  final bool rollbackEnabled;
  /// Uses Mercurial if `true`, otherwise uses Git.
  final bool useMercurial;

  /// Creates a new [GetAppServiceSourceControl].
  /// [branch] The branch of the remote repository in use.
  /// [manualIntegration] Limits to manual integration.
  /// [repoUrl] The URL of the source code repository.
  /// [rollbackEnabled] Is roll-back enabled for the repository.
  /// [useMercurial] Uses Mercurial if `true`, otherwise uses Git.
  GetAppServiceSourceControl({
    required this.branch,
    required this.manualIntegration,
    required this.repoUrl,
    required this.rollbackEnabled,
    required this.useMercurial,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branch': branch,
      'manualIntegration': manualIntegration,
      'repoUrl': repoUrl,
      'rollbackEnabled': rollbackEnabled,
      'useMercurial': useMercurial,
    };
  }

  factory GetAppServiceSourceControl.fromMap(Map<String, dynamic> map) {
    return GetAppServiceSourceControl(
      branch: map['branch'] as String,
      manualIntegration: map['manualIntegration'] as bool,
      repoUrl: map['repoUrl'] as String,
      rollbackEnabled: map['rollbackEnabled'] as bool,
      useMercurial: map['useMercurial'] as bool,
    );
  }
}

