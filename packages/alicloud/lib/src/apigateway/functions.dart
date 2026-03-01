import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_apis_args.dart';
import 'get_apis_result.dart';
import 'get_apps_args.dart';
import 'get_apps_result.dart';
import 'get_backends_args.dart';
import 'get_backends_result.dart';
import 'get_groups_args.dart';
import 'get_groups_result.dart';
import 'get_log_configs_args.dart';
import 'get_log_configs_result.dart';
import 'get_models_args.dart';
import 'get_models_result.dart';
import 'get_plugins_args.dart';
import 'get_plugins_result.dart';
import 'get_service_args.dart';
import 'get_service_result.dart';

/// This data source provides the Api Gateway APIs of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.22.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = new alicloud.apigateway.Group("default", {
///     name: name,
///     description: name,
/// });
/// const defaultApi = new alicloud.apigateway.Api("default", {
///     groupId: _default.id,
///     name: name,
///     description: name,
///     authType: "APP",
///     serviceType: "HTTP",
///     requestConfig: {
///         protocol: "HTTP",
///         method: "GET",
///         path: "/test/path",
///         mode: "MAPPING",
///     },
///     httpServiceConfig: {
///         address: "http://apigateway-backend.alicloudapi.com:8080",
///         method: "GET",
///         path: "/web/cloudapi",
///         timeout: 20,
///         aoneName: "cloudapi-openapi",
///     },
///     requestParameters: [{
///         name: name,
///         type: "STRING",
///         required: "OPTIONAL",
///         "in": "QUERY",
///         inService: "QUERY",
///         nameService: name,
///     }],
/// });
/// const ids = alicloud.apigateway.getApisOutput({
///     ids: [defaultApi.id],
/// });
/// export const apiGatewayApisId0 = ids.apply(ids => ids.apis?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.apigateway.Group("default",
///     name=name,
///     description=name)
/// default_api = alicloud.apigateway.Api("default",
///     group_id=default.id,
///     name=name,
///     description=name,
///     auth_type="APP",
///     service_type="HTTP",
///     request_config={
///         "protocol": "HTTP",
///         "method": "GET",
///         "path": "/test/path",
///         "mode": "MAPPING",
///     },
///     http_service_config={
///         "address": "http://apigateway-backend.alicloudapi.com:8080",
///         "method": "GET",
///         "path": "/web/cloudapi",
///         "timeout": 20,
///         "aone_name": "cloudapi-openapi",
///     },
///     request_parameters=[{
///         "name": name,
///         "type": "STRING",
///         "required": "OPTIONAL",
///         "in_": "QUERY",
///         "in_service": "QUERY",
///         "name_service": name,
///     }])
/// ids = alicloud.apigateway.get_apis_output(ids=[default_api.id])
/// pulumi.export("apiGatewayApisId0", ids.apis[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new AliCloud.ApiGateway.Group("default", new()
///     {
///         Name = name,
///         Description = name,
///     });
///
///     var defaultApi = new AliCloud.ApiGateway.Api("default", new()
///     {
///         GroupId = @default.Id,
///         Name = name,
///         Description = name,
///         AuthType = "APP",
///         ServiceType = "HTTP",
///         RequestConfig = new AliCloud.ApiGateway.Inputs.ApiRequestConfigArgs
///         {
///             Protocol = "HTTP",
///             Method = "GET",
///             Path = "/test/path",
///             Mode = "MAPPING",
///         },
///         HttpServiceConfig = new AliCloud.ApiGateway.Inputs.ApiHttpServiceConfigArgs
///         {
///             Address = "http://apigateway-backend.alicloudapi.com:8080",
///             Method = "GET",
///             Path = "/web/cloudapi",
///             Timeout = 20,
///             AoneName = "cloudapi-openapi",
///         },
///         RequestParameters = new[]
///         {
///             new AliCloud.ApiGateway.Inputs.ApiRequestParameterArgs
///             {
///                 Name = name,
///                 Type = "STRING",
///                 Required = "OPTIONAL",
///                 In = "QUERY",
///                 InService = "QUERY",
///                 NameService = name,
///             },
///         },
///     });
///
///     var ids = AliCloud.ApiGateway.GetApis.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultApi.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["apiGatewayApisId0"] = ids.Apply(getApisResult => getApisResult.Apis[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := apigateway.NewGroup(ctx, "default", &apigateway.GroupArgs{
/// 			Name:        pulumi.String(name),
/// 			Description: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultApi, err := apigateway.NewApi(ctx, "default", &apigateway.ApiArgs{
/// 			GroupId:     _default.ID(),
/// 			Name:        pulumi.String(name),
/// 			Description: pulumi.String(name),
/// 			AuthType:    pulumi.String("APP"),
/// 			ServiceType: pulumi.String("HTTP"),
/// 			RequestConfig: &apigateway.ApiRequestConfigArgs{
/// 				Protocol: pulumi.String("HTTP"),
/// 				Method:   pulumi.String("GET"),
/// 				Path:     pulumi.String("/test/path"),
/// 				Mode:     pulumi.String("MAPPING"),
/// 			},
/// 			HttpServiceConfig: &apigateway.ApiHttpServiceConfigArgs{
/// 				Address:  pulumi.String("http://apigateway-backend.alicloudapi.com:8080"),
/// 				Method:   pulumi.String("GET"),
/// 				Path:     pulumi.String("/web/cloudapi"),
/// 				Timeout:  pulumi.Int(20),
/// 				AoneName: pulumi.String("cloudapi-openapi"),
/// 			},
/// 			RequestParameters: apigateway.ApiRequestParameterArray{
/// 				&apigateway.ApiRequestParameterArgs{
/// 					Name:        pulumi.String(name),
/// 					Type:        pulumi.String("STRING"),
/// 					Required:    pulumi.String("OPTIONAL"),
/// 					In:          pulumi.String("QUERY"),
/// 					InService:   pulumi.String("QUERY"),
/// 					NameService: pulumi.String(name),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids := apigateway.GetApisOutput(ctx, apigateway.GetApisOutputArgs{
/// 			Ids: pulumi.StringArray{
/// 				defaultApi.ID(),
/// 			},
/// 		}, nil)
/// 		ctx.Export("apiGatewayApisId0", ids.ApplyT(func(ids apigateway.GetApisResult) (*string, error) {
/// 			return &ids.Apis[0].Id, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.apigateway.Group;
/// import com.pulumi.alicloud.apigateway.GroupArgs;
/// import com.pulumi.alicloud.apigateway.Api;
/// import com.pulumi.alicloud.apigateway.ApiArgs;
/// import com.pulumi.alicloud.apigateway.inputs.ApiRequestConfigArgs;
/// import com.pulumi.alicloud.apigateway.inputs.ApiHttpServiceConfigArgs;
/// import com.pulumi.alicloud.apigateway.inputs.ApiRequestParameterArgs;
/// import com.pulumi.alicloud.apigateway.ApigatewayFunctions;
/// import com.pulumi.alicloud.apigateway.inputs.GetApisArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         var default_ = new Group("default", GroupArgs.builder()
///             .name(name)
///             .description(name)
///             .build());
///
///         var defaultApi = new Api("defaultApi", ApiArgs.builder()
///             .groupId(default_.id())
///             .name(name)
///             .description(name)
///             .authType("APP")
///             .serviceType("HTTP")
///             .requestConfig(ApiRequestConfigArgs.builder()
///                 .protocol("HTTP")
///                 .method("GET")
///                 .path("/test/path")
///                 .mode("MAPPING")
///                 .build())
///             .httpServiceConfig(ApiHttpServiceConfigArgs.builder()
///                 .address("http://apigateway-backend.alicloudapi.com:8080")
///                 .method("GET")
///                 .path("/web/cloudapi")
///                 .timeout(20)
///                 .aoneName("cloudapi-openapi")
///                 .build())
///             .requestParameters(ApiRequestParameterArgs.builder()
///                 .name(name)
///                 .type("STRING")
///                 .required("OPTIONAL")
///                 .in("QUERY")
///                 .inService("QUERY")
///                 .nameService(name)
///                 .build())
///             .build());
///
///         final var ids = ApigatewayFunctions.getApis(GetApisArgs.builder()
///             .ids(defaultApi.id())
///             .build());
///
///         ctx.export("apiGatewayApisId0", ids.applyValue(_ids -> _ids.apis()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   default:
///     type: alicloud:apigateway:Group
///     properties:
///       name: ${name}
///       description: ${name}
///   defaultApi:
///     type: alicloud:apigateway:Api
///     name: default
///     properties:
///       groupId: ${default.id}
///       name: ${name}
///       description: ${name}
///       authType: APP
///       serviceType: HTTP
///       requestConfig:
///         protocol: HTTP
///         method: GET
///         path: /test/path
///         mode: MAPPING
///       httpServiceConfig:
///         address: http://apigateway-backend.alicloudapi.com:8080
///         method: GET
///         path: /web/cloudapi
///         timeout: 20
///         aoneName: cloudapi-openapi
///       requestParameters:
///         - name: ${name}
///           type: STRING
///           required: OPTIONAL
///           in: QUERY
///           inService: QUERY
///           nameService: ${name}
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:apigateway:getApis
///       arguments:
///         ids:
///           - ${defaultApi.id}
/// outputs:
///   apiGatewayApisId0: ${ids.apis[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_apigateway_get_apis_get_apis_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApisResult> getApis(
  GetApisArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:apigateway/getApis:getApis',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApisResult.fromMap(result);
}

