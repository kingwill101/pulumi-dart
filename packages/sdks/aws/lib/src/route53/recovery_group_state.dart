// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RecoveryGroup resources.
class RecoveryGroupState {
  /// ARN of the recovery group
  final pulumi.Input<String>? arn;
  /// List of cell arns to add as nested fault domains within this recovery group
  final pulumi.Input<List<String>>? cells;
  /// A unique name describing the recovery group.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? recoveryGroupName;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [RecoveryGroupState].
  /// [arn] ARN of the recovery group
  /// [cells] List of cell arns to add as nested fault domains within this recovery group
  /// [recoveryGroupName] A unique name describing the recovery group.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  RecoveryGroupState({
    pulumi.Output<String>? arn,
    pulumi.Output<List<String>>? cells,
    pulumi.Output<String>? recoveryGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      cells = pulumi.Input.asOptionalInput<List<String>>(cells),
      recoveryGroupName = pulumi.Input.asOptionalInput<String>(recoveryGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'cells': ?cells,
      'recoveryGroupName': ?recoveryGroupName,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory RecoveryGroupState.fromMap(Map<String, dynamic> map) {
    return RecoveryGroupState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      cells: map['cells'] == null ? null : pulumi.Output.create<List<String>>((map['cells'] as List).cast<String>()),
      recoveryGroupName: map['recoveryGroupName'] == null ? null : pulumi.Output.create<String>(map['recoveryGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

