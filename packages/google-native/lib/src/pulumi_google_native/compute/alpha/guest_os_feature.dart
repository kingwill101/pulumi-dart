// ignore_for_file: unused_element, unnecessary_cast

import 'guest_os_feature_type.dart';

/// Guest OS features.
class GuestOsFeature {
  /// The ID of a supported feature. To add multiple values, use commas to separate values. Set to one or more of the following values: - VIRTIO_SCSI_MULTIQUEUE - WINDOWS - MULTI_IP_SUBNET - UEFI_COMPATIBLE - GVNIC - SEV_CAPABLE - SUSPEND_RESUME_COMPATIBLE - SEV_LIVE_MIGRATABLE - SEV_SNP_CAPABLE For more information, see Enabling guest operating system features.
  final GuestOsFeatureType? type;

  GuestOsFeature({
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue.value;
    }
    return map;
  }

  factory GuestOsFeature.fromMap(Map<String, dynamic> map) {
    return GuestOsFeature(
      type: map['type'] == null
          ? null
          : GuestOsFeatureType.fromValue(map['type'] as String),
    );
  }
}
