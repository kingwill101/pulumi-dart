import 'package:pulumi/pulumi.dart';
import '../service_quota_usage_metric/service_quota_usage_metric.dart';
import 'service_quota_args.dart';

/// Manages an individual Service Quota.
///
/// > **NOTE:** Global quotas apply to all AWS regions, but can only be accessed in `us-east-1` in the Commercial partition or `us-gov-west-1` in the GovCloud partition. In other regions, the AWS API will return the error `The request failed because the specified service does not exist.`
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.servicequotas.ServiceQuota("example", {
/// quotaCode: "L-F678F1CE",
/// serviceCode: "vpc",
/// value: 75,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.servicequotas.ServiceQuota("example",
/// quota_code="L-F678F1CE",
/// service_code="vpc",
/// value=75)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.ServiceQuotas.ServiceQuota("example", new()
/// {
/// QuotaCode = "L-F678F1CE",
/// ServiceCode = "vpc",
/// Value = 75,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/servicequotas"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := servicequotas.NewServiceQuota(ctx, "example", &servicequotas.ServiceQuotaArgs{
/// QuotaCode:   pulumi.String("L-F678F1CE"),
/// ServiceCode: pulumi.String("vpc"),
/// Value:       pulumi.Float64(75),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.servicequotas.ServiceQuota;
/// import com.pulumi.aws.servicequotas.ServiceQuotaArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new ServiceQuota("example", ServiceQuotaArgs.builder()
/// .quotaCode("L-F678F1CE")
/// .serviceCode("vpc")
/// .value(75.0)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:servicequotas:ServiceQuota
/// properties:
/// quotaCode: L-F678F1CE
/// serviceCode: vpc
/// value: 75
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.servicequotas.ServiceQuota`" pulumi-lang-dotnet="`aws.servicequotas.ServiceQuota`" pulumi-lang-go="`servicequotas.ServiceQuota`" pulumi-lang-python="`servicequotas.ServiceQuota`" pulumi-lang-yaml="`aws.servicequotas.ServiceQuota`" pulumi-lang-java="`aws.servicequotas.ServiceQuota`">`aws.servicequotas.ServiceQuota`</span> using the service code and quota code, separated by a front slash (`/`). For example:
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

  /// Code of the service to track. For example: <span pulumi-lang-nodejs="`vpc`" pulumi-lang-dotnet="`Vpc`" pulumi-lang-go="`vpc`" pulumi-lang-python="`vpc`" pulumi-lang-yaml="`vpc`" pulumi-lang-java="`vpc`">`vpc`</span>. Available values can be found with the [AWS CLI service-quotas list-services command](https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-services.html).
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
    this.adjustable = Output.createUnknown<bool>();
    this.arn = Output.createUnknown<String>();
    this.defaultValue = Output.createUnknown<double>();
    this.quotaCode = Output.createUnknown<String>();
    this.quotaName = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String>();
    this.requestStatus = Output.createUnknown<String>();
    this.serviceCode = Output.createUnknown<String>();
    this.serviceName = Output.createUnknown<String>();
    this.usageMetrics = Output.createUnknown<List<ServiceQuotaUsageMetric>>();
    this.value = Output.createUnknown<double>();
  }
}
