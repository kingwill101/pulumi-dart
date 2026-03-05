// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_ec2_instance_status_args_doc}
/// Arguments for getEc2InstanceStatus.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_ec2_instance_status_args_doc}
class GetEc2InstanceStatusArgs {
  /// Name of Ec2InstanceStatus
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEc2InstanceStatusArgs].
  /// [name] Name of Ec2InstanceStatus
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetEc2InstanceStatusArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEc2InstanceStatusArgs.fromMap(Map<String, dynamic> map) {
    return GetEc2InstanceStatusArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

