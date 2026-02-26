// ignore_for_file: unused_element, unnecessary_cast

import 'guest_os_feature_type2.dart';

/// Guest OS features.
class GuestOsFeature2 {
  /// The ID of a supported feature. To add multiple values, use commas to separate values. Set to one or more of the following values: - VIRTIO_SCSI_MULTIQUEUE - WINDOWS - MULTI_IP_SUBNET - UEFI_COMPATIBLE - GVNIC - SEV_CAPABLE - SUSPEND_RESUME_COMPATIBLE - SEV_LIVE_MIGRATABLE - SEV_SNP_CAPABLE For more information, see Enabling guest operating system features.
  final GuestOsFeatureType2? type;

  GuestOsFeature2({
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

  factory GuestOsFeature2.fromMap(Map<String, dynamic> map) {
    return GuestOsFeature2(
      type: map['type'] == null
          ? null
          : GuestOsFeatureType2.fromValue(map['type'] as String),
    );
  }
}
