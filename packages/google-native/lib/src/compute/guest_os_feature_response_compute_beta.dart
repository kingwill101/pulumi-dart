// ignore_for_file: unused_element, unnecessary_cast

/// Guest OS features.
class GuestOsFeatureResponseComputeBeta {
  /// The ID of a supported feature. To add multiple values, use commas to separate values. Set to one or more of the following values: - VIRTIO_SCSI_MULTIQUEUE - WINDOWS - MULTI_IP_SUBNET - UEFI_COMPATIBLE - GVNIC - SEV_CAPABLE - SUSPEND_RESUME_COMPATIBLE - SEV_LIVE_MIGRATABLE - SEV_SNP_CAPABLE For more information, see Enabling guest operating system features.
  final String type;

  /// Creates a new [GuestOsFeatureResponseComputeBeta].
  /// [type] The ID of a supported feature. To add multiple values, use commas to separate values. Set to one or more of the following values: - VIRTIO_SCSI_MULTIQUEUE - WINDOWS - MULTI_IP_SUBNET - UEFI_COMPATIBLE - GVNIC - SEV_CAPABLE - SUSPEND_RESUME_COMPATIBLE - SEV_LIVE_MIGRATABLE - SEV_SNP_CAPABLE For more information, see Enabling guest operating system features.
  GuestOsFeatureResponseComputeBeta({required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': type};
  }

  factory GuestOsFeatureResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return GuestOsFeatureResponseComputeBeta(type: map['type'] as String);
  }
}
