// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Workflow resources.
class WorkflowState {
  /// Amazon Resource Name (ARN) of Glue Workflow
  final pulumi.Input<String>? arn;
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
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [WorkflowState].
  /// [arn] Amazon Resource Name (ARN) of Glue Workflow
  /// [defaultRunProperties] A map of default run properties for this workflow. These properties are passed to all jobs associated to the workflow.
  /// [description] Description of the workflow.
  /// [maxConcurrentRuns] Prevents exceeding the maximum number of concurrent runs of any of the component jobs. If you leave this parameter blank, there is no limit to the number of concurrent workflow runs.
  /// [name] The name you assign to this workflow.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  WorkflowState({
    pulumi.Output<String>? arn,
    pulumi.Output<Map<String, String>>? defaultRunProperties,
    pulumi.Output<String>? description,
    pulumi.Output<int>? maxConcurrentRuns,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      defaultRunProperties = pulumi.Input.asOptionalInput<Map<String, String>>(defaultRunProperties),
      description = pulumi.Input.asOptionalInput<String>(description),
      maxConcurrentRuns = pulumi.Input.asOptionalInput<int>(maxConcurrentRuns),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'defaultRunProperties': ?defaultRunProperties,
      'description': ?description,
      'maxConcurrentRuns': ?maxConcurrentRuns,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory WorkflowState.fromMap(Map<String, dynamic> map) {
    return WorkflowState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      defaultRunProperties: map['defaultRunProperties'] == null ? null : pulumi.Output.create<Map<String, String>>((map['defaultRunProperties'] as Map).cast<String, String>()),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      maxConcurrentRuns: map['maxConcurrentRuns'] == null ? null : pulumi.Output.create<int>(map['maxConcurrentRuns'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

