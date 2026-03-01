// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_ec2_security_group_args_doc}
/// Arguments for getEc2SecurityGroup.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_ec2_security_group_args_doc}
class GetEc2SecurityGroupArgs {
  /// Name of Ec2SecurityGroup
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEc2SecurityGroupArgs].
  /// [name] Name of Ec2SecurityGroup
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetEc2SecurityGroupArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEc2SecurityGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetEc2SecurityGroupArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

