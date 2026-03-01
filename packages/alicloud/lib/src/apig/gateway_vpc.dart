// ignore_for_file: unused_element, unnecessary_cast


class GatewayVpc {
  /// The zone name.
  final String? name;
  /// The VPC network ID.
  final String vpcId;

  /// Creates a new [GatewayVpc].
  /// [name] The zone name.
  /// [vpcId] The VPC network ID.
  GatewayVpc({
    this.name,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'vpcId': vpcId,
    };
  }

  factory GatewayVpc.fromMap(Map<String, dynamic> map) {
    return GatewayVpc(
      name: map['name'] == null ? null : map['name'] as String,
      vpcId: map['vpcId'] as String,
    );
  }
}

