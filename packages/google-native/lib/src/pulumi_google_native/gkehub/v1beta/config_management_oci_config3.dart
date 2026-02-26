// ignore_for_file: unused_element, unnecessary_cast

/// OCI repo configuration for a single cluster
class ConfigManagementOciConfig3 {
  /// The Google Cloud Service Account Email used for auth when secret_type is gcpServiceAccount.
  final String? gcpServiceAccountEmail;

  /// The absolute path of the directory that contains the local resources. Default: the root directory of the image.
  final String? policyDir;

  /// Type of secret configured for access to the Git repo.
  final String? secretType;

  /// The OCI image repository URL for the package to sync from. e.g. `LOCATION-docker.pkg.dev/PROJECT_ID/REPOSITORY_NAME/PACKAGE_NAME`.
  final String? syncRepo;

  /// Period in seconds between consecutive syncs. Default: 15.
  final String? syncWaitSecs;

  ConfigManagementOciConfig3({
    this.gcpServiceAccountEmail,
    this.policyDir,
    this.secretType,
    this.syncRepo,
    this.syncWaitSecs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final gcpServiceAccountEmailValue = gcpServiceAccountEmail;
    if (gcpServiceAccountEmailValue != null) {
      map['gcpServiceAccountEmail'] = gcpServiceAccountEmailValue;
    }
    final policyDirValue = policyDir;
    if (policyDirValue != null) {
      map['policyDir'] = policyDirValue;
    }
    final secretTypeValue = secretType;
    if (secretTypeValue != null) {
      map['secretType'] = secretTypeValue;
    }
    final syncRepoValue = syncRepo;
    if (syncRepoValue != null) {
      map['syncRepo'] = syncRepoValue;
    }
    final syncWaitSecsValue = syncWaitSecs;
    if (syncWaitSecsValue != null) {
      map['syncWaitSecs'] = syncWaitSecsValue;
    }
    return map;
  }

  factory ConfigManagementOciConfig3.fromMap(Map<String, dynamic> map) {
    return ConfigManagementOciConfig3(
      gcpServiceAccountEmail: map['gcpServiceAccountEmail'] == null
          ? null
          : map['gcpServiceAccountEmail'] as String,
      policyDir: map['policyDir'] == null ? null : map['policyDir'] as String,
      secretType:
          map['secretType'] == null ? null : map['secretType'] as String,
      syncRepo: map['syncRepo'] == null ? null : map['syncRepo'] as String,
      syncWaitSecs:
          map['syncWaitSecs'] == null ? null : map['syncWaitSecs'] as String,
    );
  }
}
