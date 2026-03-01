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

  /// Creates a new [GetFeatureFleetDefaultMemberConfigConfigmanagementConfigSyncOci].
  /// [gcpServiceAccountEmail] The Google Cloud Service Account Email used for auth when secretType is gcpServiceAccount
  /// [policyDir] The absolute path of the directory that contains the local resources. Default: the root directory of the image
  /// [secretType] Type of secret configured for access to the Git repo
  /// [syncRepo] The OCI image repository URL for the package to sync from
  /// [syncWaitSecs] Period in seconds between consecutive syncs. Default: 15
  /// [version] Version of Config Sync installed
  GetFeatureFleetDefaultMemberConfigConfigmanagementConfigSyncOci({
    required this.gcpServiceAccountEmail,
    required this.policyDir,
    required this.secretType,
    required this.syncRepo,
    required this.syncWaitSecs,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcpServiceAccountEmail': gcpServiceAccountEmail,
      'policyDir': policyDir,
      'secretType': secretType,
      'syncRepo': syncRepo,
      'syncWaitSecs': syncWaitSecs,
      'version': version,
    };
  }

  factory GetFeatureFleetDefaultMemberConfigConfigmanagementConfigSyncOci.fromMap(
    Map<String, dynamic> map,
  ) {
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
