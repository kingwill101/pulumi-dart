// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_eks_nodegroup_args_doc}
/// Arguments for getEksNodegroup.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_eks_nodegroup_args_doc}
class GetEksNodegroupArgs {
  /// Name of EksNodegroup
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEksNodegroupArgs].
  /// [name] Name of EksNodegroup
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetEksNodegroupArgs({
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

  factory GetEksNodegroupArgs.fromMap(Map<String, dynamic> map) {
    return GetEksNodegroupArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

