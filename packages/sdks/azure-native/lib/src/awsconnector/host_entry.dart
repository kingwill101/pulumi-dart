// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of HostEntry
class HostEntry {
  /// The hostname to use in the ``/etc/hosts`` entry.
  final pulumi.Input<String>? hostname;
  /// The IP address to use in the ``/etc/hosts`` entry.
  final pulumi.Input<String>? ipAddress;

  /// Creates a new [HostEntry].
  /// [hostname] The hostname to use in the ``/etc/hosts`` entry.
  /// [ipAddress] The IP address to use in the ``/etc/hosts`` entry.
  const HostEntry({
    this.hostname,
    this.ipAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': ?hostname,
      'ipAddress': ?ipAddress,
    };
  }

  factory HostEntry.fromMap(Map<String, dynamic> map) {
    return HostEntry(
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

