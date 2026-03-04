import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_args.dart';
import 'group_state.dart';
import 'group_user_log_config.dart';

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
/// const _default = new alicloud.apigateway.Group("default", {
///     name: "tf_example",
///     description: "tf_example",
///     basePath: "/",
///     userLogConfig: {
///         requestBody: true,
///         responseBody: true,
///         queryString: "*",
///         requestHeaders: "*",
///         responseHeaders: "*",
///         jwtClaims: "*",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.apigateway.Group("default",
///     name="tf_example",
///     description="tf_example",
///     base_path="/",
///     user_log_config={
///         "request_body": True,
///         "response_body": True,
///         "query_string": "*",
///         "request_headers": "*",
///         "response_headers": "*",
///         "jwt_claims": "*",
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
///     var @default = new AliCloud.ApiGateway.Group("default", new()
///     {
///         Name = "tf_example",
///         Description = "tf_example",
///         BasePath = "/",
///         UserLogConfig = new AliCloud.ApiGateway.Inputs.GroupUserLogConfigArgs
///         {
///             RequestBody = true,
///             ResponseBody = true,
///             QueryString = "*",
///             RequestHeaders = "*",
///             ResponseHeaders = "*",
///             JwtClaims = "*",
///         },
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
/// 		_, err := apigateway.NewGroup(ctx, "default", &apigateway.GroupArgs{
/// 			Name:        pulumi.String("tf_example"),
/// 			Description: pulumi.String("tf_example"),
/// 			BasePath:    pulumi.String("/"),
/// 			UserLogConfig: &apigateway.GroupUserLogConfigArgs{
/// 				RequestBody:     pulumi.Bool(true),
/// 				ResponseBody:    pulumi.Bool(true),
/// 				QueryString:     pulumi.String("*"),
/// 				RequestHeaders:  pulumi.String("*"),
/// 				ResponseHeaders: pulumi.String("*"),
/// 				JwtClaims:       pulumi.String("*"),
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
/// import com.pulumi.alicloud.apigateway.Group;
/// import com.pulumi.alicloud.apigateway.GroupArgs;
/// import com.pulumi.alicloud.apigateway.inputs.GroupUserLogConfigArgs;
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
///         var default_ = new Group("default", GroupArgs.builder()
///             .name("tf_example")
///             .description("tf_example")
///             .basePath("/")
///             .userLogConfig(GroupUserLogConfigArgs.builder()
///                 .requestBody(true)
///                 .responseBody(true)
///                 .queryString("*")
///                 .requestHeaders("*")
///                 .responseHeaders("*")
///                 .jwtClaims("*")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:apigateway:Group
///     properties:
///       name: tf_example
///       description: tf_example
///       basePath: /
///       userLogConfig:
///         requestBody: true
///         responseBody: true
///         queryString: '*'
///         requestHeaders: '*'
///         responseHeaders: '*'
///         jwtClaims: '*'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Api gateway group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:apigateway/group:Group example "ab2351f2ce904edaa8d92a0510832b91"
/// ```
class Group extends pulumi.CustomResource {
  /// The base path of the api gateway group. Defaults to `/`.
  late final pulumi.Output<String> basePath;

  /// The description of the api gateway group. Defaults to null.
  late final pulumi.Output<String?> description;

  /// The id of the api gateway.
  late final pulumi.Output<String> instanceId;

  /// The name of the api gateway group. Defaults to null.
  late final pulumi.Output<String> name;

  /// (Available in 1.69.0+)	Second-level domain name automatically assigned to the API group.
  late final pulumi.Output<String> subDomain;

  /// user_log_config defines the config of user log of the group. See `user_log_config` below.
  late final pulumi.Output<GroupUserLogConfig?> userLogConfig;

  /// (Available in 1.69.0+)	Second-level VPC domain name automatically assigned to the API group.
  late final pulumi.Output<String> vpcDomain;

  /// Whether to enable `vpc_domain`. Defaults to `false`.
  late final pulumi.Output<bool?> vpcIntranetEnable;

  /// Creates a new [Group].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Group]. {@macro pulumi_apigateway_group_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Group(String name, {GroupArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'alicloud:apigateway/group:Group',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    basePath = registerOutput<String>('basePath');
    description = registerOutput<String?>('description');
    instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
    subDomain = registerOutput<String>('subDomain');
    userLogConfig = registerOutput<GroupUserLogConfig?>('userLogConfig');
    vpcDomain = registerOutput<String>('vpcDomain');
    vpcIntranetEnable = registerOutput<bool?>('vpcIntranetEnable');
  }

  /// Gets an existing [Group] resource's state with the given [name] and [id].
  static Group get(String name, pulumi.Input<String> id, {GroupState? state}) {
    return Group._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Group._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:apigateway/group:Group',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    basePath = registerOutput<String>('basePath');
    description = registerOutput<String?>('description');
    instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
    subDomain = registerOutput<String>('subDomain');
    userLogConfig = registerOutput<GroupUserLogConfig?>('userLogConfig');
    vpcDomain = registerOutput<String>('vpcDomain');
    vpcIntranetEnable = registerOutput<bool?>('vpcIntranetEnable');
  }
}
