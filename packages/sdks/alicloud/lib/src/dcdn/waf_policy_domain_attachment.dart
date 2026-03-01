import 'package:pulumi/pulumi.dart' as pulumi;
import 'waf_policy_domain_attachment_args.dart';
import 'waf_policy_domain_attachment_state.dart';

/// Provides a DCDN Waf Policy Domain Attachment resource.
///
/// For information about DCDN Waf Policy Domain Attachment and how to use it, see [What is Waf Policy Domain Attachment](https://www.alibabacloud.com/help/en/dcdn/developer-reference/api-dcdn-2018-01-15-modifydcdnwafpolicydomains).
///
/// > **NOTE:** Available since v1.186.0.
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
/// const name = config.get("name") || "tf_example";
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
/// const exampleWafPolicy = new alicloud.dcdn.WafPolicy("example", {
///     defenseScene: "waf_group",
///     policyName: `${name}_${_default.result}`,
///     policyType: "custom",
///     status: "on",
/// });
/// const exampleWafPolicyDomainAttachment = new alicloud.dcdn.WafPolicyDomainAttachment("example", {
///     domainName: exampleWafDomain.domainName,
///     policyId: exampleWafPolicy.id,
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
/// name = config.get("name")
/// if name is None:
///     name = "tf_example"
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
/// example_waf_policy = alicloud.dcdn.WafPolicy("example",
///     defense_scene="waf_group",
///     policy_name=f"{name}_{default['result']}",
///     policy_type="custom",
///     status="on")
/// example_waf_policy_domain_attachment = alicloud.dcdn.WafPolicyDomainAttachment("example",
///     domain_name=example_waf_domain.domain_name,
///     policy_id=example_waf_policy.id)
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
///     var name = config.Get("name") ?? "tf_example";
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
///     var exampleWafPolicy = new AliCloud.Dcdn.WafPolicy("example", new()
///     {
///         DefenseScene = "waf_group",
///         PolicyName = $"{name}_{@default.Result}",
///         PolicyType = "custom",
///         Status = "on",
///     });
///
///     var exampleWafPolicyDomainAttachment = new AliCloud.Dcdn.WafPolicyDomainAttachment("example", new()
///     {
///         DomainName = exampleWafDomain.DomainName,
///         PolicyId = exampleWafPolicy.Id,
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
/// 		name := "tf_example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
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
/// 		exampleWafDomain, err := dcdn.NewWafDomain(ctx, "example", &dcdn.WafDomainArgs{
/// 			DomainName:  example.DomainName,
/// 			ClientIpTag: pulumi.String("X-Forwarded-For"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleWafPolicy, err := dcdn.NewWafPolicy(ctx, "example", &dcdn.WafPolicyArgs{
/// 			DefenseScene: pulumi.String("waf_group"),
/// 			PolicyName:   pulumi.Sprintf("%v_%v", name, _default.Result),
/// 			PolicyType:   pulumi.String("custom"),
/// 			Status:       pulumi.String("on"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dcdn.NewWafPolicyDomainAttachment(ctx, "example", &dcdn.WafPolicyDomainAttachmentArgs{
/// 			DomainName: exampleWafDomain.DomainName,
/// 			PolicyId:   exampleWafPolicy.ID(),
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
/// import com.pulumi.alicloud.dcdn.WafPolicy;
/// import com.pulumi.alicloud.dcdn.WafPolicyArgs;
/// import com.pulumi.alicloud.dcdn.WafPolicyDomainAttachment;
/// import com.pulumi.alicloud.dcdn.WafPolicyDomainAttachmentArgs;
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
///         final var name = config.get("name").orElse("tf_example");
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
///         var exampleWafPolicy = new WafPolicy("exampleWafPolicy", WafPolicyArgs.builder()
///             .defenseScene("waf_group")
///             .policyName(String.format("%s_%s", name,default_.result()))
///             .policyType("custom")
///             .status("on")
///             .build());
///
///         var exampleWafPolicyDomainAttachment = new WafPolicyDomainAttachment("exampleWafPolicyDomainAttachment", WafPolicyDomainAttachmentArgs.builder()
///             .domainName(exampleWafDomain.domainName())
///             .policyId(exampleWafPolicy.id())
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
///   name:
///     type: string
///     default: tf_example
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
///   exampleWafPolicy:
///     type: alicloud:dcdn:WafPolicy
///     name: example
///     properties:
///       defenseScene: waf_group
///       policyName: ${name}_${default.result}
///       policyType: custom
///       status: on
///   exampleWafPolicyDomainAttachment:
///     type: alicloud:dcdn:WafPolicyDomainAttachment
///     name: example
///     properties:
///       domainName: ${exampleWafDomain.domainName}
///       policyId: ${exampleWafPolicy.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// DCDN Waf Policy Domain Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dcdn/wafPolicyDomainAttachment:WafPolicyDomainAttachment example policy_id:domain_name
/// ```
class WafPolicyDomainAttachment extends pulumi.CustomResource {
  /// Access the accelerated domain name of the specified protection policy.
  late final pulumi.Output<String> domainName;
  /// The protection policy ID. Only one input is supported.
  late final pulumi.Output<String> policyId;

  /// Creates a new [WafPolicyDomainAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WafPolicyDomainAttachment]. {@macro pulumi_dcdn_waf_policy_domain_attachment_waf_policy_domain_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WafPolicyDomainAttachment(
    String name, {
    WafPolicyDomainAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dcdn/wafPolicyDomainAttachment:WafPolicyDomainAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.domainName = registerOutput<String>('domainName');
    this.policyId = registerOutput<String>('policyId');
  }

  /// Gets an existing [WafPolicyDomainAttachment] resource's state with the given [name] and [id].
  static WafPolicyDomainAttachment get(
    String name,
    pulumi.Input<String> id, {
    WafPolicyDomainAttachmentState? state,
  }) {
    return WafPolicyDomainAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WafPolicyDomainAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dcdn/wafPolicyDomainAttachment:WafPolicyDomainAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.domainName = registerOutput<String>('domainName');
    this.policyId = registerOutput<String>('policyId');
  }
}
