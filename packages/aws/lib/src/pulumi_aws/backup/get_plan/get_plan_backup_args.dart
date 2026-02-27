// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getPlan.
class GetPlanBackupArgs {
  /// Backup plan ID.
  final pulumi.Input<String> planId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Metadata that you can assign to help organize the plans you create.
  final pulumi.Input<Map<String, String>>? tags;

  GetPlanBackupArgs({
    required this.planId,
    this.region,
    this.tags,
  });

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

  factory GetPlanBackupArgs.fromMap(Map<String, dynamic> map) {
    return GetPlanBackupArgs(
      planId: pulumi.Input.asInput<String>(map['planId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
