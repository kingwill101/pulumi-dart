// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../prevention_inspect_template_inspect_config_limits_max_findings_per_info_type/prevention_inspect_template_inspect_config_limits_max_findings_per_info_type.dart';

class PreventionInspectTemplateInspectConfigLimits {
  /// Configuration of findings limit given for specified infoTypes.
  /// Structure is documented below.
  final List<
          PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoType>?
      maxFindingsPerInfoTypes;

  /// Max number of findings that will be returned for each item scanned. The maximum returned is 2000.
  final int maxFindingsPerItem;

  /// Max number of findings that will be returned per request/job. The maximum returned is 2000.
  final int maxFindingsPerRequest;

  PreventionInspectTemplateInspectConfigLimits({
    this.maxFindingsPerInfoTypes,
    required this.maxFindingsPerItem,
    required this.maxFindingsPerRequest,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxFindingsPerInfoTypesValue = maxFindingsPerInfoTypes;
    if (maxFindingsPerInfoTypesValue != null) {
      map['maxFindingsPerInfoTypes'] = Input.encodeList<
          PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoType,
          Map<String,
              dynamic>>(maxFindingsPerInfoTypesValue, (value) => value.toMap());
    }
    map['maxFindingsPerItem'] = maxFindingsPerItem;
    map['maxFindingsPerRequest'] = maxFindingsPerRequest;
    return map;
  }

  factory PreventionInspectTemplateInspectConfigLimits.fromMap(
      Map<String, dynamic> map) {
    return PreventionInspectTemplateInspectConfigLimits(
      maxFindingsPerInfoTypes: map['maxFindingsPerInfoTypes'] == null
          ? null
          : Input.decodeList<
                  PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoType>(
              map['maxFindingsPerInfoTypes'],
              (value) =>
                  PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoType
                      .fromMap((value as Map).cast<String, dynamic>())),
      maxFindingsPerItem: map['maxFindingsPerItem'] as int,
      maxFindingsPerRequest: map['maxFindingsPerRequest'] as int,
    );
  }
}
