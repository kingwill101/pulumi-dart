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
    pulumi.Output<String>? approveValue,
    pulumi.Output<String>? auditMode,
    pulumi.Output<String>? auditReason,
    pulumi.Output<String>? createTime,
    pulumi.Output<double>? desireValue,
    pulumi.Output<List<QuotaApplicationDimension>>? dimensions,
    pulumi.Output<String>? effectiveTime,
    pulumi.Output<String>? envLanguage,
    pulumi.Output<String>? expireTime,
    pulumi.Output<int>? noticeType,
    pulumi.Output<String>? productCode,
    pulumi.Output<String>? quotaActionCode,
    pulumi.Output<String>? quotaCategory,
    pulumi.Output<String>? quotaDescription,
    pulumi.Output<String>? quotaName,
    pulumi.Output<String>? quotaUnit,
    pulumi.Output<String>? reason,
    pulumi.Output<String>? status,
  }) :
      approveValue = pulumi.Input.asOptionalInput<String>(approveValue),
      auditMode = pulumi.Input.asOptionalInput<String>(auditMode),
      auditReason = pulumi.Input.asOptionalInput<String>(auditReason),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      desireValue = pulumi.Input.asOptionalInput<double>(desireValue),
      dimensions = pulumi.Input.asOptionalInput<List<QuotaApplicationDimension>>(dimensions),
      effectiveTime = pulumi.Input.asOptionalInput<String>(effectiveTime),
      envLanguage = pulumi.Input.asOptionalInput<String>(envLanguage),
      expireTime = pulumi.Input.asOptionalInput<String>(expireTime),
      noticeType = pulumi.Input.asOptionalInput<int>(noticeType),
      productCode = pulumi.Input.asOptionalInput<String>(productCode),
      quotaActionCode = pulumi.Input.asOptionalInput<String>(quotaActionCode),
      quotaCategory = pulumi.Input.asOptionalInput<String>(quotaCategory),
      quotaDescription = pulumi.Input.asOptionalInput<String>(quotaDescription),
      quotaName = pulumi.Input.asOptionalInput<String>(quotaName),
      quotaUnit = pulumi.Input.asOptionalInput<String>(quotaUnit),
      reason = pulumi.Input.asOptionalInput<String>(reason),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      approveValue: map['approveValue'] == null ? null : pulumi.Output.create<String>(map['approveValue'] as String),
      auditMode: map['auditMode'] == null ? null : pulumi.Output.create<String>(map['auditMode'] as String),
      auditReason: map['auditReason'] == null ? null : pulumi.Output.create<String>(map['auditReason'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      desireValue: map['desireValue'] == null ? null : pulumi.Output.create<double>(map['desireValue'] as double),
      dimensions: map['dimensions'] == null ? null : pulumi.Output.create<List<QuotaApplicationDimension>>(pulumi.Input.decodeList<QuotaApplicationDimension>(map['dimensions'], (value) => QuotaApplicationDimension.fromMap((value as Map).cast<String, dynamic>()))),
      effectiveTime: map['effectiveTime'] == null ? null : pulumi.Output.create<String>(map['effectiveTime'] as String),
      envLanguage: map['envLanguage'] == null ? null : pulumi.Output.create<String>(map['envLanguage'] as String),
      expireTime: map['expireTime'] == null ? null : pulumi.Output.create<String>(map['expireTime'] as String),
      noticeType: map['noticeType'] == null ? null : pulumi.Output.create<int>(map['noticeType'] as int),
      productCode: map['productCode'] == null ? null : pulumi.Output.create<String>(map['productCode'] as String),
      quotaActionCode: map['quotaActionCode'] == null ? null : pulumi.Output.create<String>(map['quotaActionCode'] as String),
      quotaCategory: map['quotaCategory'] == null ? null : pulumi.Output.create<String>(map['quotaCategory'] as String),
      quotaDescription: map['quotaDescription'] == null ? null : pulumi.Output.create<String>(map['quotaDescription'] as String),
      quotaName: map['quotaName'] == null ? null : pulumi.Output.create<String>(map['quotaName'] as String),
      quotaUnit: map['quotaUnit'] == null ? null : pulumi.Output.create<String>(map['quotaUnit'] as String),
      reason: map['reason'] == null ? null : pulumi.Output.create<String>(map['reason'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

