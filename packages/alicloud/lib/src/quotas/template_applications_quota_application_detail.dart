// ignore_for_file: unused_element, unnecessary_cast

import 'template_applications_quota_application_detail_period.dart';

class TemplateApplicationsQuotaApplicationDetail {
  /// Alibaba Cloud account (primary account).
  final String? aliyunUid;
  /// The ID of the quota promotion request.
  final String? applicationId;
  /// The approved quota value of the quota increase request.
  final double? approveValue;
  /// Approval comments on quota increase applications.
  final String? auditReason;
  /// Quota dimension. See `dimensions` below.
  final Map<String, String>? dimensions;
  /// The language of the quota application result notification. Value:
  /// - zh (default): Chinese.
  /// - en: English.
  final String? envLanguage;
  /// Whether to send notification of quota application result. Value:
  /// - 0 (default): No.
  /// - 3: Yes.
  final int? noticeType;
  /// Quota calculation period.
  final TemplateApplicationsQuotaApplicationDetailPeriod? period;
  /// Quota ARN.
  final String? quotaArn;
  /// The quota description.
  final String? quotaDescription;
  /// The quota name.
  final String? quotaName;
  /// Quota unit.
  final String? quotaUnit;
  /// Reason for quota application.
  /// > **NOTE:**  The quota request is approved by the technical support of each cloud service. If you want to increase the chance of passing, please fill in a reasonable application value and detailed application reasons when applying for quota.
  final String? reason;
  /// The approval status of the quota promotion application. Value:
  /// - Disagree: reject.
  /// - Approve: approved.
  /// - Process: under review.
  /// - Cancel: Closed.
  final String? status;

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
      'period': ?period == null ? null : period!.toMap(),
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
      aliyunUid: map['aliyunUid'] == null ? null : map['aliyunUid'] as String,
      applicationId: map['applicationId'] == null ? null : map['applicationId'] as String,
      approveValue: map['approveValue'] == null ? null : map['approveValue'] as double,
      auditReason: map['auditReason'] == null ? null : map['auditReason'] as String,
      dimensions: map['dimensions'] == null ? null : (map['dimensions'] as Map).cast<String, String>(),
      envLanguage: map['envLanguage'] == null ? null : map['envLanguage'] as String,
      noticeType: map['noticeType'] == null ? null : map['noticeType'] as int,
      period: map['period'] == null ? null : TemplateApplicationsQuotaApplicationDetailPeriod.fromMap((map['period'] as Map).cast<String, dynamic>()),
      quotaArn: map['quotaArn'] == null ? null : map['quotaArn'] as String,
      quotaDescription: map['quotaDescription'] == null ? null : map['quotaDescription'] as String,
      quotaName: map['quotaName'] == null ? null : map['quotaName'] as String,
      quotaUnit: map['quotaUnit'] == null ? null : map['quotaUnit'] as String,
      reason: map['reason'] == null ? null : map['reason'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

