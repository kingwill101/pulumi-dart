// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Workflow.
class WorkflowArgs {
  /// A map of default run properties for this workflow. These properties are passed to all jobs associated to the workflow.
  final Input<Map<String, String>>? defaultRunProperties;

  /// Description of the workflow.
  final Input<String>? description;

  /// Prevents exceeding the maximum number of concurrent runs of any of the component jobs. If you leave this parameter blank, there is no limit to the number of concurrent workflow runs.
  final Input<int>? maxConcurrentRuns;

  /// The name you assign to this workflow.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of resource tags. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

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
      defaultRunProperties: Input.asOptionalInput<Map<String, String>>(
          map['defaultRunProperties']),
      description: Input.asOptionalInput<String>(map['description']),
      maxConcurrentRuns: Input.asOptionalInput<int>(map['maxConcurrentRuns']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
