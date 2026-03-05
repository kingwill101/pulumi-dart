import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_applications_args.dart';
import 'template_applications_state.dart';

/// ## Import
///
/// Quotas Template Applications can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:quotas/templateApplications:TemplateApplications example <id>
/// ```
class TemplateApplications extends pulumi.CustomResource {
  /// The list of Alibaba Cloud accounts (primary accounts) of the resource directory members to which the quota is applied.
  /// &gt; **NOTE:**  Only 50 members can apply for quota increase in batch at a time. For more information about the members of the resource directory, see Query the list of all members in the resource directory.
  late final pulumi.Output<List<String>> aliyunUids;
  /// The value of the quota request.
  /// &gt; **NOTE:**  The quota request is approved by the technical support of each cloud service. If you want to increase the chance of passing, please fill in a reasonable application value and detailed application reasons when applying for quota.
  late final pulumi.Output<double> desireValue;
  /// Quota dimension. See `dimensions` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> dimensions;
  /// The UTC time when the quota takes effect. This parameter applies only to the equity quota (WhiteListLabel).
  /// &gt; **NOTE:**  If the current account does not select the effective time, the default is the submission time.
  late final pulumi.Output<String?> effectiveTime;
  /// The language of the quota application result notification. Value:
  /// - zh (default): Chinese.
  /// - en: English.
  late final pulumi.Output<String?> envLanguage;
  /// The UTC time when the quota expires. This parameter applies only to the equity quota (WhiteListLabel).
  /// &gt; **NOTE:**  If No Expiration Time is selected for the current account, the expiration time is 99 years from the effective time of the current quota.
  late final pulumi.Output<String?> expireTime;
  /// Whether to send notification of quota application result. Value:
  /// - 0 (default): No.
  /// - 3: Yes.
  late final pulumi.Output<int?> noticeType;
  /// Cloud service name abbreviation.
  /// &gt; **NOTE:**  For more information about cloud services that support quota centers, see Cloud services that support quota centers.
  late final pulumi.Output<String> productCode;
  /// The quota ID.
  late final pulumi.Output<String> quotaActionCode;
  /// List of quota application details.
  late final pulumi.Output<List<Map<String, dynamic>>> quotaApplicationDetails;
  /// The quota type. Value:
  /// - CommonQuota (default): Generic quota.
  /// - FlowControl:API rate quota.
  /// - WhiteListLabel: Equity quota.
  late final pulumi.Output<String> quotaCategory;
  /// Reason for quota application.
  /// &gt; **NOTE:**  The quota request is approved by the technical support of each cloud service. If you want to increase the chance of passing, please fill in a reasonable application value and detailed application reasons when applying for quota.
  late final pulumi.Output<String> reason;

  /// Creates a new [TemplateApplications].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TemplateApplications]. {@macro pulumi_quotas_template_applications_template_applications_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TemplateApplications(
    String name, {
    TemplateApplicationsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:quotas/templateApplications:TemplateApplications',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aliyunUids = registerOutput<List<String>>('aliyunUids');
    desireValue = registerOutput<double>('desireValue');
    dimensions = registerOutput<List<Map<String, dynamic>>?>('dimensions');
    effectiveTime = registerOutput<String?>('effectiveTime');
    envLanguage = registerOutput<String?>('envLanguage');
    expireTime = registerOutput<String?>('expireTime');
    noticeType = registerOutput<int?>('noticeType');
    productCode = registerOutput<String>('productCode');
    quotaActionCode = registerOutput<String>('quotaActionCode');
    quotaApplicationDetails = registerOutput<List<Map<String, dynamic>>>('quotaApplicationDetails');
    quotaCategory = registerOutput<String>('quotaCategory');
    reason = registerOutput<String>('reason');
  }

  /// Gets an existing [TemplateApplications] resource's state with the given [name] and [id].
  static TemplateApplications get(
    String name,
    pulumi.Input<String> id, {
    TemplateApplicationsState? state,
  }) {
    return TemplateApplications._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TemplateApplications._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:quotas/templateApplications:TemplateApplications',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aliyunUids = registerOutput<List<String>>('aliyunUids');
    desireValue = registerOutput<double>('desireValue');
    dimensions = registerOutput<List<Map<String, dynamic>>?>('dimensions');
    effectiveTime = registerOutput<String?>('effectiveTime');
    envLanguage = registerOutput<String?>('envLanguage');
    expireTime = registerOutput<String?>('expireTime');
    noticeType = registerOutput<int?>('noticeType');
    productCode = registerOutput<String>('productCode');
    quotaActionCode = registerOutput<String>('quotaActionCode');
    quotaApplicationDetails = registerOutput<List<Map<String, dynamic>>>('quotaApplicationDetails');
    quotaCategory = registerOutput<String>('quotaCategory');
    reason = registerOutput<String>('reason');
  }
}
