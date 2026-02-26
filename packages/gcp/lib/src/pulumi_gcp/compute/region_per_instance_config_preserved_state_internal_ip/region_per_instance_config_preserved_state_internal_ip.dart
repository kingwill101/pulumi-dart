// ignore_for_file: unused_element, unnecessary_cast

import '../region_per_instance_config_preserved_state_internal_ip_ip_address/region_per_instance_config_preserved_state_internal_ip_ip_address.dart';

class RegionPerInstanceConfigPreservedStateInternalIp {
  /// These stateful IPs will never be released during autohealing, update or VM instance recreate operations. This flag is used to configure if the IP reservation should be deleted after it is no longer used by the group, e.g. when the given instance or the whole group is deleted.
  /// Default value is `NEVER`.
  /// Possible values are: `NEVER`, `ON_PERMANENT_INSTANCE_DELETION`.
  final String? autoDelete;

  /// The identifier for this object. Format specified above.
  final String interfaceName;

  /// Ip address representation
  /// Structure is documented below.
  final RegionPerInstanceConfigPreservedStateInternalIpIpAddress? ipAddress;

  RegionPerInstanceConfigPreservedStateInternalIp({
    this.autoDelete,
    required this.interfaceName,
    this.ipAddress,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoDeleteValue = autoDelete;
    if (autoDeleteValue != null) {
      map['autoDelete'] = autoDeleteValue;
    }
    map['interfaceName'] = interfaceName;
    final ipAddressValue = ipAddress;
    if (ipAddressValue != null) {
      map['ipAddress'] = ipAddressValue.toMap();
    }
    return map;
  }

  factory RegionPerInstanceConfigPreservedStateInternalIp.fromMap(
      Map<String, dynamic> map) {
    return RegionPerInstanceConfigPreservedStateInternalIp(
      autoDelete:
          map['autoDelete'] == null ? null : map['autoDelete'] as String,
      interfaceName: map['interfaceName'] as String,
      ipAddress: map['ipAddress'] == null
          ? null
          : RegionPerInstanceConfigPreservedStateInternalIpIpAddress.fromMap(
              (map['ipAddress'] as Map).cast<String, dynamic>()),
    );
  }
}
