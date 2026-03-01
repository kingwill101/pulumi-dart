// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_applications_dimension.dart';

/// {@template pulumi_quotas_template_applications_template_applications_args_doc}
/// The set of arguments for TemplateApplications.
/// {@endtemplate}
/// {@macro pulumi_quotas_template_applications_template_applications_args_doc}
class TemplateApplicationsArgs {
  /// The list of Alibaba Cloud accounts (primary accounts) of the resource directory members to which the quota is applied.
  /// > **NOTE:**  Only 50 members can apply for quota increase in batch at a time. For more information about the members of the resource directory, see Query the list of all members in the resource directory.
  final pulumi.Input<List<String>> aliyunUids;
  /// The value of the quota request.
  /// > **NOTE:**  The quota request is approved by the technical support of each cloud service. If you want to increase the chance of passing, please fill in a reasonable application value and detailed application reasons when applying for quota.
  final pulumi.Input<double> desireValue;
  /// Quota dimension. See `dimensions` below.
  final pulumi.Input<List<TemplateApplicationsDimension>>? dimensions;
  /// The UTC time when the quota takes effect. This parameter applies only to the equity quota (WhiteListLabel).
  /// > **NOTE:**  If the current account does not select the effective time, the default is the submission time.
  final pulumi.Input<String>? effectiveTime;
  /// The language of the quota application result notification. Value:
  /// - zh (default): Chinese.
  /// - en: English.
  final pulumi.Input<String>? envLanguage;
  /// The UTC time when the quota expires. This parameter applies only to the equity quota (WhiteListLabel).
  /// > **NOTE:**  If No Expiration Time is selected for the current account, the expiration time is 99 years from the effective time of the current quota.
  final pulumi.Input<String>? expireTime;
  /// Whether to send notification of quota application result. Value:
  /// - 0 (default): No.
  /// - 3: Yes.
  final pulumi.Input<int>? noticeType;
  /// Cloud service name abbreviation.
  /// > **NOTE:**  For more information about cloud services that support quota centers, see Cloud services that support quota centers.
  final pulumi.Input<String> productCode;
  /// The quota ID.
  final pulumi.Input<String> quotaActionCode;
  /// The quota type. Value:
  /// - CommonQuota (default): Generic quota.
  /// - FlowControl:API rate quota.
  /// - WhiteListLabel: Equity quota.
  final pulumi.Input<String> quotaCategory;
  /// Reason for quota application.
  /// > **NOTE:**  The quota request is approved by the technical support of each cloud service. If you want to increase the chance of passing, please fill in a reasonable application value and detailed application reasons when applying for quota.
  final pulumi.Input<String> reason;

  /// Creates a new [TemplateApplicationsArgs].
  /// [aliyunUids] The list of Alibaba Cloud accounts (primary accounts) of the resource directory members to which the quota is applied.
  /// [desireValue] The value of the quota request.
  /// [dimensions] Quota dimension. See `dimensions` below.
  /// [effectiveTime] The UTC time when the quota takes effect. This parameter applies only to the equity quota (WhiteListLabel).
  /// [envLanguage] The language of the quota application result notification. Value:
  /// [expireTime] The UTC time when the quota expires. This parameter applies only to the equity quota (WhiteListLabel).
  /// [noticeType] Whether to send notification of quota application result. Value:
  /// [productCode] Cloud service name abbreviation.
  /// [quotaActionCode] The quota ID.
  /// [quotaCategory] The quota type. Value:
  /// [reason] Reason for quota application.
  TemplateApplicationsArgs({
    required pulumi.Output<List<String>> aliyunUids,
    required pulumi.Output<double> desireValue,
    pulumi.Output<List<TemplateApplicationsDimension>>? dimensions,
    pulumi.Output<String>? effectiveTime,
    pulumi.Output<String>? envLanguage,
    pulumi.Output<String>? expireTime,
    pulumi.Output<int>? noticeType,
    required pulumi.Output<String> productCode,
    required pulumi.Output<String> quotaActionCode,
    required pulumi.Output<String> quotaCategory,
    required pulumi.Output<String> reason,
  }) :
      aliyunUids = pulumi.Input.asInput<List<String>>(aliyunUids),
      desireValue = pulumi.Input.asInput<double>(desireValue),
      dimensions = pulumi.Input.asOptionalInput<List<TemplateApplicationsDimension>>(dimensions),
      effectiveTime = pulumi.Input.asOptionalInput<String>(effectiveTime),
      envLanguage = pulumi.Input.asOptionalInput<String>(envLanguage),
      expireTime = pulumi.Input.asOptionalInput<String>(expireTime),
      noticeType = pulumi.Input.asOptionalInput<int>(noticeType),
      productCode = pulumi.Input.asInput<String>(productCode),
      quotaActionCode = pulumi.Input.asInput<String>(quotaActionCode),
      quotaCategory = pulumi.Input.asInput<String>(quotaCategory),
      reason = pulumi.Input.asInput<String>(reason);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliyunUids': aliyunUids,
      'desireValue': desireValue,
      'dimensions': ?pulumi.Input.mapOptionalInputValue<List<TemplateApplicationsDimension>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<TemplateApplicationsDimension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'effectiveTime': ?effectiveTime,
      'envLanguage': ?envLanguage,
      'expireTime': ?expireTime,
      'noticeType': ?noticeType,
      'productCode': productCode,
      'quotaActionCode': quotaActionCode,
      'quotaCategory': quotaCategory,
      'reason': reason,
    };
  }

  factory TemplateApplicationsArgs.fromMap(Map<String, dynamic> map) {
    return TemplateApplicationsArgs(
      aliyunUids: pulumi.Output.create<List<String>>((map['aliyunUids'] as List).cast<String>()),
      desireValue: pulumi.Output.create<double>(map['desireValue'] as double),
      dimensions: map['dimensions'] == null ? null : pulumi.Output.create<List<TemplateApplicationsDimension>>(pulumi.Input.decodeList<TemplateApplicationsDimension>(map['dimensions'], (value) => TemplateApplicationsDimension.fromMap((value as Map).cast<String, dynamic>()))),
      effectiveTime: map['effectiveTime'] == null ? null : pulumi.Output.create<String>(map['effectiveTime'] as String),
      envLanguage: map['envLanguage'] == null ? null : pulumi.Output.create<String>(map['envLanguage'] as String),
      expireTime: map['expireTime'] == null ? null : pulumi.Output.create<String>(map['expireTime'] as String),
      noticeType: map['noticeType'] == null ? null : pulumi.Output.create<int>(map['noticeType'] as int),
      productCode: pulumi.Output.create<String>(map['productCode'] as String),
      quotaActionCode: pulumi.Output.create<String>(map['quotaActionCode'] as String),
      quotaCategory: pulumi.Output.create<String>(map['quotaCategory'] as String),
      reason: pulumi.Output.create<String>(map['reason'] as String),
    );
  }
}