/// This data source provides the apps of the current Alibaba Cloud user.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const dataApigatway = alicloud.apigateway.getApps({
///     outputFile: "outapps",
/// });
/// export const firstAppId = dataApigatway.then(dataApigatway => dataApigatway.apps?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// data_apigatway = alicloud.apigateway.get_apps(output_file="outapps")
/// pulumi.export("firstAppId", data_apigatway.apps[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataApigatway = AliCloud.ApiGateway.GetApps.Invoke(new()
///     {
///         OutputFile = "outapps",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstAppId"] = dataApigatway.Apply(getAppsResult => getAppsResult.Apps[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		dataApigatway, err := apigateway.GetApps(ctx, &apigateway.GetAppsArgs{
/// 			OutputFile: pulumi.StringRef("outapps"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstAppId", dataApigatway.Apps[0].Id)
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
/// import com.pulumi.alicloud.apigateway.ApigatewayFunctions;
/// import com.pulumi.alicloud.apigateway.inputs.GetAppsArgs;
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
///         final var dataApigatway = ApigatewayFunctions.getApps(GetAppsArgs.builder()
///             .outputFile("outapps")
///             .build());
///
///         ctx.export("firstAppId", dataApigatway.apps()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   dataApigatway:
///     fn::invoke:
///       function: alicloud:apigateway:getApps
///       arguments:
///         outputFile: outapps
/// outputs:
///   firstAppId: ${dataApigatway.apps[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_apigateway_get_apps_get_apps_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppsResult> getApps(
  GetAppsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:apigateway/getApps:getApps',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppsResult.fromMap(result);
}

