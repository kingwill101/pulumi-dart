// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_backup_get_report_plan_get_report_plan_args_doc}
/// Arguments for getReportPlan.
/// {@endtemplate}
/// {@macro pulumi_backup_get_report_plan_get_report_plan_args_doc}
class GetReportPlanArgs {
  /// Backup report plan name.
  final pulumi.Input<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Metadata that you can assign to help organize the report plans you create.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetReportPlanArgs].
  /// [name] Backup report plan name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Metadata that you can assign to help organize the report plans you create.
  GetReportPlanArgs({
    required this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetReportPlanArgs.fromMap(Map<String, dynamic> map) {
    return GetReportPlanArgs(
      name: (map['name'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

