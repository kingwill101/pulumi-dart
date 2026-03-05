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
      auditMode: (() { final guardedValue = map['auditMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      desireValue: pulumi.Input.fromValue(map['desireValue'] as double),
      dimensions: (() { final guardedValue = map['dimensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationInfoDimension>(guardedValue, (value) => ApplicationInfoDimension.fromMap((value as Map).cast<String, dynamic>()))); })(),
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

