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
  final pulumi.Input<String?>? region;
  /// Metadata that you can assign to help organize the plans you create.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [GetPlanArgs].
  /// [planId] Backup plan ID.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Metadata that you can assign to help organize the plans you create.
  const GetPlanArgs({
    required this.planId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'planId': planId,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetPlanArgs.fromMap(Map<String, dynamic> map) {
    return GetPlanArgs(
      planId: pulumi.Input.fromValue(map['planId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
