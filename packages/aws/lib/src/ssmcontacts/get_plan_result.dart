// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_plan_stage.dart';

/// Result data returned by getPlan.
class GetPlanResult {
  final String contactId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  /// List of stages. A contact has an engagement plan with stages that contact specified contact channels. An escalation plan uses stages that contact specified contacts.
  final List<GetPlanStage> stages;

  /// Creates a new [GetPlanResult].
  /// [contactId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  /// [stages] List of stages. A contact has an engagement plan with stages that contact specified contact channels. An escalation plan uses stages that contact specified contacts.
  GetPlanResult({
    required this.contactId,
    required this.id,
    required this.region,
    required this.stages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactId': contactId,
      'id': id,
      'region': region,
      'stages': pulumi.Input.encodeList<GetPlanStage, Map<String, dynamic>>(
        stages,
        (value) => value.toMap(),
      ),
    };
  }

  factory GetPlanResult.fromMap(Map<String, dynamic> map) {
    return GetPlanResult(
      contactId: map['contactId'] as String,
      id: map['id'] as String,
      region: map['region'] as String,
      stages: pulumi.Input.decodeList<GetPlanStage>(
        map['stages'],
        (value) => GetPlanStage.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}
