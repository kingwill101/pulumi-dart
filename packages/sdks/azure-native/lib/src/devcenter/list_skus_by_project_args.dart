// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_list_skus_by_project_args_doc}
/// Arguments for listSkusByProject.
/// {@endtemplate}
/// {@macro pulumi_devcenter_list_skus_by_project_args_doc}
class ListSkusByProjectArgs {
  /// The name of the project.
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListSkusByProjectArgs].
  /// [projectName] The name of the project.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ListSkusByProjectArgs({
    required pulumi.Output<String> projectName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      projectName = pulumi.Input.asInput<String>(projectName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListSkusByProjectArgs.fromMap(Map<String, dynamic> map) {
    return ListSkusByProjectArgs(
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

