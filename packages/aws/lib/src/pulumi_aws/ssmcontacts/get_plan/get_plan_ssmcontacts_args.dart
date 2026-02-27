// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getPlan.
class GetPlanSsmcontactsArgs {
  /// The Amazon Resource Name (ARN) of the contact or escalation plan.
  final pulumi.Input<String> contactId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetPlanSsmcontactsArgs({
    required this.contactId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contactId'] = contactId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetPlanSsmcontactsArgs.fromMap(Map<String, dynamic> map) {
    return GetPlanSsmcontactsArgs(
      contactId: pulumi.Input.asInput<String>(map['contactId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
