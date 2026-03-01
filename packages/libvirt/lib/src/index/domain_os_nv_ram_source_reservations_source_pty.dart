// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_os_nv_ram_source_reservations_source_pty_sec_label.dart';

class DomainOsNvRamSourceReservationsSourcePty {
  /// Sets the path for the PTY source in the EGD backend.
  final String path;
  /// This field configures the security label for the Pseudo TTY device, enabling security controls over access.
  final List<DomainOsNvRamSourceReservationsSourcePtySecLabel>? secLabels;

  /// Creates a new [DomainOsNvRamSourceReservationsSourcePty].
  /// [path] Sets the path for the PTY source in the EGD backend.
  /// [secLabels] This field configures the security label for the Pseudo TTY device, enabling security controls over access.
  DomainOsNvRamSourceReservationsSourcePty({
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'secLabels': ?secLabels == null ? null : pulumi.Input.encodeList<DomainOsNvRamSourceReservationsSourcePtySecLabel, Map<String, dynamic>>(secLabels!, (value) => value.toMap()),
    };
  }

  factory DomainOsNvRamSourceReservationsSourcePty.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceReservationsSourcePty(
      path: map['path'] as String,
      secLabels: map['secLabels'] == null ? null : pulumi.Input.decodeList<DomainOsNvRamSourceReservationsSourcePtySecLabel>(map['secLabels'], (value) => DomainOsNvRamSourceReservationsSourcePtySecLabel.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

