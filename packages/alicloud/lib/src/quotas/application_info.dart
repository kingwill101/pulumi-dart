import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_info_args.dart';
import 'application_info_dimension.dart';

class ApplicationInfo extends pulumi.CustomResource {
  late final pulumi.Output<String> approveValue;
  late final pulumi.Output<String> auditMode;
  late final pulumi.Output<String> auditReason;
  late final pulumi.Output<String> createTime;
  late final pulumi.Output<double> desireValue;
  late final pulumi.Output<List<ApplicationInfoDimension>?> dimensions;
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
    this.approveValue = registerOutput<String>('approveValue');
    this.auditMode = registerOutput<String>('auditMode');
    this.auditReason = registerOutput<String>('auditReason');
    this.createTime = registerOutput<String>('createTime');
    this.desireValue = registerOutput<double>('desireValue');
    this.dimensions = registerOutput<List<ApplicationInfoDimension>?>('dimensions');
    this.effectiveTime = registerOutput<String?>('effectiveTime');
    this.envLanguage = registerOutput<String?>('envLanguage');
    this.expireTime = registerOutput<String?>('expireTime');
    this.noticeType = registerOutput<int>('noticeType');
    this.productCode = registerOutput<String>('productCode');
    this.quotaActionCode = registerOutput<String>('quotaActionCode');
    this.quotaCategory = registerOutput<String?>('quotaCategory');
    this.quotaDescription = registerOutput<String>('quotaDescription');
    this.quotaName = registerOutput<String>('quotaName');
    this.quotaUnit = registerOutput<String>('quotaUnit');
    this.reason = registerOutput<String>('reason');
    this.status = registerOutput<String>('status');
  }
}
