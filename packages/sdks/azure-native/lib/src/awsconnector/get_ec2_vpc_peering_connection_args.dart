// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_ec2_vpc_peering_connection_args_doc}
/// Arguments for getEc2VpcPeeringConnection.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_ec2_vpc_peering_connection_args_doc}
class GetEc2VpcPeeringConnectionArgs {
  /// Name of Ec2VPCPeeringConnection
  final pulumi.Input<String> name;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEc2VpcPeeringConnectionArgs].
  /// [name] Name of Ec2VPCPeeringConnection
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetEc2VpcPeeringConnectionArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEc2VpcPeeringConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetEc2VpcPeeringConnectionArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
