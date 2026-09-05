// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_plan_stage.dart';

/// Result data returned by getPlan.
class GetPlanResult {
  final String? contactId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;
  /// List of stages. A contact has an engagement plan with stages that contact specified contact channels. An escalation plan uses stages that contact specified contacts.
  final List<GetPlanStage>? stages;

  /// Creates a new [GetPlanResult].
  /// [contactId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  /// [stages] List of stages. A contact has an engagement plan with stages that contact specified contact channels. An escalation plan uses stages that contact specified contacts.
  const GetPlanResult({
    this.contactId,
    this.id,
    this.region,
    this.stages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactId': ?contactId,
      'id': ?id,
      'region': ?region,
      'stages': ?(() { final guardedValue = stages; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPlanStage, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetPlanResult.fromMap(Map<String, dynamic> map) {
    return GetPlanResult(
      contactId: (() { final guardedValue = map['contactId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stages: (() { final guardedValue = map['stages']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPlanStage>(guardedValue, (value) => GetPlanStage.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
