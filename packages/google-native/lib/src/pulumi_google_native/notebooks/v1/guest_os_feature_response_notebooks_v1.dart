// ignore_for_file: unused_element, unnecessary_cast

/// Guest OS features for boot disk.
class GuestOsFeatureResponseNotebooksV1 {
  /// The ID of a supported feature. Read Enabling guest operating system features to see a list of available options. Valid values: * `FEATURE_TYPE_UNSPECIFIED` * `MULTI_IP_SUBNET` * `SECURE_BOOT` * `UEFI_COMPATIBLE` * `VIRTIO_SCSI_MULTIQUEUE` * `WINDOWS`
  final String type;

  GuestOsFeatureResponseNotebooksV1({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }

  factory GuestOsFeatureResponseNotebooksV1.fromMap(Map<String, dynamic> map) {
    return GuestOsFeatureResponseNotebooksV1(
      type: map['type'] as String,
    );
  }
}
