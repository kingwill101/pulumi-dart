// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'quota_application_dimension.dart';

/// Input properties used for looking up and filtering QuotaApplication resources.
class QuotaApplicationState {
  /// The approve value of the quota application.
  final pulumi.Input<String>? approveValue;
  /// This parameter is discontinued and is not recommended. The mode in which you want the application to be reviewed. Valid values:
  /// - Sync: The application is reviewed in a synchronous manner. Quota Center automatically reviews the application. The result is returned immediately after you submit the application. However, the chance of an approval for an application that is reviewed in Sync mode is lower than the chance of an approval for an application that is reviewed in Async mode. The validity period of the new quota value is 1 hour.
  /// - Async: The application is reviewed in an asynchronous manner. An Alibaba Cloud support engineer reviews the application. The chance of an approval for an application that is reviewed in Async mode is higher than the chance of an approval for an application that is reviewed in Sync mode. The validity period of the new quota value is one month.
  final pulumi.Input<String>? auditMode;
  /// The audit reason.
  final pulumi.Input<String>? auditReason;
  /// Resource attribute field representing creation time.
  final pulumi.Input<String>? createTime;
  /// The desire value of the quota application.
  final pulumi.Input<double>? desireValue;
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
  final pulumi.Input<String>? productCode;
  /// The ID of quota action.
  final pulumi.Input<String>? quotaActionCode;
  /// The quota type.
  /// - CommonQuota (default): Generic quota.
  /// - FlowControl:API rate quota.
  /// - WhiteListLabel: Equity quota.
  final pulumi.Input<String>? quotaCategory;
  /// The description of the quota application.
  final pulumi.Input<String>? quotaDescription;
  /// The name of the quota application.
  final pulumi.Input<String>? quotaName;
  /// The unit of the quota application.
  final pulumi.Input<String>? quotaUnit;
  /// The reason of the quota application.
  final pulumi.Input<String>? reason;
  /// Application Status:
  /// - Disagree: reject.
  /// - Agree: Approved.
  /// - Process: under review.
  /// - Cancel: Closed.
  final pulumi.Input<String>? status;

  /// Creates a new [QuotaApplicationState].
  /// [approveValue] The approve value of the quota application.
  /// [auditMode] This parameter is discontinued and is not recommended. The mode in which you want the application to be reviewed. Valid values:
  /// [auditReason] The audit reason.
  /// [createTime] Resource attribute field representing creation time.
  /// [desireValue] The desire value of the quota application.
  /// [dimensions] QuotaDimensions. See `dimensions` below.
  /// [effectiveTime] The effective time of the quota application.
  /// [envLanguage] The language of the quota alert notification. Value:
  /// [expireTime] The expired time of the quota application.
  /// [noticeType] Specifies whether to send a notification about the application result. Valid values:0: sends a notification about the application result.3: A notification about the application result is sent.
  /// [productCode] The product code.
  /// [quotaActionCode] The ID of quota action.
  /// [quotaCategory] The quota type.
  /// [quotaDescription] The description of the quota application.
  /// [quotaName] The name of the quota application.
  /// [quotaUnit] The unit of the quota application.
  /// [reason] The reason of the quota application.
  /// [status] Application Status:
  QuotaApplicationState({
    this.approveValue,
    this.auditMode,
    this.auditReason,
    this.createTime,
    this.desireValue,
    this.dimensions,
    this.effectiveTime,
    this.envLanguage,
    this.expireTime,
    this.noticeType,
    this.productCode,
    this.quotaActionCode,
    this.quotaCategory,
    this.quotaDescription,
    this.quotaName,
    this.quotaUnit,
    this.reason,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approveValue': ?approveValue,
      'auditMode': ?auditMode,
      'auditReason': ?auditReason,
      'createTime': ?createTime,
      'desireValue': ?desireValue,
      'dimensions': ?pulumi.Input.mapOptionalInputValue<List<QuotaApplicationDimension>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<QuotaApplicationDimension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'effectiveTime': ?effectiveTime,
      'envLanguage': ?envLanguage,
      'expireTime': ?expireTime,
      'noticeType': ?noticeType,
      'productCode': ?productCode,
      'quotaActionCode': ?quotaActionCode,
      'quotaCategory': ?quotaCategory,
      'quotaDescription': ?quotaDescription,
      'quotaName': ?quotaName,
      'quotaUnit': ?quotaUnit,
      'reason': ?reason,
      'status': ?status,
    };
  }

  factory QuotaApplicationState.fromMap(Map<String, dynamic> map) {
    return QuotaApplicationState(
      approveValue: map['approveValue'] == null ? null : (map['approveValue'] as String).input(),
      auditMode: map['auditMode'] == null ? null : (map['auditMode'] as String).input(),
      auditReason: map['auditReason'] == null ? null : (map['auditReason'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      desireValue: map['desireValue'] == null ? null : (map['desireValue'] as double).input(),
      dimensions: map['dimensions'] == null ? null : (pulumi.Input.decodeList<QuotaApplicationDimension>(map['dimensions'], (value) => QuotaApplicationDimension.fromMap((value as Map).cast<String, dynamic>()))).input(),
      effectiveTime: map['effectiveTime'] == null ? null : (map['effectiveTime'] as String).input(),
      envLanguage: map['envLanguage'] == null ? null : (map['envLanguage'] as String).input(),
      expireTime: map['expireTime'] == null ? null : (map['expireTime'] as String).input(),
      noticeType: map['noticeType'] == null ? null : (map['noticeType'] as int).input(),
      productCode: map['productCode'] == null ? null : (map['productCode'] as String).input(),
      quotaActionCode: map['quotaActionCode'] == null ? null : (map['quotaActionCode'] as String).input(),
      quotaCategory: map['quotaCategory'] == null ? null : (map['quotaCategory'] as String).input(),
      quotaDescription: map['quotaDescription'] == null ? null : (map['quotaDescription'] as String).input(),
      quotaName: map['quotaName'] == null ? null : (map['quotaName'] as String).input(),
      quotaUnit: map['quotaUnit'] == null ? null : (map['quotaUnit'] as String).input(),
      reason: map['reason'] == null ? null : (map['reason'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

