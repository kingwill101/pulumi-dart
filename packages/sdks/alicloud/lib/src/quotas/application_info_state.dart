// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_info_dimension.dart';

/// Input properties used for looking up and filtering ApplicationInfo resources.
class ApplicationInfoState {
  final pulumi.Input<String>? approveValue;
  final pulumi.Input<String>? auditMode;
  final pulumi.Input<String>? auditReason;
  final pulumi.Input<String>? createTime;
  final pulumi.Input<double>? desireValue;
  final pulumi.Input<List<ApplicationInfoDimension>>? dimensions;
  final pulumi.Input<String>? effectiveTime;
  final pulumi.Input<String>? envLanguage;
  final pulumi.Input<String>? expireTime;
  final pulumi.Input<int>? noticeType;
  final pulumi.Input<String>? productCode;
  final pulumi.Input<String>? quotaActionCode;
  final pulumi.Input<String>? quotaCategory;
  final pulumi.Input<String>? quotaDescription;
  final pulumi.Input<String>? quotaName;
  final pulumi.Input<String>? quotaUnit;
  final pulumi.Input<String>? reason;
  final pulumi.Input<String>? status;

  /// Creates a new [ApplicationInfoState].
  /// [approveValue] Optional.
  /// [auditMode] Optional.
  /// [auditReason] Optional.
  /// [createTime] Optional.
  /// [desireValue] Optional.
  /// [dimensions] Optional.
  /// [effectiveTime] Optional.
  /// [envLanguage] Optional.
  /// [expireTime] Optional.
  /// [noticeType] Optional.
  /// [productCode] Optional.
  /// [quotaActionCode] Optional.
  /// [quotaCategory] Optional.
  /// [quotaDescription] Optional.
  /// [quotaName] Optional.
  /// [quotaUnit] Optional.
  /// [reason] Optional.
  /// [status] Optional.
  const ApplicationInfoState({
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
      'dimensions': ?pulumi.Input.mapOptionalInputValue<List<ApplicationInfoDimension>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<ApplicationInfoDimension, Map<String, dynamic>>(value, (value) => value.toMap())),
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

  factory ApplicationInfoState.fromMap(Map<String, dynamic> map) {
    return ApplicationInfoState(
      approveValue: (() { final guardedValue = map['approveValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      auditMode: (() { final guardedValue = map['auditMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      auditReason: (() { final guardedValue = map['auditReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      desireValue: (() { final guardedValue = map['desireValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      dimensions: (() { final guardedValue = map['dimensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationInfoDimension>(guardedValue, (value) => ApplicationInfoDimension.fromMap((value as Map).cast<String, dynamic>()))); })(),
      effectiveTime: (() { final guardedValue = map['effectiveTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      envLanguage: (() { final guardedValue = map['envLanguage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      noticeType: (() { final guardedValue = map['noticeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      productCode: (() { final guardedValue = map['productCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      quotaActionCode: (() { final guardedValue = map['quotaActionCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      quotaCategory: (() { final guardedValue = map['quotaCategory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      quotaDescription: (() { final guardedValue = map['quotaDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      quotaName: (() { final guardedValue = map['quotaName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      quotaUnit: (() { final guardedValue = map['quotaUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reason: (() { final guardedValue = map['reason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

