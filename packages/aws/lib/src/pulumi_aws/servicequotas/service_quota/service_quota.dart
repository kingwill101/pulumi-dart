import 'package:pulumi/pulumi.dart';
import '../service_quota_usage_metric/service_quota_usage_metric.dart';
import 'service_quota_args.dart';

/// Manages an individual Service Quota.
///
/// > **NOTE:** Global quotas apply to all AWS regions, but can only be accessed in `us-east-1` in the Commercial partition or `us-gov-west-1` in the GovCloud partition. In other regions, the AWS API will return the error `The request failed because the specified service does not exist.`
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.servicequotas.ServiceQuota` using the service code and quota code, separated by a front slash (`/`). For example:
///
/// > **NOTE:** This resource does not require explicit import and will assume management of an existing service quota on Pulumi resource creation.
///
/// ```sh
/// $ pulumi import aws:servicequotas/serviceQuota:ServiceQuota example vpc/L-F678F1CE
/// ```
class ServiceQuota extends CustomResource {
  /// Whether the service quota can be increased.
  late final Output<bool> adjustable;

  /// Amazon Resource Name (ARN) of the service quota.
  late final Output<String> arn;

  /// Default value of the service quota.
  late final Output<double> defaultValue;

  /// Code of the service quota to track. For example: `L-F678F1CE`. Available values can be found with the [AWS CLI service-quotas list-service-quotas command](https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-service-quotas.html).
  late final Output<String> quotaCode;

  /// Name of the quota.
  late final Output<String> quotaName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;
  late final Output<String> requestId;
  late final Output<String> requestStatus;

  /// Code of the service to track. For example: `vpc`. Available values can be found with the [AWS CLI service-quotas list-services command](https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-services.html).
  late final Output<String> serviceCode;

  /// Name of the service.
  late final Output<String> serviceName;

  /// Information about the measurement.
  late final Output<List<ServiceQuotaUsageMetric>> usageMetrics;

  /// Float specifying the desired value for the service quota. If the desired value is higher than the current value, a quota increase request is submitted. When a known request is submitted and pending, the value reflects the desired value of the pending request.
  late final Output<double> value;

  ServiceQuota(
    String name, {
    ServiceQuotaArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:servicequotas/serviceQuota:ServiceQuota',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.adjustable = registerOutput<bool>('adjustable');
    this.arn = registerOutput<String>('arn');
    this.defaultValue = registerOutput<double>('defaultValue');
    this.quotaCode = registerOutput<String>('quotaCode');
    this.quotaName = registerOutput<String>('quotaName');
    this.region = registerOutput<String>('region');
    this.requestId = registerOutput<String>('requestId');
    this.requestStatus = registerOutput<String>('requestStatus');
    this.serviceCode = registerOutput<String>('serviceCode');
    this.serviceName = registerOutput<String>('serviceName');
    this.usageMetrics =
        registerOutput<List<ServiceQuotaUsageMetric>>('usageMetrics');
    this.value = registerOutput<double>('value');
  }
}
