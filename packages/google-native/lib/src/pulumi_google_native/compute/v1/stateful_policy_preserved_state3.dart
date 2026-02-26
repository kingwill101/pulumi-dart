// ignore_for_file: unused_element, unnecessary_cast

/// Configuration of preserved resources.
class StatefulPolicyPreservedState3 {
  /// Disks created on the instances that will be preserved on instance delete, update, etc. This map is keyed with the device names of the disks.
  final Map<String, String>? disks;

  /// External network IPs assigned to the instances that will be preserved on instance delete, update, etc. This map is keyed with the network interface name.
  final Map<String, String>? externalIPs;

  /// Internal network IPs assigned to the instances that will be preserved on instance delete, update, etc. This map is keyed with the network interface name.
  final Map<String, String>? internalIPs;

  StatefulPolicyPreservedState3({
    this.disks,
    this.externalIPs,
    this.internalIPs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disksValue = disks;
    if (disksValue != null) {
      map['disks'] = disksValue;
    }
    final externalIPsValue = externalIPs;
    if (externalIPsValue != null) {
      map['externalIPs'] = externalIPsValue;
    }
    final internalIPsValue = internalIPs;
    if (internalIPsValue != null) {
      map['internalIPs'] = internalIPsValue;
    }
    return map;
  }

  factory StatefulPolicyPreservedState3.fromMap(Map<String, dynamic> map) {
    return StatefulPolicyPreservedState3(
      disks: map['disks'] == null
          ? null
          : (map['disks'] as Map).cast<String, String>(),
      externalIPs: map['externalIPs'] == null
          ? null
          : (map['externalIPs'] as Map).cast<String, String>(),
      internalIPs: map['internalIPs'] == null
          ? null
          : (map['internalIPs'] as Map).cast<String, String>(),
    );
  }
}
