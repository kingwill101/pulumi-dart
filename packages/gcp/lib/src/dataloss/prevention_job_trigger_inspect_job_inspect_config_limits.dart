// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_job_trigger_inspect_job_inspect_config_limits_max_findings_per_info_type.dart';

class PreventionJobTriggerInspectJobInspectConfigLimits {
  /// Configuration of findings limit given for specified infoTypes.
  /// Structure is documented below.
  final List<
          PreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoType>?
      maxFindingsPerInfoTypes;

  /// Max number of findings that will be returned for each item scanned. The maximum returned is 2000.
  final int? maxFindingsPerItem;

  /// Max number of findings that will be returned per request/job. The maximum returned is 2000.
  final int? maxFindingsPerRequest;

  /// Creates a new [PreventionJobTriggerInspectJobInspectConfigLimits].
  /// [maxFindingsPerInfoTypes] Configuration of findings limit given for specified infoTypes.
  /// [maxFindingsPerItem] Max number of findings that will be returned for each item scanned. The maximum returned is 2000.
  /// [maxFindingsPerRequest] Max number of findings that will be returned per request/job. The maximum returned is 2000.
  PreventionJobTriggerInspectJobInspectConfigLimits({
    this.maxFindingsPerInfoTypes,
    this.maxFindingsPerItem,
    this.maxFindingsPerRequest,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxFindingsPerInfoTypesValue = maxFindingsPerInfoTypes;
    if (maxFindingsPerInfoTypesValue != null) {
      map['maxFindingsPerInfoTypes'] = pulumi.Input.encodeList<
          PreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoType,
          Map<String,
              dynamic>>(maxFindingsPerInfoTypesValue, (value) => value.toMap());
    }
    final maxFindingsPerItemValue = maxFindingsPerItem;
    if (maxFindingsPerItemValue != null) {
      map['maxFindingsPerItem'] = maxFindingsPerItemValue;
    }
    final maxFindingsPerRequestValue = maxFindingsPerRequest;
    if (maxFindingsPerRequestValue != null) {
      map['maxFindingsPerRequest'] = maxFindingsPerRequestValue;
    }
    return map;
  }

  factory PreventionJobTriggerInspectJobInspectConfigLimits.fromMap(
      Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobInspectConfigLimits(
      maxFindingsPerInfoTypes: map['maxFindingsPerInfoTypes'] == null
          ? null
          : pulumi.Input.decodeList<
                  PreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoType>(
              map['maxFindingsPerInfoTypes'],
              (value) =>
                  PreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoType
                      .fromMap((value as Map).cast<String, dynamic>())),
      maxFindingsPerItem: map['maxFindingsPerItem'] == null
          ? null
          : map['maxFindingsPerItem'] as int,
      maxFindingsPerRequest: map['maxFindingsPerRequest'] == null
          ? null
          : map['maxFindingsPerRequest'] as int,
    );
  }
}
