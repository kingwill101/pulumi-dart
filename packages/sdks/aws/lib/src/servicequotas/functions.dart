import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_args.dart';
import 'get_service_quota_args.dart';
import 'get_service_quota_result.dart';
import 'get_service_result.dart';
import 'get_templates_args.dart';
import 'get_templates_result.dart';

/// Retrieve information about a Service Quotas Service.
///
/// &gt; **NOTE:** Global quotas apply to all AWS regions, but can only be accessed in `us-east-1` in the Commercial partition or `us-gov-west-1` in the GovCloud partition. In other regions, the AWS API will return the error `The request failed because the specified service does not exist.`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.servicequotas.getService({
///     serviceName: "Amazon Virtual Private Cloud (Amazon VPC)",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.servicequotas.get_service(service_name="Amazon Virtual Private Cloud (Amazon VPC)")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.ServiceQuotas.GetService.Invoke(new()
///     {
///         ServiceName = "Amazon Virtual Private Cloud (Amazon VPC)",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/servicequotas"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicequotas.GetService(ctx, &servicequotas.GetServiceArgs{
/// 			ServiceName: "Amazon Virtual Private Cloud (Amazon VPC)",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.servicequotas.ServicequotasFunctions;
/// import com.pulumi.aws.servicequotas.inputs.GetServiceArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var example = ServicequotasFunctions.getService(GetServiceArgs.builder()
///             .serviceName("Amazon Virtual Private Cloud (Amazon VPC)")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:servicequotas:getService
///       arguments:
///         serviceName: Amazon Virtual Private Cloud (Amazon VPC)
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_servicequotas_get_service_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:servicequotas/getService:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}

/// Retrieve information about a Service Quota.
///
/// &gt; **NOTE:** Global quotas apply to all AWS regions, but can only be accessed in `us-east-1` in the Commercial partition or `us-gov-west-1` in the GovCloud partition. In other regions, the AWS API will return the error `The request failed because the specified service does not exist.`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const byQuotaCode = aws.servicequotas.getServiceQuota({
///     quotaCode: "L-F678F1CE",
///     serviceCode: "vpc",
/// });
/// const byQuotaName = aws.servicequotas.getServiceQuota({
///     quotaName: "VPCs per Region",
///     serviceCode: "vpc",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// by_quota_code = aws.servicequotas.get_service_quota(quota_code="L-F678F1CE",
///     service_code="vpc")
/// by_quota_name = aws.servicequotas.get_service_quota(quota_name="VPCs per Region",
///     service_code="vpc")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var byQuotaCode = Aws.ServiceQuotas.GetServiceQuota.Invoke(new()
///     {
///         QuotaCode = "L-F678F1CE",
///         ServiceCode = "vpc",
///     });
///
///     var byQuotaName = Aws.ServiceQuotas.GetServiceQuota.Invoke(new()
///     {
///         QuotaName = "VPCs per Region",
///         ServiceCode = "vpc",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/servicequotas"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicequotas.LookupServiceQuota(ctx, &servicequotas.LookupServiceQuotaArgs{
/// 			QuotaCode:   pulumi.StringRef("L-F678F1CE"),
/// 			ServiceCode: "vpc",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = servicequotas.LookupServiceQuota(ctx, &servicequotas.LookupServiceQuotaArgs{
/// 			QuotaName:   pulumi.StringRef("VPCs per Region"),
/// 			ServiceCode: "vpc",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.servicequotas.ServicequotasFunctions;
/// import com.pulumi.aws.servicequotas.inputs.GetServiceQuotaArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var byQuotaCode = ServicequotasFunctions.getServiceQuota(GetServiceQuotaArgs.builder()
///             .quotaCode("L-F678F1CE")
///             .serviceCode("vpc")
///             .build());
///
///         final var byQuotaName = ServicequotasFunctions.getServiceQuota(GetServiceQuotaArgs.builder()
///             .quotaName("VPCs per Region")
///             .serviceCode("vpc")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   byQuotaCode:
///     fn::invoke:
///       function: aws:servicequotas:getServiceQuota
///       arguments:
///         quotaCode: L-F678F1CE
///         serviceCode: vpc
///   byQuotaName:
///     fn::invoke:
///       function: aws:servicequotas:getServiceQuota
///       arguments:
///         quotaName: VPCs per Region
///         serviceCode: vpc
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_servicequotas_get_service_quota_get_service_quota_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceQuotaResult> getServiceQuota(
  GetServiceQuotaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:servicequotas/getServiceQuota:getServiceQuota',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceQuotaResult.fromMap(result);
}

/// Data source for managing AWS Service Quotas Templates.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.servicequotas.getTemplates({
///     awsRegion: "us-east-1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.servicequotas.get_templates(aws_region="us-east-1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.ServiceQuotas.GetTemplates.Invoke(new()
///     {
///         AwsRegion = "us-east-1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/servicequotas"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicequotas.GetTemplates(ctx, &servicequotas.GetTemplatesArgs{
/// 			AwsRegion: pulumi.StringRef("us-east-1"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.servicequotas.ServicequotasFunctions;
/// import com.pulumi.aws.servicequotas.inputs.GetTemplatesArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var example = ServicequotasFunctions.getTemplates(GetTemplatesArgs.builder()
///             .awsRegion("us-east-1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:servicequotas:getTemplates
///       arguments:
///         awsRegion: us-east-1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_servicequotas_get_templates_get_templates_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTemplatesResult> getTemplates(
  GetTemplatesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:servicequotas/getTemplates:getTemplates',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTemplatesResult.fromMap(result);
}
