// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_lease_target.dart';

class DomainDevicesLease {
  /// Defines a unique key for identifying the lease within the domain configuration.
  final String? key;
  /// Configures the lockspace for the lease, ensuring exclusive access to the leased device.
  final String lockspace;
  /// Specifies the target configuration for the lease, defining where the lease applies.
  final DomainDevicesLeaseTarget? target;

  /// Creates a new [DomainDevicesLease].
  /// [key] Defines a unique key for identifying the lease within the domain configuration.
  /// [lockspace] Configures the lockspace for the lease, ensuring exclusive access to the leased device.
  /// [target] Specifies the target configuration for the lease, defining where the lease applies.
  DomainDevicesLease({
    this.key,
    required this.lockspace,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'lockspace': lockspace,
      'target': ?target == null ? null : target!.toMap(),
    };
  }

  factory DomainDevicesLease.fromMap(Map<String, dynamic> map) {
    return DomainDevicesLease(
      key: map['key'] == null ? null : map['key'] as String,
      lockspace: map['lockspace'] as String,
      target: map['target'] == null ? null : DomainDevicesLeaseTarget.fromMap((map['target'] as Map).cast<String, dynamic>()),
    );
  }
}

