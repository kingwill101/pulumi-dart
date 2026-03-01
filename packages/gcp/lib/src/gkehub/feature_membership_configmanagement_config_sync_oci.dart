// ignore_for_file: unused_element, unnecessary_cast


class FeatureMembershipConfigmanagementConfigSyncOci {
  /// The GCP Service Account Email used for auth when secret_type is gcpserviceaccount.
  final String? gcpServiceAccountEmail;
  /// The absolute path of the directory that contains the local resources. Default: the root directory of the image.
  final String? policyDir;
  /// Type of secret configured for access to the OCI Image. Must be one of gcenode, gcpserviceaccount or none.
  final String? secretType;
  /// The OCI image repository URL for the package to sync from. e.g. LOCATION-docker.pkg.dev/PROJECT_ID/REPOSITORY_NAME/PACKAGE_NAME.
  final String? syncRepo;
  /// Period in seconds(int64 format) between consecutive syncs. Default: 15.
  final String? syncWaitSecs;

  /// Creates a new [FeatureMembershipConfigmanagementConfigSyncOci].
  /// [gcpServiceAccountEmail] The GCP Service Account Email used for auth when secret_type is gcpserviceaccount.
  /// [policyDir] The absolute path of the directory that contains the local resources. Default: the root directory of the image.
  /// [secretType] Type of secret configured for access to the OCI Image. Must be one of gcenode, gcpserviceaccount or none.
  /// [syncRepo] The OCI image repository URL for the package to sync from. e.g. LOCATION-docker.pkg.dev/PROJECT_ID/REPOSITORY_NAME/PACKAGE_NAME.
  /// [syncWaitSecs] Period in seconds(int64 format) between consecutive syncs. Default: 15.
  FeatureMembershipConfigmanagementConfigSyncOci({
    this.gcpServiceAccountEmail,
    this.policyDir,
    this.secretType,
    this.syncRepo,
    this.syncWaitSecs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcpServiceAccountEmail': ?gcpServiceAccountEmail,
      'policyDir': ?policyDir,
      'secretType': ?secretType,
      'syncRepo': ?syncRepo,
      'syncWaitSecs': ?syncWaitSecs,
    };
  }

  factory FeatureMembershipConfigmanagementConfigSyncOci.fromMap(Map<String, dynamic> map) {
    return FeatureMembershipConfigmanagementConfigSyncOci(
      gcpServiceAccountEmail: map['gcpServiceAccountEmail'] == null ? null : map['gcpServiceAccountEmail'] as String,
      policyDir: map['policyDir'] == null ? null : map['policyDir'] as String,
      secretType: map['secretType'] == null ? null : map['secretType'] as String,
      syncRepo: map['syncRepo'] == null ? null : map['syncRepo'] as String,
      syncWaitSecs: map['syncWaitSecs'] == null ? null : map['syncWaitSecs'] as String,
    );
  }
}

