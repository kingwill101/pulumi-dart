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
    pulumi.Output<String>? approveValue,
    pulumi.Output<String>? auditMode,
    pulumi.Output<String>? auditReason,
    pulumi.Output<String>? createTime,
    pulumi.Output<double>? desireValue,
    pulumi.Output<List<ApplicationInfoDimension>>? dimensions,
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
      dimensions = pulumi.Input.asOptionalInput<List<ApplicationInfoDimension>>(dimensions),
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
      approveValue: map['approveValue'] == null ? null : pulumi.Output.create<String>(map['approveValue'] as String),
      auditMode: map['auditMode'] == null ? null : pulumi.Output.create<String>(map['auditMode'] as String),
      auditReason: map['auditReason'] == null ? null : pulumi.Output.create<String>(map['auditReason'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      desireValue: map['desireValue'] == null ? null : pulumi.Output.create<double>(map['desireValue'] as double),
      dimensions: map['dimensions'] == null ? null : pulumi.Output.create<List<ApplicationInfoDimension>>(pulumi.Input.decodeList<ApplicationInfoDimension>(map['dimensions'], (value) => ApplicationInfoDimension.fromMap((value as Map).cast<String, dynamic>()))),
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

