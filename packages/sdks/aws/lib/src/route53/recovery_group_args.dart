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
    this.cells,
    required this.recoveryGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cells': ?cells,
      'recoveryGroupName': recoveryGroupName,
      'tags': ?tags,
    };
  }

  factory RecoveryGroupArgs.fromMap(Map<String, dynamic> map) {
    return RecoveryGroupArgs(
      cells: map['cells'] == null ? null : ((map['cells'] as List).cast<String>()).input(),
      recoveryGroupName: (map['recoveryGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

