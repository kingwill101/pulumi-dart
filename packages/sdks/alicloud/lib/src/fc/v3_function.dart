import 'package:pulumi/pulumi.dart' as pulumi;
import 'v3_function_args.dart';
import 'v3_function_code.dart';
import 'v3_function_custom_container_config.dart';
import 'v3_function_custom_dns.dart';
import 'v3_function_custom_runtime_config.dart';
import 'v3_function_gpu_config.dart';
import 'v3_function_instance_lifecycle_config.dart';
import 'v3_function_invocation_restriction.dart';
import 'v3_function_log_config.dart';
import 'v3_function_nas_config.dart';
import 'v3_function_oss_mount_config.dart';
import 'v3_function_state.dart';
import 'v3_function_tracing_config.dart';
import 'v3_function_vpc_config.dart';

/// Provides a Function Compute Service V3 (FCV3) Function resource.
///
/// The resource scheduling and running of Function Compute is based on functions. The FC function consists of function code and function configuration.
///
/// For information about Function Compute Service V3 (FCV3) Function and how to use it, see [What is Function](https://www.alibabacloud.com/help/en/functioncompute/developer-reference/api-fc-2023-03-30-getfunction).
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
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = new random.index.Uuid("default", {});
/// const defaultBucket = new alicloud.oss.Bucket("default", {bucket: `${name}-${_default.result}`});
/// const defaultBucketObject = new alicloud.oss.BucketObject("default", {
///     bucket: defaultBucket.bucket,
///     key: "FCV3Py39.zip",
///     content: "print('hello')",
/// });
/// const defaultV3Function = new alicloud.fc.V3Function("default", {
///     description: "Create",
///     memorySize: 512,
///     layers: ["acs:fc:cn-shanghai:official:layers/Python39-Aliyun-SDK/versions/3"],
///     timeout: 3,
///     runtime: "custom.debian10",
///     handler: "index.handler",
///     diskSize: 512,
///     customRuntimeConfig: {
///         commands: [
///             "python",
///             "-c",
///             "example",
///         ],
///         args: [
///             "app.py",
///             "xx",
///             "x",
///         ],
///         port: 9000,
///         healthCheckConfig: {
///             httpGetUrl: "/ready",
///             initialDelaySeconds: 1,
///             periodSeconds: 10,
///             successThreshold: 1,
///             timeoutSeconds: 1,
///             failureThreshold: 3,
///         },
///     },
///     logConfig: {
///         logBeginRule: "None",
///     },
///     code: {
///         ossBucketName: defaultBucket.bucket,
///         ossObjectName: defaultBucketObject.key,
///         checksum: "4270285996107335518",
///     },
///     instanceLifecycleConfig: {
///         initializer: {
///             timeout: 1,
///             handler: "index.init",
///         },
///         preStop: {
///             timeout: 1,
///             handler: "index.stop",
///         },
///     },
///     cpu: 0.5,
///     instanceConcurrency: 2,
///     functionName: `${name}-${_default.result}`,
///     environmentVariables: {
///         EnvKey: "EnvVal",
///     },
///     internetAccess: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = random.index.Uuid("default")
/// default_bucket = alicloud.oss.Bucket("default", bucket=f"{name}-{default['result']}")
/// default_bucket_object = alicloud.oss.BucketObject("default",
///     bucket=default_bucket.bucket,
///     key="FCV3Py39.zip",
///     content="print('hello')")
/// default_v3_function = alicloud.fc.V3Function("default",
///     description="Create",
///     memory_size=512,
///     layers=["acs:fc:cn-shanghai:official:layers/Python39-Aliyun-SDK/versions/3"],
///     timeout=3,
///     runtime="custom.debian10",
///     handler="index.handler",
///     disk_size=512,
///     custom_runtime_config={
///         "commands": [
///             "python",
///             "-c",
///             "example",
///         ],
///         "args": [
///             "app.py",
///             "xx",
///             "x",
///         ],
///         "port": 9000,
///         "health_check_config": {
///             "http_get_url": "/ready",
///             "initial_delay_seconds": 1,
///             "period_seconds": 10,
///             "success_threshold": 1,
///             "timeout_seconds": 1,
///             "failure_threshold": 3,
///         },
///     },
///     log_config={
///         "log_begin_rule": "None",
///     },
///     code={
///         "oss_bucket_name": default_bucket.bucket,
///         "oss_object_name": default_bucket_object.key,
///         "checksum": "4270285996107335518",
///     },
///     instance_lifecycle_config={
///         "initializer": {
///             "timeout": 1,
///             "handler": "index.init",
///         },
///         "pre_stop": {
///             "timeout": 1,
///             "handler": "index.stop",
///         },
///     },
///     cpu=0.5,
///     instance_concurrency=2,
///     function_name=f"{name}-{default['result']}",
///     environment_variables={
///         "EnvKey": "EnvVal",
///     },
///     internet_access=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new Random.Index.Uuid("default");
///
///     var defaultBucket = new AliCloud.Oss.Bucket("default", new()
///     {
///         BucketName = $"{name}-{@default.Result}",
///     });
///
///     var defaultBucketObject = new AliCloud.Oss.BucketObject("default", new()
///     {
///         Bucket = defaultBucket.BucketName,
///         Key = "FCV3Py39.zip",
///         Content = "print('hello')",
///     });
///
///     var defaultV3Function = new AliCloud.FC.V3Function("default", new()
///     {
///         Description = "Create",
///         MemorySize = 512,
///         Layers = new[]
///         {
///             "acs:fc:cn-shanghai:official:layers/Python39-Aliyun-SDK/versions/3",
///         },
///         Timeout = 3,
///         Runtime = "custom.debian10",
///         Handler = "index.handler",
///         DiskSize = 512,
///         CustomRuntimeConfig = new AliCloud.FC.Inputs.V3FunctionCustomRuntimeConfigArgs
///         {
///             Commands = new[]
///             {
///                 "python",
///                 "-c",
///                 "example",
///             },
///             Args = new[]
///             {
///                 "app.py",
///                 "xx",
///                 "x",
///             },
///             Port = 9000,
///             HealthCheckConfig = new AliCloud.FC.Inputs.V3FunctionCustomRuntimeConfigHealthCheckConfigArgs
///             {
///                 HttpGetUrl = "/ready",
///                 InitialDelaySeconds = 1,
///                 PeriodSeconds = 10,
///                 SuccessThreshold = 1,
///                 TimeoutSeconds = 1,
///                 FailureThreshold = 3,
///             },
///         },
///         LogConfig = new AliCloud.FC.Inputs.V3FunctionLogConfigArgs
///         {
///             LogBeginRule = "None",
///         },
///         Code = new AliCloud.FC.Inputs.V3FunctionCodeArgs
///         {
///             OssBucketName = defaultBucket.BucketName,
///             OssObjectName = defaultBucketObject.Key,
///             Checksum = "4270285996107335518",
///         },
///         InstanceLifecycleConfig = new AliCloud.FC.Inputs.V3FunctionInstanceLifecycleConfigArgs
///         {
///             Initializer = new AliCloud.FC.Inputs.V3FunctionInstanceLifecycleConfigInitializerArgs
///             {
///                 Timeout = 1,
///                 Handler = "index.init",
///             },
///             PreStop = new AliCloud.FC.Inputs.V3FunctionInstanceLifecycleConfigPreStopArgs
///             {
///                 Timeout = 1,
///                 Handler = "index.stop",
///             },
///         },
///         Cpu = 0.5,
///         InstanceConcurrency = 2,
///         FunctionName = $"{name}-{@default.Result}",
///         EnvironmentVariables =
///         {
///             { "EnvKey", "EnvVal" },
///         },
///         InternetAccess = true,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/fc"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/oss"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
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
/// 		_default, err := random.NewUuid(ctx, "default", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBucket, err := oss.NewBucket(ctx, "default", &oss.BucketArgs{
/// 			Bucket: pulumi.Sprintf("%v-%v", name, _default.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBucketObject, err := oss.NewBucketObject(ctx, "default", &oss.BucketObjectArgs{
/// 			Bucket:  defaultBucket.Bucket,
/// 			Key:     pulumi.String("FCV3Py39.zip"),
/// 			Content: pulumi.String("print('hello')"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = fc.NewV3Function(ctx, "default", &fc.V3FunctionArgs{
/// 			Description: pulumi.String("Create"),
/// 			MemorySize:  pulumi.Int(512),
/// 			Layers: pulumi.StringArray{
/// 				pulumi.String("acs:fc:cn-shanghai:official:layers/Python39-Aliyun-SDK/versions/3"),
/// 			},
/// 			Timeout:  pulumi.Int(3),
/// 			Runtime:  pulumi.String("custom.debian10"),
/// 			Handler:  pulumi.String("index.handler"),
/// 			DiskSize: pulumi.Int(512),
/// 			CustomRuntimeConfig: &fc.V3FunctionCustomRuntimeConfigArgs{
/// 				Commands: pulumi.StringArray{
/// 					pulumi.String("python"),
/// 					pulumi.String("-c"),
/// 					pulumi.String("example"),
/// 				},
/// 				Args: pulumi.StringArray{
/// 					pulumi.String("app.py"),
/// 					pulumi.String("xx"),
/// 					pulumi.String("x"),
/// 				},
/// 				Port: pulumi.Int(9000),
/// 				HealthCheckConfig: &fc.V3FunctionCustomRuntimeConfigHealthCheckConfigArgs{
/// 					HttpGetUrl:          pulumi.String("/ready"),
/// 					InitialDelaySeconds: pulumi.Int(1),
/// 					PeriodSeconds:       pulumi.Int(10),
/// 					SuccessThreshold:    pulumi.Int(1),
/// 					TimeoutSeconds:      pulumi.Int(1),
/// 					FailureThreshold:    pulumi.Int(3),
/// 				},
/// 			},
/// 			LogConfig: &fc.V3FunctionLogConfigArgs{
/// 				LogBeginRule: pulumi.String("None"),
/// 			},
/// 			Code: &fc.V3FunctionCodeArgs{
/// 				OssBucketName: defaultBucket.Bucket,
/// 				OssObjectName: defaultBucketObject.Key,
/// 				Checksum:      pulumi.String("4270285996107335518"),
/// 			},
/// 			InstanceLifecycleConfig: &fc.V3FunctionInstanceLifecycleConfigArgs{
/// 				Initializer: &fc.V3FunctionInstanceLifecycleConfigInitializerArgs{
/// 					Timeout: pulumi.Int(1),
/// 					Handler: pulumi.String("index.init"),
/// 				},
/// 				PreStop: &fc.V3FunctionInstanceLifecycleConfigPreStopArgs{
/// 					Timeout: pulumi.Int(1),
/// 					Handler: pulumi.String("index.stop"),
/// 				},
/// 			},
/// 			Cpu:                 pulumi.Float64(0.5),
/// 			InstanceConcurrency: pulumi.Int(2),
/// 			FunctionName:        pulumi.Sprintf("%v-%v", name, _default.Result),
/// 			EnvironmentVariables: pulumi.StringMap{
/// 				"EnvKey": pulumi.String("EnvVal"),
/// 			},
/// 			InternetAccess: pulumi.Bool(true),
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
/// import com.pulumi.random.Uuid;
/// import com.pulumi.alicloud.oss.Bucket;
/// import com.pulumi.alicloud.oss.BucketArgs;
/// import com.pulumi.alicloud.oss.BucketObject;
/// import com.pulumi.alicloud.oss.BucketObjectArgs;
/// import com.pulumi.alicloud.fc.V3Function;
/// import com.pulumi.alicloud.fc.V3FunctionArgs;
/// import com.pulumi.alicloud.fc.inputs.V3FunctionCustomRuntimeConfigArgs;
/// import com.pulumi.alicloud.fc.inputs.V3FunctionCustomRuntimeConfigHealthCheckConfigArgs;
/// import com.pulumi.alicloud.fc.inputs.V3FunctionLogConfigArgs;
/// import com.pulumi.alicloud.fc.inputs.V3FunctionCodeArgs;
/// import com.pulumi.alicloud.fc.inputs.V3FunctionInstanceLifecycleConfigArgs;
/// import com.pulumi.alicloud.fc.inputs.V3FunctionInstanceLifecycleConfigInitializerArgs;
/// import com.pulumi.alicloud.fc.inputs.V3FunctionInstanceLifecycleConfigPreStopArgs;
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
///         var default_ = new Uuid("default");
///
///         var defaultBucket = new Bucket("defaultBucket", BucketArgs.builder()
///             .bucket(String.format("%s-%s", name,default_.result()))
///             .build());
///
///         var defaultBucketObject = new BucketObject("defaultBucketObject", BucketObjectArgs.builder()
///             .bucket(defaultBucket.bucket())
///             .key("FCV3Py39.zip")
///             .content("print('hello')")
///             .build());
///
///         var defaultV3Function = new V3Function("defaultV3Function", V3FunctionArgs.builder()
///             .description("Create")
///             .memorySize(512)
///             .layers("acs:fc:cn-shanghai:official:layers/Python39-Aliyun-SDK/versions/3")
///             .timeout(3)
///             .runtime("custom.debian10")
///             .handler("index.handler")
///             .diskSize(512)
///             .customRuntimeConfig(V3FunctionCustomRuntimeConfigArgs.builder()
///                 .commands(
///                     "python",
///                     "-c",
///                     "example")
///                 .args(
///                     "app.py",
///                     "xx",
///                     "x")
///                 .port(9000)
///                 .healthCheckConfig(V3FunctionCustomRuntimeConfigHealthCheckConfigArgs.builder()
///                     .httpGetUrl("/ready")
///                     .initialDelaySeconds(1)
///                     .periodSeconds(10)
///                     .successThreshold(1)
///                     .timeoutSeconds(1)
///                     .failureThreshold(3)
///                     .build())
///                 .build())
///             .logConfig(V3FunctionLogConfigArgs.builder()
///                 .logBeginRule("None")
///                 .build())
///             .code(V3FunctionCodeArgs.builder()
///                 .ossBucketName(defaultBucket.bucket())
///                 .ossObjectName(defaultBucketObject.key())
///                 .checksum("4270285996107335518")
///                 .build())
///             .instanceLifecycleConfig(V3FunctionInstanceLifecycleConfigArgs.builder()
///                 .initializer(V3FunctionInstanceLifecycleConfigInitializerArgs.builder()
///                     .timeout(1)
///                     .handler("index.init")
///                     .build())
///                 .preStop(V3FunctionInstanceLifecycleConfigPreStopArgs.builder()
///                     .timeout(1)
///                     .handler("index.stop")
///                     .build())
///                 .build())
///             .cpu(0.5)
///             .instanceConcurrency(2)
///             .functionName(String.format("%s-%s", name,default_.result()))
///             .environmentVariables(Map.of("EnvKey", "EnvVal"))
///             .internetAccess(true)
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
///   default:
///     type: random:Uuid
///   defaultBucket:
///     type: alicloud:oss:Bucket
///     name: default
///     properties:
///       bucket: ${name}-${default.result}
///   defaultBucketObject:
///     type: alicloud:oss:BucketObject
///     name: default
///     properties:
///       bucket: ${defaultBucket.bucket}
///       key: FCV3Py39.zip
///       content: print('hello')
///   defaultV3Function:
///     type: alicloud:fc:V3Function
///     name: default
///     properties:
///       description: Create
///       memorySize: '512'
///       layers:
///         - acs:fc:cn-shanghai:official:layers/Python39-Aliyun-SDK/versions/3
///       timeout: '3'
///       runtime: custom.debian10
///       handler: index.handler
///       diskSize: '512'
///       customRuntimeConfig:
///         commands:
///           - python
///           - -c
///           - example
///         args:
///           - app.py
///           - xx
///           - x
///         port: '9000'
///         healthCheckConfig:
///           httpGetUrl: /ready
///           initialDelaySeconds: '1'
///           periodSeconds: '10'
///           successThreshold: '1'
///           timeoutSeconds: '1'
///           failureThreshold: '3'
///       logConfig:
///         logBeginRule: None
///       code:
///         ossBucketName: ${defaultBucket.bucket}
///         ossObjectName: ${defaultBucketObject.key}
///         checksum: '4270285996107335518'
///       instanceLifecycleConfig:
///         initializer:
///           timeout: '1'
///           handler: index.init
///         preStop:
///           timeout: '1'
///           handler: index.stop
///       cpu: '0.5'
///       instanceConcurrency: '2'
///       functionName: ${name}-${default.result}
///       environmentVariables:
///         EnvKey: EnvVal
///       internetAccess: 'true'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Function Compute Service V3 (FCV3) Function can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:fc/v3Function:V3Function example <id>
/// ```
class V3Function extends pulumi.CustomResource {
  late final pulumi.Output<V3FunctionCode?> code;
  /// The code package size of the function returned by the system, in byte Example : 1024
  late final pulumi.Output<int> codeSize;
  /// The CPU specification of the function. The unit is vCPU, which is a multiple of the 0.05 vCPU.
  late final pulumi.Output<double> cpu;
  /// The creation time of the function.
  late final pulumi.Output<String> createTime;
  /// The configuration of the custom container runtime. After the configuration is successful, the function can use the custom container image to execute the function. code and customContainerConfig. See `custom_container_config` below.
  late final pulumi.Output<V3FunctionCustomContainerConfig?> customContainerConfig;
  /// Function custom DNS configuration See `custom_dns` below.
  late final pulumi.Output<V3FunctionCustomDns?> customDns;
  /// Customize the runtime configuration. See `custom_runtime_config` below.
  late final pulumi.Output<V3FunctionCustomRuntimeConfig?> customRuntimeConfig;
  /// The description of the function. The function compute system does not use this attribute value, but we recommend that you set a concise and clear description for the function.
  late final pulumi.Output<String?> description;
  /// The disk specification of the function, in MB. The optional value is 512 MB or 10240MB.
  late final pulumi.Output<int> diskSize;
  /// The environment variable set for the function, you can get the value of the environment variable in the function.
  late final pulumi.Output<Map<String, String>?> environmentVariables;
  /// ARN of function
  late final pulumi.Output<String> functionArn;
  /// The first ID of the resource
  late final pulumi.Output<String> functionId;
  /// The function name. Consists of uppercase and lowercase letters, digits (0 to 9), underscores (_), and dashes (-). It must begin with an English letter (a ~ z), (A ~ Z), or an underscore (_). Case sensitive. The length is 1~128 characters.
  late final pulumi.Output<String> functionName;
  /// Function GPU configuration. See `gpu_config` below.
  late final pulumi.Output<V3FunctionGpuConfig?> gpuConfig;
  /// Function Handler: the call entry for the function compute system to run your function.
  late final pulumi.Output<String> handler;
  /// Destroy an instance when the instance no-request duration exceeds this attribute. - 1 means that the threshold is cleared and the system default behavior is used.
  late final pulumi.Output<int?> idleTimeout;
  /// Maximum instance concurrency.
  late final pulumi.Output<int> instanceConcurrency;
  /// Instance isolation mode
  late final pulumi.Output<String> instanceIsolationMode;
  /// Instance lifecycle callback method configuration. See `instance_lifecycle_config` below.
  late final pulumi.Output<V3FunctionInstanceLifecycleConfig?> instanceLifecycleConfig;
  /// Allow function to access public network
  late final pulumi.Output<bool> internetAccess;
  /// Invocation Restriction Detail See `invocation_restriction` below.
  late final pulumi.Output<V3FunctionInvocationRestriction?> invocationRestriction;
  /// Last time the function was Updated
  late final pulumi.Output<String> lastModifiedTime;
  /// The status of the last function update operation. When the function is created successfully, the value is Successful. Optional values are Successful, Failed, and InProgress.
  late final pulumi.Output<String> lastUpdateStatus;
  /// The reason that caused the last function to update the Operation State to the current value
  late final pulumi.Output<String> lastUpdateStatusReason;
  /// Status code of the reason that caused the last function update operation status to the current value
  late final pulumi.Output<String> lastUpdateStatusReasonCode;
  /// The list of layers.
  late final pulumi.Output<List<String>?> layers;
  /// The logs generated by the function are written to the configured Logstore. See `log_config` below.
  late final pulumi.Output<V3FunctionLogConfig?> logConfig;
  /// The memory specification of the function. The unit is MB. The memory size is a multiple of 64MB. The minimum value is 128MB and the maximum value is 32GB. At the same time, the ratio of cpu to memorySize (calculated by GB) should be between 1:1 and 1:4.
  late final pulumi.Output<int> memorySize;
  /// NAS configuration. After this parameter is configured, the function can access the specified NAS resource. See `nas_config` below.
  late final pulumi.Output<V3FunctionNasConfig> nasConfig;
  /// OSS mount configuration See `oss_mount_config` below.
  late final pulumi.Output<V3FunctionOssMountConfig> ossMountConfig;
  /// Resource Group ID
  late final pulumi.Output<String> resourceGroupId;
  /// The user is authorized to the RAM role of function compute. After the configuration, function compute will assume this role to generate temporary access credentials. In the function, you can use the temporary access credentials of the role to access the specified Alibaba cloud service, such as OSS and OTS
  late final pulumi.Output<String?> role;
  /// Function runtime type
  late final pulumi.Output<String> runtime;
  /// The affinity policy of the function compute call request. To implement the request affinity of the MCP SSE protocol, set it to MCP_SSE. If Cookie affinity is used, it can be set to GENERATED_COOKIE. If Header affinity is used, it can be set to HEADER_FIELD. If it is not set or set to NONE, the affinity effect is not set, and the request is routed according to the default scheduling policy of the function calculation system.
  late final pulumi.Output<String> sessionAffinity;
  /// When you set the sessionAffinity affinity type, you need to set the relevant affinity configuration. For example, the MCP_SSE affinity needs to fill in the mcpssessionaffinityconfig configuration. The Cookie affinity needs to be filled with the CookieSessionAffinityConfig configuration, and the Header Field affinity needs to be filled with the HeaderFieldSessionAffinityConfig configuration.
  late final pulumi.Output<String?> sessionAffinityConfig;
  /// Function Status
  late final pulumi.Output<String> state;
  /// The reason why the function is in the current state
  late final pulumi.Output<String> stateReason;
  /// The status code of the reason the function is in the current state.
  late final pulumi.Output<String> stateReasonCode;
  /// The tag of the resource
  late final pulumi.Output<Map<String, String>?> tags;
  /// The maximum running time of the function, in seconds.
  late final pulumi.Output<int> timeout;
  /// Tracing configuration
  late final pulumi.Output<V3FunctionTracingConfig> tracingConfig;
  /// VPC configuration. After this parameter is configured, the function can access the specified VPC resources. See `vpc_config` below.
  late final pulumi.Output<V3FunctionVpcConfig> vpcConfig;

