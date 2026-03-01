// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_ec2_key_pair_args_doc}
/// Arguments for getEc2KeyPair.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_ec2_key_pair_args_doc}
class GetEc2KeyPairArgs {
  /// Name of Ec2KeyPair
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEc2KeyPairArgs].
  /// [name] Name of Ec2KeyPair
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetEc2KeyPairArgs({
    required String name,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEc2KeyPairArgs.fromMap(Map<String, dynamic> map) {
    return GetEc2KeyPairArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