/// This data source provides the Api Gateway Backends of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.181.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.apigateway.getBackends({});
/// export const apiGatewayBackendId1 = ids.then(ids => ids.backends?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.apigateway.get_backends()
/// pulumi.export("apiGatewayBackendId1", ids.backends[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.ApiGateway.GetBackends.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["apiGatewayBackendId1"] = ids.Apply(getBackendsResult => getBackendsResult.Backends[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := apigateway.GetBackends(ctx, &apigateway.GetBackendsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("apiGatewayBackendId1", ids.Backends[0].Id)
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
/// import com.pulumi.alicloud.apigateway.ApigatewayFunctions;
/// import com.pulumi.alicloud.apigateway.inputs.GetBackendsArgs;
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
///         final var ids = ApigatewayFunctions.getBackends(GetBackendsArgs.builder()
///             .build());
///
///         ctx.export("apiGatewayBackendId1", ids.backends()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:apigateway:getBackends
///       arguments: {}
/// outputs:
///   apiGatewayBackendId1: ${ids.backends[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_apigateway_get_backends_get_backends_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackendsResult> getBackends(
  GetBackendsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:apigateway/getBackends:getBackends',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackendsResult.fromMap(result);
}

/// This data source provides the api groups of the current Alibaba Cloud user.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const dataApigatway = alicloud.apigateway.getGroups({
///     outputFile: "outgroups",
/// });
/// export const firstGroupId = dataApigatway.then(dataApigatway => dataApigatway.groups?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// data_apigatway = alicloud.apigateway.get_groups(output_file="outgroups")
/// pulumi.export("firstGroupId", data_apigatway.groups[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataApigatway = AliCloud.ApiGateway.GetGroups.Invoke(new()
///     {
///         OutputFile = "outgroups",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstGroupId"] = dataApigatway.Apply(getGroupsResult => getGroupsResult.Groups[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		dataApigatway, err := apigateway.GetGroups(ctx, &apigateway.GetGroupsArgs{
/// 			OutputFile: pulumi.StringRef("outgroups"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstGroupId", dataApigatway.Groups[0].Id)
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
/// import com.pulumi.alicloud.apigateway.ApigatewayFunctions;
/// import com.pulumi.alicloud.apigateway.inputs.GetGroupsArgs;
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
///         final var dataApigatway = ApigatewayFunctions.getGroups(GetGroupsArgs.builder()
///             .outputFile("outgroups")
///             .build());
///
///         ctx.export("firstGroupId", dataApigatway.groups()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   dataApigatway:
///     fn::invoke:
///       function: alicloud:apigateway:getGroups
///       arguments:
///         outputFile: outgroups
/// outputs:
///   firstGroupId: ${dataApigatway.groups[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_apigateway_get_groups_get_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGroupsResult> getGroups(
  GetGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:apigateway/getGroups:getGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupsResult.fromMap(result);
}

