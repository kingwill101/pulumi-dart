import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_config_args.dart';
import 'domain_config_function_arg.dart';

/// Provides a DCDN Accelerated Domain resource.
///
/// For information about domain config and how to use it, see [Batch set config](https://www.alibabacloud.com/help/en/doc-detail/130632.htm).
///
/// > **NOTE:** Available since v1.131.0.
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
/// const domainName = config.get("domainName") || "alibaba-example.com";
/// const example = new alicloud.dcdn.Domain("example", {
///     domainName: domainName,
///     scope: "overseas",
///     status: "online",
///     sources: [{
///         content: "1.1.1.1",
///         type: "ipaddr",
///         priority: "20",
///         port: 80,
///         weight: "10",
///     }],
/// });
/// const ipAllowListSet = new alicloud.dcdn.DomainConfig("ip_allow_list_set", {
///     domainName: example.domainName,
///     functionName: "ip_allow_list_set",
///     functionArgs: [{
///         argName: "ip_list",
///         argValue: "192.168.0.1",
///     }],
/// });
/// const refererWhiteListSet = new alicloud.dcdn.DomainConfig("referer_white_list_set", {
///     domainName: example.domainName,
///     functionName: "referer_white_list_set",
///     functionArgs: [{
///         argName: "refer_domain_allow_list",
///         argValue: "110.110.110.110",
///     }],
/// });
/// const filetypeBasedTtlSet = new alicloud.dcdn.DomainConfig("filetype_based_ttl_set", {
///     domainName: example.domainName,
///     functionName: "filetype_based_ttl_set",
///     functionArgs: [
///         {
///             argName: "ttl",
///             argValue: "300",
///         },
///         {
///             argName: "file_type",
///             argValue: "jpg",
///         },
///         {
///             argName: "weight",
///             argValue: "1",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// domain_name = config.get("domainName")
/// if domain_name is None:
///     domain_name = "alibaba-example.com"
/// example = alicloud.dcdn.Domain("example",
///     domain_name=domain_name,
///     scope="overseas",
///     status="online",
///     sources=[{
///         "content": "1.1.1.1",
///         "type": "ipaddr",
///         "priority": "20",
///         "port": 80,
///         "weight": "10",
///     }])
/// ip_allow_list_set = alicloud.dcdn.DomainConfig("ip_allow_list_set",
///     domain_name=example.domain_name,
///     function_name="ip_allow_list_set",
///     function_args=[{
///         "arg_name": "ip_list",
///         "arg_value": "192.168.0.1",
///     }])
/// referer_white_list_set = alicloud.dcdn.DomainConfig("referer_white_list_set",
///     domain_name=example.domain_name,
///     function_name="referer_white_list_set",
///     function_args=[{
///         "arg_name": "refer_domain_allow_list",
///         "arg_value": "110.110.110.110",
///     }])
/// filetype_based_ttl_set = alicloud.dcdn.DomainConfig("filetype_based_ttl_set",
///     domain_name=example.domain_name,
///     function_name="filetype_based_ttl_set",
///     function_args=[
///         {
///             "arg_name": "ttl",
///             "arg_value": "300",
///         },
///         {
///             "arg_name": "file_type",
///             "arg_value": "jpg",
///         },
///         {
///             "arg_name": "weight",
///             "arg_value": "1",
///         },
///     ])
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
///     var domainName = config.Get("domainName") ?? "alibaba-example.com";
///     var example = new AliCloud.Dcdn.Domain("example", new()
///     {
///         DomainName = domainName,
///         Scope = "overseas",
///         Status = "online",
///         Sources = new[]
///         {
///             new AliCloud.Dcdn.Inputs.DomainSourceArgs
///             {
///                 Content = "1.1.1.1",
///                 Type = "ipaddr",
///                 Priority = "20",
///                 Port = 80,
///                 Weight = "10",
///             },
///         },
///     });
///
///     var ipAllowListSet = new AliCloud.Dcdn.DomainConfig("ip_allow_list_set", new()
///     {
///         DomainName = example.DomainName,
///         FunctionName = "ip_allow_list_set",
///         FunctionArgs = new[]
///         {
///             new AliCloud.Dcdn.Inputs.DomainConfigFunctionArgArgs
///             {
///                 ArgName = "ip_list",
///                 ArgValue = "192.168.0.1",
///             },
///         },
///     });
///
///     var refererWhiteListSet = new AliCloud.Dcdn.DomainConfig("referer_white_list_set", new()
///     {
///         DomainName = example.DomainName,
///         FunctionName = "referer_white_list_set",
///         FunctionArgs = new[]
///         {
///             new AliCloud.Dcdn.Inputs.DomainConfigFunctionArgArgs
///             {
///                 ArgName = "refer_domain_allow_list",
///                 ArgValue = "110.110.110.110",
///             },
///         },
///     });
///
///     var filetypeBasedTtlSet = new AliCloud.Dcdn.DomainConfig("filetype_based_ttl_set", new()
///     {
///         DomainName = example.DomainName,
///         FunctionName = "filetype_based_ttl_set",
///         FunctionArgs = new[]
///         {
///             new AliCloud.Dcdn.Inputs.DomainConfigFunctionArgArgs
///             {
///                 ArgName = "ttl",
///                 ArgValue = "300",
///             },
///             new AliCloud.Dcdn.Inputs.DomainConfigFunctionArgArgs
///             {
///                 ArgName = "file_type",
///                 ArgValue = "jpg",
///             },
///             new AliCloud.Dcdn.Inputs.DomainConfigFunctionArgArgs
///             {
///                 ArgName = "weight",
///                 ArgValue = "1",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dcdn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		domainName := "alibaba-example.com"
/// 		if param := cfg.Get("domainName"); param != "" {
/// 			domainName = param
/// 		}
/// 		example, err := dcdn.NewDomain(ctx, "example", &dcdn.DomainArgs{
/// 			DomainName: pulumi.String(domainName),
/// 			Scope:      pulumi.String("overseas"),
/// 			Status:     pulumi.String("online"),
/// 			Sources: dcdn.DomainSourceArray{
/// 				&dcdn.DomainSourceArgs{
/// 					Content:  pulumi.String("1.1.1.1"),
/// 					Type:     pulumi.String("ipaddr"),
/// 					Priority: pulumi.String("20"),
/// 					Port:     pulumi.Int(80),
/// 					Weight:   pulumi.String("10"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dcdn.NewDomainConfig(ctx, "ip_allow_list_set", &dcdn.DomainConfigArgs{
/// 			DomainName:   example.DomainName,
/// 			FunctionName: pulumi.String("ip_allow_list_set"),
/// 			FunctionArgs: dcdn.DomainConfigFunctionArgArray{
/// 				&dcdn.DomainConfigFunctionArgArgs{
/// 					ArgName:  pulumi.String("ip_list"),
/// 					ArgValue: pulumi.String("192.168.0.1"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dcdn.NewDomainConfig(ctx, "referer_white_list_set", &dcdn.DomainConfigArgs{
/// 			DomainName:   example.DomainName,
/// 			FunctionName: pulumi.String("referer_white_list_set"),
/// 			FunctionArgs: dcdn.DomainConfigFunctionArgArray{
/// 				&dcdn.DomainConfigFunctionArgArgs{
/// 					ArgName:  pulumi.String("refer_domain_allow_list"),
/// 					ArgValue: pulumi.String("110.110.110.110"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dcdn.NewDomainConfig(ctx, "filetype_based_ttl_set", &dcdn.DomainConfigArgs{
/// 			DomainName:   example.DomainName,
/// 			FunctionName: pulumi.String("filetype_based_ttl_set"),
/// 			FunctionArgs: dcdn.DomainConfigFunctionArgArray{
/// 				&dcdn.DomainConfigFunctionArgArgs{
/// 					ArgName:  pulumi.String("ttl"),
/// 					ArgValue: pulumi.String("300"),
/// 				},
/// 				&dcdn.DomainConfigFunctionArgArgs{
/// 					ArgName:  pulumi.String("file_type"),
/// 					ArgValue: pulumi.String("jpg"),
/// 				},
/// 				&dcdn.DomainConfigFunctionArgArgs{
/// 					ArgName:  pulumi.String("weight"),
/// 					ArgValue: pulumi.String("1"),
/// 				},
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
/// import com.pulumi.alicloud.dcdn.Domain;
/// import com.pulumi.alicloud.dcdn.DomainArgs;
/// import com.pulumi.alicloud.dcdn.inputs.DomainSourceArgs;
/// import com.pulumi.alicloud.dcdn.DomainConfig;
/// import com.pulumi.alicloud.dcdn.DomainConfigArgs;
/// import com.pulumi.alicloud.dcdn.inputs.DomainConfigFunctionArgArgs;
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
///         final var domainName = config.get("domainName").orElse("alibaba-example.com");
///         var example = new Domain("example", DomainArgs.builder()
///             .domainName(domainName)
///             .scope("overseas")
///             .status("online")
///             .sources(DomainSourceArgs.builder()
///                 .content("1.1.1.1")
///                 .type("ipaddr")
///                 .priority("20")
///                 .port(80)
///                 .weight("10")
///                 .build())
///             .build());
///
///         var ipAllowListSet = new DomainConfig("ipAllowListSet", DomainConfigArgs.builder()
///             .domainName(example.domainName())
///             .functionName("ip_allow_list_set")
///             .functionArgs(DomainConfigFunctionArgArgs.builder()
///                 .argName("ip_list")
///                 .argValue("192.168.0.1")
///                 .build())
///             .build());
///
///         var refererWhiteListSet = new DomainConfig("refererWhiteListSet", DomainConfigArgs.builder()
///             .domainName(example.domainName())
///             .functionName("referer_white_list_set")
///             .functionArgs(DomainConfigFunctionArgArgs.builder()
///                 .argName("refer_domain_allow_list")
///                 .argValue("110.110.110.110")
///                 .build())
///             .build());
///
///         var filetypeBasedTtlSet = new DomainConfig("filetypeBasedTtlSet", DomainConfigArgs.builder()
///             .domainName(example.domainName())
///             .functionName("filetype_based_ttl_set")
///             .functionArgs(
///                 DomainConfigFunctionArgArgs.builder()
///                     .argName("ttl")
///                     .argValue("300")
///                     .build(),
///                 DomainConfigFunctionArgArgs.builder()
///                     .argName("file_type")
///                     .argValue("jpg")
///                     .build(),
///                 DomainConfigFunctionArgArgs.builder()
///                     .argName("weight")
///                     .argValue("1")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   domainName:
///     type: string
///     default: alibaba-example.com
/// resources:
///   example:
///     type: alicloud:dcdn:Domain
///     properties:
///       domainName: ${domainName}
///       scope: overseas
///       status: online
///       sources:
///         - content: 1.1.1.1
///           type: ipaddr
///           priority: 20
///           port: 80
///           weight: 10
///   ipAllowListSet:
///     type: alicloud:dcdn:DomainConfig
///     name: ip_allow_list_set
///     properties:
///       domainName: ${example.domainName}
///       functionName: ip_allow_list_set
///       functionArgs:
///         - argName: ip_list
///           argValue: 192.168.0.1
///   refererWhiteListSet:
///     type: alicloud:dcdn:DomainConfig
///     name: referer_white_list_set
///     properties:
///       domainName: ${example.domainName}
///       functionName: referer_white_list_set
///       functionArgs:
///         - argName: refer_domain_allow_list
///           argValue: 110.110.110.110
///   filetypeBasedTtlSet:
///     type: alicloud:dcdn:DomainConfig
///     name: filetype_based_ttl_set
///     properties:
///       domainName: ${example.domainName}
///       functionName: filetype_based_ttl_set
///       functionArgs:
///         - argName: ttl
///           argValue: '300'
///         - argName: file_type
///           argValue: jpg
///         - argName: weight
///           argValue: '1'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// DCDN domain config can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dcdn/domainConfig:DomainConfig example <domain_name>:<function_name>:<config_id>
/// ```
class DomainConfig extends pulumi.CustomResource {
  /// The ID of the configuration.
  late final pulumi.Output<String> configId;
  /// Name of the accelerated domain. This name without suffix can have a string of 1 to 63 characters, must contain only alphanumeric characters or "-", and must not begin or end with "-", and "-" must not in the 3th and 4th character positions at the same time. Suffix `.sh` and `.tel` are not supported.
  late final pulumi.Output<String> domainName;
  /// The args of the domain config. See `function_args` below.
  late final pulumi.Output<List<DomainConfigFunctionArg>> functionArgs;
  /// The name of the domain config.
  late final pulumi.Output<String> functionName;
  /// By configuring the function condition (rule engine) in the domain name configuration function parameters, Rule conditions can be created (Rule conditions can match and filter user requests by identifying various parameters carried in user requests). After each rule condition is created, a corresponding ConfigId will be generated, and the ConfigId can be referenced by other functions as a ParentId parameter, in this way, the rule conditions can be combined with the functional configuration to form a more flexible configuration.
  late final pulumi.Output<String> parentId;
  /// The status of the Config.
  late final pulumi.Output<String> status;

  /// Creates a new [DomainConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DomainConfig]. {@macro pulumi_dcdn_domain_config_domain_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DomainConfig(
    String name, {
    DomainConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dcdn/domainConfig:DomainConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.configId = registerOutput<String>('configId');
    this.domainName = registerOutput<String>('domainName');
    this.functionArgs = registerOutput<List<DomainConfigFunctionArg>>('functionArgs');
    this.functionName = registerOutput<String>('functionName');
    this.parentId = registerOutput<String>('parentId');
    this.status = registerOutput<String>('status');
  }
}
