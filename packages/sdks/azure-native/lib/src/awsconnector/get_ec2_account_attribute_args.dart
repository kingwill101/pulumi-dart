// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_ec2_account_attribute_args_doc}
/// Arguments for getEc2AccountAttribute.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_ec2_account_attribute_args_doc}
class GetEc2AccountAttributeArgs {
  /// Name of Ec2AccountAttribute
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEc2AccountAttributeArgs].
  /// [name] Name of Ec2AccountAttribute
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetEc2AccountAttributeArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEc2AccountAttributeArgs.fromMap(Map<String, dynamic> map) {
    return GetEc2AccountAttributeArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
