// ignore_for_file: unused_element, unnecessary_cast

class GetFeatureFleetDefaultMemberConfigConfigmanagementConfigSyncOci {
  /// The Google Cloud Service Account Email used for auth when secretType is gcpServiceAccount
  final String gcpServiceAccountEmail;

  /// The absolute path of the directory that contains the local resources. Default: the root directory of the image
  final String policyDir;

  /// Type of secret configured for access to the Git repo
  final String secretType;

  /// The OCI image repository URL for the package to sync from
  final String syncRepo;

  /// Period in seconds between consecutive syncs. Default: 15
  final String syncWaitSecs;

  /// Version of Config Sync installed
  final String version;

  GetFeatureFleetDefaultMemberConfigConfigmanagementConfigSyncOci({
    required this.gcpServiceAccountEmail,
    required this.policyDir,
    required this.secretType,
    required this.syncRepo,
    required this.syncWaitSecs,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gcpServiceAccountEmail'] = gcpServiceAccountEmail;
    map['policyDir'] = policyDir;
    map['secretType'] = secretType;
    map['syncRepo'] = syncRepo;
    map['syncWaitSecs'] = syncWaitSecs;
    map['version'] = version;
    return map;
  }

  factory GetFeatureFleetDefaultMemberConfigConfigmanagementConfigSyncOci.fromMap(
      Map<String, dynamic> map) {
    return GetFeatureFleetDefaultMemberConfigConfigmanagementConfigSyncOci(
      gcpServiceAccountEmail: map['gcpServiceAccountEmail'] as String,
      policyDir: map['policyDir'] as String,
      secretType: map['secretType'] as String,
      syncRepo: map['syncRepo'] as String,
      syncWaitSecs: map['syncWaitSecs'] as String,
      version: map['version'] as String,
    );
  }
}
