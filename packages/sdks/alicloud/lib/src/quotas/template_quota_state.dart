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
  const TemplateQuotaState({
    this.desireValue,
    this.dimensions,
    this.effectiveTime,
    this.envLanguage,
    this.expireTime,
    this.noticeType,
    this.productCode,
    this.quotaActionCode,
    this.quotaCategory,
  });

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
      desireValue: (() { final guardedValue = map['desireValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      dimensions: (() { final guardedValue = map['dimensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TemplateQuotaDimension>(guardedValue, (value) => TemplateQuotaDimension.fromMap((value as Map).cast<String, dynamic>()))); })(),
      effectiveTime: (() { final guardedValue = map['effectiveTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      envLanguage: (() { final guardedValue = map['envLanguage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      noticeType: (() { final guardedValue = map['noticeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      productCode: (() { final guardedValue = map['productCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      quotaActionCode: (() { final guardedValue = map['quotaActionCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      quotaCategory: (() { final guardedValue = map['quotaCategory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

