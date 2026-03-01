import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_app_function_args.dart';
import 'function_app_function_file.dart';

/// Manages a Function App Function.
///
/// ## Example Usage
///
/// ### Basic HTTP Trigger
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-group",
///     location: "West Europe",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "examplesa",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleServicePlan = new azure.appservice.ServicePlan("example", {
///     name: "example-service-plan",
///     location: example.location,
///     resourceGroupName: example.name,
///     osType: "Linux",
///     skuName: "S1",
/// });
/// const exampleLinuxFunctionApp = new azure.appservice.LinuxFunctionApp("example", {
///     name: "example-function-app",
///     location: example.location,
///     resourceGroupName: example.name,
///     servicePlanId: exampleServicePlan.id,
///     storageAccountName: exampleAccount.name,
///     storageAccountAccessKey: exampleAccount.primaryAccessKey,
///     siteConfig: {
///         applicationStack: {
///             pythonVersion: "3.9",
///         },
///     },
/// });
/// const exampleFunctionAppFunction = new azure.appservice.FunctionAppFunction("example", {
///     name: "example-function-app-function",
///     functionAppId: exampleLinuxFunctionApp.id,
///     language: "Python",
///     testData: JSON.stringify({
///         name: "Azure",
///     }),
///     configJson: JSON.stringify({
///         bindings: [
///             {
///                 authLevel: "function",
///                 direction: "in",
///                 methods: [
///                     "get",
///                     "post",
///                 ],
///                 name: "req",
///                 type: "httpTrigger",
///             },
///             {
///                 direction: "out",
///                 name: "$return",
///                 type: "http",
///             },
///         ],
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-group",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="examplesa",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_service_plan = azure.appservice.ServicePlan("example",
///     name="example-service-plan",
///     location=example.location,
///     resource_group_name=example.name,
///     os_type="Linux",
///     sku_name="S1")
/// example_linux_function_app = azure.appservice.LinuxFunctionApp("example",
///     name="example-function-app",
///     location=example.location,
///     resource_group_name=example.name,
///     service_plan_id=example_service_plan.id,
///     storage_account_name=example_account.name,
///     storage_account_access_key=example_account.primary_access_key,
///     site_config={
///         "application_stack": {
///             "python_version": "3.9",
///         },
///     })
/// example_function_app_function = azure.appservice.FunctionAppFunction("example",
///     name="example-function-app-function",
///     function_app_id=example_linux_function_app.id,
///     language="Python",
///     test_data=json.dumps({
///         "name": "Azure",
///     }),
///     config_json=json.dumps({
///         "bindings": [
///             {
///                 "authLevel": "function",
///                 "direction": "in",
///                 "methods": [
///                     "get",
///                     "post",
///                 ],
///                 "name": "req",
///                 "type": "httpTrigger",
///             },
///             {
///                 "direction": "out",
///                 "name": "$return",
///                 "type": "http",
///             },
///         ],
///     }))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-group",
///         Location = "West Europe",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "examplesa",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleServicePlan = new Azure.AppService.ServicePlan("example", new()
///     {
///         Name = "example-service-plan",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         OsType = "Linux",
///         SkuName = "S1",
///     });
///
///     var exampleLinuxFunctionApp = new Azure.AppService.LinuxFunctionApp("example", new()
///     {
///         Name = "example-function-app",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         ServicePlanId = exampleServicePlan.Id,
///         StorageAccountName = exampleAccount.Name,
///         StorageAccountAccessKey = exampleAccount.PrimaryAccessKey,
///         SiteConfig = new Azure.AppService.Inputs.LinuxFunctionAppSiteConfigArgs
///         {
///             ApplicationStack = new Azure.AppService.Inputs.LinuxFunctionAppSiteConfigApplicationStackArgs
///             {
///                 PythonVersion = "3.9",
///             },
///         },
///     });
///
///     var exampleFunctionAppFunction = new Azure.AppService.FunctionAppFunction("example", new()
///     {
///         Name = "example-function-app-function",
///         FunctionAppId = exampleLinuxFunctionApp.Id,
///         Language = "Python",
///         TestData = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["name"] = "Azure",
///         }),
///         ConfigJson = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["bindings"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["authLevel"] = "function",
///                     ["direction"] = "in",
///                     ["methods"] = new[]
///                     {
///                         "get",
///                         "post",
///                     },
///                     ["name"] = "req",
///                     ["type"] = "httpTrigger",
///                 },
///                 new Dictionary<string, object?>
///                 {
///                     ["direction"] = "out",
///                     ["name"] = "$return",
///                     ["type"] = "http",
///                 },
///             },
///         }),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appservice"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-group"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplesa"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleServicePlan, err := appservice.NewServicePlan(ctx, "example", &appservice.ServicePlanArgs{
/// 			Name:              pulumi.String("example-service-plan"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			OsType:            pulumi.String("Linux"),
/// 			SkuName:           pulumi.String("S1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLinuxFunctionApp, err := appservice.NewLinuxFunctionApp(ctx, "example", &appservice.LinuxFunctionAppArgs{
/// 			Name:                    pulumi.String("example-function-app"),
/// 			Location:                example.Location,
/// 			ResourceGroupName:       example.Name,
/// 			ServicePlanId:           exampleServicePlan.ID(),
/// 			StorageAccountName:      exampleAccount.Name,
/// 			StorageAccountAccessKey: exampleAccount.PrimaryAccessKey,
/// 			SiteConfig: &appservice.LinuxFunctionAppSiteConfigArgs{
/// 				ApplicationStack: &appservice.LinuxFunctionAppSiteConfigApplicationStackArgs{
/// 					PythonVersion: pulumi.String("3.9"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"name": "Azure",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		tmpJSON1, err := json.Marshal(map[string]interface{}{
/// 			"bindings": []interface{}{
/// 				map[string]interface{}{
/// 					"authLevel": "function",
/// 					"direction": "in",
/// 					"methods": []string{
/// 						"get",
/// 						"post",
/// 					},
/// 					"name": "req",
/// 					"type": "httpTrigger",
/// 				},
/// 				map[string]interface{}{
/// 					"direction": "out",
/// 					"name":      "$return",
/// 					"type":      "http",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json1 := string(tmpJSON1)
/// 		_, err = appservice.NewFunctionAppFunction(ctx, "example", &appservice.FunctionAppFunctionArgs{
/// 			Name:          pulumi.String("example-function-app-function"),
/// 			FunctionAppId: exampleLinuxFunctionApp.ID(),
/// 			Language:      pulumi.String("Python"),
/// 			TestData:      pulumi.String(json0),
/// 			ConfigJson:    pulumi.String(json1),
/// 		})
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.appservice.ServicePlan;
/// import com.pulumi.azure.appservice.ServicePlanArgs;
/// import com.pulumi.azure.appservice.LinuxFunctionApp;
/// import com.pulumi.azure.appservice.LinuxFunctionAppArgs;
/// import com.pulumi.azure.appservice.inputs.LinuxFunctionAppSiteConfigArgs;
/// import com.pulumi.azure.appservice.inputs.LinuxFunctionAppSiteConfigApplicationStackArgs;
/// import com.pulumi.azure.appservice.FunctionAppFunction;
/// import com.pulumi.azure.appservice.FunctionAppFunctionArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-group")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("examplesa")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleServicePlan = new ServicePlan("exampleServicePlan", ServicePlanArgs.builder()
///             .name("example-service-plan")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .osType("Linux")
///             .skuName("S1")
///             .build());
///
///         var exampleLinuxFunctionApp = new LinuxFunctionApp("exampleLinuxFunctionApp", LinuxFunctionAppArgs.builder()
///             .name("example-function-app")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .servicePlanId(exampleServicePlan.id())
///             .storageAccountName(exampleAccount.name())
///             .storageAccountAccessKey(exampleAccount.primaryAccessKey())
///             .siteConfig(LinuxFunctionAppSiteConfigArgs.builder()
///                 .applicationStack(LinuxFunctionAppSiteConfigApplicationStackArgs.builder()
///                     .pythonVersion("3.9")
///                     .build())
///                 .build())
///             .build());
///
///         var exampleFunctionAppFunction = new FunctionAppFunction("exampleFunctionAppFunction", FunctionAppFunctionArgs.builder()
///             .name("example-function-app-function")
///             .functionAppId(exampleLinuxFunctionApp.id())
///             .language("Python")
///             .testData(serializeJson(
///                 jsonObject(
///                     jsonProperty("name", "Azure")
///                 )))
///             .configJson(serializeJson(
///                 jsonObject(
///                     jsonProperty("bindings", jsonArray(
///                         jsonObject(
///                             jsonProperty("authLevel", "function"),
///                             jsonProperty("direction", "in"),
///                             jsonProperty("methods", jsonArray(
///                                 "get",
///                                 "post"
///                             )),
///                             jsonProperty("name", "req"),
///                             jsonProperty("type", "httpTrigger")
///                         ),
///                         jsonObject(
///                             jsonProperty("direction", "out"),
///                             jsonProperty("name", "$return"),
///                             jsonProperty("type", "http")
///                         )
///                     ))
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-group
///       location: West Europe
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: examplesa
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleServicePlan:
///     type: azure:appservice:ServicePlan
///     name: example
///     properties:
///       name: example-service-plan
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       osType: Linux
///       skuName: S1
///   exampleLinuxFunctionApp:
///     type: azure:appservice:LinuxFunctionApp
///     name: example
///     properties:
///       name: example-function-app
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       servicePlanId: ${exampleServicePlan.id}
///       storageAccountName: ${exampleAccount.name}
///       storageAccountAccessKey: ${exampleAccount.primaryAccessKey}
///       siteConfig:
///         applicationStack:
///           pythonVersion: '3.9'
///   exampleFunctionAppFunction:
///     type: azure:appservice:FunctionAppFunction
///     name: example
///     properties:
///       name: example-function-app-function
///       functionAppId: ${exampleLinuxFunctionApp.id}
///       language: Python
///       testData:
///         fn::toJSON:
///           name: Azure
///       configJson:
///         fn::toJSON:
///           bindings:
///             - authLevel: function
///               direction: in
///               methods:
///                 - get
///                 - post
///               name: req
///               type: httpTrigger
///             - direction: out
///               name: $return
///               type: http
/// ```
///
///
/// ### HTTP Trigger With Code Upload
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-group",
///     location: "West Europe",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "examplesa",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleServicePlan = new azure.appservice.ServicePlan("example", {
///     name: "example-service-plan",
///     location: example.location,
///     resourceGroupName: example.name,
///     osType: "Windows",
///     skuName: "S1",
/// });
/// const exampleWindowsFunctionApp = new azure.appservice.WindowsFunctionApp("example", {
///     name: "example-function-app",
///     location: example.location,
///     resourceGroupName: example.name,
///     servicePlanId: exampleServicePlan.id,
///     storageAccountName: exampleAccount.name,
///     storageAccountAccessKey: exampleAccount.primaryAccessKey,
///     siteConfig: {
///         applicationStack: {
///             dotnetVersion: "6",
///         },
///     },
/// });
/// const exampleFunctionAppFunction = new azure.appservice.FunctionAppFunction("example", {
///     name: "example-function-app-function",
///     functionAppId: exampleWindowsFunctionApp.id,
///     language: "CSharp",
///     files: [{
///         name: "run.csx",
///         content: std.file({
///             input: "exampledata/run.csx",
///         }).then(invoke => invoke.result),
///     }],
///     testData: JSON.stringify({
///         name: "Azure",
///     }),
///     configJson: JSON.stringify({
///         bindings: [
///             {
///                 authLevel: "function",
///                 direction: "in",
///                 methods: [
///                     "get",
///                     "post",
///                 ],
///                 name: "req",
///                 type: "httpTrigger",
///             },
///             {
///                 direction: "out",
///                 name: "$return",
///                 type: "http",
///             },
///         ],
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_azure as azure
/// import pulumi_std as std
///
/// example = azure.core.ResourceGroup("example",
///     name="example-group",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="examplesa",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_service_plan = azure.appservice.ServicePlan("example",
///     name="example-service-plan",
///     location=example.location,
///     resource_group_name=example.name,
///     os_type="Windows",
///     sku_name="S1")
/// example_windows_function_app = azure.appservice.WindowsFunctionApp("example",
///     name="example-function-app",
///     location=example.location,
///     resource_group_name=example.name,
///     service_plan_id=example_service_plan.id,
///     storage_account_name=example_account.name,
///     storage_account_access_key=example_account.primary_access_key,
///     site_config={
///         "application_stack": {
///             "dotnet_version": "6",
///         },
///     })
/// example_function_app_function = azure.appservice.FunctionAppFunction("example",
///     name="example-function-app-function",
///     function_app_id=example_windows_function_app.id,
///     language="CSharp",
///     files=[{
///         "name": "run.csx",
///         "content": std.file(input="exampledata/run.csx").result,
///     }],
///     test_data=json.dumps({
///         "name": "Azure",
///     }),
///     config_json=json.dumps({
///         "bindings": [
///             {
///                 "authLevel": "function",
///                 "direction": "in",
///                 "methods": [
///                     "get",
///                     "post",
///                 ],
///                 "name": "req",
///                 "type": "httpTrigger",
///             },
///             {
///                 "direction": "out",
///                 "name": "$return",
///                 "type": "http",
///             },
///         ],
///     }))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-group",
///         Location = "West Europe",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "examplesa",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleServicePlan = new Azure.AppService.ServicePlan("example", new()
///     {
///         Name = "example-service-plan",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         OsType = "Windows",
///         SkuName = "S1",
///     });
///
///     var exampleWindowsFunctionApp = new Azure.AppService.WindowsFunctionApp("example", new()
///     {
///         Name = "example-function-app",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         ServicePlanId = exampleServicePlan.Id,
///         StorageAccountName = exampleAccount.Name,
///         StorageAccountAccessKey = exampleAccount.PrimaryAccessKey,
///         SiteConfig = new Azure.AppService.Inputs.WindowsFunctionAppSiteConfigArgs
///         {
///             ApplicationStack = new Azure.AppService.Inputs.WindowsFunctionAppSiteConfigApplicationStackArgs
///             {
///                 DotnetVersion = "6",
///             },
///         },
///     });
///
///     var exampleFunctionAppFunction = new Azure.AppService.FunctionAppFunction("example", new()
///     {
///         Name = "example-function-app-function",
///         FunctionAppId = exampleWindowsFunctionApp.Id,
///         Language = "CSharp",
///         Files = new[]
///         {
///             new Azure.AppService.Inputs.FunctionAppFunctionFileArgs
///             {
///                 Name = "run.csx",
///                 Content = Std.File.Invoke(new()
///                 {
///                     Input = "exampledata/run.csx",
///                 }).Apply(invoke => invoke.Result),
///             },
///         },
///         TestData = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["name"] = "Azure",
///         }),
///         ConfigJson = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["bindings"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["authLevel"] = "function",
///                     ["direction"] = "in",
///                     ["methods"] = new[]
///                     {
///                         "get",
///                         "post",
///                     },
///                     ["name"] = "req",
///                     ["type"] = "httpTrigger",
///                 },
///                 new Dictionary<string, object?>
///                 {
///                     ["direction"] = "out",
///                     ["name"] = "$return",
///                     ["type"] = "http",
///                 },
///             },
///         }),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appservice"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-group"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplesa"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleServicePlan, err := appservice.NewServicePlan(ctx, "example", &appservice.ServicePlanArgs{
/// 			Name:              pulumi.String("example-service-plan"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			OsType:            pulumi.String("Windows"),
/// 			SkuName:           pulumi.String("S1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleWindowsFunctionApp, err := appservice.NewWindowsFunctionApp(ctx, "example", &appservice.WindowsFunctionAppArgs{
/// 			Name:                    pulumi.String("example-function-app"),
/// 			Location:                example.Location,
/// 			ResourceGroupName:       example.Name,
/// 			ServicePlanId:           exampleServicePlan.ID(),
/// 			StorageAccountName:      exampleAccount.Name,
/// 			StorageAccountAccessKey: exampleAccount.PrimaryAccessKey,
/// 			SiteConfig: &appservice.WindowsFunctionAppSiteConfigArgs{
/// 				ApplicationStack: &appservice.WindowsFunctionAppSiteConfigApplicationStackArgs{
/// 					DotnetVersion: pulumi.String("6"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "exampledata/run.csx",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"name": "Azure",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		tmpJSON1, err := json.Marshal(map[string]interface{}{
/// 			"bindings": []interface{}{
/// 				map[string]interface{}{
/// 					"authLevel": "function",
/// 					"direction": "in",
/// 					"methods": []string{
/// 						"get",
/// 						"post",
/// 					},
/// 					"name": "req",
/// 					"type": "httpTrigger",
/// 				},
/// 				map[string]interface{}{
/// 					"direction": "out",
/// 					"name":      "$return",
/// 					"type":      "http",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json1 := string(tmpJSON1)
/// 		_, err = appservice.NewFunctionAppFunction(ctx, "example", &appservice.FunctionAppFunctionArgs{
/// 			Name:          pulumi.String("example-function-app-function"),
/// 			FunctionAppId: exampleWindowsFunctionApp.ID(),
/// 			Language:      pulumi.String("CSharp"),
/// 			Files: appservice.FunctionAppFunctionFileArray{
/// 				&appservice.FunctionAppFunctionFileArgs{
/// 					Name:    pulumi.String("run.csx"),
/// 					Content: pulumi.String(invokeFile.Result),
/// 				},
/// 			},
/// 			TestData:   pulumi.String(json0),
/// 			ConfigJson: pulumi.String(json1),
/// 		})
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.appservice.ServicePlan;
/// import com.pulumi.azure.appservice.ServicePlanArgs;
/// import com.pulumi.azure.appservice.WindowsFunctionApp;
/// import com.pulumi.azure.appservice.WindowsFunctionAppArgs;
/// import com.pulumi.azure.appservice.inputs.WindowsFunctionAppSiteConfigArgs;
/// import com.pulumi.azure.appservice.inputs.WindowsFunctionAppSiteConfigApplicationStackArgs;
/// import com.pulumi.azure.appservice.FunctionAppFunction;
/// import com.pulumi.azure.appservice.FunctionAppFunctionArgs;
/// import com.pulumi.azure.appservice.inputs.FunctionAppFunctionFileArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-group")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("examplesa")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleServicePlan = new ServicePlan("exampleServicePlan", ServicePlanArgs.builder()
///             .name("example-service-plan")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .osType("Windows")
///             .skuName("S1")
///             .build());
///
///         var exampleWindowsFunctionApp = new WindowsFunctionApp("exampleWindowsFunctionApp", WindowsFunctionAppArgs.builder()
///             .name("example-function-app")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .servicePlanId(exampleServicePlan.id())
///             .storageAccountName(exampleAccount.name())
///             .storageAccountAccessKey(exampleAccount.primaryAccessKey())
///             .siteConfig(WindowsFunctionAppSiteConfigArgs.builder()
///                 .applicationStack(WindowsFunctionAppSiteConfigApplicationStackArgs.builder()
///                     .dotnetVersion("6")
///                     .build())
///                 .build())
///             .build());
///
///         var exampleFunctionAppFunction = new FunctionAppFunction("exampleFunctionAppFunction", FunctionAppFunctionArgs.builder()
///             .name("example-function-app-function")
///             .functionAppId(exampleWindowsFunctionApp.id())
///             .language("CSharp")
///             .files(FunctionAppFunctionFileArgs.builder()
///                 .name("run.csx")
///                 .content(StdFunctions.file(FileArgs.builder()
///                     .input("exampledata/run.csx")
///                     .build()).result())
///                 .build())
///             .testData(serializeJson(
///                 jsonObject(
///                     jsonProperty("name", "Azure")
///                 )))
///             .configJson(serializeJson(
///                 jsonObject(
///                     jsonProperty("bindings", jsonArray(
///                         jsonObject(
///                             jsonProperty("authLevel", "function"),
///                             jsonProperty("direction", "in"),
///                             jsonProperty("methods", jsonArray(
///                                 "get",
///                                 "post"
///                             )),
///                             jsonProperty("name", "req"),
///                             jsonProperty("type", "httpTrigger")
///                         ),
///                         jsonObject(
///                             jsonProperty("direction", "out"),
///                             jsonProperty("name", "$return"),
///                             jsonProperty("type", "http")
///                         )
///                     ))
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-group
///       location: West Europe
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: examplesa
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleServicePlan:
///     type: azure:appservice:ServicePlan
///     name: example
///     properties:
///       name: example-service-plan
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       osType: Windows
///       skuName: S1
///   exampleWindowsFunctionApp:
///     type: azure:appservice:WindowsFunctionApp
///     name: example
///     properties:
///       name: example-function-app
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       servicePlanId: ${exampleServicePlan.id}
///       storageAccountName: ${exampleAccount.name}
///       storageAccountAccessKey: ${exampleAccount.primaryAccessKey}
///       siteConfig:
///         applicationStack:
///           dotnetVersion: '6'
///   exampleFunctionAppFunction:
///     type: azure:appservice:FunctionAppFunction
///     name: example
///     properties:
///       name: example-function-app-function
///       functionAppId: ${exampleWindowsFunctionApp.id}
///       language: CSharp
///       files:
///         - name: run.csx
///           content:
///             fn::invoke:
///               function: std:file
///               arguments:
///                 input: exampledata/run.csx
///               return: result
///       testData:
///         fn::toJSON:
///           name: Azure
///       configJson:
///         fn::toJSON:
///           bindings:
///             - authLevel: function
///               direction: in
///               methods:
///                 - get
///                 - post
///               name: req
///               type: httpTrigger
///             - direction: out
///               name: $return
///               type: http
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Web` - 2023-12-01
///
/// ## Import
///
/// a Function App Function can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appservice/functionAppFunction:FunctionAppFunction example "/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.Web/sites/site1/functions/function1"
/// ```
class FunctionAppFunction extends pulumi.CustomResource {
  /// The config for this Function in JSON format.
  late final pulumi.Output<String> configJson;
  /// The URL of the configuration JSON.
  late final pulumi.Output<String> configUrl;
  /// Should this function be enabled. Defaults to `true`.
  late final pulumi.Output<bool?> enabled;
  /// A `file` block as detailed below. Changing this forces a new resource to be created.
  late final pulumi.Output<List<FunctionAppFunctionFile>?> files;
  /// The ID of the Function App in which this function should reside. Changing this forces a new resource to be created.
  late final pulumi.Output<String> functionAppId;
  /// The invocation URL.
  late final pulumi.Output<String> invocationUrl;
  /// The language the Function is written in. Possible values are `CSharp`, `Custom`, `Java`, `Javascript`, `Python`, `PowerShell`, and `TypeScript`.
  ///
  /// > **Note:** when using `Custom` language, you must specify the code handler in the `host.json` file for your function. See the [official docs](https://docs.microsoft.com/azure/azure-functions/functions-custom-handlers#hostjson) for more information.
  late final pulumi.Output<String?> language;
  /// The name of the function. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The Script root path URL.
  late final pulumi.Output<String> scriptRootPathUrl;
  /// The script URL.
  late final pulumi.Output<String> scriptUrl;
  /// The URL for the Secrets File.
  late final pulumi.Output<String> secretsFileUrl;
  /// The test data for the function.
  late final pulumi.Output<String?> testData;
  /// The Test data URL.
  late final pulumi.Output<String> testDataUrl;
  /// The function URL.
  late final pulumi.Output<String> url;

  /// Creates a new [FunctionAppFunction].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FunctionAppFunction]. {@macro pulumi_appservice_function_app_function_function_app_function_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FunctionAppFunction(
    String name, {
    FunctionAppFunctionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/functionAppFunction:FunctionAppFunction',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.configJson = registerOutput<String>('configJson');
    this.configUrl = registerOutput<String>('configUrl');
    this.enabled = registerOutput<bool?>('enabled');
    this.files = registerOutput<List<FunctionAppFunctionFile>?>('files');
    this.functionAppId = registerOutput<String>('functionAppId');
    this.invocationUrl = registerOutput<String>('invocationUrl');
    this.language = registerOutput<String?>('language');
    this.name = registerOutput<String>('name');
    this.scriptRootPathUrl = registerOutput<String>('scriptRootPathUrl');
    this.scriptUrl = registerOutput<String>('scriptUrl');
    this.secretsFileUrl = registerOutput<String>('secretsFileUrl');
    this.testData = registerOutput<String?>('testData');
    this.testDataUrl = registerOutput<String>('testDataUrl');
    this.url = registerOutput<String>('url');
  }
}
