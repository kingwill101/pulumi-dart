// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_swf_domain_domain_args_doc}
/// The set of arguments for Domain.
/// {@endtemplate}
/// {@macro pulumi_swf_domain_domain_args_doc}
class DomainArgs {
  /// The domain description.
  final pulumi.Input<String>? description;

  /// The name of the domain. If omitted, this provider will assign a random, unique name.
  final pulumi.Input<String>? name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Length of time that SWF will continue to retain information about the workflow execution after the workflow execution is complete, must be between 0 and 90 days.
  final pulumi.Input<String> workflowExecutionRetentionPeriodInDays;

  /// Creates a new [DomainArgs].
  /// [description] The domain description.
  /// [name] The name of the domain. If omitted, this provider will assign a random, unique name.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [workflowExecutionRetentionPeriodInDays] Length of time that SWF will continue to retain information about the workflow execution after the workflow execution is complete, must be between 0 and 90 days.
  DomainArgs({
    String? description,
    String? name,
    String? namePrefix,
    String? region,
    Map<String, String>? tags,
    required String workflowExecutionRetentionPeriodInDays,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       name = pulumi.Input.asOptionalInput<String>(name),
       namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
       region = pulumi.Input.asOptionalInput<String>(region),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       workflowExecutionRetentionPeriodInDays = pulumi.Input.asInput<String>(
         workflowExecutionRetentionPeriodInDays,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'region': ?region,
      'tags': ?tags,
      'workflowExecutionRetentionPeriodInDays':
          workflowExecutionRetentionPeriodInDays,
    };
  }

  factory DomainArgs.fromMap(Map<String, dynamic> map) {
    return DomainArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      namePrefix: map['namePrefix'] == null
          ? null
          : map['namePrefix'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      workflowExecutionRetentionPeriodInDays:
          map['workflowExecutionRetentionPeriodInDays'] as String,
    );
  }
}
