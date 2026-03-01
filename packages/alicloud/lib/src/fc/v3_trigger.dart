import 'package:pulumi/pulumi.dart' as pulumi;
import 'v3_trigger_args.dart';
import 'v3_trigger_http_trigger.dart';

/// Provides a FCV3 Trigger resource.
///
/// A trigger is a way of triggering the execution of a function. In the event-driven computing model, the event source is the producer of the event, the function is the handler of the event, and the trigger provides a centralized and unified way to manage different event sources. In the event source, when the event occurs, if the rules defined by the trigger are met,.
///
/// For information about FCV3 Trigger and how to use it, see [What is Trigger](https://www.alibabacloud.com/help/en/functioncompute/api-fc-2023-03-30-createtrigger).
///
/// > **NOTE:** Available since v1.228.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const functionName = config.get("functionName") || "TerraformTriggerResourceAPI";
/// const triggerName = config.get("triggerName") || "TerraformTrigger_CDN";
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
/// const current = alicloud.getAccount({});
/// const _default = new alicloud.fc.V3Trigger("default", {
///     triggerType: "cdn_events",
///     triggerName: name,
///     description: "create",
///     qualifier: "LATEST",
///     triggerConfig: JSON.stringify({
///         eventName: "CachedObjectsPushed",
///         eventVersion: "1.0.0",
///         notes: "example",
///         filter: {
///             domain: ["example.com"],
///         },
///     }),
///     sourceArn: current.then(current => `acs:cdn:*:${current.id}`),
///     invocationRole: current.then(current => `acs:ram::${current.id}:role/aliyuncdneventnotificationrole`),
///     functionName: _function.functionName,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// function_name = config.get("functionName")
/// if function_name is None:
///     function_name = "TerraformTriggerResourceAPI"
/// trigger_name = config.get("triggerName")
/// if trigger_name is None:
///     trigger_name = "TerraformTrigger_CDN"
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
/// current = alicloud.get_account()
/// default = alicloud.fc.V3Trigger("default",
///     trigger_type="cdn_events",
///     trigger_name=name,
///     description="create",
///     qualifier="LATEST",
///     trigger_config=json.dumps({
///         "eventName": "CachedObjectsPushed",
///         "eventVersion": "1.0.0",
///         "notes": "example",
///         "filter": {
///             "domain": ["example.com"],
///         },
///     }),
///     source_arn=f"acs:cdn:*:{current.id}",
///     invocation_role=f"acs:ram::{current.id}:role/aliyuncdneventnotificationrole",
///     function_name=function.function_name)
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
///     var name = config.Get("name") ?? "terraform-example";
///     var functionName = config.Get("functionName") ?? "TerraformTriggerResourceAPI";
///     var triggerName = config.Get("triggerName") ?? "TerraformTrigger_CDN";
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
///     var current = AliCloud.GetAccount.Invoke();
///
///     var @default = new AliCloud.FC.V3Trigger("default", new()
///     {
///         TriggerType = "cdn_events",
///         TriggerName = name,
///         Description = "create",
///         Qualifier = "LATEST",
///         TriggerConfig = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["eventName"] = "CachedObjectsPushed",
///             ["eventVersion"] = "1.0.0",
///             ["notes"] = "example",
///             ["filter"] = new Dictionary<string, object?>
///             {
///                 ["domain"] = new[]
///                 {
///                     "example.com",
///                 },
///             },
///         }),
///         SourceArn = $"acs:cdn:*:{current.Apply(getAccountResult => getAccountResult.Id)}",
///         InvocationRole = $"acs:ram::{current.Apply(getAccountResult => getAccountResult.Id)}:role/aliyuncdneventnotificationrole",
///         FunctionName = function.FunctionName,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
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
/// 		functionName := "TerraformTriggerResourceAPI"
/// 		if param := cfg.Get("functionName"); param != "" {
/// 			functionName = param
/// 		}
/// 		triggerName := "TerraformTrigger_CDN"
/// 		if param := cfg.Get("triggerName"); param != "" {
/// 			triggerName = param
/// 		}
/// 		function, err := fc.NewV3Function(ctx, "function", &fc.V3FunctionArgs{
/// 			MemorySize: pulumi.Int(512),
/// 			Cpu:        pulumi.Float64(0.5),
/// 			Handler:    pulumi.String("index.Handler"),
/// 			Code: &fc.V3FunctionCodeArgs{
/// 				ZipFile: pulumi.String("UEsDBBQACAAIAAAAAAAAAAAAAAAAAAAAAAAIAAAAaW5kZXgucHmEkEFKxEAQRfd9ig9ZTCJOooIwDMwNXLqXnnQlaalUhU5lRj2KZ/FOXkESGR114bJ/P/7jV4b1xRq1hijtFpM1682cuNgPmgysbRulPT0fRxXnMtwrSPyeCdYRokSLnuMLJTTkbUqEvDMbxm1VdcRD6Tk+T1LW2ldB66knsYdA5iNX17ebm6tN2VnPhcswMPmREPuBacb+CiapLarAj9gT6/H97dVlCNScY3mtYvRkxdZlwDKDEnanPWVLdrdkeXEGlFEazVdfPVHaVeHc3N15CUwppwOJXeK7HshAB8NuOU7J6sP4SRXuH/EvbUfMiqMmDqv5M5FNSfAj/wgAAP//UEsHCPl//NYAAQAArwEAAFBLAQIUABQACAAIAAAAAAD5f/zWAAEAAK8BAAAIAAAAAAAAAAAAAAAAAAAAAABpbmRleC5weVBLBQYAAAAAAQABADYAAAA2AQAAAAA="),
/// 			},
/// 			FunctionName: pulumi.String(name),
/// 			Runtime:      pulumi.String("python3.9"),
/// 			DiskSize:     pulumi.Int(512),
/// 			LogConfig: &fc.V3FunctionLogConfigArgs{
/// 				LogBeginRule: pulumi.String("None"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		current, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"eventName":    "CachedObjectsPushed",
/// 			"eventVersion": "1.0.0",
/// 			"notes":        "example",
/// 			"filter": map[string]interface{}{
/// 				"domain": []string{
/// 					"example.com",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = fc.NewV3Trigger(ctx, "default", &fc.V3TriggerArgs{
/// 			TriggerType:    pulumi.String("cdn_events"),
/// 			TriggerName:    pulumi.String(name),
/// 			Description:    pulumi.String("create"),
/// 			Qualifier:      pulumi.String("LATEST"),
/// 			TriggerConfig:  pulumi.String(json0),
/// 			SourceArn:      pulumi.Sprintf("acs:cdn:*:%v", current.Id),
/// 			InvocationRole: pulumi.Sprintf("acs:ram::%v:role/aliyuncdneventnotificationrole", current.Id),
/// 			FunctionName:   function.FunctionName,
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
/// import com.pulumi.alicloud.fc.V3Function;
/// import com.pulumi.alicloud.fc.V3FunctionArgs;
/// import com.pulumi.alicloud.fc.inputs.V3FunctionCodeArgs;
/// import com.pulumi.alicloud.fc.inputs.V3FunctionLogConfigArgs;
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.fc.V3Trigger;
/// import com.pulumi.alicloud.fc.V3TriggerArgs;
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
///         final var name = config.get("name").orElse("terraform-example");
///         final var functionName = config.get("functionName").orElse("TerraformTriggerResourceAPI");
///         final var triggerName = config.get("triggerName").orElse("TerraformTrigger_CDN");
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
///         final var current = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var default_ = new V3Trigger("default", V3TriggerArgs.builder()
///             .triggerType("cdn_events")
///             .triggerName(name)
///             .description("create")
///             .qualifier("LATEST")
///             .triggerConfig(serializeJson(
///                 jsonObject(
///                     jsonProperty("eventName", "CachedObjectsPushed"),
///                     jsonProperty("eventVersion", "1.0.0"),
///                     jsonProperty("notes", "example"),
///                     jsonProperty("filter", jsonObject(
///                         jsonProperty("domain", jsonArray("example.com"))
///                     ))
///                 )))
///             .sourceArn(String.format("acs:cdn:*:%s", current.id()))
///             .invocationRole(String.format("acs:ram::%s:role/aliyuncdneventnotificationrole", current.id()))
///             .functionName(function.functionName())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
///   functionName:
///     type: string
///     default: TerraformTriggerResourceAPI
///   triggerName:
///     type: string
///     default: TerraformTrigger_CDN
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
///   default:
///     type: alicloud:fc:V3Trigger
///     properties:
///       triggerType: cdn_events
///       triggerName: ${name}
///       description: create
///       qualifier: LATEST
///       triggerConfig:
///         fn::toJSON:
///           eventName: CachedObjectsPushed
///           eventVersion: 1.0.0
///           notes: example
///           filter:
///             domain:
///               - example.com
///       sourceArn: acs:cdn:*:${current.id}
///       invocationRole: acs:ram::${current.id}:role/aliyuncdneventnotificationrole
///       functionName: ${function.functionName}
/// variables:
///   current:
///     fn::invoke:
///       function: alicloud:getAccount
///       arguments: {}
/// ```
///
///
/// HTTP Trigger
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const functionName = config.get("functionName") || "TerraformTriggerResourceAPI";
/// const triggerName = config.get("triggerName") || "TerraformTrigger_HTTP";
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
/// const current = alicloud.getAccount({});
/// const _default = new alicloud.fc.V3Trigger("default", {
///     triggerType: "http",
///     triggerName: name,
///     description: "create",
///     qualifier: "LATEST",
///     triggerConfig: JSON.stringify({
///         authType: "anonymous",
///         methods: [
///             "GET",
///             "POST",
///         ],
///     }),
///     functionName: _function.functionName,
/// });
/// export const outputCalicloudFcv3TriggerInternet = alicloudFcv3Trigger["default"].httpTrigger[0].urlInternet;
/// export const outputCalicloudFcv3TriggerIntranet = alicloudFcv3Trigger["default"].httpTrigger[0].urlIntranet;
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// function_name = config.get("functionName")
/// if function_name is None:
///     function_name = "TerraformTriggerResourceAPI"
/// trigger_name = config.get("triggerName")
/// if trigger_name is None:
///     trigger_name = "TerraformTrigger_HTTP"
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
/// current = alicloud.get_account()
/// default = alicloud.fc.V3Trigger("default",
///     trigger_type="http",
///     trigger_name=name,
///     description="create",
///     qualifier="LATEST",
///     trigger_config=json.dumps({
///         "authType": "anonymous",
///         "methods": [
///             "GET",
///             "POST",
///         ],
///     }),
///     function_name=function.function_name)
/// pulumi.export("outputCalicloudFcv3TriggerInternet", alicloud_fcv3_trigger["default"]["httpTrigger"][0]["urlInternet"])
/// pulumi.export("outputCalicloudFcv3TriggerIntranet", alicloud_fcv3_trigger["default"]["httpTrigger"][0]["urlIntranet"])
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
///     var name = config.Get("name") ?? "terraform-example";
///     var functionName = config.Get("functionName") ?? "TerraformTriggerResourceAPI";
///     var triggerName = config.Get("triggerName") ?? "TerraformTrigger_HTTP";
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
///     var current = AliCloud.GetAccount.Invoke();
///
///     var @default = new AliCloud.FC.V3Trigger("default", new()
///     {
///         TriggerType = "http",
///         TriggerName = name,
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
///         FunctionName = function.FunctionName,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["outputCalicloudFcv3TriggerInternet"] = alicloudFcv3Trigger.Default.HttpTrigger[0].UrlInternet,
///         ["outputCalicloudFcv3TriggerIntranet"] = alicloudFcv3Trigger.Default.HttpTrigger[0].UrlIntranet,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
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
/// 		functionName := "TerraformTriggerResourceAPI"
/// 		if param := cfg.Get("functionName"); param != "" {
/// 			functionName = param
/// 		}
/// 		triggerName := "TerraformTrigger_HTTP"
/// 		if param := cfg.Get("triggerName"); param != "" {
/// 			triggerName = param
/// 		}
/// 		function, err := fc.NewV3Function(ctx, "function", &fc.V3FunctionArgs{
/// 			MemorySize: pulumi.Int(512),
/// 			Cpu:        pulumi.Float64(0.5),
/// 			Handler:    pulumi.String("index.Handler"),
/// 			Code: &fc.V3FunctionCodeArgs{
/// 				ZipFile: pulumi.String("UEsDBBQACAAIAAAAAAAAAAAAAAAAAAAAAAAIAAAAaW5kZXgucHmEkEFKxEAQRfd9ig9ZTCJOooIwDMwNXLqXnnQlaalUhU5lRj2KZ/FOXkESGR114bJ/P/7jV4b1xRq1hijtFpM1682cuNgPmgysbRulPT0fRxXnMtwrSPyeCdYRokSLnuMLJTTkbUqEvDMbxm1VdcRD6Tk+T1LW2ldB66knsYdA5iNX17ebm6tN2VnPhcswMPmREPuBacb+CiapLarAj9gT6/H97dVlCNScY3mtYvRkxdZlwDKDEnanPWVLdrdkeXEGlFEazVdfPVHaVeHc3N15CUwppwOJXeK7HshAB8NuOU7J6sP4SRXuH/EvbUfMiqMmDqv5M5FNSfAj/wgAAP//UEsHCPl//NYAAQAArwEAAFBLAQIUABQACAAIAAAAAAD5f/zWAAEAAK8BAAAIAAAAAAAAAAAAAAAAAAAAAABpbmRleC5weVBLBQYAAAAAAQABADYAAAA2AQAAAAA="),
/// 			},
/// 			FunctionName: pulumi.String(name),
/// 			Runtime:      pulumi.String("python3.9"),
/// 			DiskSize:     pulumi.Int(512),
/// 			LogConfig: &fc.V3FunctionLogConfigArgs{
/// 				LogBeginRule: pulumi.String("None"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"authType": "anonymous",
/// 			"methods": []string{
/// 				"GET",
/// 				"POST",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = fc.NewV3Trigger(ctx, "default", &fc.V3TriggerArgs{
/// 			TriggerType:   pulumi.String("http"),
/// 			TriggerName:   pulumi.String(name),
/// 			Description:   pulumi.String("create"),
/// 			Qualifier:     pulumi.String("LATEST"),
/// 			TriggerConfig: pulumi.String(json0),
/// 			FunctionName:  function.FunctionName,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("outputCalicloudFcv3TriggerInternet", alicloudFcv3Trigger.Default.HttpTrigger[0].UrlInternet)
/// 		ctx.Export("outputCalicloudFcv3TriggerIntranet", alicloudFcv3Trigger.Default.HttpTrigger[0].UrlIntranet)
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
/// import com.pulumi.alicloud.fc.V3Function;
/// import com.pulumi.alicloud.fc.V3FunctionArgs;
/// import com.pulumi.alicloud.fc.inputs.V3FunctionCodeArgs;
/// import com.pulumi.alicloud.fc.inputs.V3FunctionLogConfigArgs;
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.fc.V3Trigger;
/// import com.pulumi.alicloud.fc.V3TriggerArgs;
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
///         final var name = config.get("name").orElse("terraform-example");
///         final var functionName = config.get("functionName").orElse("TerraformTriggerResourceAPI");
///         final var triggerName = config.get("triggerName").orElse("TerraformTrigger_HTTP");
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
///         final var current = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var default_ = new V3Trigger("default", V3TriggerArgs.builder()
///             .triggerType("http")
///             .triggerName(name)
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
///             .functionName(function.functionName())
///             .build());
///
///         ctx.export("outputCalicloudFcv3TriggerInternet", alicloudFcv3Trigger.default().httpTrigger()[0].urlInternet());
///         ctx.export("outputCalicloudFcv3TriggerIntranet", alicloudFcv3Trigger.default().httpTrigger()[0].urlIntranet());
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
///   functionName:
///     type: string
///     default: TerraformTriggerResourceAPI
///   triggerName:
///     type: string
///     default: TerraformTrigger_HTTP
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
///   default:
///     type: alicloud:fc:V3Trigger
///     properties:
///       triggerType: http
///       triggerName: ${name}
///       description: create
///       qualifier: LATEST
///       triggerConfig:
///         fn::toJSON:
///           authType: anonymous
///           methods:
///             - GET
///             - POST
///       functionName: ${function.functionName}
/// variables:
///   current:
///     fn::invoke:
///       function: alicloud:getAccount
///       arguments: {}
/// outputs:
///   outputCalicloudFcv3TriggerInternet: ${alicloudFcv3Trigger.default.httpTrigger[0].urlInternet}
///   outputCalicloudFcv3TriggerIntranet: ${alicloudFcv3Trigger.default.httpTrigger[0].urlIntranet}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// FCV3 Trigger can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:fc/v3Trigger:V3Trigger example <function_name>:<trigger_name>
/// ```
class V3Trigger extends pulumi.CustomResource {
  /// Creation time
  late final pulumi.Output<String> createTime;
  /// Description of the trigger
  late final pulumi.Output<String?> description;
  /// Function Name
  late final pulumi.Output<String> functionName;
  /// (Available since v1.234.0) HTTP trigger information
  late final pulumi.Output<V3TriggerHttpTrigger> httpTrigger;
  /// The role required by the event source (such as OSS) to call the function.
  late final pulumi.Output<String?> invocationRole;
  /// (Available since v1.234.0) The last modified time of the trigger
  late final pulumi.Output<String> lastModifiedTime;
  /// The version or alias of the function
  late final pulumi.Output<String> qualifier;
  /// Trigger Event source ARN
  late final pulumi.Output<String> sourceArn;
  /// The state of the trigger
  late final pulumi.Output<String> status;
  /// (Available since v1.234.0) Resource identity of the function
  late final pulumi.Output<String> targetArn;
  /// Trigger configuration. The configuration varies for different types of triggers.
  late final pulumi.Output<String?> triggerConfig;
  /// (Available since v1.234.0) Trigger ID
  late final pulumi.Output<String> triggerId;
  /// Trigger Name
  late final pulumi.Output<String> triggerName;
  /// The type of the trigger. Currently, the supported types include oss, log, http, timer, tablestore, cdn_events, mns_topic and eventbridge.
  late final pulumi.Output<String> triggerType;

  /// Creates a new [V3Trigger].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [V3Trigger]. {@macro pulumi_fc_v3_trigger_v3_trigger_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  V3Trigger(
    String name, {
    V3TriggerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:fc/v3Trigger:V3Trigger',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.functionName = registerOutput<String>('functionName');
    this.httpTrigger = registerOutput<V3TriggerHttpTrigger>('httpTrigger');
    this.invocationRole = registerOutput<String?>('invocationRole');
    this.lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.qualifier = registerOutput<String>('qualifier');
    this.sourceArn = registerOutput<String>('sourceArn');
    this.status = registerOutput<String>('status');
    this.targetArn = registerOutput<String>('targetArn');
    this.triggerConfig = registerOutput<String?>('triggerConfig');
    this.triggerId = registerOutput<String>('triggerId');
    this.triggerName = registerOutput<String>('triggerName');
    this.triggerType = registerOutput<String>('triggerType');
  }
}
