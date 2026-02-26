// ignore_for_file: unused_element, unnecessary_cast

class RestorePlanRestoreConfigVolumeDataRestorePolicyBinding {
  /// Specifies the mechanism to be used to restore this volume data.
  /// See https://cloud.google.com/kubernetes-engine/docs/add-on/backup-for-gke/reference/rest/v1/RestoreConfig#VolumeDataRestorePolicy
  /// for more information on each policy option.
  /// Possible values are: `RESTORE_VOLUME_DATA_FROM_BACKUP`, `REUSE_VOLUME_HANDLE_FROM_BACKUP`, `NO_VOLUME_DATA_RESTORATION`.
  final String policy;

  /// The volume type, as determined by the PVC's
  /// bound PV, to apply the policy to.
  /// Possible values are: `GCE_PERSISTENT_DISK`.
  final String volumeType;

  RestorePlanRestoreConfigVolumeDataRestorePolicyBinding({
    required this.policy,
    required this.volumeType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policy'] = policy;
    map['volumeType'] = volumeType;
    return map;
  }

  factory RestorePlanRestoreConfigVolumeDataRestorePolicyBinding.fromMap(
      Map<String, dynamic> map) {
    return RestorePlanRestoreConfigVolumeDataRestorePolicyBinding(
      policy: map['policy'] as String,
      volumeType: map['volumeType'] as String,
    );
  }
}
