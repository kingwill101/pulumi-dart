import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_api_args.dart';
import 'http_api_state.dart';

/// Provides a APIG Http Api resource.
///
///
///
/// For information about APIG Http Api and how to use it, see [What is Http Api](https://next.api.aliyun.com/api/APIG/2024-03-27/CreateHttpApi).
///
/// > **NOTE:** Available since v1.240.0.
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
/// const protocol = config.get("protocol") || "HTTP";
/// const protocolHttps = config.get("protocolHttps") || "HTTPS";
/// const _default = alicloud.resourcemanager.getResourceGroups({});
/// const defaultHttpApi = new alicloud.apig.HttpApi("default", {
///     httpApiName: name,
///     protocols: [protocol],
///     basePath: "/v1",
///     description: "zhiwei_pop_examplecase",
///     type: "Rest",
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
/// protocol = config.get("protocol")
/// if protocol is None:
///     protocol = "HTTP"
/// protocol_https = config.get("protocolHttps")
/// if protocol_https is None:
///     protocol_https = "HTTPS"
/// default = alicloud.resourcemanager.get_resource_groups()
/// default_http_api = alicloud.apig.HttpApi("default",
///     http_api_name=name,
///     protocols=[protocol],
///     base_path="/v1",
///     description="zhiwei_pop_examplecase",
///     type="Rest")
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
///     var protocol = config.Get("protocol") ?? "HTTP";
///     var protocolHttps = config.Get("protocolHttps") ?? "HTTPS";
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaultHttpApi = new AliCloud.Apig.HttpApi("default", new()
///     {
///         HttpApiName = name,
///         Protocols = new[]
///         {
///             protocol,
///         },
///         BasePath = "/v1",
///         Description = "zhiwei_pop_examplecase",
///         Type = "Rest",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/apig"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
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
/// 		protocol := "HTTP"
/// 		if param := cfg.Get("protocol"); param != "" {
/// 			protocol = param
/// 		}
/// 		protocolHttps := "HTTPS"
/// 		if param := cfg.Get("protocolHttps"); param != "" {
/// 			protocolHttps = param
/// 		}
/// 		_, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apig.NewHttpApi(ctx, "default", &apig.HttpApiArgs{
/// 			HttpApiName: pulumi.String(name),
/// 			Protocols: pulumi.StringArray{
/// 				pulumi.String(protocol),
/// 			},
/// 			BasePath:    pulumi.String("/v1"),
/// 			Description: pulumi.String("zhiwei_pop_examplecase"),
/// 			Type:        pulumi.String("Rest"),
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.apig.HttpApi;
/// import com.pulumi.alicloud.apig.HttpApiArgs;
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
///         final var protocol = config.get("protocol").orElse("HTTP");
///         final var protocolHttps = config.get("protocolHttps").orElse("HTTPS");
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         var defaultHttpApi = new HttpApi("defaultHttpApi", HttpApiArgs.builder()
///             .httpApiName(name)
///             .protocols(protocol)
///             .basePath("/v1")
///             .description("zhiwei_pop_examplecase")
///             .type("Rest")
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
///   protocol:
///     type: string
///     default: HTTP
///   protocolHttps:
///     type: string
///     default: HTTPS
/// resources:
///   defaultHttpApi:
///     type: alicloud:apig:HttpApi
///     name: default
///     properties:
///       httpApiName: ${name}
///       protocols:
///         - ${protocol}
///       basePath: /v1
///       description: zhiwei_pop_examplecase
///       type: Rest
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// APIG Http Api can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:apig/httpApi:HttpApi example <id>
/// ```
class HttpApi extends pulumi.CustomResource {
  /// API path
  late final pulumi.Output<String?> basePath;
  /// Description of API
  late final pulumi.Output<String?> description;
  /// The name of the resource
  late final pulumi.Output<String> httpApiName;
  /// API protocol
  late final pulumi.Output<List<String>> protocols;
  /// The ID of the resource group
  late final pulumi.Output<String> resourceGroupId;
  /// API type
  late final pulumi.Output<String?> type;

  /// Creates a new [HttpApi].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HttpApi]. {@macro pulumi_apig_http_api_http_api_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HttpApi(
    String name, {
    HttpApiArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:apig/httpApi:HttpApi',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.basePath = registerOutput<String?>('basePath');
    this.description = registerOutput<String?>('description');
    this.httpApiName = registerOutput<String>('httpApiName');
    this.protocols = registerOutput<List<String>>('protocols');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.type = registerOutput<String?>('type');
  }

  /// Gets an existing [HttpApi] resource's state with the given [name] and [id].
  static HttpApi get(
    String name,
    pulumi.Input<String> id, {
    HttpApiState? state,
  }) {
    return HttpApi._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HttpApi._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:apig/httpApi:HttpApi',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.basePath = registerOutput<String?>('basePath');
    this.description = registerOutput<String?>('description');
    this.httpApiName = registerOutput<String>('httpApiName');
    this.protocols = registerOutput<List<String>>('protocols');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.type = registerOutput<String?>('type');
  }
}
