// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_backup_get_selection_get_selection_args_doc}
/// Arguments for getSelection.
/// {@endtemplate}
/// {@macro pulumi_backup_get_selection_get_selection_args_doc}
class GetSelectionArgs {
  /// Backup plan ID associated with the selection of resources.
  final pulumi.Input<String> planId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Backup selection ID.
  final pulumi.Input<String> selectionId;

  /// Creates a new [GetSelectionArgs].
  /// [planId] Backup plan ID associated with the selection of resources.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [selectionId] Backup selection ID.
  GetSelectionArgs({
    required String planId,
    String? region,
    required String selectionId,
  })  : planId = pulumi.Input.asInput<String>(planId),
        region = pulumi.Input.asOptionalInput<String>(region),
        selectionId = pulumi.Input.asInput<String>(selectionId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['planId'] = planId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['selectionId'] = selectionId;
    return map;
  }

  factory GetSelectionArgs.fromMap(Map<String, dynamic> map) {
    return GetSelectionArgs(
      planId: map['planId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      selectionId: map['selectionId'] as String,
    );
  }
}