  /// Creates a new [V3Function].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [V3Function]. {@macro pulumi_fc_v3_function_v3_function_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  V3Function(
    String name, {
    V3FunctionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:fc/v3Function:V3Function',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.code = registerOutput<V3FunctionCode?>('code');
    this.codeSize = registerOutput<int>('codeSize');
    this.cpu = registerOutput<double>('cpu');
    this.createTime = registerOutput<String>('createTime');
    this.customContainerConfig = registerOutput<V3FunctionCustomContainerConfig?>('customContainerConfig');
    this.customDns = registerOutput<V3FunctionCustomDns?>('customDns');
    this.customRuntimeConfig = registerOutput<V3FunctionCustomRuntimeConfig?>('customRuntimeConfig');
    this.description = registerOutput<String?>('description');
    this.diskSize = registerOutput<int>('diskSize');
    this.environmentVariables = registerOutput<Map<String, String>?>('environmentVariables');
    this.functionArn = registerOutput<String>('functionArn');
    this.functionId = registerOutput<String>('functionId');
    this.functionName = registerOutput<String>('functionName');
    this.gpuConfig = registerOutput<V3FunctionGpuConfig?>('gpuConfig');
    this.handler = registerOutput<String>('handler');
    this.idleTimeout = registerOutput<int?>('idleTimeout');
    this.instanceConcurrency = registerOutput<int>('instanceConcurrency');
    this.instanceIsolationMode = registerOutput<String>('instanceIsolationMode');
    this.instanceLifecycleConfig = registerOutput<V3FunctionInstanceLifecycleConfig?>('instanceLifecycleConfig');
    this.internetAccess = registerOutput<bool>('internetAccess');
    this.invocationRestriction = registerOutput<V3FunctionInvocationRestriction?>('invocationRestriction');
    this.lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.lastUpdateStatus = registerOutput<String>('lastUpdateStatus');
    this.lastUpdateStatusReason = registerOutput<String>('lastUpdateStatusReason');
    this.lastUpdateStatusReasonCode = registerOutput<String>('lastUpdateStatusReasonCode');
    this.layers = registerOutput<List<String>?>('layers');
    this.logConfig = registerOutput<V3FunctionLogConfig?>('logConfig');
    this.memorySize = registerOutput<int>('memorySize');
    this.nasConfig = registerOutput<V3FunctionNasConfig>('nasConfig');
    this.ossMountConfig = registerOutput<V3FunctionOssMountConfig>('ossMountConfig');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.role = registerOutput<String?>('role');
    this.runtime = registerOutput<String>('runtime');
    this.sessionAffinity = registerOutput<String>('sessionAffinity');
    this.sessionAffinityConfig = registerOutput<String?>('sessionAffinityConfig');
    this.state = registerOutput<String>('state');
    this.stateReason = registerOutput<String>('stateReason');
    this.stateReasonCode = registerOutput<String>('stateReasonCode');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.timeout = registerOutput<int>('timeout');
    this.tracingConfig = registerOutput<V3FunctionTracingConfig>('tracingConfig');
    this.vpcConfig = registerOutput<V3FunctionVpcConfig>('vpcConfig');
  }

