// ignore_for_file: unused_element, unnecessary_cast

/// Git repo configuration for a single cluster.
class ConfigManagementGitConfigResponseGkehubV1alpha {
  /// The Google Cloud Service Account Email used for auth when secret_type is gcpServiceAccount.
  final String gcpServiceAccountEmail;

  /// URL for the HTTPS proxy to be used when communicating with the Git repo.
  final String httpsProxy;

  /// The path within the Git repository that represents the top level of the repo to sync. Default: the root directory of the repository.
  final String policyDir;

  /// Type of secret configured for access to the Git repo. Must be one of ssh, cookiefile, gcenode, token, gcpserviceaccount or none. The validation of this is case-sensitive. Required.
  final String secretType;

  /// The branch of the repository to sync from. Default: master.
  final String syncBranch;

  /// The URL of the Git repository to use as the source of truth.
  final String syncRepo;

  /// Git revision (tag or hash) to check out. Default HEAD.
  final String syncRev;

  /// Period in seconds between consecutive syncs. Default: 15.
  final String syncWaitSecs;

  ConfigManagementGitConfigResponseGkehubV1alpha({
    required this.gcpServiceAccountEmail,
    required this.httpsProxy,
    required this.policyDir,
    required this.secretType,
    required this.syncBranch,
    required this.syncRepo,
    required this.syncRev,
    required this.syncWaitSecs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gcpServiceAccountEmail'] = gcpServiceAccountEmail;
    map['httpsProxy'] = httpsProxy;
    map['policyDir'] = policyDir;
    map['secretType'] = secretType;
    map['syncBranch'] = syncBranch;
    map['syncRepo'] = syncRepo;
    map['syncRev'] = syncRev;
    map['syncWaitSecs'] = syncWaitSecs;
    return map;
  }

  factory ConfigManagementGitConfigResponseGkehubV1alpha.fromMap(
      Map<String, dynamic> map) {
    return ConfigManagementGitConfigResponseGkehubV1alpha(
      gcpServiceAccountEmail: map['gcpServiceAccountEmail'] as String,
      httpsProxy: map['httpsProxy'] as String,
      policyDir: map['policyDir'] as String,
      secretType: map['secretType'] as String,
      syncBranch: map['syncBranch'] as String,
      syncRepo: map['syncRepo'] as String,
      syncRev: map['syncRev'] as String,
      syncWaitSecs: map['syncWaitSecs'] as String,
    );
  }
}
