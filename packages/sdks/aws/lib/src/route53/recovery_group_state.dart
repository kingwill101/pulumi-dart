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
    this.arn,
    this.cells,
    this.recoveryGroupName,
    this.tags,
    this.tagsAll,
  });

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
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      cells: map['cells'] == null ? null : ((map['cells'] as List).cast<String>()).input(),
      recoveryGroupName: map['recoveryGroupName'] == null ? null : (map['recoveryGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