/// This data source provides the Api Gateway Log Configs of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.185.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.apigateway.getLogConfigs({
///     ids: ["example_id"],
/// });
/// export const apiGatewayLogConfigId1 = ids.then(ids => ids.configs?.[0]?.id);
/// const logType = alicloud.apigateway.getLogConfigs({
///     logType: "PROVIDER",
/// });
/// export const apiGatewayLogConfigId2 = logType.then(logType => logType.configs?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.apigateway.get_log_configs(ids=["example_id"])
/// pulumi.export("apiGatewayLogConfigId1", ids.configs[0].id)
/// log_type = alicloud.apigateway.get_log_configs(log_type="PROVIDER")
/// pulumi.export("apiGatewayLogConfigId2", log_type.configs[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.ApiGateway.GetLogConfigs.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     var logType = AliCloud.ApiGateway.GetLogConfigs.Invoke(new()
///     {
///         LogType = "PROVIDER",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["apiGatewayLogConfigId1"] = ids.Apply(getLogConfigsResult => getLogConfigsResult.Configs[0]?.Id),
///         ["apiGatewayLogConfigId2"] = logType.Apply(getLogConfigsResult => getLogConfigsResult.Configs[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := apigateway.GetLogConfigs(ctx, &apigateway.GetLogConfigsArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("apiGatewayLogConfigId1", ids.Configs[0].Id)
/// 		logType, err := apigateway.GetLogConfigs(ctx, &apigateway.GetLogConfigsArgs{
/// 			LogType: pulumi.StringRef("PROVIDER"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("apiGatewayLogConfigId2", logType.Configs[0].Id)
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
/// import com.pulumi.alicloud.apigateway.ApigatewayFunctions;
/// import com.pulumi.alicloud.apigateway.inputs.GetLogConfigsArgs;
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
///         final var ids = ApigatewayFunctions.getLogConfigs(GetLogConfigsArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("apiGatewayLogConfigId1", ids.configs()[0].id());
///         final var logType = ApigatewayFunctions.getLogConfigs(GetLogConfigsArgs.builder()
///             .logType("PROVIDER")
///             .build());
///
///         ctx.export("apiGatewayLogConfigId2", logType.configs()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:apigateway:getLogConfigs
///       arguments:
///         ids:
///           - example_id
///   logType:
///     fn::invoke:
///       function: alicloud:apigateway:getLogConfigs
///       arguments:
///         logType: PROVIDER
/// outputs:
///   apiGatewayLogConfigId1: ${ids.configs[0].id}
///   apiGatewayLogConfigId2: ${logType.configs[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_apigateway_get_log_configs_get_log_configs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLogConfigsResult> getLogConfigs(
  GetLogConfigsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:apigateway/getLogConfigs:getLogConfigs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLogConfigsResult.fromMap(result);
}

