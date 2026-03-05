import 'package:pulumi/pulumi.dart' as pulumi;
import 'v3_async_invoke_config_args.dart';
import 'v3_async_invoke_config_destination_config.dart';
import 'v3_async_invoke_config_state.dart';

/// Provides a FCV3 Async Invoke Config resource.
///
/// Function Asynchronous Configuration.
///
/// For information about FCV3 Async Invoke Config and how to use it, see [What is Async Invoke Config](https://www.alibabacloud.com/help/en/functioncompute/developer-reference/api-fc-2023-03-30-getasyncinvokeconfig).
///
/// &gt; **NOTE:** Available since v1.228.0.
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
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const current = alicloud.getAccount({});
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
/// const function1 = new alicloud.fc.V3Function("function1", {
///     memorySize: 512,
///     cpu: 0.5,
///     handler: "index.Handler",
///     code: {
///         zipFile: "UEsDBBQACAAIAAAAAAAAAAAAAAAAAAAAAAAIAAAAaW5kZXgucHmEkEFKxEAQRfd9ig9ZTCJOooIwDMwNXLqXnnQlaalUhU5lRj2KZ/FOXkESGR114bJ/P/7jV4b1xRq1hijtFpM1682cuNgPmgysbRulPT0fRxXnMtwrSPyeCdYRokSLnuMLJTTkbUqEvDMbxm1VdcRD6Tk+T1LW2ldB66knsYdA5iNX17ebm6tN2VnPhcswMPmREPuBacb+CiapLarAj9gT6/H97dVlCNScY3mtYvRkxdZlwDKDEnanPWVLdrdkeXEGlFEazVdfPVHaVeHc3N15CUwppwOJXeK7HshAB8NuOU7J6sP4SRXuH/EvbUfMiqMmDqv5M5FNSfAj/wgAAP//UEsHCPl//NYAAQAArwEAAFBLAQIUABQACAAIAAAAAAD5f/zWAAEAAK8BAAAIAAAAAAAAAAAAAAAAAAAAAABpbmRleC5weVBLBQYAAAAAAQABADYAAAA2AQAAAAA=",
///     },
///     functionName: std.format({
///         input: "%s_%s",
///         args: [
///             name,
///             "update1",
///         ],
///     }).then(invoke => invoke.result),
///     runtime: "python3.9",
///     diskSize: 512,
///     logConfig: {
///         logBeginRule: "None",
///     },
/// });
/// const function2 = new alicloud.fc.V3Function("function2", {
///     memorySize: 512,
///     cpu: 0.5,
///     handler: "index.Handler",
///     code: {
///         zipFile: "UEsDBBQACAAIAAAAAAAAAAAAAAAAAAAAAAAIAAAAaW5kZXgucHmEkEFKxEAQRfd9ig9ZTCJOooIwDMwNXLqXnnQlaalUhU5lRj2KZ/FOXkESGR114bJ/P/7jV4b1xRq1hijtFpM1682cuNgPmgysbRulPT0fRxXnMtwrSPyeCdYRokSLnuMLJTTkbUqEvDMbxm1VdcRD6Tk+T1LW2ldB66knsYdA5iNX17ebm6tN2VnPhcswMPmREPuBacb+CiapLarAj9gT6/H97dVlCNScY3mtYvRkxdZlwDKDEnanPWVLdrdkeXEGlFEazVdfPVHaVeHc3N15CUwppwOJXeK7HshAB8NuOU7J6sP4SRXuH/EvbUfMiqMmDqv5M5FNSfAj/wgAAP//UEsHCPl//NYAAQAArwEAAFBLAQIUABQACAAIAAAAAAD5f/zWAAEAAK8BAAAIAAAAAAAAAAAAAAAAAAAAAABpbmRleC5weVBLBQYAAAAAAQABADYAAAA2AQAAAAA=",
///     },
///     functionName: std.format({
///         input: "%s_%s",
///         args: [
///             name,
///             "update2",
///         ],
///     }).then(invoke => invoke.result),
///     runtime: "python3.9",
///     diskSize: 512,
///     logConfig: {
///         logBeginRule: "None",
///     },
/// });
/// const _default = new alicloud.fc.V3AsyncInvokeConfig("default", {
///     maxAsyncRetryAttempts: 1,
///     maxAsyncEventAgeInSeconds: 1,
///     asyncTask: true,
///     functionName: _function.functionName,
///     destinationConfig: {
///         onFailure: {
///             destination: pulumi.all([current, function1.functionName]).apply(([current, functionName]) => `acs:fc:eu-central-1:${current.id}:functions/${functionName}`),
///         },
///         onSuccess: {
///             destination: pulumi.all([current, function1.functionName]).apply(([current, functionName]) => `acs:fc:eu-central-1:${current.id}:functions/${functionName}`),
///         },
///     },
///     qualifier: "LATEST",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// current = alicloud.get_account()
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
/// function1 = alicloud.fc.V3Function("function1",
///     memory_size=512,
///     cpu=0.5,
///     handler="index.Handler",
///     code={
///         "zip_file": "UEsDBBQACAAIAAAAAAAAAAAAAAAAAAAAAAAIAAAAaW5kZXgucHmEkEFKxEAQRfd9ig9ZTCJOooIwDMwNXLqXnnQlaalUhU5lRj2KZ/FOXkESGR114bJ/P/7jV4b1xRq1hijtFpM1682cuNgPmgysbRulPT0fRxXnMtwrSPyeCdYRokSLnuMLJTTkbUqEvDMbxm1VdcRD6Tk+T1LW2ldB66knsYdA5iNX17ebm6tN2VnPhcswMPmREPuBacb+CiapLarAj9gT6/H97dVlCNScY3mtYvRkxdZlwDKDEnanPWVLdrdkeXEGlFEazVdfPVHaVeHc3N15CUwppwOJXeK7HshAB8NuOU7J6sP4SRXuH/EvbUfMiqMmDqv5M5FNSfAj/wgAAP//UEsHCPl//NYAAQAArwEAAFBLAQIUABQACAAIAAAAAAD5f/zWAAEAAK8BAAAIAAAAAAAAAAAAAAAAAAAAAABpbmRleC5weVBLBQYAAAAAAQABADYAAAA2AQAAAAA=",
///     },
///     function_name=std.format(input="%s_%s",
///         args=[
///             name,
///             "update1",
///         ]).result,
///     runtime="python3.9",
///     disk_size=512,
///     log_config={
///         "log_begin_rule": "None",
///     })
/// function2 = alicloud.fc.V3Function("function2",
///     memory_size=512,
///     cpu=0.5,
///     handler="index.Handler",
///     code={
///         "zip_file": "UEsDBBQACAAIAAAAAAAAAAAAAAAAAAAAAAAIAAAAaW5kZXgucHmEkEFKxEAQRfd9ig9ZTCJOooIwDMwNXLqXnnQlaalUhU5lRj2KZ/FOXkESGR114bJ/P/7jV4b1xRq1hijtFpM1682cuNgPmgysbRulPT0fRxXnMtwrSPyeCdYRokSLnuMLJTTkbUqEvDMbxm1VdcRD6Tk+T1LW2ldB66knsYdA5iNX17ebm6tN2VnPhcswMPmREPuBacb+CiapLarAj9gT6/H97dVlCNScY3mtYvRkxdZlwDKDEnanPWVLdrdkeXEGlFEazVdfPVHaVeHc3N15CUwppwOJXeK7HshAB8NuOU7J6sP4SRXuH/EvbUfMiqMmDqv5M5FNSfAj/wgAAP//UEsHCPl//NYAAQAArwEAAFBLAQIUABQACAAIAAAAAAD5f/zWAAEAAK8BAAAIAAAAAAAAAAAAAAAAAAAAAABpbmRleC5weVBLBQYAAAAAAQABADYAAAA2AQAAAAA=",
///     },
///     function_name=std.format(input="%s_%s",
///         args=[
///             name,
///             "update2",
///         ]).result,
///     runtime="python3.9",
///     disk_size=512,
///     log_config={
///         "log_begin_rule": "None",
///     })
/// default = alicloud.fc.V3AsyncInvokeConfig("default",
///     max_async_retry_attempts=1,
///     max_async_event_age_in_seconds=1,
///     async_task=True,
///     function_name=function.function_name,
///     destination_config={
///         "on_failure": {
///             "destination": function1.function_name.apply(lambda function_name: f"acs:fc:eu-central-1:{current.id}:functions/{function_name}"),
///         },
///         "on_success": {
///             "destination": function1.function_name.apply(lambda function_name: f"acs:fc:eu-central-1:{current.id}:functions/{function_name}"),
///         },
///     },
///     qualifier="LATEST")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var current = AliCloud.GetAccount.Invoke();
///
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
///     var function1 = new AliCloud.FC.V3Function("function1", new()
///     {
///         MemorySize = 512,
///         Cpu = 0.5,
///         Handler = "index.Handler",
///         Code = new AliCloud.FC.Inputs.V3FunctionCodeArgs
///         {
///             ZipFile = "UEsDBBQACAAIAAAAAAAAAAAAAAAAAAAAAAAIAAAAaW5kZXgucHmEkEFKxEAQRfd9ig9ZTCJOooIwDMwNXLqXnnQlaalUhU5lRj2KZ/FOXkESGR114bJ/P/7jV4b1xRq1hijtFpM1682cuNgPmgysbRulPT0fRxXnMtwrSPyeCdYRokSLnuMLJTTkbUqEvDMbxm1VdcRD6Tk+T1LW2ldB66knsYdA5iNX17ebm6tN2VnPhcswMPmREPuBacb+CiapLarAj9gT6/H97dVlCNScY3mtYvRkxdZlwDKDEnanPWVLdrdkeXEGlFEazVdfPVHaVeHc3N15CUwppwOJXeK7HshAB8NuOU7J6sP4SRXuH/EvbUfMiqMmDqv5M5FNSfAj/wgAAP//UEsHCPl//NYAAQAArwEAAFBLAQIUABQACAAIAAAAAAD5f/zWAAEAAK8BAAAIAAAAAAAAAAAAAAAAAAAAAABpbmRleC5weVBLBQYAAAAAAQABADYAAAA2AQAAAAA=",
///         },
///         FunctionName = Std.Format.Invoke(new()
///         {
///             Input = "%s_%s",
///             Args = new[]
///             {
///                 name,
///                 "update1",
///             },
///         }).Apply(invoke => invoke.Result),
///         Runtime = "python3.9",
///         DiskSize = 512,
///         LogConfig = new AliCloud.FC.Inputs.V3FunctionLogConfigArgs
///         {
///             LogBeginRule = "None",
///         },
///     });
///
///     var function2 = new AliCloud.FC.V3Function("function2", new()
///     {
///         MemorySize = 512,
///         Cpu = 0.5,
///         Handler = "index.Handler",
///         Code = new AliCloud.FC.Inputs.V3FunctionCodeArgs
///         {
///             ZipFile = "UEsDBBQACAAIAAAAAAAAAAAAAAAAAAAAAAAIAAAAaW5kZXgucHmEkEFKxEAQRfd9ig9ZTCJOooIwDMwNXLqXnnQlaalUhU5lRj2KZ/FOXkESGR114bJ/P/7jV4b1xRq1hijtFpM1682cuNgPmgysbRulPT0fRxXnMtwrSPyeCdYRokSLnuMLJTTkbUqEvDMbxm1VdcRD6Tk+T1LW2ldB66knsYdA5iNX17ebm6tN2VnPhcswMPmREPuBacb+CiapLarAj9gT6/H97dVlCNScY3mtYvRkxdZlwDKDEnanPWVLdrdkeXEGlFEazVdfPVHaVeHc3N15CUwppwOJXeK7HshAB8NuOU7J6sP4SRXuH/EvbUfMiqMmDqv5M5FNSfAj/wgAAP//UEsHCPl//NYAAQAArwEAAFBLAQIUABQACAAIAAAAAAD5f/zWAAEAAK8BAAAIAAAAAAAAAAAAAAAAAAAAAABpbmRleC5weVBLBQYAAAAAAQABADYAAAA2AQAAAAA=",
///         },
///         FunctionName = Std.Format.Invoke(new()
///         {
///             Input = "%s_%s",
///             Args = new[]
///             {
///                 name,
///                 "update2",
///             },
///         }).Apply(invoke => invoke.Result),
///         Runtime = "python3.9",
///         DiskSize = 512,
///         LogConfig = new AliCloud.FC.Inputs.V3FunctionLogConfigArgs
///         {
///             LogBeginRule = "None",
///         },
///     });
///
///     var @default = new AliCloud.FC.V3AsyncInvokeConfig("default", new()
///     {
///         MaxAsyncRetryAttempts = 1,
///         MaxAsyncEventAgeInSeconds = 1,
///         AsyncTask = true,
///         FunctionName = function.FunctionName,
///         DestinationConfig = new AliCloud.FC.Inputs.V3AsyncInvokeConfigDestinationConfigArgs
///         {
///             OnFailure = new AliCloud.FC.Inputs.V3AsyncInvokeConfigDestinationConfigOnFailureArgs
///             {
///                 Destination = Output.Tuple(current, function1.FunctionName).Apply(values =>
///                 {
///                     var current = values.Item1;
///                     var functionName = values.Item2;
///                     return $"acs:fc:eu-central-1:{current.Apply(getAccountResult => getAccountResult.Id)}:functions/{functionName}";
///                 }),
///             },
///             OnSuccess = new AliCloud.FC.Inputs.V3AsyncInvokeConfigDestinationConfigOnSuccessArgs
///             {
///                 Destination = Output.Tuple(current, function1.FunctionName).Apply(values =>
///                 {
///                     var current = values.Item1;
///                     var functionName = values.Item2;
///                     return $"acs:fc:eu-central-1:{current.Apply(getAccountResult => getAccountResult.Id)}:functions/{functionName}";
///                 }),
///             },
///         },
///         Qualifier = "LATEST",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/fc"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
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
/// 		current, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
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
/// 		invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s_%s",
/// 			Args: []string{
/// 				name,
/// 				"update1",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		function1, err := fc.NewV3Function(ctx, "function1", &fc.V3FunctionArgs{
/// 			MemorySize: pulumi.Int(512),
/// 			Cpu:        pulumi.Float64(0.5),
/// 			Handler:    pulumi.String("index.Handler"),
/// 			Code: &fc.V3FunctionCodeArgs{
/// 				ZipFile: pulumi.String("UEsDBBQACAAIAAAAAAAAAAAAAAAAAAAAAAAIAAAAaW5kZXgucHmEkEFKxEAQRfd9ig9ZTCJOooIwDMwNXLqXnnQlaalUhU5lRj2KZ/FOXkESGR114bJ/P/7jV4b1xRq1hijtFpM1682cuNgPmgysbRulPT0fRxXnMtwrSPyeCdYRokSLnuMLJTTkbUqEvDMbxm1VdcRD6Tk+T1LW2ldB66knsYdA5iNX17ebm6tN2VnPhcswMPmREPuBacb+CiapLarAj9gT6/H97dVlCNScY3mtYvRkxdZlwDKDEnanPWVLdrdkeXEGlFEazVdfPVHaVeHc3N15CUwppwOJXeK7HshAB8NuOU7J6sP4SRXuH/EvbUfMiqMmDqv5M5FNSfAj/wgAAP//UEsHCPl//NYAAQAArwEAAFBLAQIUABQACAAIAAAAAAD5f/zWAAEAAK8BAAAIAAAAAAAAAAAAAAAAAAAAAABpbmRleC5weVBLBQYAAAAAAQABADYAAAA2AQAAAAA="),
/// 			},
/// 			FunctionName: pulumi.String(invokeFormat.Result),
/// 			Runtime:      pulumi.String("python3.9"),
/// 			DiskSize:     pulumi.Int(512),
/// 			LogConfig: &fc.V3FunctionLogConfigArgs{
/// 				LogBeginRule: pulumi.String("None"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat1, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s_%s",
/// 			Args: []string{
/// 				name,
/// 				"update2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = fc.NewV3Function(ctx, "function2", &fc.V3FunctionArgs{
/// 			MemorySize: pulumi.Int(512),
/// 			Cpu:        pulumi.Float64(0.5),
/// 			Handler:    pulumi.String("index.Handler"),
/// 			Code: &fc.V3FunctionCodeArgs{
/// 				ZipFile: pulumi.String("UEsDBBQACAAIAAAAAAAAAAAAAAAAAAAAAAAIAAAAaW5kZXgucHmEkEFKxEAQRfd9ig9ZTCJOooIwDMwNXLqXnnQlaalUhU5lRj2KZ/FOXkESGR114bJ/P/7jV4b1xRq1hijtFpM1682cuNgPmgysbRulPT0fRxXnMtwrSPyeCdYRokSLnuMLJTTkbUqEvDMbxm1VdcRD6Tk+T1LW2ldB66knsYdA5iNX17ebm6tN2VnPhcswMPmREPuBacb+CiapLarAj9gT6/H97dVlCNScY3mtYvRkxdZlwDKDEnanPWVLdrdkeXEGlFEazVdfPVHaVeHc3N15CUwppwOJXeK7HshAB8NuOU7J6sP4SRXuH/EvbUfMiqMmDqv5M5FNSfAj/wgAAP//UEsHCPl//NYAAQAArwEAAFBLAQIUABQACAAIAAAAAAD5f/zWAAEAAK8BAAAIAAAAAAAAAAAAAAAAAAAAAABpbmRleC5weVBLBQYAAAAAAQABADYAAAA2AQAAAAA="),
/// 			},
/// 			FunctionName: pulumi.String(invokeFormat1.Result),
/// 			Runtime:      pulumi.String("python3.9"),
/// 			DiskSize:     pulumi.Int(512),
/// 			LogConfig: &fc.V3FunctionLogConfigArgs{
/// 				LogBeginRule: pulumi.String("None"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = fc.NewV3AsyncInvokeConfig(ctx, "default", &fc.V3AsyncInvokeConfigArgs{
/// 			MaxAsyncRetryAttempts:     pulumi.Int(1),
/// 			MaxAsyncEventAgeInSeconds: pulumi.Int(1),
/// 			AsyncTask:                 pulumi.Bool(true),
/// 			FunctionName:              function.FunctionName,
/// 			DestinationConfig: &fc.V3AsyncInvokeConfigDestinationConfigArgs{
/// 				OnFailure: &fc.V3AsyncInvokeConfigDestinationConfigOnFailureArgs{
/// 					Destination: function1.FunctionName.ApplyT(func(functionName string) (string, error) {
/// 						return fmt.Sprintf("acs:fc:eu-central-1:%v:functions/%v", current.Id, functionName), nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 				OnSuccess: &fc.V3AsyncInvokeConfigDestinationConfigOnSuccessArgs{
/// 					Destination: function1.FunctionName.ApplyT(func(functionName string) (string, error) {
/// 						return fmt.Sprintf("acs:fc:eu-central-1:%v:functions/%v", current.Id, functionName), nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 			},
/// 			Qualifier: pulumi.String("LATEST"),
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.fc.V3Function;
/// import com.pulumi.alicloud.fc.V3FunctionArgs;
/// import com.pulumi.alicloud.fc.inputs.V3FunctionCodeArgs;
/// import com.pulumi.alicloud.fc.inputs.V3FunctionLogConfigArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
/// import com.pulumi.alicloud.fc.V3AsyncInvokeConfig;
/// import com.pulumi.alicloud.fc.V3AsyncInvokeConfigArgs;
/// import com.pulumi.alicloud.fc.inputs.V3AsyncInvokeConfigDestinationConfigArgs;
/// import com.pulumi.alicloud.fc.inputs.V3AsyncInvokeConfigDestinationConfigOnFailureArgs;
/// import com.pulumi.alicloud.fc.inputs.V3AsyncInvokeConfigDestinationConfigOnSuccessArgs;
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
///         final var current = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
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
///         var function1 = new V3Function("function1", V3FunctionArgs.builder()
///             .memorySize(512)
///             .cpu(0.5)
///             .handler("index.Handler")
///             .code(V3FunctionCodeArgs.builder()
///                 .zipFile("UEsDBBQACAAIAAAAAAAAAAAAAAAAAAAAAAAIAAAAaW5kZXgucHmEkEFKxEAQRfd9ig9ZTCJOooIwDMwNXLqXnnQlaalUhU5lRj2KZ/FOXkESGR114bJ/P/7jV4b1xRq1hijtFpM1682cuNgPmgysbRulPT0fRxXnMtwrSPyeCdYRokSLnuMLJTTkbUqEvDMbxm1VdcRD6Tk+T1LW2ldB66knsYdA5iNX17ebm6tN2VnPhcswMPmREPuBacb+CiapLarAj9gT6/H97dVlCNScY3mtYvRkxdZlwDKDEnanPWVLdrdkeXEGlFEazVdfPVHaVeHc3N15CUwppwOJXeK7HshAB8NuOU7J6sP4SRXuH/EvbUfMiqMmDqv5M5FNSfAj/wgAAP//UEsHCPl//NYAAQAArwEAAFBLAQIUABQACAAIAAAAAAD5f/zWAAEAAK8BAAAIAAAAAAAAAAAAAAAAAAAAAABpbmRleC5weVBLBQYAAAAAAQABADYAAAA2AQAAAAA=")
///                 .build())
///             .functionName(StdFunctions.format(FormatArgs.builder()
///                 .input("%s_%s")
///                 .args(
///                     name,
///                     "update1")
///                 .build()).result())
///             .runtime("python3.9")
///             .diskSize(512)
///             .logConfig(V3FunctionLogConfigArgs.builder()
///                 .logBeginRule("None")
///                 .build())
///             .build());
///
///         var function2 = new V3Function("function2", V3FunctionArgs.builder()
///             .memorySize(512)
///             .cpu(0.5)
///             .handler("index.Handler")
///             .code(V3FunctionCodeArgs.builder()
///                 .zipFile("UEsDBBQACAAIAAAAAAAAAAAAAAAAAAAAAAAIAAAAaW5kZXgucHmEkEFKxEAQRfd9ig9ZTCJOooIwDMwNXLqXnnQlaalUhU5lRj2KZ/FOXkESGR114bJ/P/7jV4b1xRq1hijtFpM1682cuNgPmgysbRulPT0fRxXnMtwrSPyeCdYRokSLnuMLJTTkbUqEvDMbxm1VdcRD6Tk+T1LW2ldB66knsYdA5iNX17ebm6tN2VnPhcswMPmREPuBacb+CiapLarAj9gT6/H97dVlCNScY3mtYvRkxdZlwDKDEnanPWVLdrdkeXEGlFEazVdfPVHaVeHc3N15CUwppwOJXeK7HshAB8NuOU7J6sP4SRXuH/EvbUfMiqMmDqv5M5FNSfAj/wgAAP//UEsHCPl//NYAAQAArwEAAFBLAQIUABQACAAIAAAAAAD5f/zWAAEAAK8BAAAIAAAAAAAAAAAAAAAAAAAAAABpbmRleC5weVBLBQYAAAAAAQABADYAAAA2AQAAAAA=")
///                 .build())
///             .functionName(StdFunctions.format(FormatArgs.builder()
///                 .input("%s_%s")
///                 .args(
///                     name,
///                     "update2")
///                 .build()).result())
///             .runtime("python3.9")
///             .diskSize(512)
///             .logConfig(V3FunctionLogConfigArgs.builder()
///                 .logBeginRule("None")
///                 .build())
///             .build());
///
///         var default_ = new V3AsyncInvokeConfig("default", V3AsyncInvokeConfigArgs.builder()
///             .maxAsyncRetryAttempts(1)
///             .maxAsyncEventAgeInSeconds(1)
///             .asyncTask(true)
///             .functionName(function.functionName())
///             .destinationConfig(V3AsyncInvokeConfigDestinationConfigArgs.builder()
///                 .onFailure(V3AsyncInvokeConfigDestinationConfigOnFailureArgs.builder()
///                     .destination(function1.functionName().applyValue(_functionName -> String.format("acs:fc:eu-central-1:%s:functions/%s", current.id(),_functionName)))
///                     .build())
///                 .onSuccess(V3AsyncInvokeConfigDestinationConfigOnSuccessArgs.builder()
///                     .destination(function1.functionName().applyValue(_functionName -> String.format("acs:fc:eu-central-1:%s:functions/%s", current.id(),_functionName)))
///                     .build())
///                 .build())
///             .qualifier("LATEST")
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
///   function1:
///     type: alicloud:fc:V3Function
///     properties:
///       memorySize: '512'
///       cpu: 0.5
///       handler: index.Handler
///       code:
///         zipFile: UEsDBBQACAAIAAAAAAAAAAAAAAAAAAAAAAAIAAAAaW5kZXgucHmEkEFKxEAQRfd9ig9ZTCJOooIwDMwNXLqXnnQlaalUhU5lRj2KZ/FOXkESGR114bJ/P/7jV4b1xRq1hijtFpM1682cuNgPmgysbRulPT0fRxXnMtwrSPyeCdYRokSLnuMLJTTkbUqEvDMbxm1VdcRD6Tk+T1LW2ldB66knsYdA5iNX17ebm6tN2VnPhcswMPmREPuBacb+CiapLarAj9gT6/H97dVlCNScY3mtYvRkxdZlwDKDEnanPWVLdrdkeXEGlFEazVdfPVHaVeHc3N15CUwppwOJXeK7HshAB8NuOU7J6sP4SRXuH/EvbUfMiqMmDqv5M5FNSfAj/wgAAP//UEsHCPl//NYAAQAArwEAAFBLAQIUABQACAAIAAAAAAD5f/zWAAEAAK8BAAAIAAAAAAAAAAAAAAAAAAAAAABpbmRleC5weVBLBQYAAAAAAQABADYAAAA2AQAAAAA=
///       functionName:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s_%s'
///             args:
///               - ${name}
///               - update1
///           return: result
///       runtime: python3.9
///       diskSize: '512'
///       logConfig:
///         logBeginRule: None
///   function2:
///     type: alicloud:fc:V3Function
///     properties:
///       memorySize: '512'
///       cpu: 0.5
///       handler: index.Handler
///       code:
///         zipFile: UEsDBBQACAAIAAAAAAAAAAAAAAAAAAAAAAAIAAAAaW5kZXgucHmEkEFKxEAQRfd9ig9ZTCJOooIwDMwNXLqXnnQlaalUhU5lRj2KZ/FOXkESGR114bJ/P/7jV4b1xRq1hijtFpM1682cuNgPmgysbRulPT0fRxXnMtwrSPyeCdYRokSLnuMLJTTkbUqEvDMbxm1VdcRD6Tk+T1LW2ldB66knsYdA5iNX17ebm6tN2VnPhcswMPmREPuBacb+CiapLarAj9gT6/H97dVlCNScY3mtYvRkxdZlwDKDEnanPWVLdrdkeXEGlFEazVdfPVHaVeHc3N15CUwppwOJXeK7HshAB8NuOU7J6sP4SRXuH/EvbUfMiqMmDqv5M5FNSfAj/wgAAP//UEsHCPl//NYAAQAArwEAAFBLAQIUABQACAAIAAAAAAD5f/zWAAEAAK8BAAAIAAAAAAAAAAAAAAAAAAAAAABpbmRleC5weVBLBQYAAAAAAQABADYAAAA2AQAAAAA=
///       functionName:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s_%s'
///             args:
///               - ${name}
///               - update2
///           return: result
///       runtime: python3.9
///       diskSize: '512'
///       logConfig:
///         logBeginRule: None
///   default:
///     type: alicloud:fc:V3AsyncInvokeConfig
///     properties:
///       maxAsyncRetryAttempts: '1'
///       maxAsyncEventAgeInSeconds: '1'
///       asyncTask: 'true'
///       functionName: ${function.functionName}
///       destinationConfig:
///         onFailure:
///           destination: acs:fc:eu-central-1:${current.id}:functions/${function1.functionName}
///         onSuccess:
///           destination: acs:fc:eu-central-1:${current.id}:functions/${function1.functionName}
///       qualifier: LATEST
/// variables:
///   current:
///     fn::invoke:
///       function: alicloud:getAccount
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// FCV3 Async Invoke Config can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:fc/v3AsyncInvokeConfig:V3AsyncInvokeConfig example <id>
/// ```
class V3AsyncInvokeConfig extends pulumi.CustomResource {
  /// Whether to enable an asynchronous task
  late final pulumi.Output<bool?> asyncTask;
  /// The creation time of the resource
  late final pulumi.Output<String> createTime;
  /// Target Configuration See `destination_config` below.
  late final pulumi.Output<V3AsyncInvokeConfigDestinationConfig?> destinationConfig;
  /// (Available since v1.234.0) Function resource identification
  late final pulumi.Output<String> functionArn;
  /// Function Name
  late final pulumi.Output<String> functionName;
  /// (Available since v1.234.0) Last modification time
  late final pulumi.Output<String> lastModifiedTime;
  /// Event maximum survival time
  late final pulumi.Output<int?> maxAsyncEventAgeInSeconds;
  /// Number of Asynchronous call retries
  late final pulumi.Output<int?> maxAsyncRetryAttempts;
  /// Function version or alias
  late final pulumi.Output<String?> qualifier;

