import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_custom_domains_args.dart';
import 'get_custom_domains_result.dart';
import 'get_functions_args.dart';
import 'get_functions_result.dart';
import 'get_service_args.dart';
import 'get_service_result.dart';
import 'get_services_args.dart';
import 'get_services_result.dart';
import 'get_triggers_args.dart';
import 'get_triggers_result.dart';
import 'get_v3_functions_args.dart';
import 'get_v3_functions_result.dart';
import 'get_v3_triggers_args.dart';
import 'get_v3_triggers_result.dart';
import 'get_zones_args.dart';
import 'get_zones_result.dart';

/// This data source provides the Function Compute custom domains of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in 1.98.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const fcDomains = alicloud.fc.getCustomDomains({
///     nameRegex: "sample_fc_custom_domain",
/// });
/// export const firstFcCustomDomainName = fcDomainsDs.domains[0].domainName;
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// fc_domains = alicloud.fc.get_custom_domains(name_regex="sample_fc_custom_domain")
/// pulumi.export("firstFcCustomDomainName", fc_domains_ds["domains"][0]["domainName"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fcDomains = AliCloud.FC.GetCustomDomains.Invoke(new()
///     {
///         NameRegex = "sample_fc_custom_domain",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstFcCustomDomainName"] = fcDomainsDs.Domains[0].DomainName,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/fc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := fc.GetCustomDomains(ctx, &fc.GetCustomDomainsArgs{
/// 			NameRegex: pulumi.StringRef("sample_fc_custom_domain"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstFcCustomDomainName", fcDomainsDs.Domains[0].DomainName)
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
/// import com.pulumi.alicloud.fc.FcFunctions;
/// import com.pulumi.alicloud.fc.inputs.GetCustomDomainsArgs;
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
///         final var fcDomains = FcFunctions.getCustomDomains(GetCustomDomainsArgs.builder()
///             .nameRegex("sample_fc_custom_domain")
///             .build());
///
///         ctx.export("firstFcCustomDomainName", fcDomainsDs.domains()[0].domainName());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   fcDomains:
///     fn::invoke:
///       function: alicloud:fc:getCustomDomains
///       arguments:
///         nameRegex: sample_fc_custom_domain
/// outputs:
///   firstFcCustomDomainName: ${fcDomainsDs.domains[0].domainName}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_fc_get_custom_domains_get_custom_domains_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCustomDomainsResult> getCustomDomains(
  GetCustomDomainsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:fc/getCustomDomains:getCustomDomains',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomDomainsResult.fromMap(result);
}

/// This data source provides the Function Compute functions of the current Alibaba Cloud user.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const functionsDs = alicloud.fc.getFunctions({
///     serviceName: "sample_service",
///     nameRegex: "sample_fc_function",
/// });
/// export const firstFcFunctionName = functionsDs.then(functionsDs => functionsDs.functions?.[0]?.name);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// functions_ds = alicloud.fc.get_functions(service_name="sample_service",
///     name_regex="sample_fc_function")
/// pulumi.export("firstFcFunctionName", functions_ds.functions[0].name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var functionsDs = AliCloud.FC.GetFunctions.Invoke(new()
///     {
///         ServiceName = "sample_service",
///         NameRegex = "sample_fc_function",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstFcFunctionName"] = functionsDs.Apply(getFunctionsResult => getFunctionsResult.Functions[0]?.Name),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/fc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		functionsDs, err := fc.GetFunctions(ctx, &fc.GetFunctionsArgs{
/// 			ServiceName: "sample_service",
/// 			NameRegex:   pulumi.StringRef("sample_fc_function"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstFcFunctionName", functionsDs.Functions[0].Name)
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
/// import com.pulumi.alicloud.fc.FcFunctions;
/// import com.pulumi.alicloud.fc.inputs.GetFunctionsArgs;
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
///         final var functionsDs = FcFunctions.getFunctions(GetFunctionsArgs.builder()
///             .serviceName("sample_service")
///             .nameRegex("sample_fc_function")
///             .build());
///
///         ctx.export("firstFcFunctionName", functionsDs.functions()[0].name());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   functionsDs:
///     fn::invoke:
///       function: alicloud:fc:getFunctions
///       arguments:
///         serviceName: sample_service
///         nameRegex: sample_fc_function
/// outputs:
///   firstFcFunctionName: ${functionsDs.functions[0].name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_fc_get_functions_get_functions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFunctionsResult> getFunctions(
  GetFunctionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:fc/getFunctions:getFunctions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFunctionsResult.fromMap(result);
}

