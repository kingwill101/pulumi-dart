// ignore_for_file: unused_element, unnecessary_cast

class FeatureFleetDefaultMemberConfigConfigmanagementConfigSyncOci {
  /// The Google Cloud Service Account Email used for auth when secretType is gcpServiceAccount
  final String? gcpServiceAccountEmail;

  /// The absolute path of the directory that contains the local resources. Default: the root directory of the image
  final String? policyDir;

  /// Type of secret configured for access to the Git repo
  final String secretType;

  /// The OCI image repository URL for the package to sync from
  final String? syncRepo;

  /// Period in seconds between consecutive syncs. Default: 15
  final String? syncWaitSecs;

  /// (Optional, Deprecated)
  /// Version of Config Sync installed
  ///
  /// > **Warning:** The `configmanagement.config_sync.oci.version` field is deprecated and will be removed in a future major release. Please use `configmanagement.version` field to specify the version of Config Sync installed instead.
  final String? version;

  /// Creates a new [FeatureFleetDefaultMemberConfigConfigmanagementConfigSyncOci].
  /// [gcpServiceAccountEmail] The Google Cloud Service Account Email used for auth when secretType is gcpServiceAccount
  /// [policyDir] The absolute path of the directory that contains the local resources. Default: the root directory of the image
  /// [secretType] Type of secret configured for access to the Git repo
  /// [syncRepo] The OCI image repository URL for the package to sync from
  /// [syncWaitSecs] Period in seconds between consecutive syncs. Default: 15
  /// [version] (Optional, Deprecated)
  FeatureFleetDefaultMemberConfigConfigmanagementConfigSyncOci({
    this.gcpServiceAccountEmail,
    this.policyDir,
    required this.secretType,
    this.syncRepo,
    this.syncWaitSecs,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcpServiceAccountEmail': ?gcpServiceAccountEmail,
      'policyDir': ?policyDir,
      'secretType': secretType,
      'syncRepo': ?syncRepo,
      'syncWaitSecs': ?syncWaitSecs,
      'version': ?version,
    };
  }

  factory FeatureFleetDefaultMemberConfigConfigmanagementConfigSyncOci.fromMap(
    Map<String, dynamic> map,
  ) {
    return FeatureFleetDefaultMemberConfigConfigmanagementConfigSyncOci(
      gcpServiceAccountEmail: map['gcpServiceAccountEmail'] == null
          ? null
          : map['gcpServiceAccountEmail'] as String,
      policyDir: map['policyDir'] == null ? null : map['policyDir'] as String,
      secretType: map['secretType'] as String,
      syncRepo: map['syncRepo'] == null ? null : map['syncRepo'] as String,
      syncWaitSecs: map['syncWaitSecs'] == null
          ? null
          : map['syncWaitSecs'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
