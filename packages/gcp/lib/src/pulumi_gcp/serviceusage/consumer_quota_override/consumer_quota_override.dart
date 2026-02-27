import 'package:pulumi/pulumi.dart';
import 'consumer_quota_override_args.dart';

/// A consumer override is applied to the consumer on its own authority to limit its own quota usage.
/// Consumer overrides cannot be used to grant more quota than would be allowed by admin overrides,
/// producer overrides, or the default limit of the service.
///
/// To get more information about ConsumerQuotaOverride, see:
/// * How-to Guides
/// * [Managing Service Quota](https://cloud.google.com/service-usage/docs/manage-quota )
/// * [REST API documentation](https://cloud.google.com/service-usage/docs/reference/rest/v1beta1/services.consumerQuotaMetrics.limits.consumerOverrides)
///
/// ## Example Usage
///
/// ### Consumer Quota Override
///
///
///
/// ### Region Consumer Quota Override
///
///
///
/// ### Consumer Quota Override Custom Dimension
///
///
///
///
/// ## Import
///
/// ConsumerQuotaOverride can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/services/{{service}}/consumerQuotaMetrics/{{metric}}/limits/{{limit}}/consumerOverrides/{{name}}`
///
/// * `services/{{service}}/consumerQuotaMetrics/{{metric}}/limits/{{limit}}/consumerOverrides/{{name}}`
///
/// * `{{service}}/{{metric}}/{{limit}}/{{name}}`
///
/// When using the `pulumi import` command, ConsumerQuotaOverride can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:serviceusage/consumerQuotaOverride:ConsumerQuotaOverride default projects/{{project}}/services/{{service}}/consumerQuotaMetrics/{{metric}}/limits/{{limit}}/consumerOverrides/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:serviceusage/consumerQuotaOverride:ConsumerQuotaOverride default services/{{service}}/consumerQuotaMetrics/{{metric}}/limits/{{limit}}/consumerOverrides/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:serviceusage/consumerQuotaOverride:ConsumerQuotaOverride default {{service}}/{{metric}}/{{limit}}/{{name}}
/// ```
class ConsumerQuotaOverride extends CustomResource {
  /// If this map is nonempty, then this override applies only to specific values for dimensions defined in the limit unit.
  late final Output<Map<String, String>?> dimensions;

  /// If the new quota would decrease the existing quota by more than 10%, the request is rejected.
  /// If `force` is `true`, that safety check is ignored.
  late final Output<bool?> force;

  /// The limit on the metric, e.g. `/project/region`.
  /// > Make sure that `limit` is in a format that doesn't start with `1/` or contain curly braces.
  /// E.g. use `/project/user` instead of `1/{project}/{user}`.
  late final Output<String> limit;

  /// The metric that should be limited, e.g. `compute.googleapis.com/cpus`.
  late final Output<String> metric;

  /// The server-generated name of the quota override.
  late final Output<String> name;

  /// The overriding quota limit value. Can be any nonnegative integer, or -1 (unlimited quota).
  late final Output<String> overrideValue;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The service that the metrics belong to, e.g. `compute.googleapis.com`.
  late final Output<String> service;

  ConsumerQuotaOverride(
    String name, {
    ConsumerQuotaOverrideArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:serviceusage/consumerQuotaOverride:ConsumerQuotaOverride',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.dimensions = registerOutput<Map<String, String>?>('dimensions');
    this.force = registerOutput<bool?>('force');
    this.limit = registerOutput<String>('limit');
    this.metric = registerOutput<String>('metric');
    this.name = registerOutput<String>('name');
    this.overrideValue = registerOutput<String>('overrideValue');
    this.project = registerOutput<String>('project');
    this.service = registerOutput<String>('service');
  }
}
