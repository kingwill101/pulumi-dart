import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_config_args.dart';
import 'domain_config_state.dart';

/// Provides a Cdn Domain Config resource.
///
/// For information about Cdn Domain Config and how to use it, see [What is Domain Config](https://www.alibabacloud.com/help/en/doc-detail/90915.htm)
///
/// &gt; **NOTE:** Available since v1.34.0.
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
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// // Create a new Domain config.
/// const domain = new alicloud.cdn.DomainNew("domain", {
///     domainName: `mycdndomain-${_default.result}.alicloud-provider.cn`,
///     cdnType: "web",
///     scope: "overseas",
///     sources: [{
///         content: "1.1.1.1",
///         type: "ipaddr",
///         priority: 20,
///         port: 80,
///         weight: 15,
///     }],
/// });
/// const config = new alicloud.cdn.DomainConfig("config", {
///     domainName: domain.domainName,
///     functionName: "ip_allow_list_set",
///     functionArgs: [{
///         argName: "ip_list",
///         argValue: "110.110.110.110",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// # Create a new Domain config.
/// domain = alicloud.cdn.DomainNew("domain",
///     domain_name=f"mycdndomain-{default['result']}.alicloud-provider.cn",
///     cdn_type="web",
///     scope="overseas",
///     sources=[{
///         "content": "1.1.1.1",
///         "type": "ipaddr",
///         "priority": 20,
///         "port": 80,
///         "weight": 15,
///     }])
/// config = alicloud.cdn.DomainConfig("config",
///     domain_name=domain.domain_name,
///     function_name="ip_allow_list_set",
///     function_args=[{
///         "arg_name": "ip_list",
///         "arg_value": "110.110.110.110",
///     }])
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
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     // Create a new Domain config.
///     var domain = new AliCloud.Cdn.DomainNew("domain", new()
///     {
///         DomainName = $"mycdndomain-{@default.Result}.alicloud-provider.cn",
///         CdnType = "web",
///         Scope = "overseas",
///         Sources = new[]
///         {
///             new AliCloud.Cdn.Inputs.DomainNewSourceArgs
///             {
///                 Content = "1.1.1.1",
///                 Type = "ipaddr",
///                 Priority = 20,
///                 Port = 80,
///                 Weight = 15,
///             },
///         },
///     });
///
///     var config = new AliCloud.Cdn.DomainConfig("config", new()
///     {
///         DomainName = domain.DomainName,
///         FunctionName = "ip_allow_list_set",
///         FunctionArgs = new[]
///         {
///             new AliCloud.Cdn.Inputs.DomainConfigFunctionArgArgs
///             {
///                 ArgName = "ip_list",
///                 ArgValue = "110.110.110.110",
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cdn"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create a new Domain config.
/// 		domain, err := cdn.NewDomainNew(ctx, "domain", &cdn.DomainNewArgs{
/// 			DomainName: pulumi.Sprintf("mycdndomain-%v.alicloud-provider.cn", _default.Result),
/// 			CdnType:    pulumi.String("web"),
/// 			Scope:      pulumi.String("overseas"),
/// 			Sources: cdn.DomainNewSourceArray{
/// 				&cdn.DomainNewSourceArgs{
/// 					Content:  pulumi.String("1.1.1.1"),
/// 					Type:     pulumi.String("ipaddr"),
/// 					Priority: pulumi.Int(20),
/// 					Port:     pulumi.Int(80),
/// 					Weight:   pulumi.Int(15),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cdn.NewDomainConfig(ctx, "config", &cdn.DomainConfigArgs{
/// 			DomainName:   domain.DomainName,
/// 			FunctionName: pulumi.String("ip_allow_list_set"),
/// 			FunctionArgs: cdn.DomainConfigFunctionArgArray{
/// 				&cdn.DomainConfigFunctionArgArgs{
/// 					ArgName:  pulumi.String("ip_list"),
/// 					ArgValue: pulumi.String("110.110.110.110"),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.cdn.DomainNew;
/// import com.pulumi.alicloud.cdn.DomainNewArgs;
/// import com.pulumi.alicloud.cdn.inputs.DomainNewSourceArgs;
/// import com.pulumi.alicloud.cdn.DomainConfig;
/// import com.pulumi.alicloud.cdn.DomainConfigArgs;
/// import com.pulumi.alicloud.cdn.inputs.DomainConfigFunctionArgArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         // Create a new Domain config.
///         var domain = new DomainNew("domain", DomainNewArgs.builder()
///             .domainName(String.format("mycdndomain-%s.alicloud-provider.cn", default_.result()))
///             .cdnType("web")
///             .scope("overseas")
///             .sources(DomainNewSourceArgs.builder()
///                 .content("1.1.1.1")
///                 .type("ipaddr")
///                 .priority(20)
///                 .port(80)
///                 .weight(15)
///                 .build())
///             .build());
///
///         var config = new DomainConfig("config", DomainConfigArgs.builder()
///             .domainName(domain.domainName())
///             .functionName("ip_allow_list_set")
///             .functionArgs(DomainConfigFunctionArgArgs.builder()
///                 .argName("ip_list")
///                 .argValue("110.110.110.110")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   # Create a new Domain config.
///   domain:
///     type: alicloud:cdn:DomainNew
///     properties:
///       domainName: mycdndomain-${default.result}.alicloud-provider.cn
///       cdnType: web
///       scope: overseas
///       sources:
///         - content: 1.1.1.1
///           type: ipaddr
///           priority: '20'
///           port: 80
///           weight: '15'
///   config:
///     type: alicloud:cdn:DomainConfig
///     properties:
///       domainName: ${domain.domainName}
///       functionName: ip_allow_list_set
///       functionArgs:
///         - argName: ip_list
///           argValue: 110.110.110.110
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// CDN domain config can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cdn/domainConfig:DomainConfig example <domain_name>:<function_name>:<config_id>
/// ```
///
/// ```sh
/// $ pulumi import alicloud:cdn/domainConfig:DomainConfig example <domain_name>:<function_name>
/// ```
class DomainConfig extends pulumi.CustomResource {
  /// (Available since v1.132.0) The ID of the domain config function.
  late final pulumi.Output<String> configId;
  /// Name of the accelerated domain. This name without suffix can have a string of 1 to 63 characters, must contain only alphanumeric characters or "-", and must not begin or end with "-", and "-" must not in the 3th and 4th character positions at the same time. Suffix `.sh` and `.tel` are not supported.
  late final pulumi.Output<String> domainName;
  /// The args of the domain config. See `function_args` below.
  late final pulumi.Output<List<Map<String, dynamic>>> functionArgs;
  /// The name of the domain config.
  late final pulumi.Output<String> functionName;
  /// By configuring the function condition (rule engine) in the domain name configuration function parameters, Rule conditions can be created (Rule conditions can match and filter user requests by identifying various parameters carried in user requests). After each rule condition is created, a corresponding ConfigId will be generated, and the ConfigId can be referenced by other functions as a ParentId parameter, in this way, the rule conditions can be combined with the functional configuration to form a more flexible configuration.
  late final pulumi.Output<String> parentId;
  /// (Available since v1.132.0) The Status of the function.
  late final pulumi.Output<String> status;

  /// Creates a new [DomainConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DomainConfig]. {@macro pulumi_cdn_domain_config_domain_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DomainConfig(
    String name, {
    DomainConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cdn/domainConfig:DomainConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    configId = registerOutput<String>('configId');
    domainName = registerOutput<String>('domainName');
    functionArgs = registerOutput<List<Map<String, dynamic>>>('functionArgs');
    functionName = registerOutput<String>('functionName');
    parentId = registerOutput<String>('parentId');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [DomainConfig] resource's state with the given [name] and [id].
  static DomainConfig get(
    String name,
    pulumi.Input<String> id, {
    DomainConfigState? state,
  }) {
    return DomainConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DomainConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cdn/domainConfig:DomainConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    configId = registerOutput<String>('configId');
    domainName = registerOutput<String>('domainName');
    functionArgs = registerOutput<List<Map<String, dynamic>>>('functionArgs');
    functionName = registerOutput<String>('functionName');
    parentId = registerOutput<String>('parentId');
    status = registerOutput<String>('status');
  }
}
