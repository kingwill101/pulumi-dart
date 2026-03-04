// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_template_applications_application_audit_status_vo.dart';
import 'get_template_applications_application_dimension.dart';

class GetTemplateApplicationsApplication {
  /// The list of Alibaba Cloud accounts (primary accounts) of the resource directory members to which the quota is applied.&gt; Only 50 members can apply for quota increase in batch at a time. For more information about the members of the resource directory, see Query the list of all members in the resource directory.
  final pulumi.Input<List<String>> aliyunUids;

  /// The UTC time of the quota increase application.
  final pulumi.Input<String> applyTime;

  /// Quantity of requisitions in different approval statuses.
  final pulumi.Input<List<GetTemplateApplicationsApplicationAuditStatusVo>>
  auditStatusVos;

  /// The ID of the quota application batch.
  final pulumi.Input<String> batchQuotaApplicationId;

  /// The value of the quota request.&gt; The quota request is approved by the technical support of each cloud service. If you want to increase the chance of passing, please fill in a reasonable application value and detailed application reasons when applying for quota.
  final pulumi.Input<double> desireValue;

  /// Quota dimension.
  final pulumi.Input<List<GetTemplateApplicationsApplicationDimension>>
  dimensions;

  /// The UTC time when the quota takes effect. This parameter applies only to the equity quota (WhiteListLabel).&gt; If the current account does not select the effective time, the default is the submission time.
  final pulumi.Input<String> effectiveTime;

  /// The UTC time when the quota expires. This parameter applies only to the equity quota (WhiteListLabel).&gt; If No Expiration Time is selected for the current account, the expiration time is 99 years from the effective time of the current quota.
  final pulumi.Input<String> expireTime;

  /// The ID of the quota application batch.
  final pulumi.Input<String> id;

  /// Cloud service name abbreviation.&gt; For more information about cloud services that support quota centers, see Cloud services that support quota centers.
  final pulumi.Input<String> productCode;

  /// The quota ID.
  final pulumi.Input<String> quotaActionCode;

  /// The quota type. Value: `CommonQuota`, `FlowControl` and `WhiteListLabel`.
  final pulumi.Input<String> quotaCategory;

  /// Reason for quota application.&gt; The quota request is approved by the technical support of each cloud service. If you want to increase the chance of passing, please fill in a reasonable application value and detailed application reasons when applying for quota.
  final pulumi.Input<String> reason;

  /// Creates a new [GetTemplateApplicationsApplication].
  /// [aliyunUids] The list of Alibaba Cloud accounts (primary accounts) of the resource directory members to which the quota is applied.&gt; Only 50 members can apply for quota increase in batch at a time. For more information about the members of the resource directory, see Query the list of all members in the resource directory.
  /// [applyTime] The UTC time of the quota increase application.
  /// [auditStatusVos] Quantity of requisitions in different approval statuses.
  /// [batchQuotaApplicationId] The ID of the quota application batch.
  /// [desireValue] The value of the quota request.&gt; The quota request is approved by the technical support of each cloud service. If you want to increase the chance of passing, please fill in a reasonable application value and detailed application reasons when applying for quota.
  /// [dimensions] Quota dimension.
  /// [effectiveTime] The UTC time when the quota takes effect. This parameter applies only to the equity quota (WhiteListLabel).&gt; If the current account does not select the effective time, the default is the submission time.
  /// [expireTime] The UTC time when the quota expires. This parameter applies only to the equity quota (WhiteListLabel).&gt; If No Expiration Time is selected for the current account, the expiration time is 99 years from the effective time of the current quota.
  /// [id] The ID of the quota application batch.
  /// [productCode] Cloud service name abbreviation.&gt; For more information about cloud services that support quota centers, see Cloud services that support quota centers.
  /// [quotaActionCode] The quota ID.
  /// [quotaCategory] The quota type. Value: `CommonQuota`, `FlowControl` and `WhiteListLabel`.
  /// [reason] Reason for quota application.&gt; The quota request is approved by the technical support of each cloud service. If you want to increase the chance of passing, please fill in a reasonable application value and detailed application reasons when applying for quota.
  GetTemplateApplicationsApplication({
    required this.aliyunUids,
    required this.applyTime,
    required this.auditStatusVos,
    required this.batchQuotaApplicationId,
    required this.desireValue,
    required this.dimensions,
    required this.effectiveTime,
    required this.expireTime,
    required this.id,
    required this.productCode,
    required this.quotaActionCode,
    required this.quotaCategory,
    required this.reason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliyunUids': aliyunUids,
      'applyTime': applyTime,
      'auditStatusVos':
          pulumi.Input.mapInputValue<
            List<GetTemplateApplicationsApplicationAuditStatusVo>,
            List<Map<String, dynamic>>
          >(
            auditStatusVos,
            (value) =>
                pulumi.Input.encodeList<
                  GetTemplateApplicationsApplicationAuditStatusVo,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'batchQuotaApplicationId': batchQuotaApplicationId,
      'desireValue': desireValue,
      'dimensions':
          pulumi.Input.mapInputValue<
            List<GetTemplateApplicationsApplicationDimension>,
            List<Map<String, dynamic>>
          >(
            dimensions,
            (value) =>
                pulumi.Input.encodeList<
                  GetTemplateApplicationsApplicationDimension,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'effectiveTime': effectiveTime,
      'expireTime': expireTime,
      'id': id,
      'productCode': productCode,
      'quotaActionCode': quotaActionCode,
      'quotaCategory': quotaCategory,
      'reason': reason,
    };
  }

  factory GetTemplateApplicationsApplication.fromMap(Map<String, dynamic> map) {
    return GetTemplateApplicationsApplication(
      aliyunUids: pulumi.Input.fromValue(
        (map['aliyunUids'] as List).cast<String>(),
      ),
      applyTime: pulumi.Input.fromValue(map['applyTime'] as String),
      auditStatusVos: pulumi.Input.fromValue(
        pulumi
            .Input.decodeList<GetTemplateApplicationsApplicationAuditStatusVo>(
          map['auditStatusVos']!,
          (value) => GetTemplateApplicationsApplicationAuditStatusVo.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      batchQuotaApplicationId: pulumi.Input.fromValue(
        map['batchQuotaApplicationId'] as String,
      ),
      desireValue: pulumi.Input.fromValue(map['desireValue'] as double),
      dimensions: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetTemplateApplicationsApplicationDimension>(
          map['dimensions']!,
          (value) => GetTemplateApplicationsApplicationDimension.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      effectiveTime: pulumi.Input.fromValue(map['effectiveTime'] as String),
      expireTime: pulumi.Input.fromValue(map['expireTime'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      productCode: pulumi.Input.fromValue(map['productCode'] as String),
      quotaActionCode: pulumi.Input.fromValue(map['quotaActionCode'] as String),
      quotaCategory: pulumi.Input.fromValue(map['quotaCategory'] as String),
      reason: pulumi.Input.fromValue(map['reason'] as String),
    );
  }
}