/// Using this data source can open FC service automatically. If the service has been opened, it will return opened.
///
/// For information about FC and how to use it, see [What is FC](https://www.alibabacloud.com/help/en/functioncompute/fc/product-overview/what-is-function-compute).
///
/// > **NOTE:** Available since v1.112.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const open = alicloud.fc.getService({
///     enable: "On",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// open = alicloud.fc.get_service(enable="On")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var open = AliCloud.FC.GetService.Invoke(new()
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/fc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := fc.LookupService(ctx, &fc.LookupServiceArgs{
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
/// import com.pulumi.alicloud.fc.FcFunctions;
/// import com.pulumi.alicloud.fc.inputs.GetServiceArgs;
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
///         final var open = FcFunctions.getService(GetServiceArgs.builder()
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
///       function: alicloud:fc:getService
///       arguments:
///         enable: On
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_fc_get_service_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:fc/getService:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}

/// This data source provides the Function Compute services of the current Alibaba Cloud user.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const fcServicesDs = alicloud.fc.getServices({
///     nameRegex: "sample_fc_service",
/// });
/// export const firstFcServiceName = fcServicesDs.then(fcServicesDs => fcServicesDs.services?.[0]?.name);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// fc_services_ds = alicloud.fc.get_services(name_regex="sample_fc_service")
/// pulumi.export("firstFcServiceName", fc_services_ds.services[0].name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fcServicesDs = AliCloud.FC.GetServices.Invoke(new()
///     {
///         NameRegex = "sample_fc_service",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstFcServiceName"] = fcServicesDs.Apply(getServicesResult => getServicesResult.Services[0]?.Name),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/fc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		fcServicesDs, err := fc.GetServices(ctx, &fc.GetServicesArgs{
/// 			NameRegex: pulumi.StringRef("sample_fc_service"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstFcServiceName", fcServicesDs.Services[0].Name)
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
/// import com.pulumi.alicloud.fc.FcFunctions;
/// import com.pulumi.alicloud.fc.inputs.GetServicesArgs;
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
///         final var fcServicesDs = FcFunctions.getServices(GetServicesArgs.builder()
///             .nameRegex("sample_fc_service")
///             .build());
///
///         ctx.export("firstFcServiceName", fcServicesDs.services()[0].name());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   fcServicesDs:
///     fn::invoke:
///       function: alicloud:fc:getServices
///       arguments:
///         nameRegex: sample_fc_service
/// outputs:
///   firstFcServiceName: ${fcServicesDs.services[0].name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_fc_get_services_get_services_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServicesResult> getServices(
  GetServicesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:fc/getServices:getServices',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServicesResult.fromMap(result);
}

/// This data source provides the Function Compute triggers of the current Alibaba Cloud user.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const fcTriggersDs = alicloud.fc.getTriggers({
///     serviceName: "sample_service",
///     functionName: "sample_function",
///     nameRegex: "sample_fc_trigger",
/// });
/// export const firstFcTriggerName = fcTriggersDs.then(fcTriggersDs => fcTriggersDs.triggers?.[0]?.name);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// fc_triggers_ds = alicloud.fc.get_triggers(service_name="sample_service",
///     function_name="sample_function",
///     name_regex="sample_fc_trigger")
/// pulumi.export("firstFcTriggerName", fc_triggers_ds.triggers[0].name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fcTriggersDs = AliCloud.FC.GetTriggers.Invoke(new()
///     {
///         ServiceName = "sample_service",
///         FunctionName = "sample_function",
///         NameRegex = "sample_fc_trigger",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstFcTriggerName"] = fcTriggersDs.Apply(getTriggersResult => getTriggersResult.Triggers[0]?.Name),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/fc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		fcTriggersDs, err := fc.GetTriggers(ctx, &fc.GetTriggersArgs{
/// 			ServiceName:  "sample_service",
/// 			FunctionName: "sample_function",
/// 			NameRegex:    pulumi.StringRef("sample_fc_trigger"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstFcTriggerName", fcTriggersDs.Triggers[0].Name)
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
/// import com.pulumi.alicloud.fc.FcFunctions;
/// import com.pulumi.alicloud.fc.inputs.GetTriggersArgs;
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
///         final var fcTriggersDs = FcFunctions.getTriggers(GetTriggersArgs.builder()
///             .serviceName("sample_service")
///             .functionName("sample_function")
///             .nameRegex("sample_fc_trigger")
///             .build());
///
///         ctx.export("firstFcTriggerName", fcTriggersDs.triggers()[0].name());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   fcTriggersDs:
///     fn::invoke:
///       function: alicloud:fc:getTriggers
///       arguments:
///         serviceName: sample_service
///         functionName: sample_function
///         nameRegex: sample_fc_trigger
/// outputs:
///   firstFcTriggerName: ${fcTriggersDs.triggers[0].name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_fc_get_triggers_get_triggers_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTriggersResult> getTriggers(
  GetTriggersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:fc/getTriggers:getTriggers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTriggersResult.fromMap(result);
}

