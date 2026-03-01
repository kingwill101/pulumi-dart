// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edge_get_solution_template_args_doc}
/// Arguments for getSolutionTemplate.
/// {@endtemplate}
/// {@macro pulumi_edge_get_solution_template_args_doc}
class GetSolutionTemplateArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the SolutionTemplate
  final pulumi.Input<String> solutionTemplateName;

  /// Creates a new [GetSolutionTemplateArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [solutionTemplateName] The name of the SolutionTemplate
  GetSolutionTemplateArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> solutionTemplateName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      solutionTemplateName = pulumi.Input.asInput<String>(solutionTemplateName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'solutionTemplateName': solutionTemplateName,
    };
  }

  factory GetSolutionTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetSolutionTemplateArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      solutionTemplateName: pulumi.Output.create<String>(map['solutionTemplateName'] as String),
    );
  }
}

