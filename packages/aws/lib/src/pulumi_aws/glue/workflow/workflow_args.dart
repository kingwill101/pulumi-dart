// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Workflow.
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

  WorkflowArgs({
    this.defaultRunProperties,
    this.description,
    this.maxConcurrentRuns,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultRunPropertiesValue = defaultRunProperties;
    if (defaultRunPropertiesValue != null) {
      map['defaultRunProperties'] = defaultRunPropertiesValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final maxConcurrentRunsValue = maxConcurrentRuns;
    if (maxConcurrentRunsValue != null) {
      map['maxConcurrentRuns'] = maxConcurrentRunsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory WorkflowArgs.fromMap(Map<String, dynamic> map) {
    return WorkflowArgs(
      defaultRunProperties: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['defaultRunProperties']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      maxConcurrentRuns:
          pulumi.Input.asOptionalInput<int>(map['maxConcurrentRuns']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
