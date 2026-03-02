// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_glue_workflow_workflow_args_doc}
/// The set of arguments for Workflow.
/// {@endtemplate}
/// {@macro pulumi_glue_workflow_workflow_args_doc}
class WorkflowArgs {
  /// A map of default run properties for this workflow. These properties are passed to all jobs associated to the workflow.
  final pulumi.Input<Map<String, String>>? defaultRunProperties;
  /// Description of the workflow.
  final pulumi.Input<String>? description;
  /// Prevents exceeding the maximum number of concurrent runs of any of the component jobs. If you leave this parameter blank, there is no limit to the number of concurrent workflow runs.
  final pulumi.Input<int>? maxConcurrentRuns;
  /// The name you assign to this workflow.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [WorkflowArgs].
  /// [defaultRunProperties] A map of default run properties for this workflow. These properties are passed to all jobs associated to the workflow.
  /// [description] Description of the workflow.
  /// [maxConcurrentRuns] Prevents exceeding the maximum number of concurrent runs of any of the component jobs. If you leave this parameter blank, there is no limit to the number of concurrent workflow runs.
  /// [name] The name you assign to this workflow.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  WorkflowArgs({
    this.defaultRunProperties,
    this.description,
    this.maxConcurrentRuns,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultRunProperties': ?defaultRunProperties,
      'description': ?description,
      'maxConcurrentRuns': ?maxConcurrentRuns,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory WorkflowArgs.fromMap(Map<String, dynamic> map) {
    return WorkflowArgs(
      defaultRunProperties: map['defaultRunProperties'] == null ? null : ((map['defaultRunProperties'] as Map).cast<String, String>()).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      maxConcurrentRuns: map['maxConcurrentRuns'] == null ? null : (map['maxConcurrentRuns'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

