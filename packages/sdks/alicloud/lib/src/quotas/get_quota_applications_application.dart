// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_quota_applications_application_dimension.dart';

class GetQuotaApplicationsApplication {
  /// The first ID of the resource.
  final pulumi.Input<String> applicationId;
  /// The approve value.
  final pulumi.Input<String> approveValue;
  /// The audit reason.
  final pulumi.Input<String> auditReason;
  /// The desire value of the quota application.
  final pulumi.Input<double> desireValue;
  /// The quota dimensions.
  final pulumi.Input<List<GetQuotaApplicationsApplicationDimension>> dimensions;
  /// The effective time.
  final pulumi.Input<String> effectiveTime;
  /// The expire time.
  final pulumi.Input<String> expireTime;
  /// The ID of the Application Info.
  final pulumi.Input<String> id;
  /// The notice type.
  final pulumi.Input<int> noticeType;
  /// The product code.
  final pulumi.Input<String> productCode;
  /// The ID of quota action..
  final pulumi.Input<String> quotaActionCode;
  /// The description of the quota.
  final pulumi.Input<String> quotaDescription;
  /// The name of the quota.
  final pulumi.Input<String> quotaName;
  /// The quota unit.
  final pulumi.Input<String> quotaUnit;
  /// The reason of the quota application.
  final pulumi.Input<String> reason;
  /// The status of the quota application.
  final pulumi.Input<String> status;

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
      'dimensions': pulumi.Input.mapInputValue<List<GetQuotaApplicationsApplicationDimension>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<GetQuotaApplicationsApplicationDimension, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      applicationId: (map['applicationId'] as String).input(),
      approveValue: (map['approveValue'] as String).input(),
      auditReason: (map['auditReason'] as String).input(),
      desireValue: (map['desireValue'] as double).input(),
      dimensions: (pulumi.Input.decodeList<GetQuotaApplicationsApplicationDimension>(map['dimensions'], (value) => GetQuotaApplicationsApplicationDimension.fromMap((value as Map).cast<String, dynamic>()))).input(),
      effectiveTime: (map['effectiveTime'] as String).input(),
      expireTime: (map['expireTime'] as String).input(),
      id: (map['id'] as String).input(),
      noticeType: (map['noticeType'] as int).input(),
      productCode: (map['productCode'] as String).input(),
      quotaActionCode: (map['quotaActionCode'] as String).input(),
      quotaDescription: (map['quotaDescription'] as String).input(),
      quotaName: (map['quotaName'] as String).input(),
      quotaUnit: (map['quotaUnit'] as String).input(),
      reason: (map['reason'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

