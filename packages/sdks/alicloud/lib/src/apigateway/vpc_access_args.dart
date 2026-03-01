// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_vpc_access_vpc_access_args_doc}
/// The set of arguments for VpcAccess.
/// {@endtemplate}
/// {@macro pulumi_apigateway_vpc_access_vpc_access_args_doc}
class VpcAccessArgs {
  /// The ID of an ECS or SLB instance in the VPC.
  final pulumi.Input<String> instanceId;
  /// The name of the authorization. The name must be unique.
  final pulumi.Input<String>? name;
  /// The port number that corresponds to the instance.
  final pulumi.Input<int> port;
  /// The ID of the VPC. The VPC must be an available one that belongs to the same account as the API.
  final pulumi.Input<String> vpcId;

  /// Creates a new [VpcAccessArgs].
  /// [instanceId] The ID of an ECS or SLB instance in the VPC.
  /// [name] The name of the authorization. The name must be unique.
  /// [port] The port number that corresponds to the instance.
  /// [vpcId] The ID of the VPC. The VPC must be an available one that belongs to the same account as the API.
  VpcAccessArgs({
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? name,
    required pulumi.Output<int> port,
    required pulumi.Output<String> vpcId,
  }) :
      instanceId = pulumi.Input.asInput<String>(instanceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      port = pulumi.Input.asInput<int>(port),
      vpcId = pulumi.Input.asInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'name': ?name,
      'port': port,
      'vpcId': vpcId,
    };
  }

  factory VpcAccessArgs.fromMap(Map<String, dynamic> map) {
    return VpcAccessArgs(
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      port: pulumi.Output.create<int>(map['port'] as int),
      vpcId: pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

