import 'package:pulumi/pulumi.dart' as pulumi;
import 'quota_application_args.dart';
import 'quota_application_state.dart';

/// ## Import
///
/// Quotas Quota Application can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:quotas/quotaApplication:QuotaApplication example <id>
/// ```
class QuotaApplication extends pulumi.CustomResource {
  /// The approve value of the quota application.
  late final pulumi.Output<String> approveValue;

  /// This parameter is discontinued and is not recommended. The mode in which you want the application to be reviewed. Valid values:
  /// - Sync: The application is reviewed in a synchronous manner. Quota Center automatically reviews the application. The result is returned immediately after you submit the application. However, the chance of an approval for an application that is reviewed in Sync mode is lower than the chance of an approval for an application that is reviewed in Async mode. The validity period of the new quota value is 1 hour.
  /// - Async: The application is reviewed in an asynchronous manner. An Alibaba Cloud support engineer reviews the application. The chance of an approval for an application that is reviewed in Async mode is higher than the chance of an approval for an application that is reviewed in Sync mode. The validity period of the new quota value is one month.
  late final pulumi.Output<String> auditMode;

  /// The audit reason.
  late final pulumi.Output<String> auditReason;

  /// Resource attribute field representing creation time.
  late final pulumi.Output<String> createTime;

  /// The desire value of the quota application.
  late final pulumi.Output<double> desireValue;

  /// QuotaDimensions. See `dimensions` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> dimensions;

  /// The effective time of the quota application.
  late final pulumi.Output<String?> effectiveTime;

  /// The language of the quota alert notification. Value:
  /// - zh (default): Chinese.
  /// - en: English.
  late final pulumi.Output<String?> envLanguage;

  /// The expired time of the quota application.
  late final pulumi.Output<String?> expireTime;

  /// Specifies whether to send a notification about the application result. Valid values:0: sends a notification about the application result.3: A notification about the application result is sent.
  late final pulumi.Output<int> noticeType;

  /// The product code.
  late final pulumi.Output<String> productCode;

  /// The ID of quota action.
  late final pulumi.Output<String> quotaActionCode;

  /// The quota type.
  /// - CommonQuota (default): Generic quota.
  /// - FlowControl:API rate quota.
  /// - WhiteListLabel: Equity quota.
  late final pulumi.Output<String?> quotaCategory;

  /// The description of the quota application.
  late final pulumi.Output<String> quotaDescription;

  /// The name of the quota application.
  late final pulumi.Output<String> quotaName;

  /// The unit of the quota application.
  late final pulumi.Output<String> quotaUnit;

  /// The reason of the quota application.
  late final pulumi.Output<String> reason;

  /// Application Status:
  /// - Disagree: reject.
  /// - Agree: Approved.
  /// - Process: under review.
  /// - Cancel: Closed.
  late final pulumi.Output<String> status;

  /// Creates a new [QuotaApplication].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [QuotaApplication]. {@macro pulumi_quotas_quota_application_quota_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  QuotaApplication(
    String name, {
    QuotaApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:quotas/quotaApplication:QuotaApplication',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    approveValue = registerOutput<String>('approveValue');
    auditMode = registerOutput<String>('auditMode');
    auditReason = registerOutput<String>('auditReason');
    createTime = registerOutput<String>('createTime');
    desireValue = registerOutput<double>('desireValue');
    dimensions = registerOutput<List<Map<String, dynamic>>?>('dimensions');
    effectiveTime = registerOutput<String?>('effectiveTime');
    envLanguage = registerOutput<String?>('envLanguage');
    expireTime = registerOutput<String?>('expireTime');
    noticeType = registerOutput<int>('noticeType');
    productCode = registerOutput<String>('productCode');
    quotaActionCode = registerOutput<String>('quotaActionCode');
    quotaCategory = registerOutput<String?>('quotaCategory');
    quotaDescription = registerOutput<String>('quotaDescription');
    quotaName = registerOutput<String>('quotaName');
    quotaUnit = registerOutput<String>('quotaUnit');
    reason = registerOutput<String>('reason');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [QuotaApplication] resource's state with the given [name] and [id].
  static QuotaApplication get(
    String name,
    pulumi.Input<String> id, {
    QuotaApplicationState? state,
  }) {
    return QuotaApplication._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  QuotaApplication._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:quotas/quotaApplication:QuotaApplication',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    approveValue = registerOutput<String>('approveValue');
    auditMode = registerOutput<String>('auditMode');
    auditReason = registerOutput<String>('auditReason');
    createTime = registerOutput<String>('createTime');
    desireValue = registerOutput<double>('desireValue');
    dimensions = registerOutput<List<Map<String, dynamic>>?>('dimensions');
    effectiveTime = registerOutput<String?>('effectiveTime');
    envLanguage = registerOutput<String?>('envLanguage');
    expireTime = registerOutput<String?>('expireTime');
    noticeType = registerOutput<int>('noticeType');
    productCode = registerOutput<String>('productCode');
    quotaActionCode = registerOutput<String>('quotaActionCode');
    quotaCategory = registerOutput<String?>('quotaCategory');
    quotaDescription = registerOutput<String>('quotaDescription');
    quotaName = registerOutput<String>('quotaName');
    quotaUnit = registerOutput<String>('quotaUnit');
    reason = registerOutput<String>('reason');
    status = registerOutput<String>('status');
  }
}
