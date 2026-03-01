// ignore_for_file: unused_element, unnecessary_cast

/// Optional. A list of features to enable on the guest operating system. Applicable only for bootable images. Read [Enabling guest operating system features](https://cloud.google.com/compute/docs/images/create-delete-deprecate-private-images#guest-os-features) to see a list of available options. Guest OS features for boot disk.
class RuntimeGuestOsFeatureResponse {
  /// The ID of a supported feature. Read [Enabling guest operating system features](https://cloud.google.com/compute/docs/images/create-delete-deprecate-private-images#guest-os-features) to see a list of available options. Valid values: * `FEATURE_TYPE_UNSPECIFIED` * `MULTI_IP_SUBNET` * `SECURE_BOOT` * `UEFI_COMPATIBLE` * `VIRTIO_SCSI_MULTIQUEUE` * `WINDOWS`
  final String type;

  /// Creates a new [RuntimeGuestOsFeatureResponse].
  /// [type] The ID of a supported feature. Read [Enabling guest operating system features](https://cloud.google.com/compute/docs/images/create-delete-deprecate-private-images#guest-os-features) to see a list of available options. Valid values: * `FEATURE_TYPE_UNSPECIFIED` * `MULTI_IP_SUBNET` * `SECURE_BOOT` * `UEFI_COMPATIBLE` * `VIRTIO_SCSI_MULTIQUEUE` * `WINDOWS`
  RuntimeGuestOsFeatureResponse({required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': type};
  }

  factory RuntimeGuestOsFeatureResponse.fromMap(Map<String, dynamic> map) {
    return RuntimeGuestOsFeatureResponse(type: map['type'] as String);
  }
}