/// This data source provides Fcv3 Function available to the user.[What is Function](https://next.api.alibabacloud.com/document/FC/2023-03-30/CreateFunction)
///
/// > **NOTE:** Available since v1.264.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.fc.getV3Functions({
///     prefix: "terraform-example-for-function-alias",
/// });
/// export const alicloudFcv3FunctionExampleId = _default.then(_default => _default.functions?.[0]?.functionName);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.fc.get_v3_functions(prefix="terraform-example-for-function-alias")
/// pulumi.export("alicloudFcv3FunctionExampleId", default.functions[0].function_name)
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
///     var @default = AliCloud.FC.GetV3Functions.Invoke(new()
///     {
///         Prefix = "terraform-example-for-function-alias",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudFcv3FunctionExampleId"] = @default.Apply(@default => @default.Apply(getV3FunctionsResult => getV3FunctionsResult.Functions[0]?.FunctionName)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/fc"
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
/// 		_default, err := fc.GetV3Functions(ctx, &fc.GetV3FunctionsArgs{
/// 			Prefix: pulumi.StringRef("terraform-example-for-function-alias"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alicloudFcv3FunctionExampleId", _default.Functions[0].FunctionName)
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
/// import com.pulumi.alicloud.fc.FcFunctions;
/// import com.pulumi.alicloud.fc.inputs.GetV3FunctionsArgs;
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
///         final var default = FcFunctions.getV3Functions(GetV3FunctionsArgs.builder()
///             .prefix("terraform-example-for-function-alias")
///             .build());
///
///         ctx.export("alicloudFcv3FunctionExampleId", default_.functions()[0].functionName());
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:fc:getV3Functions
///       arguments:
///         prefix: terraform-example-for-function-alias
/// outputs:
///   alicloudFcv3FunctionExampleId: ${default.functions[0].functionName}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_fc_get_v3_functions_get_v3_functions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetV3FunctionsResult> getV3Functions(
  GetV3FunctionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:fc/getV3Functions:getV3Functions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetV3FunctionsResult.fromMap(result);
}

