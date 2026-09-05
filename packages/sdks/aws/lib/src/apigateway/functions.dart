import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_keys_args.dart';
import 'get_api_keys_result.dart';
import 'get_authorizer_args.dart';
import 'get_authorizer_result.dart';
import 'get_authorizers_args.dart';
import 'get_authorizers_result.dart';
import 'get_domain_name_args.dart';
import 'get_domain_name_result.dart';
import 'get_export_args.dart';
import 'get_export_result.dart';
import 'get_key_args.dart';
import 'get_key_result.dart';
import 'get_resource_args.dart';
import 'get_resource_result.dart';
import 'get_rest_api_args.dart';
import 'get_rest_api_result.dart';
import 'get_sdk_args.dart';
import 'get_sdk_result.dart';
import 'get_vpc_link_args.dart';
import 'get_vpc_link_result.dart';

/// Data source for managing AWS API Gateway API Keys.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.apigateway.getApiKeys({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigateway.get_api_keys()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.ApiGateway.GetApiKeys.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apigateway.GetApiKeys(ctx, &apigateway.GetApiKeysArgs{}, nil)
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
/// data "aws_apigateway_getapikeys" "example" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.apigateway.ApigatewayFunctions;
/// import com.pulumi.aws.apigateway.inputs.GetApiKeysArgs;
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
///         final var example = ApigatewayFunctions.getApiKeys(GetApiKeysArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:apigateway:getApiKeys
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_apigateway_get_api_keys_get_api_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiKeysResult> getApiKeys(
  GetApiKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:apigateway/getApiKeys:getApiKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiKeysResult.fromMap(result);
}

pulumi.Output<GetApiKeysResult> getApiKeysOutput(
  GetApiKeysArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:apigateway/getApiKeys:getApiKeys',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApiKeysResult.fromMap);
}

/// Provides details about a specific API Gateway Authorizer.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.apigateway.getAuthorizer({
///     restApiId: exampleAwsApiGatewayRestApi.id,
///     authorizerId: exampleAwsApiGatewayAuthorizers.ids[0],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigateway.get_authorizer(rest_api_id=example_aws_api_gateway_rest_api["id"],
///     authorizer_id=example_aws_api_gateway_authorizers["ids"][0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.ApiGateway.GetAuthorizer.Invoke(new()
///     {
///         RestApiId = exampleAwsApiGatewayRestApi.Id,
///         AuthorizerId = exampleAwsApiGatewayAuthorizers.Ids[0],
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apigateway.LookupAuthorizer(ctx, &apigateway.LookupAuthorizerArgs{
/// 			RestApiId:    exampleAwsApiGatewayRestApi.Id,
/// 			AuthorizerId: exampleAwsApiGatewayAuthorizers.Ids[0],
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
/// data "aws_apigateway_getauthorizer" "example" {
///   rest_api_id   = exampleAwsApiGatewayRestApi.id
///   authorizer_id = exampleAwsApiGatewayAuthorizers.ids[0]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.apigateway.ApigatewayFunctions;
/// import com.pulumi.aws.apigateway.inputs.GetAuthorizerArgs;
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
///         final var example = ApigatewayFunctions.getAuthorizer(GetAuthorizerArgs.builder()
///             .restApiId(exampleAwsApiGatewayRestApi.id())
///             .authorizerId(exampleAwsApiGatewayAuthorizers.ids()[0])
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:apigateway:getAuthorizer
///       arguments:
///         restApiId: ${exampleAwsApiGatewayRestApi.id}
///         authorizerId: ${exampleAwsApiGatewayAuthorizers.ids[0]}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_apigateway_get_authorizer_get_authorizer_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAuthorizerResult> getAuthorizer(
  GetAuthorizerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:apigateway/getAuthorizer:getAuthorizer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAuthorizerResult.fromMap(result);
}

pulumi.Output<GetAuthorizerResult> getAuthorizerOutput(
  GetAuthorizerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:apigateway/getAuthorizer:getAuthorizer',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAuthorizerResult.fromMap);
}

/// Provides details about multiple API Gateway Authorizers.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.apigateway.getAuthorizers({
///     restApiId: exampleAwsApiGatewayRestApi.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigateway.get_authorizers(rest_api_id=example_aws_api_gateway_rest_api["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.ApiGateway.GetAuthorizers.Invoke(new()
///     {
///         RestApiId = exampleAwsApiGatewayRestApi.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apigateway.GetAuthorizers(ctx, &apigateway.GetAuthorizersArgs{
/// 			RestApiId: exampleAwsApiGatewayRestApi.Id,
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
/// data "aws_apigateway_getauthorizers" "example" {
///   rest_api_id = exampleAwsApiGatewayRestApi.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.apigateway.ApigatewayFunctions;
/// import com.pulumi.aws.apigateway.inputs.GetAuthorizersArgs;
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
///         final var example = ApigatewayFunctions.getAuthorizers(GetAuthorizersArgs.builder()
///             .restApiId(exampleAwsApiGatewayRestApi.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:apigateway:getAuthorizers
///       arguments:
///         restApiId: ${exampleAwsApiGatewayRestApi.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_apigateway_get_authorizers_get_authorizers_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAuthorizersResult> getAuthorizers(
  GetAuthorizersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:apigateway/getAuthorizers:getAuthorizers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAuthorizersResult.fromMap(result);
}

