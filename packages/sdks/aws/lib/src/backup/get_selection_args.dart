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
    required this.planId,
    this.region,
    required this.selectionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'planId': planId,
      'region': ?region,
      'selectionId': selectionId,
    };
  }

  factory GetSelectionArgs.fromMap(Map<String, dynamic> map) {
    return GetSelectionArgs(
      planId: pulumi.Input.fromValue(map['planId'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      selectionId: pulumi.Input.fromValue(map['selectionId'] as String),
    );
  }
}
