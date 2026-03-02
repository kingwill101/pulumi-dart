// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_quota_alarms_quota_dimension.dart';

/// {@template pulumi_quotas_get_quota_alarms_get_quota_alarms_args_doc}
/// Arguments for getQuotaAlarms.
/// {@endtemplate}
/// {@macro pulumi_quotas_get_quota_alarms_get_quota_alarms_args_doc}
class GetQuotaAlarmsArgs {
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Quota Alarm IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Quota Alarm name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The Product Code.
  final pulumi.Input<String>? productCode;
  /// The Quota Action Code.
  final pulumi.Input<String>? quotaActionCode;
  /// The name of Quota Alarm.
  final pulumi.Input<String>? quotaAlarmName;
  /// The Quota Dimensions.
  final pulumi.Input<List<GetQuotaAlarmsQuotaDimension>>? quotaDimensions;

  /// Creates a new [GetQuotaAlarmsArgs].
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of Quota Alarm IDs.
  /// [nameRegex] A regex string to filter results by Quota Alarm name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [productCode] The Product Code.
  /// [quotaActionCode] The Quota Action Code.
  /// [quotaAlarmName] The name of Quota Alarm.
  /// [quotaDimensions] The Quota Dimensions.
  GetQuotaAlarmsArgs({
    this.enableDetails,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.productCode,
    this.quotaActionCode,
    this.quotaAlarmName,
    this.quotaDimensions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'productCode': ?productCode,
      'quotaActionCode': ?quotaActionCode,
      'quotaAlarmName': ?quotaAlarmName,
      'quotaDimensions': ?pulumi.Input.mapOptionalInputValue<List<GetQuotaAlarmsQuotaDimension>, List<Map<String, dynamic>>>(quotaDimensions, (value) => pulumi.Input.encodeList<GetQuotaAlarmsQuotaDimension, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetQuotaAlarmsArgs.fromMap(Map<String, dynamic> map) {
    return GetQuotaAlarmsArgs(
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails']! as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      productCode: map['productCode'] == null ? null : (map['productCode']! as String).input(),
      quotaActionCode: map['quotaActionCode'] == null ? null : (map['quotaActionCode']! as String).input(),
      quotaAlarmName: map['quotaAlarmName'] == null ? null : (map['quotaAlarmName']! as String).input(),
      quotaDimensions: map['quotaDimensions'] == null ? null : (pulumi.Input.decodeList<GetQuotaAlarmsQuotaDimension>(map['quotaDimensions']!, (value) => GetQuotaAlarmsQuotaDimension.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

