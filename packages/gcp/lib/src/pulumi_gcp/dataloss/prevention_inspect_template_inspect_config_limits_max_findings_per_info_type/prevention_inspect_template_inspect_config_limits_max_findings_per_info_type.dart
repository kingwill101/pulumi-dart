// ignore_for_file: unused_element, unnecessary_cast

import '../prevention_inspect_template_inspect_config_limits_max_findings_per_info_type_info_type/prevention_inspect_template_inspect_config_limits_max_findings_per_info_type_info_type.dart';

class PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoType {
  /// Type of information the findings limit applies to. Only one limit per infoType should be provided. If InfoTypeLimit does
  /// not have an infoType, the DLP API applies the limit against all infoTypes that are found but not
  /// specified in another InfoTypeLimit.
  /// Structure is documented below.
  final PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoTypeInfoType?
      infoType;

  /// Max findings limit for the given infoType.
  final int maxFindings;

  PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoType({
    this.infoType,
    required this.maxFindings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final infoTypeValue = infoType;
    if (infoTypeValue != null) {
      map['infoType'] = infoTypeValue.toMap();
    }
    map['maxFindings'] = maxFindings;
    return map;
  }

  factory PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoType.fromMap(
      Map<String, dynamic> map) {
    return PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoType(
      infoType: map['infoType'] == null
          ? null
          : PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoTypeInfoType
              .fromMap((map['infoType'] as Map).cast<String, dynamic>()),
      maxFindings: map['maxFindings'] as int,
    );
  }
}
