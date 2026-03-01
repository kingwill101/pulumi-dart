// ignore_for_file: unused_element, unnecessary_cast

import 'region_per_instance_config_preserved_state_external_ip_ip_address.dart';

class RegionPerInstanceConfigPreservedStateExternalIp {
  /// These stateful IPs will never be released during autohealing, update or VM instance recreate operations. This flag is used to configure if the IP reservation should be deleted after it is no longer used by the group, e.g. when the given instance or the whole group is deleted.
  /// Default value is `NEVER`.
  /// Possible values are: `NEVER`, `ON_PERMANENT_INSTANCE_DELETION`.
  final String? autoDelete;
  /// The identifier for this object. Format specified above.
  final String interfaceName;
  /// Ip address representation
  /// Structure is documented below.
  final RegionPerInstanceConfigPreservedStateExternalIpIpAddress? ipAddress;

  /// Creates a new [RegionPerInstanceConfigPreservedStateExternalIp].
  /// [autoDelete] These stateful IPs will never be released during autohealing, update or VM instance recreate operations. This flag is used to configure if the IP reservation should be deleted after it is no longer used by the group, e.g. when the given instance or the whole group is deleted.
  /// [interfaceName] The identifier for this object. Format specified above.
  /// [ipAddress] Ip address representation
  RegionPerInstanceConfigPreservedStateExternalIp({
    this.autoDelete,
    required this.interfaceName,
    this.ipAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoDelete': ?autoDelete,
      'interfaceName': interfaceName,
      'ipAddress': ?ipAddress == null ? null : ipAddress!.toMap(),
    };
  }

  factory RegionPerInstanceConfigPreservedStateExternalIp.fromMap(Map<String, dynamic> map) {
    return RegionPerInstanceConfigPreservedStateExternalIp(
      autoDelete: map['autoDelete'] == null ? null : map['autoDelete'] as String,
      interfaceName: map['interfaceName'] as String,
      ipAddress: map['ipAddress'] == null ? null : RegionPerInstanceConfigPreservedStateExternalIpIpAddress.fromMap((map['ipAddress'] as Map).cast<String, dynamic>()),
    );
  }
}

