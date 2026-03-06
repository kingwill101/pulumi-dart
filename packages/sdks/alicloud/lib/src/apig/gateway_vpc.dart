// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GatewayVpc {
  /// The zone name.
  final pulumi.Input<String>? name;
  /// The VPC network ID.
  final pulumi.Input<String> vpcId;

  /// Creates a new [GatewayVpc].
  /// [name] The zone name.
  /// [vpcId] The VPC network ID.
  const GatewayVpc({
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
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}