  /// Gets an existing [V3Function] resource's state with the given [name] and [id].
  static V3Function get(
    String name,
    pulumi.Input<String> id, {
    V3FunctionState? state,
  }) {
    return V3Function._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  V3Function._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:fc/v3Function:V3Function',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.code = registerOutput<V3FunctionCode?>('code');
    this.codeSize = registerOutput<int>('codeSize');
    this.cpu = registerOutput<double>('cpu');
    this.createTime = registerOutput<String>('createTime');
    this.customContainerConfig = registerOutput<V3FunctionCustomContainerConfig?>('customContainerConfig');
    this.customDns = registerOutput<V3FunctionCustomDns?>('customDns');
    this.customRuntimeConfig = registerOutput<V3FunctionCustomRuntimeConfig?>('customRuntimeConfig');
    this.description = registerOutput<String?>('description');
    this.diskSize = registerOutput<int>('diskSize');
    this.environmentVariables = registerOutput<Map<String, String>?>('environmentVariables');
    this.functionArn = registerOutput<String>('functionArn');
    this.functionId = registerOutput<String>('functionId');
    this.functionName = registerOutput<String>('functionName');
    this.gpuConfig = registerOutput<V3FunctionGpuConfig?>('gpuConfig');
    this.handler = registerOutput<String>('handler');
    this.idleTimeout = registerOutput<int?>('idleTimeout');
    this.instanceConcurrency = registerOutput<int>('instanceConcurrency');
    this.instanceIsolationMode = registerOutput<String>('instanceIsolationMode');
    this.instanceLifecycleConfig = registerOutput<V3FunctionInstanceLifecycleConfig?>('instanceLifecycleConfig');
    this.internetAccess = registerOutput<bool>('internetAccess');
    this.invocationRestriction = registerOutput<V3FunctionInvocationRestriction?>('invocationRestriction');
    this.lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.lastUpdateStatus = registerOutput<String>('lastUpdateStatus');
    this.lastUpdateStatusReason = registerOutput<String>('lastUpdateStatusReason');
    this.lastUpdateStatusReasonCode = registerOutput<String>('lastUpdateStatusReasonCode');
    this.layers = registerOutput<List<String>?>('layers');
    this.logConfig = registerOutput<V3FunctionLogConfig?>('logConfig');
    this.memorySize = registerOutput<int>('memorySize');
    this.nasConfig = registerOutput<V3FunctionNasConfig>('nasConfig');
    this.ossMountConfig = registerOutput<V3FunctionOssMountConfig>('ossMountConfig');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.role = registerOutput<String?>('role');
    this.runtime = registerOutput<String>('runtime');
    this.sessionAffinity = registerOutput<String>('sessionAffinity');
    this.sessionAffinityConfig = registerOutput<String?>('sessionAffinityConfig');
    this.state = registerOutput<String>('state');
    this.stateReason = registerOutput<String>('stateReason');
    this.stateReasonCode = registerOutput<String>('stateReasonCode');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.timeout = registerOutput<int>('timeout');
    this.tracingConfig = registerOutput<V3FunctionTracingConfig>('tracingConfig');
    this.vpcConfig = registerOutput<V3FunctionVpcConfig>('vpcConfig');
  }
}
