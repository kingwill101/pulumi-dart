import 'package:pulumi/pulumi.dart' as pulumi;
import 'v3_layer_version_args.dart';
import 'v3_layer_version_code.dart';

/// Provides a FCV3 Layer Version resource.
///
/// Layer provides you with the ability to publish and deploy common dependency libraries, runtime environments, and function extensions.
///
/// For information about FCV3 Layer Version and how to use it, see [What is Layer Version](https://www.alibabacloud.com/help/en/functioncompute/api-fc-2023-03-30-createlayerversion).
///
/// > **NOTE:** Available since v1.230.0.
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
/// const _default = new alicloud.fc.V3LayerVersion("default", {
///     description: name,
///     layerName: "FC3LayerResouceTest_ZIP_2024SepWed",
///     license: "Apache2.0",
///     acl: "0",
///     code: {
///         zipFile: "UEsDBBQACAAIAAAAAAAAAAAAAAAAAAAAAAAIAAAAaW5kZXgucHmEkEFKxEAQRfd9ig9ZTCJOooIwDMwNXLqXnnQlaalUhU5lRj2KZ/FOXkESGR114bJ/P/7jV4b1xRq1hijtFpM1682cuNgPmgysbRulPT0fRxXnMtwrSPyeCdYRokSLnuMLJTTkbUqEvDMbxm1VdcRD6Tk+T1LW2ldB66knsYdA5iNX17ebm6tN2VnPhcswMPmREPuBacb+CiapLarAj9gT6/H97dVlCNScY3mtYvRkxdZlwDKDEnanPWVLdrdkeXEGlFEazVdfPVHaVeHc3N15CUwppwOJXeK7HshAB8NuOU7J6sP4SRXuH/EvbUfMiqMmDqv5M5FNSfAj/wgAAP//UEsHCPl//NYAAQAArwEAAFBLAQIUABQACAAIAAAAAAD5f/zWAAEAAK8BAAAIAAAAAAAAAAAAAAAAAAAAAABpbmRleC5weVBLBQYAAAAAAQABADYAAAA2AQAAAAA=",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.fc.V3LayerVersion("default",
///     description=name,
///     layer_name="FC3LayerResouceTest_ZIP_2024SepWed",
///     license="Apache2.0",
///     acl="0",
///     code={
///         "zip_file": "UEsDBBQACAAIAAAAAAAAAAAAAAAAAAAAAAAIAAAAaW5kZXgucHmEkEFKxEAQRfd9ig9ZTCJOooIwDMwNXLqXnnQlaalUhU5lRj2KZ/FOXkESGR114bJ/P/7jV4b1xRq1hijtFpM1682cuNgPmgysbRulPT0fRxXnMtwrSPyeCdYRokSLnuMLJTTkbUqEvDMbxm1VdcRD6Tk+T1LW2ldB66knsYdA5iNX17ebm6tN2VnPhcswMPmREPuBacb+CiapLarAj9gT6/H97dVlCNScY3mtYvRkxdZlwDKDEnanPWVLdrdkeXEGlFEazVdfPVHaVeHc3N15CUwppwOJXeK7HshAB8NuOU7J6sP4SRXuH/EvbUfMiqMmDqv5M5FNSfAj/wgAAP//UEsHCPl//NYAAQAArwEAAFBLAQIUABQACAAIAAAAAAD5f/zWAAEAAK8BAAAIAAAAAAAAAAAAAAAAAAAAAABpbmRleC5weVBLBQYAAAAAAQABADYAAAA2AQAAAAA=",
///     })
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
///     var @default = new AliCloud.FC.V3LayerVersion("default", new()
///     {
///         Description = name,
///         LayerName = "FC3LayerResouceTest_ZIP_2024SepWed",
///         License = "Apache2.0",
///         Acl = "0",
///         Code = new AliCloud.FC.Inputs.V3LayerVersionCodeArgs
///         {
///             ZipFile = "UEsDBBQACAAIAAAAAAAAAAAAAAAAAAAAAAAIAAAAaW5kZXgucHmEkEFKxEAQRfd9ig9ZTCJOooIwDMwNXLqXnnQlaalUhU5lRj2KZ/FOXkESGR114bJ/P/7jV4b1xRq1hijtFpM1682cuNgPmgysbRulPT0fRxXnMtwrSPyeCdYRokSLnuMLJTTkbUqEvDMbxm1VdcRD6Tk+T1LW2ldB66knsYdA5iNX17ebm6tN2VnPhcswMPmREPuBacb+CiapLarAj9gT6/H97dVlCNScY3mtYvRkxdZlwDKDEnanPWVLdrdkeXEGlFEazVdfPVHaVeHc3N15CUwppwOJXeK7HshAB8NuOU7J6sP4SRXuH/EvbUfMiqMmDqv5M5FNSfAj/wgAAP//UEsHCPl//NYAAQAArwEAAFBLAQIUABQACAAIAAAAAAD5f/zWAAEAAK8BAAAIAAAAAAAAAAAAAAAAAAAAAABpbmRleC5weVBLBQYAAAAAAQABADYAAAA2AQAAAAA=",
///         },
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
/// 		_, err := fc.NewV3LayerVersion(ctx, "default", &fc.V3LayerVersionArgs{
/// 			Description: pulumi.String(name),
/// 			LayerName:   pulumi.String("FC3LayerResouceTest_ZIP_2024SepWed"),
/// 			License:     pulumi.String("Apache2.0"),
/// 			Acl:         pulumi.String("0"),
/// 			Code: &fc.V3LayerVersionCodeArgs{
/// 				ZipFile: pulumi.String("UEsDBBQACAAIAAAAAAAAAAAAAAAAAAAAAAAIAAAAaW5kZXgucHmEkEFKxEAQRfd9ig9ZTCJOooIwDMwNXLqXnnQlaalUhU5lRj2KZ/FOXkESGR114bJ/P/7jV4b1xRq1hijtFpM1682cuNgPmgysbRulPT0fRxXnMtwrSPyeCdYRokSLnuMLJTTkbUqEvDMbxm1VdcRD6Tk+T1LW2ldB66knsYdA5iNX17ebm6tN2VnPhcswMPmREPuBacb+CiapLarAj9gT6/H97dVlCNScY3mtYvRkxdZlwDKDEnanPWVLdrdkeXEGlFEazVdfPVHaVeHc3N15CUwppwOJXeK7HshAB8NuOU7J6sP4SRXuH/EvbUfMiqMmDqv5M5FNSfAj/wgAAP//UEsHCPl//NYAAQAArwEAAFBLAQIUABQACAAIAAAAAAD5f/zWAAEAAK8BAAAIAAAAAAAAAAAAAAAAAAAAAABpbmRleC5weVBLBQYAAAAAAQABADYAAAA2AQAAAAA="),
/// 			},
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
/// import com.pulumi.alicloud.fc.V3LayerVersion;
/// import com.pulumi.alicloud.fc.V3LayerVersionArgs;
/// import com.pulumi.alicloud.fc.inputs.V3LayerVersionCodeArgs;
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
///         var default_ = new V3LayerVersion("default", V3LayerVersionArgs.builder()
///             .description(name)
///             .layerName("FC3LayerResouceTest_ZIP_2024SepWed")
///             .license("Apache2.0")
///             .acl("0")
///             .code(V3LayerVersionCodeArgs.builder()
///                 .zipFile("UEsDBBQACAAIAAAAAAAAAAAAAAAAAAAAAAAIAAAAaW5kZXgucHmEkEFKxEAQRfd9ig9ZTCJOooIwDMwNXLqXnnQlaalUhU5lRj2KZ/FOXkESGR114bJ/P/7jV4b1xRq1hijtFpM1682cuNgPmgysbRulPT0fRxXnMtwrSPyeCdYRokSLnuMLJTTkbUqEvDMbxm1VdcRD6Tk+T1LW2ldB66knsYdA5iNX17ebm6tN2VnPhcswMPmREPuBacb+CiapLarAj9gT6/H97dVlCNScY3mtYvRkxdZlwDKDEnanPWVLdrdkeXEGlFEazVdfPVHaVeHc3N15CUwppwOJXeK7HshAB8NuOU7J6sP4SRXuH/EvbUfMiqMmDqv5M5FNSfAj/wgAAP//UEsHCPl//NYAAQAArwEAAFBLAQIUABQACAAIAAAAAAD5f/zWAAEAAK8BAAAIAAAAAAAAAAAAAAAAAAAAAABpbmRleC5weVBLBQYAAAAAAQABADYAAAA2AQAAAAA=")
///                 .build())
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
///     type: alicloud:fc:V3LayerVersion
///     properties:
///       description: ${name}
///       layerName: FC3LayerResouceTest_ZIP_2024SepWed
///       license: Apache2.0
///       acl: '0'
///       code:
///         zipFile: UEsDBBQACAAIAAAAAAAAAAAAAAAAAAAAAAAIAAAAaW5kZXgucHmEkEFKxEAQRfd9ig9ZTCJOooIwDMwNXLqXnnQlaalUhU5lRj2KZ/FOXkESGR114bJ/P/7jV4b1xRq1hijtFpM1682cuNgPmgysbRulPT0fRxXnMtwrSPyeCdYRokSLnuMLJTTkbUqEvDMbxm1VdcRD6Tk+T1LW2ldB66knsYdA5iNX17ebm6tN2VnPhcswMPmREPuBacb+CiapLarAj9gT6/H97dVlCNScY3mtYvRkxdZlwDKDEnanPWVLdrdkeXEGlFEazVdfPVHaVeHc3N15CUwppwOJXeK7HshAB8NuOU7J6sP4SRXuH/EvbUfMiqMmDqv5M5FNSfAj/wgAAP//UEsHCPl//NYAAQAArwEAAFBLAQIUABQACAAIAAAAAAD5f/zWAAEAAK8BAAAIAAAAAAAAAAAAAAAAAAAAAABpbmRleC5weVBLBQYAAAAAAQABADYAAAA2AQAAAAA=
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// FCV3 Layer Version can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:fc/v3LayerVersion:V3LayerVersion example <layer_name>:<version>
/// ```
class V3LayerVersion extends pulumi.CustomResource {
  /// The access permission of the layer, 1: public, 0: private, default is private
  late final pulumi.Output<String?> acl;
  /// Layer code configuration See `code` below.
  late final pulumi.Output<V3LayerVersionCode?> code;
  /// (Available since v1.234.0) The code package size of the layer, in bytes.
  late final pulumi.Output<String> codeSize;
  /// List of runtime environments supported by the layer
  late final pulumi.Output<List<String>> compatibleRuntimes;
  /// The creation time of the resource
  late final pulumi.Output<String> createTime;
  /// Description of the version
  late final pulumi.Output<String?> description;
  /// Name of the layer
  late final pulumi.Output<String> layerName;
  /// (Available since v1.234.0) Layer version ARN. The format is acs:fc:{region }:{ accountID}:layers/{layerName}/versions/{layerVersion}.
  late final pulumi.Output<String> layerVersionArn;
  /// Layer License Agreement
  late final pulumi.Output<String?> license;
  /// Whether to expose the layer. Enumeration values: true, false. (Deprecated, please use acl instead)
  late final pulumi.Output<String?> public;
  /// The version of the layer
  late final pulumi.Output<String> version;

  /// Creates a new [V3LayerVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [V3LayerVersion]. {@macro pulumi_fc_v3_layer_version_v3_layer_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  V3LayerVersion(
    String name, {
    V3LayerVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:fc/v3LayerVersion:V3LayerVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.acl = registerOutput<String?>('acl');
    this.code = registerOutput<V3LayerVersionCode?>('code');
    this.codeSize = registerOutput<String>('codeSize');
    this.compatibleRuntimes = registerOutput<List<String>>('compatibleRuntimes');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.layerName = registerOutput<String>('layerName');
    this.layerVersionArn = registerOutput<String>('layerVersionArn');
    this.license = registerOutput<String?>('license');
    this.public = registerOutput<String?>('public');
    this.version = registerOutput<String>('version');
  }
}
