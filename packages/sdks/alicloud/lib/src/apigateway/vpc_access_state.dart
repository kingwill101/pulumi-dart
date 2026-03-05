// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpcAccess resources.
class VpcAccessState {
  /// The ID of an ECS or SLB instance in the VPC.
  final pulumi.Input<String>? instanceId;
  /// The name of the authorization. The name must be unique.
  final pulumi.Input<String>? name;
  /// The port number that corresponds to the instance.
  final pulumi.Input<int>? port;
  /// The ID of the VPC. The VPC must be an available one that belongs to the same account as the API.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [VpcAccessState].
  /// [instanceId] The ID of an ECS or SLB instance in the VPC.
  /// [name] The name of the authorization. The name must be unique.
  /// [port] The port number that corresponds to the instance.
  /// [vpcId] The ID of the VPC. The VPC must be an available one that belongs to the same account as the API.
  VpcAccessState({
    this.instanceId,
    this.name,
    this.port,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': ?instanceId,
      'name': ?name,
      'port': ?port,
      'vpcId': ?vpcId,
    };
  }

  factory VpcAccessState.fromMap(Map<String, dynamic> map) {
    return VpcAccessState(
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

