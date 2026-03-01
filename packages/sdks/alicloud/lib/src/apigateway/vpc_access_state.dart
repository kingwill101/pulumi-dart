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
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? name,
    pulumi.Output<int>? port,
    pulumi.Output<String>? vpcId,
  }) :
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      port = pulumi.Input.asOptionalInput<int>(port),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

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
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

