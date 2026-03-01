// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workgroup_configuration.dart';

/// Input properties used for looking up and filtering Workgroup resources.
class WorkgroupState {
  /// ARN of the workgroup
  final pulumi.Input<String>? arn;
  /// Configuration block with various settings for the workgroup. Documented below.
  final pulumi.Input<WorkgroupConfiguration>? configuration;
  /// Description of the workgroup.
  final pulumi.Input<String>? description;
  /// Option to delete the workgroup and its contents even if the workgroup contains any named queries.
  final pulumi.Input<bool>? forceDestroy;
  /// Name of the workgroup.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// State of the workgroup. Valid values are `DISABLED` or `ENABLED`. Defaults to `ENABLED`.
  final pulumi.Input<String>? state;
  /// Key-value map of resource tags for the workgroup. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [WorkgroupState].
  /// [arn] ARN of the workgroup
  /// [configuration] Configuration block with various settings for the workgroup. Documented below.
  /// [description] Description of the workgroup.
  /// [forceDestroy] Option to delete the workgroup and its contents even if the workgroup contains any named queries.
  /// [name] Name of the workgroup.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] State of the workgroup. Valid values are `DISABLED` or `ENABLED`. Defaults to `ENABLED`.
  /// [tags] Key-value map of resource tags for the workgroup. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  WorkgroupState({
    pulumi.Output<String>? arn,
    pulumi.Output<WorkgroupConfiguration>? configuration,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? forceDestroy,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? state,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      configuration = pulumi.Input.asOptionalInput<WorkgroupConfiguration>(configuration),
      description = pulumi.Input.asOptionalInput<String>(description),
      forceDestroy = pulumi.Input.asOptionalInput<bool>(forceDestroy),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      state = pulumi.Input.asOptionalInput<String>(state),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'configuration': ?pulumi.Input.mapOptionalInputValue<WorkgroupConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'description': ?description,
      'forceDestroy': ?forceDestroy,
      'name': ?name,
      'region': ?region,
      'state': ?state,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory WorkgroupState.fromMap(Map<String, dynamic> map) {
    return WorkgroupState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      configuration: map['configuration'] == null ? null : pulumi.Output.create<WorkgroupConfiguration>(WorkgroupConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      forceDestroy: map['forceDestroy'] == null ? null : pulumi.Output.create<bool>(map['forceDestroy'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

