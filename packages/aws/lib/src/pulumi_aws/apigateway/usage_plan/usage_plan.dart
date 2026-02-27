import 'package:pulumi/pulumi.dart';
import '../usage_plan_api_stage/usage_plan_api_stage.dart';
import '../usage_plan_quota_settings/usage_plan_quota_settings.dart';
import '../usage_plan_throttle_settings/usage_plan_throttle_settings.dart';
import 'usage_plan_args.dart';

/// Provides an API Gateway Usage Plan.
///
/// ## Import
///
/// Using `pulumi import`, import AWS API Gateway Usage Plan using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/usagePlan:UsagePlan myusageplan <usage_plan_id>
/// ```
class UsagePlan extends CustomResource {
  /// Associated API stages of the usage plan.
  late final Output<List<UsagePlanApiStage>?> apiStages;

  /// ARN
  late final Output<String> arn;

  /// Description of a usage plan.
  late final Output<String?> description;

  /// Name of the usage plan.
  late final Output<String> name;

  /// AWS Marketplace product identifier to associate with the usage plan as a SaaS product on AWS Marketplace.
  late final Output<String?> productCode;

  /// The quota settings of the usage plan.
  late final Output<UsagePlanQuotaSettings?> quotaSettings;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The throttling limits of the usage plan.
  late final Output<UsagePlanThrottleSettings?> throttleSettings;

  UsagePlan(
    String name, {
    UsagePlanArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/usagePlan:UsagePlan',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.apiStages = registerOutput<List<UsagePlanApiStage>?>('apiStages');
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.productCode = registerOutput<String?>('productCode');
    this.quotaSettings =
        registerOutput<UsagePlanQuotaSettings?>('quotaSettings');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.throttleSettings =
        registerOutput<UsagePlanThrottleSettings?>('throttleSettings');
  }
}
