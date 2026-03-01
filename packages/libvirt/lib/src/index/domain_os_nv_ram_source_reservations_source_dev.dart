// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_os_nv_ram_source_reservations_source_dev_sec_label.dart';

class DomainOsNvRamSourceReservationsSourceDev {
  /// Specifies the path to the device file for the EGD backend.
  final String path;
  /// Configures the security label settings for the device source in the EGD backend.
  final List<DomainOsNvRamSourceReservationsSourceDevSecLabel>? secLabels;

  /// Creates a new [DomainOsNvRamSourceReservationsSourceDev].
  /// [path] Specifies the path to the device file for the EGD backend.
  /// [secLabels] Configures the security label settings for the device source in the EGD backend.
  DomainOsNvRamSourceReservationsSourceDev({
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'secLabels': ?secLabels == null ? null : pulumi.Input.encodeList<DomainOsNvRamSourceReservationsSourceDevSecLabel, Map<String, dynamic>>(secLabels!, (value) => value.toMap()),
    };
  }

  factory DomainOsNvRamSourceReservationsSourceDev.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceReservationsSourceDev(
      path: map['path'] as String,
      secLabels: map['secLabels'] == null ? null : pulumi.Input.decodeList<DomainOsNvRamSourceReservationsSourceDevSecLabel>(map['secLabels'], (value) => DomainOsNvRamSourceReservationsSourceDevSecLabel.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