  /// Creates a new [V3AsyncInvokeConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [V3AsyncInvokeConfig]. {@macro pulumi_fc_v3_async_invoke_config_v3_async_invoke_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  V3AsyncInvokeConfig(
    String name, {
    V3AsyncInvokeConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:fc/v3AsyncInvokeConfig:V3AsyncInvokeConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    asyncTask = registerOutput<bool?>('asyncTask');
    createTime = registerOutput<String>('createTime');
    destinationConfig = registerOutput<V3AsyncInvokeConfigDestinationConfig?>('destinationConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V3AsyncInvokeConfigDestinationConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    functionArn = registerOutput<String>('functionArn');
    functionName = registerOutput<String>('functionName');
    lastModifiedTime = registerOutput<String>('lastModifiedTime');
    maxAsyncEventAgeInSeconds = registerOutput<int?>('maxAsyncEventAgeInSeconds');
    maxAsyncRetryAttempts = registerOutput<int?>('maxAsyncRetryAttempts');
    qualifier = registerOutput<String?>('qualifier');
  }

  /// Gets an existing [V3AsyncInvokeConfig] resource's state with the given [name] and [id].
  static V3AsyncInvokeConfig get(
    String name,
    pulumi.Input<String> id, {
    V3AsyncInvokeConfigState? state,
  }) {
    return V3AsyncInvokeConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  V3AsyncInvokeConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:fc/v3AsyncInvokeConfig:V3AsyncInvokeConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    asyncTask = registerOutput<bool?>('asyncTask');
    createTime = registerOutput<String>('createTime');
    destinationConfig = registerOutput<V3AsyncInvokeConfigDestinationConfig?>('destinationConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V3AsyncInvokeConfigDestinationConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    functionArn = registerOutput<String>('functionArn');
    functionName = registerOutput<String>('functionName');
    lastModifiedTime = registerOutput<String>('lastModifiedTime');
    maxAsyncEventAgeInSeconds = registerOutput<int?>('maxAsyncEventAgeInSeconds');
    maxAsyncRetryAttempts = registerOutput<int?>('maxAsyncRetryAttempts');
    qualifier = registerOutput<String?>('qualifier');
  }
}
