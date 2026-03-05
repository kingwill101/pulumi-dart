import 'package:pulumi/pulumi.dart' as pulumi;
import 'v3_function_version_args.dart';
import 'v3_function_version_state.dart';

/// Provides a FCV3 Function Version resource.
///
/// Version of the function.
///
/// For information about FCV3 Function Version and how to use it, see [What is Function Version](https://www.alibabacloud.com/help/en/functioncompute/api-fc-2023-03-30-listfunctionversions).
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
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = new random.index.Uuid("default", {});
/// const _function = new alicloud.fc.V3Function("function", {
///     memorySize: 512,
///     cpu: 0.5,
///     handler: "index.Handler",
///     code: {
///         zipFile: "UEsDBBQACAAIAAAAAAAAAAAAAAAAAAAAAAAIAAAAaW5kZXgucHmEkEFKxEAQRfd9ig9ZTCJOooIwDMwNXLqXnnQlaalUhU5lRj2KZ/FOXkESGR114bJ/P/7jV4b1xRq1hijtFpM1682cuNgPmgysbRulPT0fRxXnMtwrSPyeCdYRokSLnuMLJTTkbUqEvDMbxm1VdcRD6Tk+T1LW2ldB66knsYdA5iNX17ebm6tN2VnPhcswMPmREPuBacb+CiapLarAj9gT6/H97dVlCNScY3mtYvRkxdZlwDKDEnanPWVLdrdkeXEGlFEazVdfPVHaVeHc3N15CUwppwOJXeK7HshAB8NuOU7J6sP4SRXuH/EvbUfMiqMmDqv5M5FNSfAj/wgAAP//UEsHCPl//NYAAQAArwEAAFBLAQIUABQACAAIAAAAAAD5f/zWAAEAAK8BAAAIAAAAAAAAAAAAAAAAAAAAAABpbmRleC5weVBLBQYAAAAAAQABADYAAAA2AQAAAAA=",
///     },
///     functionName: `${name}-${_default.result}`,
///     runtime: "python3.9",
///     diskSize: 512,
///     logConfig: {
///         logBeginRule: "None",
///     },
/// });
/// const defaultV3FunctionVersion = new alicloud.fc.V3FunctionVersion("default", {
///     functionName: _function.functionName,
///     description: "version1",
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
/// function = alicloud.fc.V3Function("function",
///     memory_size=512,
///     cpu=0.5,
///     handler="index.Handler",
///     code={
///         "zip_file": "UEsDBBQACAAIAAAAAAAAAAAAAAAAAAAAAAAIAAAAaW5kZXgucHmEkEFKxEAQRfd9ig9ZTCJOooIwDMwNXLqXnnQlaalUhU5lRj2KZ/FOXkESGR114bJ/P/7jV4b1xRq1hijtFpM1682cuNgPmgysbRulPT0fRxXnMtwrSPyeCdYRokSLnuMLJTTkbUqEvDMbxm1VdcRD6Tk+T1LW2ldB66knsYdA5iNX17ebm6tN2VnPhcswMPmREPuBacb+CiapLarAj9gT6/H97dVlCNScY3mtYvRkxdZlwDKDEnanPWVLdrdkeXEGlFEazVdfPVHaVeHc3N15CUwppwOJXeK7HshAB8NuOU7J6sP4SRXuH/EvbUfMiqMmDqv5M5FNSfAj/wgAAP//UEsHCPl//NYAAQAArwEAAFBLAQIUABQACAAIAAAAAAD5f/zWAAEAAK8BAAAIAAAAAAAAAAAAAAAAAAAAAABpbmRleC5weVBLBQYAAAAAAQABADYAAAA2AQAAAAA=",
///     },
///     function_name=f"{name}-{default['result']}",
///     runtime="python3.9",
///     disk_size=512,
///     log_config={
///         "log_begin_rule": "None",
///     })
/// default_v3_function_version = alicloud.fc.V3FunctionVersion("default",
///     function_name=function.function_name,
///     description="version1")
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
///     var function = new AliCloud.FC.V3Function("function", new()
///     {
///         MemorySize = 512,
///         Cpu = 0.5,
///         Handler = "index.Handler",
///         Code = new AliCloud.FC.Inputs.V3FunctionCodeArgs
///         {
///             ZipFile = "UEsDBBQACAAIAAAAAAAAAAAAAAAAAAAAAAAIAAAAaW5kZXgucHmEkEFKxEAQRfd9ig9ZTCJOooIwDMwNXLqXnnQlaalUhU5lRj2KZ/FOXkESGR114bJ/P/7jV4b1xRq1hijtFpM1682cuNgPmgysbRulPT0fRxXnMtwrSPyeCdYRokSLnuMLJTTkbUqEvDMbxm1VdcRD6Tk+T1LW2ldB66knsYdA5iNX17ebm6tN2VnPhcswMPmREPuBacb+CiapLarAj9gT6/H97dVlCNScY3mtYvRkxdZlwDKDEnanPWVLdrdkeXEGlFEazVdfPVHaVeHc3N15CUwppwOJXeK7HshAB8NuOU7J6sP4SRXuH/EvbUfMiqMmDqv5M5FNSfAj/wgAAP//UEsHCPl//NYAAQAArwEAAFBLAQIUABQACAAIAAAAAAD5f/zWAAEAAK8BAAAIAAAAAAAAAAAAAAAAAAAAAABpbmRleC5weVBLBQYAAAAAAQABADYAAAA2AQAAAAA=",
///         },
///         FunctionName = $"{name}-{@default.Result}",
///         Runtime = "python3.9",
///         DiskSize = 512,
///         LogConfig = new AliCloud.FC.Inputs.V3FunctionLogConfigArgs
///         {
///             LogBeginRule = "None",
///         },
///     });
///
///     var defaultV3FunctionVersion = new AliCloud.FC.V3FunctionVersion("default", new()
///     {
///         FunctionName = function.FunctionName,
///         Description = "version1",
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
/// 		function, err := fc.NewV3Function(ctx, "function", &fc.V3FunctionArgs{
/// 			MemorySize: pulumi.Int(512),
/// 			Cpu:        pulumi.Float64(0.5),
/// 			Handler:    pulumi.String("index.Handler"),
/// 			Code: &fc.V3FunctionCodeArgs{
/// 				ZipFile: pulumi.String("UEsDBBQACAAIAAAAAAAAAAAAAAAAAAAAAAAIAAAAaW5kZXgucHmEkEFKxEAQRfd9ig9ZTCJOooIwDMwNXLqXnnQlaalUhU5lRj2KZ/FOXkESGR114bJ/P/7jV4b1xRq1hijtFpM1682cuNgPmgysbRulPT0fRxXnMtwrSPyeCdYRokSLnuMLJTTkbUqEvDMbxm1VdcRD6Tk+T1LW2ldB66knsYdA5iNX17ebm6tN2VnPhcswMPmREPuBacb+CiapLarAj9gT6/H97dVlCNScY3mtYvRkxdZlwDKDEnanPWVLdrdkeXEGlFEazVdfPVHaVeHc3N15CUwppwOJXeK7HshAB8NuOU7J6sP4SRXuH/EvbUfMiqMmDqv5M5FNSfAj/wgAAP//UEsHCPl//NYAAQAArwEAAFBLAQIUABQACAAIAAAAAAD5f/zWAAEAAK8BAAAIAAAAAAAAAAAAAAAAAAAAAABpbmRleC5weVBLBQYAAAAAAQABADYAAAA2AQAAAAA="),
/// 			},
/// 			FunctionName: pulumi.Sprintf("%v-%v", name, _default.Result),
/// 			Runtime:      pulumi.String("python3.9"),
/// 			DiskSize:     pulumi.Int(512),
/// 			LogConfig: &fc.V3FunctionLogConfigArgs{
/// 				LogBeginRule: pulumi.String("None"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = fc.NewV3FunctionVersion(ctx, "default", &fc.V3FunctionVersionArgs{
/// 			FunctionName: function.FunctionName,
/// 			Description:  pulumi.String("version1"),
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
/// import com.pulumi.alicloud.fc.V3Function;
/// import com.pulumi.alicloud.fc.V3FunctionArgs;
/// import com.pulumi.alicloud.fc.inputs.V3FunctionCodeArgs;
/// import com.pulumi.alicloud.fc.inputs.V3FunctionLogConfigArgs;
/// import com.pulumi.alicloud.fc.V3FunctionVersion;
/// import com.pulumi.alicloud.fc.V3FunctionVersionArgs;
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
///         var function = new V3Function("function", V3FunctionArgs.builder()
///             .memorySize(512)
///             .cpu(0.5)
///             .handler("index.Handler")
///             .code(V3FunctionCodeArgs.builder()
///                 .zipFile("UEsDBBQACAAIAAAAAAAAAAAAAAAAAAAAAAAIAAAAaW5kZXgucHmEkEFKxEAQRfd9ig9ZTCJOooIwDMwNXLqXnnQlaalUhU5lRj2KZ/FOXkESGR114bJ/P/7jV4b1xRq1hijtFpM1682cuNgPmgysbRulPT0fRxXnMtwrSPyeCdYRokSLnuMLJTTkbUqEvDMbxm1VdcRD6Tk+T1LW2ldB66knsYdA5iNX17ebm6tN2VnPhcswMPmREPuBacb+CiapLarAj9gT6/H97dVlCNScY3mtYvRkxdZlwDKDEnanPWVLdrdkeXEGlFEazVdfPVHaVeHc3N15CUwppwOJXeK7HshAB8NuOU7J6sP4SRXuH/EvbUfMiqMmDqv5M5FNSfAj/wgAAP//UEsHCPl//NYAAQAArwEAAFBLAQIUABQACAAIAAAAAAD5f/zWAAEAAK8BAAAIAAAAAAAAAAAAAAAAAAAAAABpbmRleC5weVBLBQYAAAAAAQABADYAAAA2AQAAAAA=")
///                 .build())
///             .functionName(String.format("%s-%s", name,default_.result()))
///             .runtime("python3.9")
///             .diskSize(512)
///             .logConfig(V3FunctionLogConfigArgs.builder()
///                 .logBeginRule("None")
///                 .build())
///             .build());
///
///         var defaultV3FunctionVersion = new V3FunctionVersion("defaultV3FunctionVersion", V3FunctionVersionArgs.builder()
///             .functionName(function.functionName())
///             .description("version1")
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
///   function:
///     type: alicloud:fc:V3Function
///     properties:
///       memorySize: '512'
///       cpu: 0.5
///       handler: index.Handler
///       code:
///         zipFile: UEsDBBQACAAIAAAAAAAAAAAAAAAAAAAAAAAIAAAAaW5kZXgucHmEkEFKxEAQRfd9ig9ZTCJOooIwDMwNXLqXnnQlaalUhU5lRj2KZ/FOXkESGR114bJ/P/7jV4b1xRq1hijtFpM1682cuNgPmgysbRulPT0fRxXnMtwrSPyeCdYRokSLnuMLJTTkbUqEvDMbxm1VdcRD6Tk+T1LW2ldB66knsYdA5iNX17ebm6tN2VnPhcswMPmREPuBacb+CiapLarAj9gT6/H97dVlCNScY3mtYvRkxdZlwDKDEnanPWVLdrdkeXEGlFEazVdfPVHaVeHc3N15CUwppwOJXeK7HshAB8NuOU7J6sP4SRXuH/EvbUfMiqMmDqv5M5FNSfAj/wgAAP//UEsHCPl//NYAAQAArwEAAFBLAQIUABQACAAIAAAAAAD5f/zWAAEAAK8BAAAIAAAAAAAAAAAAAAAAAAAAAABpbmRleC5weVBLBQYAAAAAAQABADYAAAA2AQAAAAA=
///       functionName: ${name}-${default.result}
///       runtime: python3.9
///       diskSize: '512'
///       logConfig:
///         logBeginRule: None
///   defaultV3FunctionVersion:
///     type: alicloud:fc:V3FunctionVersion
///     name: default
///     properties:
///       functionName: ${function.functionName}
///       description: version1
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// FCV3 Function Version can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:fc/v3FunctionVersion:V3FunctionVersion example <function_name>:<version_id>
/// ```
class V3FunctionVersion extends pulumi.CustomResource {
  /// The creation time of the resource
  late final pulumi.Output<String> createTime;
  /// Description of the function version
  late final pulumi.Output<String?> description;
  /// Function Name
  late final pulumi.Output<String> functionName;
  /// (Available since v1.234.0) Update time
  late final pulumi.Output<String> lastModifiedTime;
  /// Function Version
  late final pulumi.Output<String> versionId;

  /// Creates a new [V3FunctionVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [V3FunctionVersion]. {@macro pulumi_fc_v3_function_version_v3_function_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  V3FunctionVersion(
    String name, {
    V3FunctionVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:fc/v3FunctionVersion:V3FunctionVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    functionName = registerOutput<String>('functionName');
    lastModifiedTime = registerOutput<String>('lastModifiedTime');
    versionId = registerOutput<String>('versionId');
  }

  /// Gets an existing [V3FunctionVersion] resource's state with the given [name] and [id].
  static V3FunctionVersion get(
    String name,
    pulumi.Input<String> id, {
    V3FunctionVersionState? state,
  }) {
    return V3FunctionVersion._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  V3FunctionVersion._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:fc/v3FunctionVersion:V3FunctionVersion',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    functionName = registerOutput<String>('functionName');
    lastModifiedTime = registerOutput<String>('lastModifiedTime');
    versionId = registerOutput<String>('versionId');
  }
}
