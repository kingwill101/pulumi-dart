// ignore_for_file: unused_element, unnecessary_cast


class RegionDiskGuestOsFeature {
  /// The type of supported feature. Read [Enabling guest operating system features](https://cloud.google.com/compute/docs/images/create-delete-deprecate-private-images#guest-os-features) to see a list of available options.
  /// Possible values are: `MULTI_IP_SUBNET`, `SECURE_BOOT`, `SEV_CAPABLE`, `UEFI_COMPATIBLE`, `VIRTIO_SCSI_MULTIQUEUE`, `WINDOWS`, `GVNIC`, `SEV_LIVE_MIGRATABLE`, `SEV_SNP_CAPABLE`, `SUSPEND_RESUME_COMPATIBLE`, `TDX_CAPABLE`.
  final String type;

  /// Creates a new [RegionDiskGuestOsFeature].
  /// [type] The type of supported feature. Read [Enabling guest operating system features](https://cloud.google.com/compute/docs/images/create-delete-deprecate-private-images#guest-os-features) to see a list of available options.
  RegionDiskGuestOsFeature({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory RegionDiskGuestOsFeature.fromMap(Map<String, dynamic> map) {
    return RegionDiskGuestOsFeature(
      type: map['type'] as String,
    );
  }
}

