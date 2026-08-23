import 'package:pulumi/pulumi.dart' as pulumi;
import 'usage_plan_args.dart';
import 'usage_plan_quota_settings.dart';
import 'usage_plan_state.dart';
import 'usage_plan_throttle_settings.dart';

/// Provides an API Gateway Usage Plan.
///
/// ## Import
///
/// Using `pulumi import`, import AWS API Gateway Usage Plan using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/usagePlan:UsagePlan myusageplan <usage_plan_id>
/// ```
class UsagePlan extends pulumi.CustomResource {
  /// Associated API stages of the usage plan. See `apiStages` Block below.
  late final pulumi.Output<List<Map<String, dynamic>>?> apiStages;
  /// ARN of the usage plan.
  late final pulumi.Output<String> arn;
  /// Description of a usage plan.
  late final pulumi.Output<String?> description;
  /// Name of the usage plan.
  late final pulumi.Output<String> name;
  /// AWS Marketplace product identifier to associate with the usage plan as a SaaS product on AWS Marketplace.
  late final pulumi.Output<String?> productCode;
  /// Quota settings of the usage plan. See `quotaSettings` Block below.
  late final pulumi.Output<UsagePlanQuotaSettings?> quotaSettings;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Throttling limits of the usage plan. See `throttleSettings` Block below.
  late final pulumi.Output<UsagePlanThrottleSettings?> throttleSettings;

  /// Creates a new [UsagePlan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UsagePlan]. {@macro pulumi_apigateway_usage_plan_usage_plan_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UsagePlan(
    String name, {
    UsagePlanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/usagePlan:UsagePlan',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiStages = registerOutput<List<Map<String, dynamic>>?>('apiStages');
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    productCode = registerOutput<String?>('productCode');
    quotaSettings = registerOutput<UsagePlanQuotaSettings?>('quotaSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return UsagePlanQuotaSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    throttleSettings = registerOutput<UsagePlanThrottleSettings?>('throttleSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return UsagePlanThrottleSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [UsagePlan] resource's state with the given [name] and [id].
  static UsagePlan get(
    String name,
    pulumi.Input<String> id, {
    UsagePlanState? state,
  }) {
    return UsagePlan._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  UsagePlan._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/usagePlan:UsagePlan',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiStages = registerOutput<List<Map<String, dynamic>>?>('apiStages');
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    productCode = registerOutput<String?>('productCode');
    quotaSettings = registerOutput<UsagePlanQuotaSettings?>('quotaSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return UsagePlanQuotaSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    throttleSettings = registerOutput<UsagePlanThrottleSettings?>('throttleSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return UsagePlanThrottleSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
