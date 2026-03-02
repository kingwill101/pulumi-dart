// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of HostEntry
class HostEntryResponse {
  /// The hostname to use in the ``/etc/hosts`` entry.
  final pulumi.Input<String>? hostname;
  /// The IP address to use in the ``/etc/hosts`` entry.
  final pulumi.Input<String>? ipAddress;

  /// Creates a new [HostEntryResponse].
  /// [hostname] The hostname to use in the ``/etc/hosts`` entry.
  /// [ipAddress] The IP address to use in the ``/etc/hosts`` entry.
  HostEntryResponse({
    this.hostname,
    this.ipAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': ?hostname,
      'ipAddress': ?ipAddress,
    };
  }

  factory HostEntryResponse.fromMap(Map<String, dynamic> map) {
    return HostEntryResponse(
      hostname: map['hostname'] == null ? null : (map['hostname']! as String).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress']! as String).input(),
    );
  }
}

