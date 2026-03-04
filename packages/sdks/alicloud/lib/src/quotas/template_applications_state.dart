// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_applications_dimension.dart';
import 'template_applications_quota_application_detail.dart';

/// Input properties used for looking up and filtering TemplateApplications resources.
class TemplateApplicationsState {
  /// The list of Alibaba Cloud accounts (primary accounts) of the resource directory members to which the quota is applied.
  /// &gt; **NOTE:**  Only 50 members can apply for quota increase in batch at a time. For more information about the members of the resource directory, see Query the list of all members in the resource directory.
  final pulumi.Input<List<String>>? aliyunUids;

  /// The value of the quota request.
  /// &gt; **NOTE:**  The quota request is approved by the technical support of each cloud service. If you want to increase the chance of passing, please fill in a reasonable application value and detailed application reasons when applying for quota.
  final pulumi.Input<double>? desireValue;

  /// Quota dimension. See `dimensions` below.
  final pulumi.Input<List<TemplateApplicationsDimension>>? dimensions;

  /// The UTC time when the quota takes effect. This parameter applies only to the equity quota (WhiteListLabel).
  /// &gt; **NOTE:**  If the current account does not select the effective time, the default is the submission time.
  final pulumi.Input<String>? effectiveTime;

  /// The language of the quota application result notification. Value:
  /// - zh (default): Chinese.
  /// - en: English.
  final pulumi.Input<String>? envLanguage;

  /// The UTC time when the quota expires. This parameter applies only to the equity quota (WhiteListLabel).
  /// &gt; **NOTE:**  If No Expiration Time is selected for the current account, the expiration time is 99 years from the effective time of the current quota.
  final pulumi.Input<String>? expireTime;

  /// Whether to send notification of quota application result. Value:
  /// - 0 (default): No.
  /// - 3: Yes.
  final pulumi.Input<int>? noticeType;

  /// Cloud service name abbreviation.
  /// &gt; **NOTE:**  For more information about cloud services that support quota centers, see Cloud services that support quota centers.
  final pulumi.Input<String>? productCode;

  /// The quota ID.
  final pulumi.Input<String>? quotaActionCode;

  /// List of quota application details.
  final pulumi.Input<List<TemplateApplicationsQuotaApplicationDetail>>?
  quotaApplicationDetails;

  /// The quota type. Value:
  /// - CommonQuota (default): Generic quota.
  /// - FlowControl:API rate quota.
  /// - WhiteListLabel: Equity quota.
  final pulumi.Input<String>? quotaCategory;

  /// Reason for quota application.
  /// &gt; **NOTE:**  The quota request is approved by the technical support of each cloud service. If you want to increase the chance of passing, please fill in a reasonable application value and detailed application reasons when applying for quota.
  final pulumi.Input<String>? reason;

  /// Creates a new [TemplateApplicationsState].
  /// [aliyunUids] The list of Alibaba Cloud accounts (primary accounts) of the resource directory members to which the quota is applied.
  /// [desireValue] The value of the quota request.
  /// [dimensions] Quota dimension. See `dimensions` below.
  /// [effectiveTime] The UTC time when the quota takes effect. This parameter applies only to the equity quota (WhiteListLabel).
  /// [envLanguage] The language of the quota application result notification. Value:
  /// [expireTime] The UTC time when the quota expires. This parameter applies only to the equity quota (WhiteListLabel).
  /// [noticeType] Whether to send notification of quota application result. Value:
  /// [productCode] Cloud service name abbreviation.
  /// [quotaActionCode] The quota ID.
  /// [quotaApplicationDetails] List of quota application details.
  /// [quotaCategory] The quota type. Value:
  /// [reason] Reason for quota application.
  TemplateApplicationsState({
    this.aliyunUids,
    this.desireValue,
    this.dimensions,
    this.effectiveTime,
    this.envLanguage,
    this.expireTime,
    this.noticeType,
    this.productCode,
    this.quotaActionCode,
    this.quotaApplicationDetails,
    this.quotaCategory,
    this.reason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliyunUids': ?aliyunUids,
      'desireValue': ?desireValue,
      'dimensions':
          ?pulumi.Input.mapOptionalInputValue<
            List<TemplateApplicationsDimension>,
            List<Map<String, dynamic>>
          >(
            dimensions,
            (value) =>
                pulumi.Input.encodeList<
                  TemplateApplicationsDimension,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'effectiveTime': ?effectiveTime,
      'envLanguage': ?envLanguage,
      'expireTime': ?expireTime,
      'noticeType': ?noticeType,
      'productCode': ?productCode,
      'quotaActionCode': ?quotaActionCode,
      'quotaApplicationDetails':
          ?pulumi.Input.mapOptionalInputValue<
            List<TemplateApplicationsQuotaApplicationDetail>,
            List<Map<String, dynamic>>
          >(
            quotaApplicationDetails,
            (value) =>
                pulumi.Input.encodeList<
                  TemplateApplicationsQuotaApplicationDetail,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'quotaCategory': ?quotaCategory,
      'reason': ?reason,
    };
  }

  factory TemplateApplicationsState.fromMap(Map<String, dynamic> map) {
    return TemplateApplicationsState(
      aliyunUids: (() {
        final guardedValue = map['aliyunUids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      desireValue: (() {
        final guardedValue = map['desireValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      dimensions: (() {
        final guardedValue = map['dimensions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<TemplateApplicationsDimension>(
            guardedValue,
            (value) => TemplateApplicationsDimension.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      effectiveTime: (() {
        final guardedValue = map['effectiveTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      envLanguage: (() {
        final guardedValue = map['envLanguage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      expireTime: (() {
        final guardedValue = map['expireTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      noticeType: (() {
        final guardedValue = map['noticeType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      productCode: (() {
        final guardedValue = map['productCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      quotaActionCode: (() {
        final guardedValue = map['quotaActionCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      quotaApplicationDetails: (() {
        final guardedValue = map['quotaApplicationDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<TemplateApplicationsQuotaApplicationDetail>(
            guardedValue,
            (value) => TemplateApplicationsQuotaApplicationDetail.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      quotaCategory: (() {
        final guardedValue = map['quotaCategory'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      reason: (() {
        final guardedValue = map['reason'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
