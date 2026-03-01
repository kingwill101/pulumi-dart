// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_info_dimension.dart';

/// {@template pulumi_quotas_application_info_application_info_args_doc}
/// The set of arguments for ApplicationInfo.
/// {@endtemplate}
/// {@macro pulumi_quotas_application_info_application_info_args_doc}
class ApplicationInfoArgs {
  final pulumi.Input<String>? auditMode;
  final pulumi.Input<double> desireValue;
  final pulumi.Input<List<ApplicationInfoDimension>>? dimensions;
  final pulumi.Input<String>? effectiveTime;
  final pulumi.Input<String>? envLanguage;
  final pulumi.Input<String>? expireTime;
  final pulumi.Input<int>? noticeType;
  final pulumi.Input<String> productCode;
  final pulumi.Input<String> quotaActionCode;
  final pulumi.Input<String>? quotaCategory;
  final pulumi.Input<String> reason;

  /// Creates a new [ApplicationInfoArgs].
  /// [auditMode] Optional.
  /// [desireValue] Required.
  /// [dimensions] Optional.
  /// [effectiveTime] Optional.
  /// [envLanguage] Optional.
  /// [expireTime] Optional.
  /// [noticeType] Optional.
  /// [productCode] Required.
  /// [quotaActionCode] Required.
  /// [quotaCategory] Optional.
  /// [reason] Required.
  ApplicationInfoArgs({
    pulumi.Output<String>? auditMode,
    required pulumi.Output<double> desireValue,
    pulumi.Output<List<ApplicationInfoDimension>>? dimensions,
    pulumi.Output<String>? effectiveTime,
    pulumi.Output<String>? envLanguage,
    pulumi.Output<String>? expireTime,
    pulumi.Output<int>? noticeType,
    required pulumi.Output<String> productCode,
    required pulumi.Output<String> quotaActionCode,
    pulumi.Output<String>? quotaCategory,
    required pulumi.Output<String> reason,
  }) :
      auditMode = pulumi.Input.asOptionalInput<String>(auditMode),
      desireValue = pulumi.Input.asInput<double>(desireValue),
      dimensions = pulumi.Input.asOptionalInput<List<ApplicationInfoDimension>>(dimensions),
      effectiveTime = pulumi.Input.asOptionalInput<String>(effectiveTime),
      envLanguage = pulumi.Input.asOptionalInput<String>(envLanguage),
      expireTime = pulumi.Input.asOptionalInput<String>(expireTime),
      noticeType = pulumi.Input.asOptionalInput<int>(noticeType),
      productCode = pulumi.Input.asInput<String>(productCode),
      quotaActionCode = pulumi.Input.asInput<String>(quotaActionCode),
      quotaCategory = pulumi.Input.asOptionalInput<String>(quotaCategory),
      reason = pulumi.Input.asInput<String>(reason);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditMode': ?auditMode,
      'desireValue': desireValue,
      'dimensions': ?pulumi.Input.mapOptionalInputValue<List<ApplicationInfoDimension>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<ApplicationInfoDimension, Map<String, dynamic>>(value, (value) => value.toMap())),
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

  factory ApplicationInfoArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationInfoArgs(
      auditMode: map['auditMode'] == null ? null : pulumi.Output.create<String>(map['auditMode'] as String),
      desireValue: pulumi.Output.create<double>(map['desireValue'] as double),
      dimensions: map['dimensions'] == null ? null : pulumi.Output.create<List<ApplicationInfoDimension>>(pulumi.Input.decodeList<ApplicationInfoDimension>(map['dimensions'], (value) => ApplicationInfoDimension.fromMap((value as Map).cast<String, dynamic>()))),
      effectiveTime: map['effectiveTime'] == null ? null : pulumi.Output.create<String>(map['effectiveTime'] as String),
      envLanguage: map['envLanguage'] == null ? null : pulumi.Output.create<String>(map['envLanguage'] as String),
      expireTime: map['expireTime'] == null ? null : pulumi.Output.create<String>(map['expireTime'] as String),
      noticeType: map['noticeType'] == null ? null : pulumi.Output.create<int>(map['noticeType'] as int),
      productCode: pulumi.Output.create<String>(map['productCode'] as String),
      quotaActionCode: pulumi.Output.create<String>(map['quotaActionCode'] as String),
      quotaCategory: map['quotaCategory'] == null ? null : pulumi.Output.create<String>(map['quotaCategory'] as String),
      reason: pulumi.Output.create<String>(map['reason'] as String),
    );
  }
}

