// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_plan_stage/get_plan_stage.dart';

/// Result data returned by getPlan.
class GetPlanResult3 {
  final String contactId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  /// List of stages. A contact has an engagement plan with stages that contact specified contact channels. An escalation plan uses stages that contact specified contacts.
  final List<GetPlanStage> stages;

  GetPlanResult3({
    required this.contactId,
    required this.id,
    required this.region,
    required this.stages,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contactId'] = contactId;
    map['id'] = id;
    map['region'] = region;
    map['stages'] = Input.encodeList<GetPlanStage, Map<String, dynamic>>(
        stages, (value) => value.toMap());
    return map;
  }

  factory GetPlanResult3.fromMap(Map<String, dynamic> map) {
    return GetPlanResult3(
      contactId: map['contactId'] as String,
      id: map['id'] as String,
      region: map['region'] as String,
      stages: Input.decodeList<GetPlanStage>(
          map['stages'],
          (value) =>
              GetPlanStage.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
