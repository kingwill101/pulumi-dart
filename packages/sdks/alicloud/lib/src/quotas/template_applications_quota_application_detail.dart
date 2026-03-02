// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_applications_quota_application_detail_period.dart';

class TemplateApplicationsQuotaApplicationDetail {
  /// Alibaba Cloud account (primary account).
  final pulumi.Input<String>? aliyunUid;
  /// The ID of the quota promotion request.
  final pulumi.Input<String>? applicationId;
  /// The approved quota value of the quota increase request.
  final pulumi.Input<double>? approveValue;
  /// Approval comments on quota increase applications.
  final pulumi.Input<String>? auditReason;
  /// Quota dimension. See `dimensions` below.
  final pulumi.Input<Map<String, String>>? dimensions;
  /// The language of the quota application result notification. Value:
  /// - zh (default): Chinese.
  /// - en: English.
  final pulumi.Input<String>? envLanguage;
  /// Whether to send notification of quota application result. Value:
  /// - 0 (default): No.
  /// - 3: Yes.
  final pulumi.Input<int>? noticeType;
  /// Quota calculation period.
  final pulumi.Input<TemplateApplicationsQuotaApplicationDetailPeriod>? period;
  /// Quota ARN.
  final pulumi.Input<String>? quotaArn;
  /// The quota description.
  final pulumi.Input<String>? quotaDescription;
  /// The quota name.
  final pulumi.Input<String>? quotaName;
  /// Quota unit.
  final pulumi.Input<String>? quotaUnit;
  /// Reason for quota application.
  /// > **NOTE:**  The quota request is approved by the technical support of each cloud service. If you want to increase the chance of passing, please fill in a reasonable application value and detailed application reasons when applying for quota.
  final pulumi.Input<String>? reason;
  /// The approval status of the quota promotion application. Value:
  /// - Disagree: reject.
  /// - Approve: approved.
  /// - Process: under review.
  /// - Cancel: Closed.
  final pulumi.Input<String>? status;

  /// Creates a new [TemplateApplicationsQuotaApplicationDetail].
  /// [aliyunUid] Alibaba Cloud account (primary account).
  /// [applicationId] The ID of the quota promotion request.
  /// [approveValue] The approved quota value of the quota increase request.
  /// [auditReason] Approval comments on quota increase applications.
  /// [dimensions] Quota dimension. See `dimensions` below.
  /// [envLanguage] The language of the quota application result notification. Value:
  /// [noticeType] Whether to send notification of quota application result. Value:
  /// [period] Quota calculation period.
  /// [quotaArn] Quota ARN.
  /// [quotaDescription] The quota description.
  /// [quotaName] The quota name.
  /// [quotaUnit] Quota unit.
  /// [reason] Reason for quota application.
  /// [status] The approval status of the quota promotion application. Value:
  TemplateApplicationsQuotaApplicationDetail({
    this.aliyunUid,
    this.applicationId,
    this.approveValue,
    this.auditReason,
    this.dimensions,
    this.envLanguage,
    this.noticeType,
    this.period,
    this.quotaArn,
    this.quotaDescription,
    this.quotaName,
    this.quotaUnit,
    this.reason,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliyunUid': ?aliyunUid,
      'applicationId': ?applicationId,
      'approveValue': ?approveValue,
      'auditReason': ?auditReason,
      'dimensions': ?dimensions,
      'envLanguage': ?envLanguage,
      'noticeType': ?noticeType,
      'period': ?pulumi.Input.mapOptionalInputValue<TemplateApplicationsQuotaApplicationDetailPeriod, Map<String, dynamic>>(period, (value) => value.toMap()),
      'quotaArn': ?quotaArn,
      'quotaDescription': ?quotaDescription,
      'quotaName': ?quotaName,
      'quotaUnit': ?quotaUnit,
      'reason': ?reason,
      'status': ?status,
    };
  }

  factory TemplateApplicationsQuotaApplicationDetail.fromMap(Map<String, dynamic> map) {
    return TemplateApplicationsQuotaApplicationDetail(
      aliyunUid: map['aliyunUid'] == null ? null : (map['aliyunUid'] as String).input(),
      applicationId: map['applicationId'] == null ? null : (map['applicationId'] as String).input(),
      approveValue: map['approveValue'] == null ? null : (map['approveValue'] as double).input(),
      auditReason: map['auditReason'] == null ? null : (map['auditReason'] as String).input(),
      dimensions: map['dimensions'] == null ? null : ((map['dimensions'] as Map).cast<String, String>()).input(),
      envLanguage: map['envLanguage'] == null ? null : (map['envLanguage'] as String).input(),
      noticeType: map['noticeType'] == null ? null : (map['noticeType'] as int).input(),
      period: map['period'] == null ? null : (TemplateApplicationsQuotaApplicationDetailPeriod.fromMap((map['period'] as Map).cast<String, dynamic>())).input(),
      quotaArn: map['quotaArn'] == null ? null : (map['quotaArn'] as String).input(),
      quotaDescription: map['quotaDescription'] == null ? null : (map['quotaDescription'] as String).input(),
      quotaName: map['quotaName'] == null ? null : (map['quotaName'] as String).input(),
      quotaUnit: map['quotaUnit'] == null ? null : (map['quotaUnit'] as String).input(),
      reason: map['reason'] == null ? null : (map['reason'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

