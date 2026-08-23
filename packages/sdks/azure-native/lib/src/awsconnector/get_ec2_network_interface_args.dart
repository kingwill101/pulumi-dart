// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_ec2_network_interface_args_doc}
/// Arguments for getEc2NetworkInterface.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_ec2_network_interface_args_doc}
class GetEc2NetworkInterfaceArgs {
  /// Name of Ec2NetworkInterface
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEc2NetworkInterfaceArgs].
  /// [name] Name of Ec2NetworkInterface
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetEc2NetworkInterfaceArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEc2NetworkInterfaceArgs.fromMap(Map<String, dynamic> map) {
    return GetEc2NetworkInterfaceArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
