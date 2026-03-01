// ignore_for_file: unused_element, unnecessary_cast

/// Guest OS features for boot disk.
class GuestOsFeatureResponse {
  /// The ID of a supported feature. Read Enabling guest operating system features to see a list of available options. Valid values: * `FEATURE_TYPE_UNSPECIFIED` * `MULTI_IP_SUBNET` * `SECURE_BOOT` * `UEFI_COMPATIBLE` * `VIRTIO_SCSI_MULTIQUEUE` * `WINDOWS`
  final String type;

  /// Creates a new [GuestOsFeatureResponse].
  /// [type] The ID of a supported feature. Read Enabling guest operating system features to see a list of available options. Valid values: * `FEATURE_TYPE_UNSPECIFIED` * `MULTI_IP_SUBNET` * `SECURE_BOOT` * `UEFI_COMPATIBLE` * `VIRTIO_SCSI_MULTIQUEUE` * `WINDOWS`
  GuestOsFeatureResponse({required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': type};
  }

  factory GuestOsFeatureResponse.fromMap(Map<String, dynamic> map) {
    return GuestOsFeatureResponse(type: map['type'] as String);
  }
}
