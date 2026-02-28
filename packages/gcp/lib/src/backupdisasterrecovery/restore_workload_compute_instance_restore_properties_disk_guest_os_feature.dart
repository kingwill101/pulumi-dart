// ignore_for_file: unused_element, unnecessary_cast

class RestoreWorkloadComputeInstanceRestorePropertiesDiskGuestOsFeature {
  /// Possible values are: `FEATURE_TYPE_UNSPECIFIED`, `VIRTIO_SCSI_MULTIQUEUE`, `WINDOWS`, `MULTI_IP_SUBNET`, `UEFI_COMPATIBLE`, `SECURE_BOOT`, `GVNIC`, `SEV_CAPABLE`, `BARE_METAL_LINUX_COMPATIBLE`, `SUSPEND_RESUME_COMPATIBLE`, `SEV_LIVE_MIGRATABLE`, `SEV_SNP_CAPABLE`, `TDX_CAPABLE`, `IDPF`, `SEV_LIVE_MIGRATABLE_V2`.
  final String? type;

  /// Creates a new [RestoreWorkloadComputeInstanceRestorePropertiesDiskGuestOsFeature].
  /// [type] Possible values are: `FEATURE_TYPE_UNSPECIFIED`, `VIRTIO_SCSI_MULTIQUEUE`, `WINDOWS`, `MULTI_IP_SUBNET`, `UEFI_COMPATIBLE`, `SECURE_BOOT`, `GVNIC`, `SEV_CAPABLE`, `BARE_METAL_LINUX_COMPATIBLE`, `SUSPEND_RESUME_COMPATIBLE`, `SEV_LIVE_MIGRATABLE`, `SEV_SNP_CAPABLE`, `TDX_CAPABLE`, `IDPF`, `SEV_LIVE_MIGRATABLE_V2`.
  RestoreWorkloadComputeInstanceRestorePropertiesDiskGuestOsFeature({
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory RestoreWorkloadComputeInstanceRestorePropertiesDiskGuestOsFeature.fromMap(
      Map<String, dynamic> map) {
    return RestoreWorkloadComputeInstanceRestorePropertiesDiskGuestOsFeature(
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
