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
    required this.instanceId,
    this.name,
    required this.port,
    required this.vpcId,
  });

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
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      port: pulumi.Input.fromValue(map['port'] as int),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}
