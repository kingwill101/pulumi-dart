// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_ec2_subnet_args_doc}
/// Arguments for getEc2Subnet.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_ec2_subnet_args_doc}
class GetEc2SubnetArgs {
  /// Name of Ec2Subnet
  final pulumi.Input<String> name;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEc2SubnetArgs].
  /// [name] Name of Ec2Subnet
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetEc2SubnetArgs({required this.name, required this.resourceGroupName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEc2SubnetArgs.fromMap(Map<String, dynamic> map) {
    return GetEc2SubnetArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
