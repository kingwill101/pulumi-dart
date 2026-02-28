// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_route53_recovery_readiness_recovery_group_recovery_group_args_doc}
/// The set of arguments for RecoveryGroup.
/// {@endtemplate}
/// {@macro pulumi_route53_recovery_readiness_recovery_group_recovery_group_args_doc}
class RecoveryGroupArgs {
  /// List of cell arns to add as nested fault domains within this recovery group
  final pulumi.Input<List<String>>? cells;

  /// A unique name describing the recovery group.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> recoveryGroupName;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RecoveryGroupArgs].
  /// [cells] List of cell arns to add as nested fault domains within this recovery group
  /// [recoveryGroupName] A unique name describing the recovery group.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  RecoveryGroupArgs({
    List<String>? cells,
    required String recoveryGroupName,
    Map<String, String>? tags,
  })  : cells = pulumi.Input.asOptionalInput<List<String>>(cells),
        recoveryGroupName = pulumi.Input.asInput<String>(recoveryGroupName),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      cells:
          map['cells'] == null ? null : (map['cells'] as List).cast<String>(),
      recoveryGroupName: map['recoveryGroupName'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
