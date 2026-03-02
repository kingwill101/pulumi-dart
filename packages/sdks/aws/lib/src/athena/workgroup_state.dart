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
    this.arn,
    this.configuration,
    this.description,
    this.forceDestroy,
    this.name,
    this.region,
    this.state,
    this.tags,
    this.tagsAll,
  });

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
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      configuration: map['configuration'] == null ? null : ((WorkgroupConfiguration.fromMap((map['configuration']! as Map).cast<String, dynamic>())).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      forceDestroy: map['forceDestroy'] == null ? null : ((map['forceDestroy'] as bool).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      state: map['state'] == null ? null : ((map['state'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

