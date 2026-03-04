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
      'dimensions':
          pulumi.Input.mapInputValue<
            List<GetApplicationInfosApplicationDimension>,
            List<Map<String, dynamic>>
          >(
            dimensions,
            (value) =>
                pulumi.Input.encodeList<
                  GetApplicationInfosApplicationDimension,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      applicationId: pulumi.Input.fromValue(map['applicationId'] as String),
      approveValue: pulumi.Input.fromValue(map['approveValue'] as String),
      auditReason: pulumi.Input.fromValue(map['auditReason'] as String),
      desireValue: pulumi.Input.fromValue(map['desireValue'] as double),
      dimensions: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetApplicationInfosApplicationDimension>(
          map['dimensions']!,
          (value) => GetApplicationInfosApplicationDimension.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      effectiveTime: pulumi.Input.fromValue(map['effectiveTime'] as String),
      expireTime: pulumi.Input.fromValue(map['expireTime'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      noticeType: pulumi.Input.fromValue(map['noticeType'] as int),
      productCode: pulumi.Input.fromValue(map['productCode'] as String),
      quotaActionCode: pulumi.Input.fromValue(map['quotaActionCode'] as String),
      quotaDescription: pulumi.Input.fromValue(
        map['quotaDescription'] as String,
      ),
      quotaName: pulumi.Input.fromValue(map['quotaName'] as String),
      quotaUnit: pulumi.Input.fromValue(map['quotaUnit'] as String),
      reason: pulumi.Input.fromValue(map['reason'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
