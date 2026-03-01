// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_quota_dimension.dart';

/// Input properties used for looking up and filtering TemplateQuota resources.
class TemplateQuotaState {
  /// Quota application value.
  final pulumi.Input<double>? desireValue;
  /// The Quota Dimensions. See `dimensions` below.
  final pulumi.Input<List<TemplateQuotaDimension>>? dimensions;
  /// The UTC time when the quota takes effect.
  final pulumi.Input<String>? effectiveTime;
  /// The language of the quota alert notification. Value:
  /// - zh: Chinese.
  /// - en: English.
  final pulumi.Input<String>? envLanguage;
  /// The UTC time when the quota expires.
  final pulumi.Input<String>? expireTime;
  /// Whether to notify the result of quota promotion application. Value:
  /// - 0: No.
  /// - 3: Yes.
  final pulumi.Input<int>? noticeType;
  /// The abbreviation of the cloud service name.
  final pulumi.Input<String>? productCode;
  /// The quota ID.
  final pulumi.Input<String>? quotaActionCode;
  /// Type of quota. Value:
  /// - CommonQuota : Generic quota.
  /// - WhiteListLabel: Equity quota.
  /// - FlowControl:API rate quota.
  final pulumi.Input<String>? quotaCategory;

  /// Creates a new [TemplateQuotaState].
  /// [desireValue] Quota application value.
  /// [dimensions] The Quota Dimensions. See `dimensions` below.
  /// [effectiveTime] The UTC time when the quota takes effect.
  /// [envLanguage] The language of the quota alert notification. Value:
  /// [expireTime] The UTC time when the quota expires.
  /// [noticeType] Whether to notify the result of quota promotion application. Value:
  /// [productCode] The abbreviation of the cloud service name.
  /// [quotaActionCode] The quota ID.
  /// [quotaCategory] Type of quota. Value:
  TemplateQuotaState({
    pulumi.Output<double>? desireValue,
    pulumi.Output<List<TemplateQuotaDimension>>? dimensions,
    pulumi.Output<String>? effectiveTime,
    pulumi.Output<String>? envLanguage,
    pulumi.Output<String>? expireTime,
    pulumi.Output<int>? noticeType,
    pulumi.Output<String>? productCode,
    pulumi.Output<String>? quotaActionCode,
    pulumi.Output<String>? quotaCategory,
  }) :
      desireValue = pulumi.Input.asOptionalInput<double>(desireValue),
      dimensions = pulumi.Input.asOptionalInput<List<TemplateQuotaDimension>>(dimensions),
      effectiveTime = pulumi.Input.asOptionalInput<String>(effectiveTime),
      envLanguage = pulumi.Input.asOptionalInput<String>(envLanguage),
      expireTime = pulumi.Input.asOptionalInput<String>(expireTime),
      noticeType = pulumi.Input.asOptionalInput<int>(noticeType),
      productCode = pulumi.Input.asOptionalInput<String>(productCode),
      quotaActionCode = pulumi.Input.asOptionalInput<String>(quotaActionCode),
      quotaCategory = pulumi.Input.asOptionalInput<String>(quotaCategory);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desireValue': ?desireValue,
      'dimensions': ?pulumi.Input.mapOptionalInputValue<List<TemplateQuotaDimension>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<TemplateQuotaDimension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'effectiveTime': ?effectiveTime,
      'envLanguage': ?envLanguage,
      'expireTime': ?expireTime,
      'noticeType': ?noticeType,
      'productCode': ?productCode,
      'quotaActionCode': ?quotaActionCode,
      'quotaCategory': ?quotaCategory,
    };
  }

  factory TemplateQuotaState.fromMap(Map<String, dynamic> map) {
    return TemplateQuotaState(
      desireValue: map['desireValue'] == null ? null : pulumi.Output.create<double>(map['desireValue'] as double),
      dimensions: map['dimensions'] == null ? null : pulumi.Output.create<List<TemplateQuotaDimension>>(pulumi.Input.decodeList<TemplateQuotaDimension>(map['dimensions'], (value) => TemplateQuotaDimension.fromMap((value as Map).cast<String, dynamic>()))),
      effectiveTime: map['effectiveTime'] == null ? null : pulumi.Output.create<String>(map['effectiveTime'] as String),
      envLanguage: map['envLanguage'] == null ? null : pulumi.Output.create<String>(map['envLanguage'] as String),
      expireTime: map['expireTime'] == null ? null : pulumi.Output.create<String>(map['expireTime'] as String),
      noticeType: map['noticeType'] == null ? null : pulumi.Output.create<int>(map['noticeType'] as int),
      productCode: map['productCode'] == null ? null : pulumi.Output.create<String>(map['productCode'] as String),
      quotaActionCode: map['quotaActionCode'] == null ? null : pulumi.Output.create<String>(map['quotaActionCode'] as String),
      quotaCategory: map['quotaCategory'] == null ? null : pulumi.Output.create<String>(map['quotaCategory'] as String),
    );
  }
}

