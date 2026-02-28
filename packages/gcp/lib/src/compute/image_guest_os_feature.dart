// ignore_for_file: unused_element, unnecessary_cast

class ImageGuestOsFeature {
  /// The type of supported feature. Read [Enabling guest operating system features](https://cloud.google.com/compute/docs/images/create-delete-deprecate-private-images#guest-os-features) to see a list of available options.
  /// Possible values are: `MULTI_IP_SUBNET`, `SECURE_BOOT`, `SEV_CAPABLE`, `UEFI_COMPATIBLE`, `VIRTIO_SCSI_MULTIQUEUE`, `WINDOWS`, `GVNIC`, `IDPF`, `SEV_LIVE_MIGRATABLE`, `SEV_SNP_CAPABLE`, `SUSPEND_RESUME_COMPATIBLE`, `TDX_CAPABLE`, `SEV_LIVE_MIGRATABLE_V2`.
  final String type;

  /// Creates a new [ImageGuestOsFeature].
  /// [type] The type of supported feature. Read [Enabling guest operating system features](https://cloud.google.com/compute/docs/images/create-delete-deprecate-private-images#guest-os-features) to see a list of available options.
  ImageGuestOsFeature({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }

  factory ImageGuestOsFeature.fromMap(Map<String, dynamic> map) {
    return ImageGuestOsFeature(
      type: map['type'] as String,
    );
  }
}
