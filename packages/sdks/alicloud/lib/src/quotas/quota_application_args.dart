// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'quota_application_dimension.dart';

/// {@template pulumi_quotas_quota_application_quota_application_args_doc}
/// The set of arguments for QuotaApplication.
/// {@endtemplate}
/// {@macro pulumi_quotas_quota_application_quota_application_args_doc}
class QuotaApplicationArgs {
  /// This parameter is discontinued and is not recommended. The mode in which you want the application to be reviewed. Valid values:
  /// - Sync: The application is reviewed in a synchronous manner. Quota Center automatically reviews the application. The result is returned immediately after you submit the application. However, the chance of an approval for an application that is reviewed in Sync mode is lower than the chance of an approval for an application that is reviewed in Async mode. The validity period of the new quota value is 1 hour.
  /// - Async: The application is reviewed in an asynchronous manner. An Alibaba Cloud support engineer reviews the application. The chance of an approval for an application that is reviewed in Async mode is higher than the chance of an approval for an application that is reviewed in Sync mode. The validity period of the new quota value is one month.
  final pulumi.Input<String>? auditMode;
  /// The desire value of the quota application.
  final pulumi.Input<double> desireValue;
  /// QuotaDimensions. See `dimensions` below.
  final pulumi.Input<List<QuotaApplicationDimension>>? dimensions;
  /// The effective time of the quota application.
  final pulumi.Input<String>? effectiveTime;
  /// The language of the quota alert notification. Value:
  /// - zh (default): Chinese.
  /// - en: English.
  final pulumi.Input<String>? envLanguage;
  /// The expired time of the quota application.
  final pulumi.Input<String>? expireTime;
  /// Specifies whether to send a notification about the application result. Valid values:0: sends a notification about the application result.3: A notification about the application result is sent.
  final pulumi.Input<int>? noticeType;
  /// The product code.
  final pulumi.Input<String> productCode;
  /// The ID of quota action.
  final pulumi.Input<String> quotaActionCode;
  /// The quota type.
  /// - CommonQuota (default): Generic quota.
  /// - FlowControl:API rate quota.
  /// - WhiteListLabel: Equity quota.
  final pulumi.Input<String>? quotaCategory;
  /// The reason of the quota application.
  final pulumi.Input<String> reason;

  /// Creates a new [QuotaApplicationArgs].
  /// [auditMode] This parameter is discontinued and is not recommended. The mode in which you want the application to be reviewed. Valid values:
  /// [desireValue] The desire value of the quota application.
  /// [dimensions] QuotaDimensions. See `dimensions` below.
  /// [effectiveTime] The effective time of the quota application.
  /// [envLanguage] The language of the quota alert notification. Value:
  /// [expireTime] The expired time of the quota application.
  /// [noticeType] Specifies whether to send a notification about the application result. Valid values:0: sends a notification about the application result.3: A notification about the application result is sent.
  /// [productCode] The product code.
  /// [quotaActionCode] The ID of quota action.
  /// [quotaCategory] The quota type.
  /// [reason] The reason of the quota application.
  QuotaApplicationArgs({
    this.auditMode,
    required this.desireValue,
    this.dimensions,
    this.effectiveTime,
    this.envLanguage,
    this.expireTime,
    this.noticeType,
    required this.productCode,
    required this.quotaActionCode,
    this.quotaCategory,
    required this.reason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditMode': ?auditMode,
      'desireValue': desireValue,
      'dimensions': ?pulumi.Input.mapOptionalInputValue<List<QuotaApplicationDimension>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<QuotaApplicationDimension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'effectiveTime': ?effectiveTime,
      'envLanguage': ?envLanguage,
      'expireTime': ?expireTime,
      'noticeType': ?noticeType,
      'productCode': productCode,
      'quotaActionCode': quotaActionCode,
      'quotaCategory': ?quotaCategory,
      'reason': reason,
    };
  }

  factory QuotaApplicationArgs.fromMap(Map<String, dynamic> map) {
    return QuotaApplicationArgs(
      auditMode: (() { final guardedValue = map['auditMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      desireValue: pulumi.Input.fromValue(map['desireValue'] as double),
      dimensions: (() { final guardedValue = map['dimensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<QuotaApplicationDimension>(guardedValue, (value) => QuotaApplicationDimension.fromMap((value as Map).cast<String, dynamic>()))); })(),
      effectiveTime: (() { final guardedValue = map['effectiveTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      envLanguage: (() { final guardedValue = map['envLanguage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      noticeType: (() { final guardedValue = map['noticeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      productCode: pulumi.Input.fromValue(map['productCode'] as String),
      quotaActionCode: pulumi.Input.fromValue(map['quotaActionCode'] as String),
      quotaCategory: (() { final guardedValue = map['quotaCategory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reason: pulumi.Input.fromValue(map['reason'] as String),
    );
  }
}

