// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getPlan.
class GetPlanArgs3 {
  /// The Amazon Resource Name (ARN) of the contact or escalation plan.
  final Input<String> contactId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetPlanArgs3({
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

  factory GetPlanArgs3.fromMap(Map<String, dynamic> map) {
    return GetPlanArgs3(
      contactId: Input.asInput<String>(map['contactId']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
