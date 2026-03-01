// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_quota_applications_application_dimension.dart';

class GetQuotaApplicationsApplication {
  /// The first ID of the resource.
  final String applicationId;
  /// The approve value.
  final String approveValue;
  /// The audit reason.
  final String auditReason;
  /// The desire value of the quota application.
  final double desireValue;
  /// The quota dimensions.
  final List<GetQuotaApplicationsApplicationDimension> dimensions;
  /// The effective time.
  final String effectiveTime;
  /// The expire time.
  final String expireTime;
  /// The ID of the Application Info.
  final String id;
  /// The notice type.
  final int noticeType;
  /// The product code.
  final String productCode;
  /// The ID of quota action..
  final String quotaActionCode;
  /// The description of the quota.
  final String quotaDescription;
  /// The name of the quota.
  final String quotaName;
  /// The quota unit.
  final String quotaUnit;
  /// The reason of the quota application.
  final String reason;
  /// The status of the quota application.
  final String status;

  /// Creates a new [GetQuotaApplicationsApplication].
  /// [applicationId] The first ID of the resource.
  /// [approveValue] The approve value.
  /// [auditReason] The audit reason.
  /// [desireValue] The desire value of the quota application.
  /// [dimensions] The quota dimensions.
  /// [effectiveTime] The effective time.
  /// [expireTime] The expire time.
  /// [id] The ID of the Application Info.
  /// [noticeType] The notice type.
  /// [productCode] The product code.
  /// [quotaActionCode] The ID of quota action..
  /// [quotaDescription] The description of the quota.
  /// [quotaName] The name of the quota.
  /// [quotaUnit] The quota unit.
  /// [reason] The reason of the quota application.
  /// [status] The status of the quota application.
  GetQuotaApplicationsApplication({
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
      'dimensions': pulumi.Input.encodeList<GetQuotaApplicationsApplicationDimension, Map<String, dynamic>>(dimensions, (value) => value.toMap()),
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

  factory GetQuotaApplicationsApplication.fromMap(Map<String, dynamic> map) {
    return GetQuotaApplicationsApplication(
      applicationId: map['applicationId'] as String,
      approveValue: map['approveValue'] as String,
      auditReason: map['auditReason'] as String,
      desireValue: map['desireValue'] as double,
      dimensions: pulumi.Input.decodeList<GetQuotaApplicationsApplicationDimension>(map['dimensions'], (value) => GetQuotaApplicationsApplicationDimension.fromMap((value as Map).cast<String, dynamic>())),
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

