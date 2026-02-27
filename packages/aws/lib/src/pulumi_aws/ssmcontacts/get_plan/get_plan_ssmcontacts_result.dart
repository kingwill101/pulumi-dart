// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_plan_stage/get_plan_stage.dart';

/// Result data returned by getPlan.
class GetPlanSsmcontactsResult {
  final String contactId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  /// List of stages. A contact has an engagement plan with stages that contact specified contact channels. An escalation plan uses stages that contact specified contacts.
  final List<GetPlanStage> stages;

  GetPlanSsmcontactsResult({
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
    map['stages'] = pulumi.Input.encodeList<GetPlanStage, Map<String, dynamic>>(
        stages, (value) => value.toMap());
    return map;
  }

  factory GetPlanSsmcontactsResult.fromMap(Map<String, dynamic> map) {
    return GetPlanSsmcontactsResult(
      contactId: map['contactId'] as String,
      id: map['id'] as String,
      region: map['region'] as String,
      stages: pulumi.Input.decodeList<GetPlanStage>(
          map['stages'],
          (value) =>
              GetPlanStage.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
