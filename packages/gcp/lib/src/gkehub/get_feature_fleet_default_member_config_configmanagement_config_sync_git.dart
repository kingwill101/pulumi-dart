// ignore_for_file: unused_element, unnecessary_cast

class GetFeatureFleetDefaultMemberConfigConfigmanagementConfigSyncGit {
  /// The Google Cloud Service Account Email used for auth when secretType is gcpServiceAccount
  final String gcpServiceAccountEmail;

  /// URL for the HTTPS Proxy to be used when communicating with the Git repo
  final String httpsProxy;

  /// The path within the Git repository that represents the top level of the repo to sync
  final String policyDir;

  /// Type of secret configured for access to the Git repo
  final String secretType;

  /// The branch of the repository to sync from. Default: master
  final String syncBranch;

  /// The URL of the Git repository to use as the source of truth
  final String syncRepo;

  /// Git revision (tag or hash) to check out. Default HEAD
  final String syncRev;

  /// Period in seconds between consecutive syncs. Default: 15
  final String syncWaitSecs;

  /// Creates a new [GetFeatureFleetDefaultMemberConfigConfigmanagementConfigSyncGit].
  /// [gcpServiceAccountEmail] The Google Cloud Service Account Email used for auth when secretType is gcpServiceAccount
  /// [httpsProxy] URL for the HTTPS Proxy to be used when communicating with the Git repo
  /// [policyDir] The path within the Git repository that represents the top level of the repo to sync
  /// [secretType] Type of secret configured for access to the Git repo
  /// [syncBranch] The branch of the repository to sync from. Default: master
  /// [syncRepo] The URL of the Git repository to use as the source of truth
  /// [syncRev] Git revision (tag or hash) to check out. Default HEAD
  /// [syncWaitSecs] Period in seconds between consecutive syncs. Default: 15
  GetFeatureFleetDefaultMemberConfigConfigmanagementConfigSyncGit({
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
    return <String, dynamic>{
      'gcpServiceAccountEmail': gcpServiceAccountEmail,
      'httpsProxy': httpsProxy,
      'policyDir': policyDir,
      'secretType': secretType,
      'syncBranch': syncBranch,
      'syncRepo': syncRepo,
      'syncRev': syncRev,
      'syncWaitSecs': syncWaitSecs,
    };
  }

  factory GetFeatureFleetDefaultMemberConfigConfigmanagementConfigSyncGit.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetFeatureFleetDefaultMemberConfigConfigmanagementConfigSyncGit(
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
