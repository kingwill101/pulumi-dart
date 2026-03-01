// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_source_reservations_source_pty_sec_label.dart';

class DomainDevicesDiskMirrorSourceReservationsSourcePty {
  /// Sets the path for the PTY source in the EGD backend.
  final String path;
  /// This field configures the security label for the Pseudo TTY device, enabling security controls over access.
  final List<DomainDevicesDiskMirrorSourceReservationsSourcePtySecLabel>? secLabels;

  /// Creates a new [DomainDevicesDiskMirrorSourceReservationsSourcePty].
  /// [path] Sets the path for the PTY source in the EGD backend.
  /// [secLabels] This field configures the security label for the Pseudo TTY device, enabling security controls over access.
  DomainDevicesDiskMirrorSourceReservationsSourcePty({
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'secLabels': ?secLabels == null ? null : pulumi.Input.encodeList<DomainDevicesDiskMirrorSourceReservationsSourcePtySecLabel, Map<String, dynamic>>(secLabels!, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskMirrorSourceReservationsSourcePty.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceReservationsSourcePty(
      path: map['path'] as String,
      secLabels: map['secLabels'] == null ? null : pulumi.Input.decodeList<DomainDevicesDiskMirrorSourceReservationsSourcePtySecLabel>(map['secLabels'], (value) => DomainDevicesDiskMirrorSourceReservationsSourcePtySecLabel.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

