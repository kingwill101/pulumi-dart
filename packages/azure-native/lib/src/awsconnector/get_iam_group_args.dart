// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_iam_group_args_doc}
/// Arguments for getIamGroup.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_iam_group_args_doc}
class GetIamGroupArgs {
  /// Name of IamGroup
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetIamGroupArgs].
  /// [name] Name of IamGroup
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetIamGroupArgs({
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

  factory GetIamGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetIamGroupArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

