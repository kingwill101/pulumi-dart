// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_sage_maker_notebook_instance_summary_args_doc}
/// Arguments for getSageMakerNotebookInstanceSummary.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_sage_maker_notebook_instance_summary_args_doc}
class GetSageMakerNotebookInstanceSummaryArgs {
  /// Name of SageMakerNotebookInstanceSummary
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetSageMakerNotebookInstanceSummaryArgs].
  /// [name] Name of SageMakerNotebookInstanceSummary
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetSageMakerNotebookInstanceSummaryArgs({
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

  factory GetSageMakerNotebookInstanceSummaryArgs.fromMap(Map<String, dynamic> map) {
    return GetSageMakerNotebookInstanceSummaryArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

