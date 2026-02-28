// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_backup_get_plan_get_plan_args_doc}
/// Arguments for getPlan.
/// {@endtemplate}
/// {@macro pulumi_backup_get_plan_get_plan_args_doc}
class GetPlanArgs {
  /// Backup plan ID.
  final pulumi.Input<String> planId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Metadata that you can assign to help organize the plans you create.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetPlanArgs].
  /// [planId] Backup plan ID.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Metadata that you can assign to help organize the plans you create.
  GetPlanArgs({
    required String planId,
    String? region,
    Map<String, String>? tags,
  })  : planId = pulumi.Input.asInput<String>(planId),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['planId'] = planId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetPlanArgs.fromMap(Map<String, dynamic> map) {
    return GetPlanArgs(
      planId: map['planId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