/// This data source provides the Api Gateway Models of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.187.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.apigateway.getModels({
///     ids: ["example_id"],
///     groupId: "example_group_id",
/// });
/// export const apiGatewayModelId1 = ids.then(ids => ids.models?.[0]?.id);
/// const groupId = alicloud.apigateway.getModels({
///     groupId: "example_group_id",
/// });
/// export const apiGatewayModelId2 = groupId.then(groupId => groupId.models?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.apigateway.get_models(ids=["example_id"],
///     group_id="example_group_id")
/// pulumi.export("apiGatewayModelId1", ids.models[0].id)
/// group_id = alicloud.apigateway.get_models(group_id="example_group_id")
/// pulumi.export("apiGatewayModelId2", group_id.models[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.ApiGateway.GetModels.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///         GroupId = "example_group_id",
///     });
///
///     var groupId = AliCloud.ApiGateway.GetModels.Invoke(new()
///     {
///         GroupId = "example_group_id",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["apiGatewayModelId1"] = ids.Apply(getModelsResult => getModelsResult.Models[0]?.Id),
///         ["apiGatewayModelId2"] = groupId.Apply(getModelsResult => getModelsResult.Models[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := apigateway.GetModels(ctx, &apigateway.GetModelsArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 			GroupId: "example_group_id",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("apiGatewayModelId1", ids.Models[0].Id)
/// 		groupId, err := apigateway.GetModels(ctx, &apigateway.GetModelsArgs{
/// 			GroupId: "example_group_id",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("apiGatewayModelId2", groupId.Models[0].Id)
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
/// import com.pulumi.alicloud.apigateway.ApigatewayFunctions;
/// import com.pulumi.alicloud.apigateway.inputs.GetModelsArgs;
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
///         final var ids = ApigatewayFunctions.getModels(GetModelsArgs.builder()
///             .ids("example_id")
///             .groupId("example_group_id")
///             .build());
///
///         ctx.export("apiGatewayModelId1", ids.models()[0].id());
///         final var groupId = ApigatewayFunctions.getModels(GetModelsArgs.builder()
///             .groupId("example_group_id")
///             .build());
///
///         ctx.export("apiGatewayModelId2", groupId.models()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:apigateway:getModels
///       arguments:
///         ids:
///           - example_id
///         groupId: example_group_id
///   groupId:
///     fn::invoke:
///       function: alicloud:apigateway:getModels
///       arguments:
///         groupId: example_group_id
/// outputs:
///   apiGatewayModelId1: ${ids.models[0].id}
///   apiGatewayModelId2: ${groupId.models[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_apigateway_get_models_get_models_args_doc}
/// [options] Invoke options controlling this call.
Future<GetModelsResult> getModels(
  GetModelsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:apigateway/getModels:getModels',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetModelsResult.fromMap(result);
}

