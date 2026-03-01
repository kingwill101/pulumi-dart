// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cognitiveservices_get_project_args_doc}
/// Arguments for getProject.
/// {@endtemplate}
/// {@macro pulumi_cognitiveservices_get_project_args_doc}
class GetProjectArgs {
  /// The name of Cognitive Services account.
  final pulumi.Input<String> accountName;
  /// The name of Cognitive Services account's project.
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetProjectArgs].
  /// [accountName] The name of Cognitive Services account.
  /// [projectName] The name of Cognitive Services account's project.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetProjectArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> projectName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      projectName = pulumi.Input.asInput<String>(projectName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetProjectArgs.fromMap(Map<String, dynamic> map) {
    return GetProjectArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

