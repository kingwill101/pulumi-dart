// ignore_for_file: unused_element, unnecessary_cast

/// Git repo configuration for a single cluster.
class ConfigManagementGitConfig2 {
  /// The Google Cloud Service Account Email used for auth when secret_type is gcpServiceAccount.
  final String? gcpServiceAccountEmail;

  /// URL for the HTTPS proxy to be used when communicating with the Git repo.
  final String? httpsProxy;

  /// The path within the Git repository that represents the top level of the repo to sync. Default: the root directory of the repository.
  final String? policyDir;

  /// Type of secret configured for access to the Git repo. Must be one of ssh, cookiefile, gcenode, token, gcpserviceaccount or none. The validation of this is case-sensitive. Required.
  final String? secretType;

  /// The branch of the repository to sync from. Default: master.
  final String? syncBranch;

  /// The URL of the Git repository to use as the source of truth.
  final String? syncRepo;

  /// Git revision (tag or hash) to check out. Default HEAD.
  final String? syncRev;

  /// Period in seconds between consecutive syncs. Default: 15.
  final String? syncWaitSecs;

  ConfigManagementGitConfig2({
    this.gcpServiceAccountEmail,
    this.httpsProxy,
    this.policyDir,
    this.secretType,
    this.syncBranch,
    this.syncRepo,
    this.syncRev,
    this.syncWaitSecs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final gcpServiceAccountEmailValue = gcpServiceAccountEmail;
    if (gcpServiceAccountEmailValue != null) {
      map['gcpServiceAccountEmail'] = gcpServiceAccountEmailValue;
    }
    final httpsProxyValue = httpsProxy;
    if (httpsProxyValue != null) {
      map['httpsProxy'] = httpsProxyValue;
    }
    final policyDirValue = policyDir;
    if (policyDirValue != null) {
      map['policyDir'] = policyDirValue;
    }
    final secretTypeValue = secretType;
    if (secretTypeValue != null) {
      map['secretType'] = secretTypeValue;
    }
    final syncBranchValue = syncBranch;
    if (syncBranchValue != null) {
      map['syncBranch'] = syncBranchValue;
    }
    final syncRepoValue = syncRepo;
    if (syncRepoValue != null) {
      map['syncRepo'] = syncRepoValue;
    }
    final syncRevValue = syncRev;
    if (syncRevValue != null) {
      map['syncRev'] = syncRevValue;
    }
    final syncWaitSecsValue = syncWaitSecs;
    if (syncWaitSecsValue != null) {
      map['syncWaitSecs'] = syncWaitSecsValue;
    }
    return map;
  }

  factory ConfigManagementGitConfig2.fromMap(Map<String, dynamic> map) {
    return ConfigManagementGitConfig2(
      gcpServiceAccountEmail: map['gcpServiceAccountEmail'] == null
          ? null
          : map['gcpServiceAccountEmail'] as String,
      httpsProxy:
          map['httpsProxy'] == null ? null : map['httpsProxy'] as String,
      policyDir: map['policyDir'] == null ? null : map['policyDir'] as String,
      secretType:
          map['secretType'] == null ? null : map['secretType'] as String,
      syncBranch:
          map['syncBranch'] == null ? null : map['syncBranch'] as String,
      syncRepo: map['syncRepo'] == null ? null : map['syncRepo'] as String,
      syncRev: map['syncRev'] == null ? null : map['syncRev'] as String,
      syncWaitSecs:
          map['syncWaitSecs'] == null ? null : map['syncWaitSecs'] as String,
    );
  }
}