/// This data source provides the Api Gateway Plugins of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.187.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.apigateway.getPlugins({});
/// export const apiGatewayPluginId1 = ids.then(ids => ids.plugins?.[0]?.id);
/// const nameRegex = alicloud.apigateway.getPlugins({
///     nameRegex: "^my-Plugin",
/// });
/// export const apiGatewayPluginId2 = nameRegex.then(nameRegex => nameRegex.plugins?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.apigateway.get_plugins()
/// pulumi.export("apiGatewayPluginId1", ids.plugins[0].id)
/// name_regex = alicloud.apigateway.get_plugins(name_regex="^my-Plugin")
/// pulumi.export("apiGatewayPluginId2", name_regex.plugins[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.ApiGateway.GetPlugins.Invoke();
///
///     var nameRegex = AliCloud.ApiGateway.GetPlugins.Invoke(new()
///     {
///         NameRegex = "^my-Plugin",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["apiGatewayPluginId1"] = ids.Apply(getPluginsResult => getPluginsResult.Plugins[0]?.Id),
///         ["apiGatewayPluginId2"] = nameRegex.Apply(getPluginsResult => getPluginsResult.Plugins[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := apigateway.GetPlugins(ctx, &apigateway.GetPluginsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("apiGatewayPluginId1", ids.Plugins[0].Id)
/// 		nameRegex, err := apigateway.GetPlugins(ctx, &apigateway.GetPluginsArgs{
/// 			NameRegex: pulumi.StringRef("^my-Plugin"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("apiGatewayPluginId2", nameRegex.Plugins[0].Id)
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
/// import com.pulumi.alicloud.apigateway.ApigatewayFunctions;
/// import com.pulumi.alicloud.apigateway.inputs.GetPluginsArgs;
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
///         final var ids = ApigatewayFunctions.getPlugins(GetPluginsArgs.builder()
///             .build());
///
///         ctx.export("apiGatewayPluginId1", ids.plugins()[0].id());
///         final var nameRegex = ApigatewayFunctions.getPlugins(GetPluginsArgs.builder()
///             .nameRegex("^my-Plugin")
///             .build());
///
///         ctx.export("apiGatewayPluginId2", nameRegex.plugins()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:apigateway:getPlugins
///       arguments: {}
///   nameRegex:
///     fn::invoke:
///       function: alicloud:apigateway:getPlugins
///       arguments:
///         nameRegex: ^my-Plugin
/// outputs:
///   apiGatewayPluginId1: ${ids.plugins[0].id}
///   apiGatewayPluginId2: ${nameRegex.plugins[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_apigateway_get_plugins_get_plugins_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPluginsResult> getPlugins(
  GetPluginsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:apigateway/getPlugins:getPlugins',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPluginsResult.fromMap(result);
}

/// Using this data source can enable API gateway service automatically. If the service has been enabled, it will return `Opened`.
///
/// For information about API Gateway and how to use it, see [What is API Gateway](https://www.alibabacloud.com/help/product/29462.htm).
///
/// > **NOTE:** Available in v1.96.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const open = alicloud.apigateway.getService({
///     enable: "On",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// open = alicloud.apigateway.get_service(enable="On")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var open = AliCloud.ApiGateway.GetService.Invoke(new()
///     {
///         Enable = "On",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apigateway.GetService(ctx, &apigateway.GetServiceArgs{
/// 			Enable: pulumi.StringRef("On"),
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
/// import com.pulumi.alicloud.apigateway.ApigatewayFunctions;
/// import com.pulumi.alicloud.apigateway.inputs.GetServiceArgs;
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
///         final var open = ApigatewayFunctions.getService(GetServiceArgs.builder()
///             .enable("On")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   open:
///     fn::invoke:
///       function: alicloud:apigateway:getService
///       arguments:
///         enable: On
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_apigateway_get_service_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:apigateway/getService:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}
