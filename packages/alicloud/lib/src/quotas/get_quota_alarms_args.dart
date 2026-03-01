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
    bool? enableDetails,
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
    String? productCode,
    String? quotaActionCode,
    String? quotaAlarmName,
    List<GetQuotaAlarmsQuotaDimension>? quotaDimensions,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      productCode = pulumi.Input.asOptionalInput<String>(productCode),
      quotaActionCode = pulumi.Input.asOptionalInput<String>(quotaActionCode),
      quotaAlarmName = pulumi.Input.asOptionalInput<String>(quotaAlarmName),
      quotaDimensions = pulumi.Input.asOptionalInput<List<GetQuotaAlarmsQuotaDimension>>(quotaDimensions);

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
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      productCode: map['productCode'] == null ? null : map['productCode'] as String,
      quotaActionCode: map['quotaActionCode'] == null ? null : map['quotaActionCode'] as String,
      quotaAlarmName: map['quotaAlarmName'] == null ? null : map['quotaAlarmName'] as String,
      quotaDimensions: map['quotaDimensions'] == null ? null : pulumi.Input.decodeList<GetQuotaAlarmsQuotaDimension>(map['quotaDimensions'], (value) => GetQuotaAlarmsQuotaDimension.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

