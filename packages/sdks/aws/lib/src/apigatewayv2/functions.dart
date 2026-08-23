import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_args.dart';
import 'get_api_result.dart';
import 'get_apis_args.dart';
import 'get_apis_result.dart';
import 'get_export_args.dart';
import 'get_export_result.dart';
import 'get_vpc_link_args.dart';
import 'get_vpc_link_result.dart';

/// Provides details about a specific Amazon API Gateway Version 2 API.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.apigatewayv2.getApi({
///     apiId: "aabbccddee",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigatewayv2.get_api(api_id="aabbccddee")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.ApiGatewayV2.GetApi.Invoke(new()
///     {
///         ApiId = "aabbccddee",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigatewayv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apigatewayv2.LookupApi(ctx, &apigatewayv2.LookupApiArgs{
/// 			ApiId: "aabbccddee",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_apigatewayv2_getapi" "example" {
///   api_id = "aabbccddee"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.apigatewayv2.Apigatewayv2Functions;
/// import com.pulumi.aws.apigatewayv2.inputs.GetApiArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var example = Apigatewayv2Functions.getApi(GetApiArgs.builder()
///             .apiId("aabbccddee")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:apigatewayv2:getApi
///       arguments:
///         apiId: aabbccddee
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_apigatewayv2_get_api_get_api_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiResult> getApi(
  GetApiArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:apigatewayv2/getApi:getApi',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiResult.fromMap(result);
}

/// Provides details about multiple Amazon API Gateway Version 2 APIs.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.apigatewayv2.getApis({
///     protocolType: "HTTP",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigatewayv2.get_apis(protocol_type="HTTP")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.ApiGatewayV2.GetApis.Invoke(new()
///     {
///         ProtocolType = "HTTP",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigatewayv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apigatewayv2.GetApis(ctx, &apigatewayv2.GetApisArgs{
/// 			ProtocolType: pulumi.StringRef("HTTP"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_apigatewayv2_getapis" "example" {
///   protocol_type = "HTTP"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.apigatewayv2.Apigatewayv2Functions;
/// import com.pulumi.aws.apigatewayv2.inputs.GetApisArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var example = Apigatewayv2Functions.getApis(GetApisArgs.builder()
///             .protocolType("HTTP")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:apigatewayv2:getApis
///       arguments:
///         protocolType: HTTP
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_apigatewayv2_get_apis_get_apis_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApisResult> getApis(
  GetApisArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:apigatewayv2/getApis:getApis',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApisResult.fromMap(result);
}

/// Exports a definition of an API in a particular output format and specification.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.apigatewayv2.getExport({
///     apiId: testAwsApigatewayv2Route.apiId,
///     specification: "OAS30",
///     outputType: "JSON",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.apigatewayv2.get_export(api_id=test_aws_apigatewayv2_route["apiId"],
///     specification="OAS30",
///     output_type="JSON")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.ApiGatewayV2.GetExport.Invoke(new()
///     {
///         ApiId = testAwsApigatewayv2Route.ApiId,
///         Specification = "OAS30",
///         OutputType = "JSON",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigatewayv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apigatewayv2.GetExport(ctx, &apigatewayv2.GetExportArgs{
/// 			ApiId:         testAwsApigatewayv2Route.ApiId,
/// 			Specification: "OAS30",
/// 			OutputType:    "JSON",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_apigatewayv2_getexport" "test" {
///   api_id        = testAwsApigatewayv2Route.apiId
///   specification = "OAS30"
///   output_type   = "JSON"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.apigatewayv2.Apigatewayv2Functions;
/// import com.pulumi.aws.apigatewayv2.inputs.GetExportArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var test = Apigatewayv2Functions.getExport(GetExportArgs.builder()
///             .apiId(testAwsApigatewayv2Route.apiId())
///             .specification("OAS30")
///             .outputType("JSON")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:apigatewayv2:getExport
///       arguments:
///         apiId: ${testAwsApigatewayv2Route.apiId}
///         specification: OAS30
///         outputType: JSON
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_apigatewayv2_get_export_get_export_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExportResult> getExport(
  GetExportArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:apigatewayv2/getExport:getExport',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExportResult.fromMap(result);
}

/// Data source for managing an AWS API Gateway V2 VPC Link.
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
/// const example = aws.apigatewayv2.getVpcLink({
///     vpcLinkId: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigatewayv2.get_vpc_link(vpc_link_id="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.ApiGatewayV2.GetVpcLink.Invoke(new()
///     {
///         VpcLinkId = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigatewayv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apigatewayv2.LookupVpcLink(ctx, &apigatewayv2.LookupVpcLinkArgs{
/// 			VpcLinkId: "example",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_apigatewayv2_getvpclink" "example" {
///   vpc_link_id = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.apigatewayv2.Apigatewayv2Functions;
/// import com.pulumi.aws.apigatewayv2.inputs.GetVpcLinkArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var example = Apigatewayv2Functions.getVpcLink(GetVpcLinkArgs.builder()
///             .vpcLinkId("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:apigatewayv2:getVpcLink
///       arguments:
///         vpcLinkId: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_apigatewayv2_get_vpc_link_get_vpc_link_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpcLinkResult> getVpcLink(
  GetVpcLinkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:apigatewayv2/getVpcLink:getVpcLink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpcLinkResult.fromMap(result);
}
