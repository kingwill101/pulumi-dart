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
  ApplicationInfoState({
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
      approveValue: map['approveValue'] == null ? null : (map['approveValue'] as String).input(),
      auditMode: map['auditMode'] == null ? null : (map['auditMode'] as String).input(),
      auditReason: map['auditReason'] == null ? null : (map['auditReason'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      desireValue: map['desireValue'] == null ? null : (map['desireValue'] as double).input(),
      dimensions: map['dimensions'] == null ? null : (pulumi.Input.decodeList<ApplicationInfoDimension>(map['dimensions'], (value) => ApplicationInfoDimension.fromMap((value as Map).cast<String, dynamic>()))).input(),
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

