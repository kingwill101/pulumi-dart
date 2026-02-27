// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for RecoveryGroup.
class RecoveryGroupArgs {
  /// List of cell arns to add as nested fault domains within this recovery group
  final pulumi.Input<List<String>>? cells;

  /// A unique name describing the recovery group.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> recoveryGroupName;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  final pulumi.Input<Map<String, String>>? tags;

  RecoveryGroupArgs({
    this.cells,
    required this.recoveryGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cellsValue = cells;
    if (cellsValue != null) {
      map['cells'] = cellsValue;
    }
    map['recoveryGroupName'] = recoveryGroupName;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory RecoveryGroupArgs.fromMap(Map<String, dynamic> map) {
    return RecoveryGroupArgs(
      cells: pulumi.Input.asOptionalInput<List<String>>(map['cells']),
      recoveryGroupName: pulumi.Input.asInput<String>(map['recoveryGroupName']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
