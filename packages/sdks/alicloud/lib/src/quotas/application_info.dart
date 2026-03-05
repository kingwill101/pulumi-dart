import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_info_args.dart';
import 'application_info_state.dart';

class ApplicationInfo extends pulumi.CustomResource {
  late final pulumi.Output<String> approveValue;
  late final pulumi.Output<String> auditMode;
  late final pulumi.Output<String> auditReason;
  late final pulumi.Output<String> createTime;
  late final pulumi.Output<double> desireValue;
  late final pulumi.Output<List<Map<String, dynamic>>?> dimensions;
  late final pulumi.Output<String?> effectiveTime;
  late final pulumi.Output<String?> envLanguage;
  late final pulumi.Output<String?> expireTime;
  late final pulumi.Output<int> noticeType;
  late final pulumi.Output<String> productCode;
  late final pulumi.Output<String> quotaActionCode;
  late final pulumi.Output<String?> quotaCategory;
  late final pulumi.Output<String> quotaDescription;
  late final pulumi.Output<String> quotaName;
  late final pulumi.Output<String> quotaUnit;
  late final pulumi.Output<String> reason;
  late final pulumi.Output<String> status;

  /// Creates a new [ApplicationInfo].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApplicationInfo]. {@macro pulumi_quotas_application_info_application_info_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApplicationInfo(
    String name, {
    ApplicationInfoArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:quotas/applicationInfo:ApplicationInfo',
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

  /// Gets an existing [ApplicationInfo] resource's state with the given [name] and [id].
  static ApplicationInfo get(
    String name,
    pulumi.Input<String> id, {
    ApplicationInfoState? state,
  }) {
    return ApplicationInfo._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ApplicationInfo._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:quotas/applicationInfo:ApplicationInfo',
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
