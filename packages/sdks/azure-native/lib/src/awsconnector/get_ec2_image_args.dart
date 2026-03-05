// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_ec2_image_args_doc}
/// Arguments for getEc2Image.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_ec2_image_args_doc}
class GetEc2ImageArgs {
  /// Name of Ec2Image
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEc2ImageArgs].
  /// [name] Name of Ec2Image
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetEc2ImageArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEc2ImageArgs.fromMap(Map<String, dynamic> map) {
    return GetEc2ImageArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

