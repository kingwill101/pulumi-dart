// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_ec2_vpc_args_doc}
/// Arguments for getEc2Vpc.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_ec2_vpc_args_doc}
class GetEc2VpcArgs {
  /// Name of Ec2Vpc
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEc2VpcArgs].
  /// [name] Name of Ec2Vpc
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetEc2VpcArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEc2VpcArgs.fromMap(Map<String, dynamic> map) {
    return GetEc2VpcArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

