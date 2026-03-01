// ignore_for_file: unused_element, unnecessary_cast


class FunctionAppSourceControl {
  /// The branch of the remote repository to use. Defaults to 'master'.
  final String? branch;
  /// Limits to manual integration. Defaults to `false` if not specified.
  final bool? manualIntegration;
  /// The URL of the source code repository.
  final String? repoUrl;
  /// Enable roll-back for the repository. Defaults to `false` if not specified.
  final bool? rollbackEnabled;
  /// Use Mercurial if `true`, otherwise uses Git.
  final bool? useMercurial;

  /// Creates a new [FunctionAppSourceControl].
  /// [branch] The branch of the remote repository to use. Defaults to 'master'.
  /// [manualIntegration] Limits to manual integration. Defaults to `false` if not specified.
  /// [repoUrl] The URL of the source code repository.
  /// [rollbackEnabled] Enable roll-back for the repository. Defaults to `false` if not specified.
  /// [useMercurial] Use Mercurial if `true`, otherwise uses Git.
  FunctionAppSourceControl({
    this.branch,
    this.manualIntegration,
    this.repoUrl,
    this.rollbackEnabled,
    this.useMercurial,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branch': ?branch,
      'manualIntegration': ?manualIntegration,
      'repoUrl': ?repoUrl,
      'rollbackEnabled': ?rollbackEnabled,
      'useMercurial': ?useMercurial,
    };
  }

  factory FunctionAppSourceControl.fromMap(Map<String, dynamic> map) {
    return FunctionAppSourceControl(
      branch: map['branch'] == null ? null : map['branch'] as String,
      manualIntegration: map['manualIntegration'] == null ? null : map['manualIntegration'] as bool,
      repoUrl: map['repoUrl'] == null ? null : map['repoUrl'] as String,
      rollbackEnabled: map['rollbackEnabled'] == null ? null : map['rollbackEnabled'] as bool,
      useMercurial: map['useMercurial'] == null ? null : map['useMercurial'] as bool,
    );
  }
}

