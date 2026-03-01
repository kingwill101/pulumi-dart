// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_backing_store_source_reservations_source_dev_sec_label.dart';

class DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceDev {
  /// Specifies the path to the device file for the EGD backend.
  final String path;
  /// Configures the security label settings for the device source in the EGD backend.
  final List<DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceDevSecLabel>? secLabels;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceDev].
  /// [path] Specifies the path to the device file for the EGD backend.
  /// [secLabels] Configures the security label settings for the device source in the EGD backend.
  DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceDev({
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'secLabels': ?secLabels == null ? null : pulumi.Input.encodeList<DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceDevSecLabel, Map<String, dynamic>>(secLabels!, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceDev.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceDev(
      path: map['path'] as String,
      secLabels: map['secLabels'] == null ? null : pulumi.Input.decodeList<DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceDevSecLabel>(map['secLabels'], (value) => DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceDevSecLabel.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

