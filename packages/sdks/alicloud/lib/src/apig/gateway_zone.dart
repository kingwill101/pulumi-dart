// ignore_for_file: unused_element, unnecessary_cast


class GatewayZone {
  /// The zone name.
  final String? name;
  /// The vswitch ID.
  final String? vswitchId;
  /// The zone ID.
  final String? zoneId;

  /// Creates a new [GatewayZone].
  /// [name] The zone name.
  /// [vswitchId] The vswitch ID.
  /// [zoneId] The zone ID.
  GatewayZone({
    this.name,
    this.vswitchId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'vswitchId': ?vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory GatewayZone.fromMap(Map<String, dynamic> map) {
    return GatewayZone(
      name: map['name'] == null ? null : map['name'] as String,
      vswitchId: map['vswitchId'] == null ? null : map['vswitchId'] as String,
      zoneId: map['zoneId'] == null ? null : map['zoneId'] as String,
    );
  }
}

