// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ScheduleGroup resources.
class ScheduleGroupState {
  /// ARN of the schedule group.
  final pulumi.Input<String>? arn;
  /// Time at which the schedule group was created.
  final pulumi.Input<String>? creationDate;
  /// Time at which the schedule group was last modified.
  final pulumi.Input<String>? lastModificationDate;
  /// Name of the schedule group. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  final pulumi.Input<String>? name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// State of the schedule group. Can be `ACTIVE` or `DELETING`.
  final pulumi.Input<String>? state;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ScheduleGroupState].
  /// [arn] ARN of the schedule group.
  /// [creationDate] Time at which the schedule group was created.
  /// [lastModificationDate] Time at which the schedule group was last modified.
  /// [name] Name of the schedule group. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] State of the schedule group. Can be `ACTIVE` or `DELETING`.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ScheduleGroupState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? creationDate,
    pulumi.Output<String>? lastModificationDate,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namePrefix,
    pulumi.Output<String>? region,
    pulumi.Output<String>? state,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      creationDate = pulumi.Input.asOptionalInput<String>(creationDate),
      lastModificationDate = pulumi.Input.asOptionalInput<String>(lastModificationDate),
      name = pulumi.Input.asOptionalInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      region = pulumi.Input.asOptionalInput<String>(region),
      state = pulumi.Input.asOptionalInput<String>(state),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'creationDate': ?creationDate,
      'lastModificationDate': ?lastModificationDate,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'region': ?region,
      'state': ?state,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ScheduleGroupState.fromMap(Map<String, dynamic> map) {
    return ScheduleGroupState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      creationDate: map['creationDate'] == null ? null : pulumi.Output.create<String>(map['creationDate'] as String),
      lastModificationDate: map['lastModificationDate'] == null ? null : pulumi.Output.create<String>(map['lastModificationDate'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namePrefix: map['namePrefix'] == null ? null : pulumi.Output.create<String>(map['namePrefix'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