pulumi.Output<GetAuthorizersResult> getAuthorizersOutput(
  GetAuthorizersArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:apigateway/getAuthorizers:getAuthorizers',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAuthorizersResult.fromMap);
}

/// Use this data source to get the custom domain name for use with AWS API Gateway.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.apigateway.getDomainName({
///     domainName: "api.example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigateway.get_domain_name(domain_name="api.example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.ApiGateway.GetDomainName.Invoke(new()
///     {
///         DomainName = "api.example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apigateway.LookupDomainName(ctx, &apigateway.LookupDomainNameArgs{
/// 			DomainName: "api.example.com",
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
/// data "aws_apigateway_getdomainname" "example" {
///   domain_name = "api.example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.apigateway.ApigatewayFunctions;
/// import com.pulumi.aws.apigateway.inputs.GetDomainNameArgs;
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
///         final var example = ApigatewayFunctions.getDomainName(GetDomainNameArgs.builder()
///             .domainName("api.example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:apigateway:getDomainName
///       arguments:
///         domainName: api.example.com
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_apigateway_get_domain_name_get_domain_name_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainNameResult> getDomainName(
  GetDomainNameArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:apigateway/getDomainName:getDomainName',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainNameResult.fromMap(result);
}

pulumi.Output<GetDomainNameResult> getDomainNameOutput(
  GetDomainNameArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:apigateway/getDomainName:getDomainName',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDomainNameResult.fromMap);
}

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.apigateway.getExport({
///     restApiId: exampleAwsApiGatewayStage.restApiId,
///     stageName: exampleAwsApiGatewayStage.stageName,
///     exportType: "oas30",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigateway.get_export(rest_api_id=example_aws_api_gateway_stage["restApiId"],
///     stage_name=example_aws_api_gateway_stage["stageName"],
///     export_type="oas30")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.ApiGateway.GetExport.Invoke(new()
///     {
///         RestApiId = exampleAwsApiGatewayStage.RestApiId,
///         StageName = exampleAwsApiGatewayStage.StageName,
///         ExportType = "oas30",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apigateway.GetExport(ctx, &apigateway.GetExportArgs{
/// 			RestApiId:  exampleAwsApiGatewayStage.RestApiId,
/// 			StageName:  exampleAwsApiGatewayStage.StageName,
/// 			ExportType: "oas30",
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
/// data "aws_apigateway_getexport" "example" {
///   rest_api_id = exampleAwsApiGatewayStage.restApiId
///   stage_name  = exampleAwsApiGatewayStage.stageName
///   export_type = "oas30"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.apigateway.ApigatewayFunctions;
/// import com.pulumi.aws.apigateway.inputs.GetExportArgs;
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
///         final var example = ApigatewayFunctions.getExport(GetExportArgs.builder()
///             .restApiId(exampleAwsApiGatewayStage.restApiId())
///             .stageName(exampleAwsApiGatewayStage.stageName())
///             .exportType("oas30")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:apigateway:getExport
///       arguments:
///         restApiId: ${exampleAwsApiGatewayStage.restApiId}
///         stageName: ${exampleAwsApiGatewayStage.stageName}
///         exportType: oas30
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_apigateway_get_export_get_export_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExportResult> getExport(
  GetExportArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:apigateway/getExport:getExport',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExportResult.fromMap(result);
}

pulumi.Output<GetExportResult> getExportOutput(
  GetExportArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:apigateway/getExport:getExport',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetExportResult.fromMap);
}

/// Use this data source to get the name and value of a pre-existing API Key, for
/// example to supply credentials for a dependency microservice.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const myApiKey = aws.apigateway.getKey({
///     id: "ru3mpjgse6",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// my_api_key = aws.apigateway.get_key(id="ru3mpjgse6")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myApiKey = Aws.ApiGateway.GetKey.Invoke(new()
///     {
///         Id = "ru3mpjgse6",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apigateway.GetKey(ctx, &apigateway.GetKeyArgs{
/// 			Id: "ru3mpjgse6",
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
/// data "aws_apigateway_getkey" "myApiKey" {
///   id = "ru3mpjgse6"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.apigateway.ApigatewayFunctions;
/// import com.pulumi.aws.apigateway.inputs.GetKeyArgs;
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
///         final var myApiKey = ApigatewayFunctions.getKey(GetKeyArgs.builder()
///             .id("ru3mpjgse6")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myApiKey:
///     fn::invoke:
///       function: aws:apigateway:getKey
///       arguments:
///         id: ru3mpjgse6
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_apigateway_get_key_get_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKeyResult> getKey(
  GetKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:apigateway/getKey:getKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKeyResult.fromMap(result);
}

pulumi.Output<GetKeyResult> getKeyOutput(
  GetKeyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:apigateway/getKey:getKey',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetKeyResult.fromMap);
}

/// Use this data source to get the id of a Resource in API Gateway.
/// To fetch the Resource, you must provide the REST API id as well as the full path.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const myRestApi = aws.apigateway.getRestApi({
///     name: "my-rest-api",
/// });
/// const myResource = myRestApi.then(myRestApi => aws.apigateway.getResource({
///     restApiId: myRestApi.id,
///     path: "/endpoint/path",
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// my_rest_api = aws.apigateway.get_rest_api(name="my-rest-api")
/// my_resource = aws.apigateway.get_resource(rest_api_id=my_rest_api.id,
///     path="/endpoint/path")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myRestApi = Aws.ApiGateway.GetRestApi.Invoke(new()
///     {
///         Name = "my-rest-api",
///     });
///
///     var myResource = Aws.ApiGateway.GetResource.Invoke(new()
///     {
///         RestApiId = myRestApi.Apply(getRestApiResult => getRestApiResult.Id),
///         Path = "/endpoint/path",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myRestApi, err := apigateway.LookupRestApi(ctx, &apigateway.LookupRestApiArgs{
/// 			Name: "my-rest-api",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigateway.LookupResource(ctx, &apigateway.LookupResourceArgs{
/// 			RestApiId: myRestApi.Id,
/// 			Path:      "/endpoint/path",
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
/// data "aws_apigateway_getrestapi" "myRestApi" {
///   name = "my-rest-api"
/// }
/// data "aws_apigateway_getresource" "myResource" {
///   rest_api_id = data.aws_apigateway_getrestapi.myRestApi.id
///   path        = "/endpoint/path"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.apigateway.ApigatewayFunctions;
/// import com.pulumi.aws.apigateway.inputs.GetRestApiArgs;
/// import com.pulumi.aws.apigateway.inputs.GetResourceArgs;
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
///         final var myRestApi = ApigatewayFunctions.getRestApi(GetRestApiArgs.builder()
///             .name("my-rest-api")
///             .build());
///
///         final var myResource = ApigatewayFunctions.getResource(GetResourceArgs.builder()
///             .restApiId(myRestApi.id())
///             .path("/endpoint/path")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myRestApi:
///     fn::invoke:
///       function: aws:apigateway:getRestApi
///       arguments:
///         name: my-rest-api
///   myResource:
///     fn::invoke:
///       function: aws:apigateway:getResource
///       arguments:
///         restApiId: ${myRestApi.id}
///         path: /endpoint/path
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_apigateway_get_resource_get_resource_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResourceResult> getResource(
  GetResourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:apigateway/getResource:getResource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourceResult.fromMap(result);
}

pulumi.Output<GetResourceResult> getResourceOutput(
  GetResourceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:apigateway/getResource:getResource',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetResourceResult.fromMap);
}

/// Use this data source to get the id and rootResourceId of a REST API in
/// API Gateway. To fetch the REST API you must provide a name to match against.
/// As there is no unique name constraint on REST APIs this data source will
/// error if there is more than one match.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const myRestApi = aws.apigateway.getRestApi({
///     name: "my-rest-api",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// my_rest_api = aws.apigateway.get_rest_api(name="my-rest-api")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myRestApi = Aws.ApiGateway.GetRestApi.Invoke(new()
///     {
///         Name = "my-rest-api",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apigateway.LookupRestApi(ctx, &apigateway.LookupRestApiArgs{
/// 			Name: "my-rest-api",
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
/// data "aws_apigateway_getrestapi" "myRestApi" {
///   name = "my-rest-api"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.apigateway.ApigatewayFunctions;
/// import com.pulumi.aws.apigateway.inputs.GetRestApiArgs;
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
///         final var myRestApi = ApigatewayFunctions.getRestApi(GetRestApiArgs.builder()
///             .name("my-rest-api")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myRestApi:
///     fn::invoke:
///       function: aws:apigateway:getRestApi
///       arguments:
///         name: my-rest-api
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_apigateway_get_rest_api_get_rest_api_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRestApiResult> getRestApi(
  GetRestApiArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:apigateway/getRestApi:getRestApi',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRestApiResult.fromMap(result);
}

pulumi.Output<GetRestApiResult> getRestApiOutput(
  GetRestApiArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:apigateway/getRestApi:getRestApi',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRestApiResult.fromMap);
}

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.apigateway.getSdk({
///     restApiId: exampleAwsApiGatewayStage.restApiId,
///     stageName: exampleAwsApiGatewayStage.stageName,
///     sdkType: "android",
///     parameters: {
///         groupId: "example",
///         artifactId: "example",
///         artifactVersion: "example",
///         invokerPackage: "example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigateway.get_sdk(rest_api_id=example_aws_api_gateway_stage["restApiId"],
///     stage_name=example_aws_api_gateway_stage["stageName"],
///     sdk_type="android",
///     parameters={
///         "groupId": "example",
///         "artifactId": "example",
///         "artifactVersion": "example",
///         "invokerPackage": "example",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.ApiGateway.GetSdk.Invoke(new()
///     {
///         RestApiId = exampleAwsApiGatewayStage.RestApiId,
///         StageName = exampleAwsApiGatewayStage.StageName,
///         SdkType = "android",
///         Parameters =
///         {
///             { "groupId", "example" },
///             { "artifactId", "example" },
///             { "artifactVersion", "example" },
///             { "invokerPackage", "example" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apigateway.GetSdk(ctx, &apigateway.GetSdkArgs{
/// 			RestApiId: exampleAwsApiGatewayStage.RestApiId,
/// 			StageName: exampleAwsApiGatewayStage.StageName,
/// 			SdkType:   "android",
/// 			Parameters: map[string]string{
/// 				"groupId":         "example",
/// 				"artifactId":      "example",
/// 				"artifactVersion": "example",
/// 				"invokerPackage":  "example",
/// 			},
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
/// data "aws_apigateway_getsdk" "example" {
///   rest_api_id = exampleAwsApiGatewayStage.restApiId
///   stage_name  = exampleAwsApiGatewayStage.stageName
///   sdk_type    = "android"
///   parameters = {
///     "groupId"         = "example"
///     "artifactId"      = "example"
///     "artifactVersion" = "example"
///     "invokerPackage"  = "example"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.apigateway.ApigatewayFunctions;
/// import com.pulumi.aws.apigateway.inputs.GetSdkArgs;
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
///         final var example = ApigatewayFunctions.getSdk(GetSdkArgs.builder()
///             .restApiId(exampleAwsApiGatewayStage.restApiId())
///             .stageName(exampleAwsApiGatewayStage.stageName())
///             .sdkType("android")
///             .parameters(Map.ofEntries(
///                 Map.entry("groupId", "example"),
///                 Map.entry("artifactId", "example"),
///                 Map.entry("artifactVersion", "example"),
///                 Map.entry("invokerPackage", "example")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:apigateway:getSdk
///       arguments:
///         restApiId: ${exampleAwsApiGatewayStage.restApiId}
///         stageName: ${exampleAwsApiGatewayStage.stageName}
///         sdkType: android
///         parameters:
///           groupId: example
///           artifactId: example
///           artifactVersion: example
///           invokerPackage: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_apigateway_get_sdk_get_sdk_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSdkResult> getSdk(
  GetSdkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:apigateway/getSdk:getSdk',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSdkResult.fromMap(result);
}

pulumi.Output<GetSdkResult> getSdkOutput(
  GetSdkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:apigateway/getSdk:getSdk',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSdkResult.fromMap);
}

/// Use this data source to get the id of a VPC Link in
/// API Gateway. To fetch the VPC Link you must provide a name to match against.
/// As there is no unique name constraint on API Gateway VPC Links this data source will
/// error if there is more than one match.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const myApiGatewayVpcLink = aws.apigateway.getVpcLink({
///     name: "my-vpc-link",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// my_api_gateway_vpc_link = aws.apigateway.get_vpc_link(name="my-vpc-link")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myApiGatewayVpcLink = Aws.ApiGateway.GetVpcLink.Invoke(new()
///     {
///         Name = "my-vpc-link",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apigateway.LookupVpcLink(ctx, &apigateway.LookupVpcLinkArgs{
/// 			Name: "my-vpc-link",
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
/// data "aws_apigateway_getvpclink" "myApiGatewayVpcLink" {
///   name = "my-vpc-link"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.apigateway.ApigatewayFunctions;
/// import com.pulumi.aws.apigateway.inputs.GetVpcLinkArgs;
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
///         final var myApiGatewayVpcLink = ApigatewayFunctions.getVpcLink(GetVpcLinkArgs.builder()
///             .name("my-vpc-link")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myApiGatewayVpcLink:
///     fn::invoke:
///       function: aws:apigateway:getVpcLink
///       arguments:
///         name: my-vpc-link
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_apigateway_get_vpc_link_get_vpc_link_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpcLinkResult> getVpcLink(
  GetVpcLinkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:apigateway/getVpcLink:getVpcLink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpcLinkResult.fromMap(result);
}

pulumi.Output<GetVpcLinkResult> getVpcLinkOutput(
  GetVpcLinkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:apigateway/getVpcLink:getVpcLink',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVpcLinkResult.fromMap);
}
