// ignore_for_file: unused_element, unnecessary_cast

import 'guest_os_feature_type_compute_beta.dart';

/// Guest OS features.
class GuestOsFeatureComputeBeta {
  /// The ID of a supported feature. To add multiple values, use commas to separate values. Set to one or more of the following values: - VIRTIO_SCSI_MULTIQUEUE - WINDOWS - MULTI_IP_SUBNET - UEFI_COMPATIBLE - GVNIC - SEV_CAPABLE - SUSPEND_RESUME_COMPATIBLE - SEV_LIVE_MIGRATABLE - SEV_SNP_CAPABLE For more information, see Enabling guest operating system features.
  final GuestOsFeatureTypeComputeBeta? type;

  /// Creates a new [GuestOsFeatureComputeBeta].
  /// [type] The ID of a supported feature. To add multiple values, use commas to separate values. Set to one or more of the following values: - VIRTIO_SCSI_MULTIQUEUE - WINDOWS - MULTI_IP_SUBNET - UEFI_COMPATIBLE - GVNIC - SEV_CAPABLE - SUSPEND_RESUME_COMPATIBLE - SEV_LIVE_MIGRATABLE - SEV_SNP_CAPABLE For more information, see Enabling guest operating system features.
  GuestOsFeatureComputeBeta({this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': ?type == null ? null : type!.value};
  }

  factory GuestOsFeatureComputeBeta.fromMap(Map<String, dynamic> map) {
    return GuestOsFeatureComputeBeta(
      type: map['type'] == null
          ? null
          : GuestOsFeatureTypeComputeBeta.fromValue(map['type'] as String),
    );
  }
}
