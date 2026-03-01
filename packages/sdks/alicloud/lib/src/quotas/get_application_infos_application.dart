// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_infos_application_dimension.dart';

class GetApplicationInfosApplication {
  final String applicationId;
  final String approveValue;
  final String auditReason;
  final double desireValue;
  final List<GetApplicationInfosApplicationDimension> dimensions;
  final String effectiveTime;
  final String expireTime;
  final String id;
  final int noticeType;
  final String productCode;
  final String quotaActionCode;
  final String quotaDescription;
  final String quotaName;
  final String quotaUnit;
  final String reason;
  final String status;

  /// Creates a new [GetApplicationInfosApplication].
  /// [applicationId] Required.
  /// [approveValue] Required.
  /// [auditReason] Required.
  /// [desireValue] Required.
  /// [dimensions] Required.
  /// [effectiveTime] Required.
  /// [expireTime] Required.
  /// [id] Required.
  /// [noticeType] Required.
  /// [productCode] Required.
  /// [quotaActionCode] Required.
  /// [quotaDescription] Required.
  /// [quotaName] Required.
  /// [quotaUnit] Required.
  /// [reason] Required.
  /// [status] Required.
  GetApplicationInfosApplication({
    required this.applicationId,
    required this.approveValue,
    required this.auditReason,
    required this.desireValue,
    required this.dimensions,
    required this.effectiveTime,
    required this.expireTime,
    required this.id,
    required this.noticeType,
    required this.productCode,
    required this.quotaActionCode,
    required this.quotaDescription,
    required this.quotaName,
    required this.quotaUnit,
    required this.reason,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'approveValue': approveValue,
      'auditReason': auditReason,
      'desireValue': desireValue,
      'dimensions': pulumi.Input.encodeList<GetApplicationInfosApplicationDimension, Map<String, dynamic>>(dimensions, (value) => value.toMap()),
      'effectiveTime': effectiveTime,
      'expireTime': expireTime,
      'id': id,
      'noticeType': noticeType,
      'productCode': productCode,
      'quotaActionCode': quotaActionCode,
      'quotaDescription': quotaDescription,
      'quotaName': quotaName,
      'quotaUnit': quotaUnit,
      'reason': reason,
      'status': status,
    };
  }

  factory GetApplicationInfosApplication.fromMap(Map<String, dynamic> map) {
    return GetApplicationInfosApplication(
      applicationId: map['applicationId'] as String,
      approveValue: map['approveValue'] as String,
      auditReason: map['auditReason'] as String,
      desireValue: map['desireValue'] as double,
      dimensions: pulumi.Input.decodeList<GetApplicationInfosApplicationDimension>(map['dimensions'], (value) => GetApplicationInfosApplicationDimension.fromMap((value as Map).cast<String, dynamic>())),
      effectiveTime: map['effectiveTime'] as String,
      expireTime: map['expireTime'] as String,
      id: map['id'] as String,
      noticeType: map['noticeType'] as int,
      productCode: map['productCode'] as String,
      quotaActionCode: map['quotaActionCode'] as String,
      quotaDescription: map['quotaDescription'] as String,
      quotaName: map['quotaName'] as String,
      quotaUnit: map['quotaUnit'] as String,
      reason: map['reason'] as String,
      status: map['status'] as String,
    );
  }
}

