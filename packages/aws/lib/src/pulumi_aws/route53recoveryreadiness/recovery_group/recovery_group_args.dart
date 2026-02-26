// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for RecoveryGroup.
class RecoveryGroupArgs {
  /// List of cell arns to add as nested fault domains within this recovery group
  final Input<List<String>>? cells;

  /// A unique name describing the recovery group.
  ///
  /// The following arguments are optional:
  final Input<String> recoveryGroupName;

  /// Key-value mapping of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level
  final Input<Map<String, String>>? tags;

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
      cells: Input.asOptionalInput<List<String>>(map['cells']),
      recoveryGroupName: Input.asInput<String>(map['recoveryGroupName']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