/// This data source provides Fcv3 Trigger available to the user.[What is Trigger](https://next.api.alibabacloud.com/document/FC/2023-03-30/CreateTrigger)
///
/// > **NOTE:** Available since v1.250.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-exampleTriggerResourceAPI";
/// const functionName = config.get("functionName") || "terraform-exampleTriggerResourceAPI";
/// const triggerName = config.get("triggerName") || "exampleTrigger_HTTP";
/// const _function = new alicloud.fc.V3Function("function", {
///     memorySize: 512,
///     cpu: 0.5,
///     handler: "index.Handler",
///     code: {
///         zipFile: "UEsDBBQACAAIAAAAAAAAAAAAAAAAAAAAAAAIAAAAaW5kZXgucHmEkEFKxEAQRfd9ig9ZTCJOooIwDMwNXLqXnnQlaalUhU5lRj2KZ/FOXkESGR114bJ/P/7jV4b1xRq1hijtFpM1682cuNgPmgysbRulPT0fRxXnMtwrSPyeCdYRokSLnuMLJTTkbUqEvDMbxm1VdcRD6Tk+T1LW2ldB66knsYdA5iNX17ebm6tN2VnPhcswMPmREPuBacb+CiapLarAj9gT6/H97dVlCNScY3mtYvRkxdZlwDKDEnanPWVLdrdkeXEGlFEazVdfPVHaVeHc3N15CUwppwOJXeK7HshAB8NuOU7J6sP4SRXuH/EvbUfMiqMmDqv5M5FNSfAj/wgAAP//UEsHCPl//NYAAQAArwEAAFBLAQIUABQACAAIAAAAAAD5f/zWAAEAAK8BAAAIAAAAAAAAAAAAAAAAAAAAAABpbmRleC5weVBLBQYAAAAAAQABADYAAAA2AQAAAAA=",
///     },
///     functionName: name,
///     runtime: "python3.9",
///     diskSize: 512,
///     logConfig: {
///         logBeginRule: "None",
///     },
/// });
/// const defaultV3Trigger = new alicloud.fc.V3Trigger("default", {
///     functionName: _function.functionName,
///     triggerType: "http",
///     triggerName: "tf-exampleacceu-central-1fcv3trigger28547",
///     description: "create",
///     qualifier: "LATEST",
///     triggerConfig: JSON.stringify({
///         authType: "anonymous",
///         methods: [
///             "GET",
///             "POST",
///         ],
///     }),
/// });
/// const _default = alicloud.fc.getV3TriggersOutput({
///     ids: [defaultV3Trigger.id],
///     nameRegex: defaultV3Trigger.triggerName,
///     functionName: functionName,
/// });
/// export const alicloudFcv3TriggerExampleId = _default.apply(_default => _default.triggers?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-exampleTriggerResourceAPI"
/// function_name = config.get("functionName")
/// if function_name is None:
///     function_name = "terraform-exampleTriggerResourceAPI"
/// trigger_name = config.get("triggerName")
/// if trigger_name is None:
///     trigger_name = "exampleTrigger_HTTP"
/// function = alicloud.fc.V3Function("function",
///     memory_size=512,
///     cpu=0.5,
///     handler="index.Handler",
///     code={
///         "zip_file": "UEsDBBQACAAIAAAAAAAAAAAAAAAAAAAAAAAIAAAAaW5kZXgucHmEkEFKxEAQRfd9ig9ZTCJOooIwDMwNXLqXnnQlaalUhU5lRj2KZ/FOXkESGR114bJ/P/7jV4b1xRq1hijtFpM1682cuNgPmgysbRulPT0fRxXnMtwrSPyeCdYRokSLnuMLJTTkbUqEvDMbxm1VdcRD6Tk+T1LW2ldB66knsYdA5iNX17ebm6tN2VnPhcswMPmREPuBacb+CiapLarAj9gT6/H97dVlCNScY3mtYvRkxdZlwDKDEnanPWVLdrdkeXEGlFEazVdfPVHaVeHc3N15CUwppwOJXeK7HshAB8NuOU7J6sP4SRXuH/EvbUfMiqMmDqv5M5FNSfAj/wgAAP//UEsHCPl//NYAAQAArwEAAFBLAQIUABQACAAIAAAAAAD5f/zWAAEAAK8BAAAIAAAAAAAAAAAAAAAAAAAAAABpbmRleC5weVBLBQYAAAAAAQABADYAAAA2AQAAAAA=",
///     },
///     function_name=name,
///     runtime="python3.9",
///     disk_size=512,
///     log_config={
///         "log_begin_rule": "None",
///     })
/// default_v3_trigger = alicloud.fc.V3Trigger("default",
///     function_name=function.function_name,
///     trigger_type="http",
///     trigger_name="tf-exampleacceu-central-1fcv3trigger28547",
///     description="create",
///     qualifier="LATEST",
///     trigger_config=json.dumps({
///         "authType": "anonymous",
///         "methods": [
///             "GET",
///             "POST",
///         ],
///     }))
/// default = alicloud.fc.get_v3_triggers_output(ids=[default_v3_trigger.id],
///     name_regex=default_v3_trigger.trigger_name,
///     function_name=function_name)
/// pulumi.export("alicloudFcv3TriggerExampleId", default.triggers[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-exampleTriggerResourceAPI";
///     var functionName = config.Get("functionName") ?? "terraform-exampleTriggerResourceAPI";
///     var triggerName = config.Get("triggerName") ?? "exampleTrigger_HTTP";
///     var function = new AliCloud.FC.V3Function("function", new()
///     {
///         MemorySize = 512,
///         Cpu = 0.5,
///         Handler = "index.Handler",
///         Code = new AliCloud.FC.Inputs.V3FunctionCodeArgs
///         {
///             ZipFile = "UEsDBBQACAAIAAAAAAAAAAAAAAAAAAAAAAAIAAAAaW5kZXgucHmEkEFKxEAQRfd9ig9ZTCJOooIwDMwNXLqXnnQlaalUhU5lRj2KZ/FOXkESGR114bJ/P/7jV4b1xRq1hijtFpM1682cuNgPmgysbRulPT0fRxXnMtwrSPyeCdYRokSLnuMLJTTkbUqEvDMbxm1VdcRD6Tk+T1LW2ldB66knsYdA5iNX17ebm6tN2VnPhcswMPmREPuBacb+CiapLarAj9gT6/H97dVlCNScY3mtYvRkxdZlwDKDEnanPWVLdrdkeXEGlFEazVdfPVHaVeHc3N15CUwppwOJXeK7HshAB8NuOU7J6sP4SRXuH/EvbUfMiqMmDqv5M5FNSfAj/wgAAP//UEsHCPl//NYAAQAArwEAAFBLAQIUABQACAAIAAAAAAD5f/zWAAEAAK8BAAAIAAAAAAAAAAAAAAAAAAAAAABpbmRleC5weVBLBQYAAAAAAQABADYAAAA2AQAAAAA=",
///         },
///         FunctionName = name,
///         Runtime = "python3.9",
///         DiskSize = 512,
///         LogConfig = new AliCloud.FC.Inputs.V3FunctionLogConfigArgs
///         {
///             LogBeginRule = "None",
///         },
///     });
///
///     var defaultV3Trigger = new AliCloud.FC.V3Trigger("default", new()
///     {
///         FunctionName = function.FunctionName,
///         TriggerType = "http",
///         TriggerName = "tf-exampleacceu-central-1fcv3trigger28547",
///         Description = "create",
///         Qualifier = "LATEST",
///         TriggerConfig = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["authType"] = "anonymous",
///             ["methods"] = new[]
///             {
///                 "GET",
///                 "POST",
///             },
///         }),
///     });
///
///     var @default = AliCloud.FC.GetV3Triggers.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultV3Trigger.Id,
///         },
///         NameRegex = defaultV3Trigger.TriggerName,
///         FunctionName = functionName,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudFcv3TriggerExampleId"] = @default.Apply(@default => @default.Apply(getV3TriggersResult => getV3TriggersResult.Triggers[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/fc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// name := "terraform-exampleTriggerResourceAPI";
/// if param := cfg.Get("name"); param != ""{
/// name = param
/// }
/// functionName := "terraform-exampleTriggerResourceAPI";
/// if param := cfg.Get("functionName"); param != ""{
/// functionName = param
/// }
/// triggerName := "exampleTrigger_HTTP";
/// if param := cfg.Get("triggerName"); param != ""{
/// triggerName = param
/// }
/// function, err := fc.NewV3Function(ctx, "function", &fc.V3FunctionArgs{
/// MemorySize: pulumi.Int(512),
/// Cpu: pulumi.Float64(0.5),
/// Handler: pulumi.String("index.Handler"),
/// Code: &fc.V3FunctionCodeArgs{
/// ZipFile: pulumi.String("UEsDBBQACAAIAAAAAAAAAAAAAAAAAAAAAAAIAAAAaW5kZXgucHmEkEFKxEAQRfd9ig9ZTCJOooIwDMwNXLqXnnQlaalUhU5lRj2KZ/FOXkESGR114bJ/P/7jV4b1xRq1hijtFpM1682cuNgPmgysbRulPT0fRxXnMtwrSPyeCdYRokSLnuMLJTTkbUqEvDMbxm1VdcRD6Tk+T1LW2ldB66knsYdA5iNX17ebm6tN2VnPhcswMPmREPuBacb+CiapLarAj9gT6/H97dVlCNScY3mtYvRkxdZlwDKDEnanPWVLdrdkeXEGlFEazVdfPVHaVeHc3N15CUwppwOJXeK7HshAB8NuOU7J6sP4SRXuH/EvbUfMiqMmDqv5M5FNSfAj/wgAAP//UEsHCPl//NYAAQAArwEAAFBLAQIUABQACAAIAAAAAAD5f/zWAAEAAK8BAAAIAAAAAAAAAAAAAAAAAAAAAABpbmRleC5weVBLBQYAAAAAAQABADYAAAA2AQAAAAA="),
/// },
/// FunctionName: pulumi.String(name),
/// Runtime: pulumi.String("python3.9"),
/// DiskSize: pulumi.Int(512),
/// LogConfig: &fc.V3FunctionLogConfigArgs{
/// LogBeginRule: pulumi.String("None"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "authType": "anonymous",
/// "methods": []string{
/// "GET",
/// "POST",
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// defaultV3Trigger, err := fc.NewV3Trigger(ctx, "default", &fc.V3TriggerArgs{
/// FunctionName: function.FunctionName,
/// TriggerType: pulumi.String("http"),
/// TriggerName: pulumi.String("tf-exampleacceu-central-1fcv3trigger28547"),
/// Description: pulumi.String("create"),
/// Qualifier: pulumi.String("LATEST"),
/// TriggerConfig: pulumi.String(json0),
/// })
/// if err != nil {
/// return err
/// }
/// _default := fc.GetV3TriggersOutput(ctx, fc.GetV3TriggersOutputArgs{
/// Ids: pulumi.StringArray{
/// defaultV3Trigger.ID(),
/// },
/// NameRegex: defaultV3Trigger.TriggerName,
/// FunctionName: pulumi.String(functionName),
/// }, nil);
/// ctx.Export("alicloudFcv3TriggerExampleId", _default.ApplyT(func(_default fc.GetV3TriggersResult) (*string, error) {
/// return &default.Triggers[0].Id, nil
/// }).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.fc.V3Function;
/// import com.pulumi.alicloud.fc.V3FunctionArgs;
/// import com.pulumi.alicloud.fc.inputs.V3FunctionCodeArgs;
/// import com.pulumi.alicloud.fc.inputs.V3FunctionLogConfigArgs;
/// import com.pulumi.alicloud.fc.V3Trigger;
/// import com.pulumi.alicloud.fc.V3TriggerArgs;
/// import com.pulumi.alicloud.fc.FcFunctions;
/// import com.pulumi.alicloud.fc.inputs.GetV3TriggersArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         final var name = config.get("name").orElse("terraform-exampleTriggerResourceAPI");
///         final var functionName = config.get("functionName").orElse("terraform-exampleTriggerResourceAPI");
///         final var triggerName = config.get("triggerName").orElse("exampleTrigger_HTTP");
///         var function = new V3Function("function", V3FunctionArgs.builder()
///             .memorySize(512)
///             .cpu(0.5)
///             .handler("index.Handler")
///             .code(V3FunctionCodeArgs.builder()
///                 .zipFile("UEsDBBQACAAIAAAAAAAAAAAAAAAAAAAAAAAIAAAAaW5kZXgucHmEkEFKxEAQRfd9ig9ZTCJOooIwDMwNXLqXnnQlaalUhU5lRj2KZ/FOXkESGR114bJ/P/7jV4b1xRq1hijtFpM1682cuNgPmgysbRulPT0fRxXnMtwrSPyeCdYRokSLnuMLJTTkbUqEvDMbxm1VdcRD6Tk+T1LW2ldB66knsYdA5iNX17ebm6tN2VnPhcswMPmREPuBacb+CiapLarAj9gT6/H97dVlCNScY3mtYvRkxdZlwDKDEnanPWVLdrdkeXEGlFEazVdfPVHaVeHc3N15CUwppwOJXeK7HshAB8NuOU7J6sP4SRXuH/EvbUfMiqMmDqv5M5FNSfAj/wgAAP//UEsHCPl//NYAAQAArwEAAFBLAQIUABQACAAIAAAAAAD5f/zWAAEAAK8BAAAIAAAAAAAAAAAAAAAAAAAAAABpbmRleC5weVBLBQYAAAAAAQABADYAAAA2AQAAAAA=")
///                 .build())
///             .functionName(name)
///             .runtime("python3.9")
///             .diskSize(512)
///             .logConfig(V3FunctionLogConfigArgs.builder()
///                 .logBeginRule("None")
///                 .build())
///             .build());
///
///         var defaultV3Trigger = new V3Trigger("defaultV3Trigger", V3TriggerArgs.builder()
///             .functionName(function.functionName())
///             .triggerType("http")
///             .triggerName("tf-exampleacceu-central-1fcv3trigger28547")
///             .description("create")
///             .qualifier("LATEST")
///             .triggerConfig(serializeJson(
///                 jsonObject(
///                     jsonProperty("authType", "anonymous"),
///                     jsonProperty("methods", jsonArray(
///                         "GET",
///                         "POST"
///                     ))
///                 )))
///             .build());
///
///         final var default = FcFunctions.getV3Triggers(GetV3TriggersArgs.builder()
///             .ids(defaultV3Trigger.id())
///             .nameRegex(defaultV3Trigger.triggerName())
///             .functionName(functionName)
///             .build());
///
///         ctx.export("alicloudFcv3TriggerExampleId", default_.applyValue(_default_ -> _default_.triggers()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-exampleTriggerResourceAPI
///   functionName:
///     type: string
///     default: terraform-exampleTriggerResourceAPI
///   triggerName:
///     type: string
///     default: exampleTrigger_HTTP
/// resources:
///   function:
///     type: alicloud:fc:V3Function
///     properties:
///       memorySize: '512'
///       cpu: 0.5
///       handler: index.Handler
///       code:
///         zipFile: UEsDBBQACAAIAAAAAAAAAAAAAAAAAAAAAAAIAAAAaW5kZXgucHmEkEFKxEAQRfd9ig9ZTCJOooIwDMwNXLqXnnQlaalUhU5lRj2KZ/FOXkESGR114bJ/P/7jV4b1xRq1hijtFpM1682cuNgPmgysbRulPT0fRxXnMtwrSPyeCdYRokSLnuMLJTTkbUqEvDMbxm1VdcRD6Tk+T1LW2ldB66knsYdA5iNX17ebm6tN2VnPhcswMPmREPuBacb+CiapLarAj9gT6/H97dVlCNScY3mtYvRkxdZlwDKDEnanPWVLdrdkeXEGlFEazVdfPVHaVeHc3N15CUwppwOJXeK7HshAB8NuOU7J6sP4SRXuH/EvbUfMiqMmDqv5M5FNSfAj/wgAAP//UEsHCPl//NYAAQAArwEAAFBLAQIUABQACAAIAAAAAAD5f/zWAAEAAK8BAAAIAAAAAAAAAAAAAAAAAAAAAABpbmRleC5weVBLBQYAAAAAAQABADYAAAA2AQAAAAA=
///       functionName: ${name}
///       runtime: python3.9
///       diskSize: '512'
///       logConfig:
///         logBeginRule: None
///   defaultV3Trigger:
///     type: alicloud:fc:V3Trigger
///     name: default
///     properties:
///       functionName: ${function.functionName}
///       triggerType: http
///       triggerName: tf-exampleacceu-central-1fcv3trigger28547
///       description: create
///       qualifier: LATEST
///       triggerConfig:
///         fn::toJSON:
///           authType: anonymous
///           methods:
///             - GET
///             - POST
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:fc:getV3Triggers
///       arguments:
///         ids:
///           - ${defaultV3Trigger.id}
///         nameRegex: ${defaultV3Trigger.triggerName}
///         functionName: ${functionName}
/// outputs:
///   alicloudFcv3TriggerExampleId: ${default.triggers[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_fc_get_v3_triggers_get_v3_triggers_args_doc}
/// [options] Invoke options controlling this call.
Future<GetV3TriggersResult> getV3Triggers(
  GetV3TriggersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:fc/getV3Triggers:getV3Triggers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetV3TriggersResult.fromMap(result);
}

/// This data source provides availability zones for FunctionCompute that can be accessed by an Alibaba Cloud account within the region configured in the provider.
///
/// > **NOTE:** Available in v1.74.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// // Declare the data source
/// const zonesIds = alicloud.fc.getZones({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Declare the data source
/// zones_ids = alicloud.fc.get_zones()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Declare the data source
///     var zonesIds = AliCloud.FC.GetZones.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/fc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Declare the data source
/// 		_, err := fc.GetZones(ctx, &fc.GetZonesArgs{}, nil)
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
/// import com.pulumi.alicloud.fc.FcFunctions;
/// import com.pulumi.alicloud.fc.inputs.GetZonesArgs;
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
///         // Declare the data source
///         final var zonesIds = FcFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   # Declare the data source
///   zonesIds:
///     fn::invoke:
///       function: alicloud:fc:getZones
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_fc_get_zones_get_zones_args_doc}
/// [options] Invoke options controlling this call.
Future<GetZonesResult> getZones(
  GetZonesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:fc/getZones:getZones',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetZonesResult.fromMap(result);
}
