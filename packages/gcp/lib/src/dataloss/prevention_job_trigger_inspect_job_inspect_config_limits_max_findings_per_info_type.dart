// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_job_trigger_inspect_job_inspect_config_limits_max_findings_per_info_type_info_type.dart';

class PreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoType {
  /// Type of information the findings limit applies to. Only one limit per infoType should be provided. If InfoTypeLimit does
  /// not have an infoType, the DLP API applies the limit against all infoTypes that are found but not
  /// specified in another InfoTypeLimit.
  /// Structure is documented below.
  final PreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoTypeInfoType?
  infoType;

  /// Max findings limit for the given infoType.
  final int? maxFindings;

  /// Creates a new [PreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoType].
  /// [infoType] Type of information the findings limit applies to. Only one limit per infoType should be provided. If InfoTypeLimit does
  /// [maxFindings] Max findings limit for the given infoType.
  PreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoType({
    this.infoType,
    this.maxFindings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infoType': ?infoType == null ? null : infoType!.toMap(),
      'maxFindings': ?maxFindings,
    };
  }

  factory PreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoType.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoType(
      infoType: map['infoType'] == null
          ? null
          : PreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoTypeInfoType.fromMap(
              (map['infoType'] as Map).cast<String, dynamic>(),
            ),
      maxFindings: map['maxFindings'] == null
          ? null
          : map['maxFindings'] as int,
    );
  }
}
