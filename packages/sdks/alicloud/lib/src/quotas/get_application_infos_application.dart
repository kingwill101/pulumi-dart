// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_infos_application_dimension.dart';

class GetApplicationInfosApplication {
  final pulumi.Input<String> applicationId;
  final pulumi.Input<String> approveValue;
  final pulumi.Input<String> auditReason;
  final pulumi.Input<double> desireValue;
  final pulumi.Input<List<GetApplicationInfosApplicationDimension>> dimensions;
  final pulumi.Input<String> effectiveTime;
  final pulumi.Input<String> expireTime;
  final pulumi.Input<String> id;
  final pulumi.Input<int> noticeType;
  final pulumi.Input<String> productCode;
  final pulumi.Input<String> quotaActionCode;
  final pulumi.Input<String> quotaDescription;
  final pulumi.Input<String> quotaName;
  final pulumi.Input<String> quotaUnit;
  final pulumi.Input<String> reason;
  final pulumi.Input<String> status;

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
      'dimensions': pulumi.Input.mapInputValue<List<GetApplicationInfosApplicationDimension>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<GetApplicationInfosApplicationDimension, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      applicationId: (map['applicationId'] as String).input(),
      approveValue: (map['approveValue'] as String).input(),
      auditReason: (map['auditReason'] as String).input(),
      desireValue: (map['desireValue'] as double).input(),
      dimensions: (pulumi.Input.decodeList<GetApplicationInfosApplicationDimension>(map['dimensions'], (value) => GetApplicationInfosApplicationDimension.fromMap((value as Map).cast<String, dynamic>()))).input(),
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

