// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ssmcontacts_get_plan_get_plan_args_doc}
/// Arguments for getPlan.
/// {@endtemplate}
/// {@macro pulumi_ssmcontacts_get_plan_get_plan_args_doc}
class GetPlanArgs {
  /// The Amazon Resource Name (ARN) of the contact or escalation plan.
  final pulumi.Input<String> contactId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetPlanArgs].
  /// [contactId] The Amazon Resource Name (ARN) of the contact or escalation plan.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetPlanArgs({
    required String contactId,
    String? region,
  })  : contactId = pulumi.Input.asInput<String>(contactId),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contactId'] = contactId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetPlanArgs.fromMap(Map<String, dynamic> map) {
    return GetPlanArgs(
      contactId: map['contactId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
