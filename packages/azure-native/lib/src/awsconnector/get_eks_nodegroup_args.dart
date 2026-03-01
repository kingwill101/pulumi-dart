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

  factory GetEksNodegroupArgs.fromMap(Map<String, dynamic> map) {
    return GetEksNodegroupArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

