import 'package:pulumi/pulumi.dart' as pulumi;
import 'waf_domain_args.dart';
import 'waf_domain_state.dart';

/// Provides a DCDN Waf Domain resource.
///
/// For information about DCDN Waf Domain and how to use it, see [What is Waf Domain](https://www.alibabacloud.com/help/en/dcdn/developer-reference/api-dcdn-2018-01-15-batchsetdcdnwafdomainconfigs).
///
/// &gt; **NOTE:** Available since v1.185.0.
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
/// const domainName = config.get("domainName") || "tf-example.com";
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const example = new alicloud.dcdn.Domain("example", {
///     domainName: `${domainName}-${_default.result}`,
///     scope: "overseas",
///     sources: [{
///         content: "1.1.1.1",
///         port: 80,
///         priority: "20",
///         type: "ipaddr",
///         weight: "10",
///     }],
/// });
/// const exampleWafDomain = new alicloud.dcdn.WafDomain("example", {
///     domainName: example.domainName,
///     clientIpTag: "X-Forwarded-For",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// domain_name = config.get("domainName")
/// if domain_name is None:
///     domain_name = "tf-example.com"
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// example = alicloud.dcdn.Domain("example",
///     domain_name=f"{domain_name}-{default['result']}",
///     scope="overseas",
///     sources=[{
///         "content": "1.1.1.1",
///         "port": 80,
///         "priority": "20",
///         "type": "ipaddr",
///         "weight": "10",
///     }])
/// example_waf_domain = alicloud.dcdn.WafDomain("example",
///     domain_name=example.domain_name,
///     client_ip_tag="X-Forwarded-For")
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
///     var domainName = config.Get("domainName") ?? "tf-example.com";
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var example = new AliCloud.Dcdn.Domain("example", new()
///     {
///         DomainName = $"{domainName}-{@default.Result}",
///         Scope = "overseas",
///         Sources = new[]
///         {
///             new AliCloud.Dcdn.Inputs.DomainSourceArgs
///             {
///                 Content = "1.1.1.1",
///                 Port = 80,
///                 Priority = "20",
///                 Type = "ipaddr",
///                 Weight = "10",
///             },
///         },
///     });
///
///     var exampleWafDomain = new AliCloud.Dcdn.WafDomain("example", new()
///     {
///         DomainName = example.DomainName,
///         ClientIpTag = "X-Forwarded-For",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dcdn"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		domainName := "tf-example.com"
/// 		if param := cfg.Get("domainName"); param != "" {
/// 			domainName = param
/// 		}
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := dcdn.NewDomain(ctx, "example", &dcdn.DomainArgs{
/// 			DomainName: pulumi.Sprintf("%v-%v", domainName, _default.Result),
/// 			Scope:      pulumi.String("overseas"),
/// 			Sources: dcdn.DomainSourceArray{
/// 				&dcdn.DomainSourceArgs{
/// 					Content:  pulumi.String("1.1.1.1"),
/// 					Port:     pulumi.Int(80),
/// 					Priority: pulumi.String("20"),
/// 					Type:     pulumi.String("ipaddr"),
/// 					Weight:   pulumi.String("10"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dcdn.NewWafDomain(ctx, "example", &dcdn.WafDomainArgs{
/// 			DomainName:  example.DomainName,
/// 			ClientIpTag: pulumi.String("X-Forwarded-For"),
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
/// import com.pulumi.alicloud.dcdn.Domain;
/// import com.pulumi.alicloud.dcdn.DomainArgs;
/// import com.pulumi.alicloud.dcdn.inputs.DomainSourceArgs;
/// import com.pulumi.alicloud.dcdn.WafDomain;
/// import com.pulumi.alicloud.dcdn.WafDomainArgs;
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
///         final var domainName = config.get("domainName").orElse("tf-example.com");
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var example = new Domain("example", DomainArgs.builder()
///             .domainName(String.format("%s-%s", domainName,default_.result()))
///             .scope("overseas")
///             .sources(DomainSourceArgs.builder()
///                 .content("1.1.1.1")
///                 .port(80)
///                 .priority("20")
///                 .type("ipaddr")
///                 .weight("10")
///                 .build())
///             .build());
///
///         var exampleWafDomain = new WafDomain("exampleWafDomain", WafDomainArgs.builder()
///             .domainName(example.domainName())
///             .clientIpTag("X-Forwarded-For")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   domainName:
///     type: string
///     default: tf-example.com
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   example:
///     type: alicloud:dcdn:Domain
///     properties:
///       domainName: ${domainName}-${default.result}
///       scope: overseas
///       sources:
///         - content: 1.1.1.1
///           port: '80'
///           priority: '20'
///           type: ipaddr
///           weight: '10'
///   exampleWafDomain:
///     type: alicloud:dcdn:WafDomain
///     name: example
///     properties:
///       domainName: ${example.domainName}
///       clientIpTag: X-Forwarded-For
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// DCDN Waf Domain can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dcdn/wafDomain:WafDomain example <domain_name>
/// ```
class WafDomain extends pulumi.CustomResource {
  /// The client ip tag.
  late final pulumi.Output<String?> clientIpTag;

  /// The accelerated domain name.
  late final pulumi.Output<String> domainName;

  /// Creates a new [WafDomain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WafDomain]. {@macro pulumi_dcdn_waf_domain_waf_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WafDomain(
    String name, {
    WafDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:dcdn/wafDomain:WafDomain',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    clientIpTag = registerOutput<String?>('clientIpTag');
    domainName = registerOutput<String>('domainName');
  }

  /// Gets an existing [WafDomain] resource's state with the given [name] and [id].
  static WafDomain get(
    String name,
    pulumi.Input<String> id, {
    WafDomainState? state,
  }) {
    return WafDomain._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WafDomain._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:dcdn/wafDomain:WafDomain',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    clientIpTag = registerOutput<String?>('clientIpTag');
    domainName = registerOutput<String>('domainName');
  }
}
