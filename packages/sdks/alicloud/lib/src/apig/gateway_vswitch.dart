// ignore_for_file: unused_element, unnecessary_cast


class GatewayVswitch {
  /// The zone name.
  final String? name;
  /// The ID of the virtual switch.
  final String? vswitchId;

  /// Creates a new [GatewayVswitch].
  /// [name] The zone name.
  /// [vswitchId] The ID of the virtual switch.
  GatewayVswitch({
    this.name,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'vswitchId': ?vswitchId,
    };
  }

  factory GatewayVswitch.fromMap(Map<String, dynamic> map) {
    return GatewayVswitch(
      name: map['name'] == null ? null : map['name'] as String,
      vswitchId: map['vswitchId'] == null ? null : map['vswitchId'] as String,
    );
  }
}

