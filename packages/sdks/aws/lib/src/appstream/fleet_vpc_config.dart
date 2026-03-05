// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FleetVpcConfig {
  /// Identifiers of the security groups for the fleet or image builder.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// Identifiers of the subnets to which a network interface is attached from the fleet instance or image builder instance.
  final pulumi.Input<List<String>>? subnetIds;

  /// Creates a new [FleetVpcConfig].
  /// [securityGroupIds] Identifiers of the security groups for the fleet or image builder.
  /// [subnetIds] Identifiers of the subnets to which a network interface is attached from the fleet instance or image builder instance.
  FleetVpcConfig({
    this.securityGroupIds,
    this.subnetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroupIds': ?securityGroupIds,
      'subnetIds': ?subnetIds,
    };
  }

  factory FleetVpcConfig.fromMap(Map<String, dynamic> map) {
    return FleetVpcConfig(
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

