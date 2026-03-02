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
      auditMode: map['auditMode'] == null ? null : (map['auditMode'] as String).input(),
      desireValue: (map['desireValue'] as double).input(),
      dimensions: map['dimensions'] == null ? null : (pulumi.Input.decodeList<ApplicationInfoDimension>(map['dimensions'], (value) => ApplicationInfoDimension.fromMap((value as Map).cast<String, dynamic>()))).input(),
      effectiveTime: map['effectiveTime'] == null ? null : (map['effectiveTime'] as String).input(),
      envLanguage: map['envLanguage'] == null ? null : (map['envLanguage'] as String).input(),
      expireTime: map['expireTime'] == null ? null : (map['expireTime'] as String).input(),
      noticeType: map['noticeType'] == null ? null : (map['noticeType'] as int).input(),
      productCode: (map['productCode'] as String).input(),
      quotaActionCode: (map['quotaActionCode'] as String).input(),
      quotaCategory: map['quotaCategory'] == null ? null : (map['quotaCategory'] as String).input(),
      reason: (map['reason'] as String).input(),
    );
  }
}

