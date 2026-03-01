import 'package:pulumi/pulumi.dart' as pulumi;
import 'coo_domain_precise_access_rule_args.dart';
import 'coo_domain_precise_access_rule_condition.dart';

/// Provides a DdosCoo Domain Precise Access Rule resource.
///
/// Precise access control rules for website business.
///
/// For information about DdosCoo Domain Precise Access Rule and how to use it, see [What is Domain Precise Access Rule](https://next.api.alibabacloud.com/document/ddoscoo/2020-01-01/ModifyWebPreciseAccessRule).
///
/// > **NOTE:** Available since v1.271.0.
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
/// const name = config.get("name") || "terraform";
/// const domain = config.get("domain") || "terraform-example.alibaba.com";
/// const _default = alicloud.ddos.getDdosCooInstances({});
/// const defaultDomainResource = new alicloud.ddos.DomainResource("default", {
///     domain: domain,
///     instanceIds: [_default.then(_default => _default.ids?.[0])],
///     proxyTypes: [{
///         proxyPorts: [443],
///         proxyType: "https",
///     }],
///     realServers: ["177.167.32.11"],
///     rsType: 0,
/// });
/// const defaultCooDomainPreciseAccessRule = new alicloud.ddos.CooDomainPreciseAccessRule("default", {
///     conditions: [{
///         matchMethod: "contain",
///         field: "header",
///         content: "222",
///         headerName: "15",
///     }],
///     action: "accept",
///     expires: 0,
///     domain: defaultDomainResource.id,
///     name: name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform"
/// domain = config.get("domain")
/// if domain is None:
///     domain = "terraform-example.alibaba.com"
/// default = alicloud.ddos.get_ddos_coo_instances()
/// default_domain_resource = alicloud.ddos.DomainResource("default",
///     domain=domain,
///     instance_ids=[default.ids[0]],
///     proxy_types=[{
///         "proxy_ports": [443],
///         "proxy_type": "https",
///     }],
///     real_servers=["177.167.32.11"],
///     rs_type=0)
/// default_coo_domain_precise_access_rule = alicloud.ddos.CooDomainPreciseAccessRule("default",
///     conditions=[{
///         "match_method": "contain",
///         "field": "header",
///         "content": "222",
///         "header_name": "15",
///     }],
///     action="accept",
///     expires=0,
///     domain=default_domain_resource.id,
///     name=name)
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
///     var name = config.Get("name") ?? "terraform";
///     var domain = config.Get("domain") ?? "terraform-example.alibaba.com";
///     var @default = AliCloud.Ddos.GetDdosCooInstances.Invoke();
///
///     var defaultDomainResource = new AliCloud.Ddos.DomainResource("default", new()
///     {
///         Domain = domain,
///         InstanceIds = new[]
///         {
///             @default.Apply(@default => @default.Apply(getDdosCooInstancesResult => getDdosCooInstancesResult.Ids[0])),
///         },
///         ProxyTypes = new[]
///         {
///             new AliCloud.Ddos.Inputs.DomainResourceProxyTypeArgs
///             {
///                 ProxyPorts = new[]
///                 {
///                     443,
///                 },
///                 ProxyType = "https",
///             },
///         },
///         RealServers = new[]
///         {
///             "177.167.32.11",
///         },
///         RsType = 0,
///     });
///
///     var defaultCooDomainPreciseAccessRule = new AliCloud.Ddos.CooDomainPreciseAccessRule("default", new()
///     {
///         Conditions = new[]
///         {
///             new AliCloud.Ddos.Inputs.CooDomainPreciseAccessRuleConditionArgs
///             {
///                 MatchMethod = "contain",
///                 Field = "header",
///                 Content = "222",
///                 HeaderName = "15",
///             },
///         },
///         Action = "accept",
///         Expires = 0,
///         Domain = defaultDomainResource.Id,
///         Name = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ddos"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		domain := "terraform-example.alibaba.com"
/// 		if param := cfg.Get("domain"); param != "" {
/// 			domain = param
/// 		}
/// 		_default, err := ddos.GetDdosCooInstances(ctx, &ddos.GetDdosCooInstancesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultDomainResource, err := ddos.NewDomainResource(ctx, "default", &ddos.DomainResourceArgs{
/// 			Domain: pulumi.String(domain),
/// 			InstanceIds: pulumi.StringArray{
/// 				pulumi.String(_default.Ids[0]),
/// 			},
/// 			ProxyTypes: ddos.DomainResourceProxyTypeArray{
/// 				&ddos.DomainResourceProxyTypeArgs{
/// 					ProxyPorts: pulumi.IntArray{
/// 						pulumi.Int(443),
/// 					},
/// 					ProxyType: pulumi.String("https"),
/// 				},
/// 			},
/// 			RealServers: pulumi.StringArray{
/// 				pulumi.String("177.167.32.11"),
/// 			},
/// 			RsType: pulumi.Int(0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ddos.NewCooDomainPreciseAccessRule(ctx, "default", &ddos.CooDomainPreciseAccessRuleArgs{
/// 			Conditions: ddos.CooDomainPreciseAccessRuleConditionArray{
/// 				&ddos.CooDomainPreciseAccessRuleConditionArgs{
/// 					MatchMethod: pulumi.String("contain"),
/// 					Field:       pulumi.String("header"),
/// 					Content:     pulumi.String("222"),
/// 					HeaderName:  pulumi.String("15"),
/// 				},
/// 			},
/// 			Action:  pulumi.String("accept"),
/// 			Expires: pulumi.Int(0),
/// 			Domain:  defaultDomainResource.ID(),
/// 			Name:    pulumi.String(name),
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
/// import com.pulumi.alicloud.ddos.DdosFunctions;
/// import com.pulumi.alicloud.ddos.inputs.GetDdosCooInstancesArgs;
/// import com.pulumi.alicloud.ddos.DomainResource;
/// import com.pulumi.alicloud.ddos.DomainResourceArgs;
/// import com.pulumi.alicloud.ddos.inputs.DomainResourceProxyTypeArgs;
/// import com.pulumi.alicloud.ddos.CooDomainPreciseAccessRule;
/// import com.pulumi.alicloud.ddos.CooDomainPreciseAccessRuleArgs;
/// import com.pulumi.alicloud.ddos.inputs.CooDomainPreciseAccessRuleConditionArgs;
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
///         final var name = config.get("name").orElse("terraform");
///         final var domain = config.get("domain").orElse("terraform-example.alibaba.com");
///         final var default = DdosFunctions.getDdosCooInstances(GetDdosCooInstancesArgs.builder()
///             .build());
///
///         var defaultDomainResource = new DomainResource("defaultDomainResource", DomainResourceArgs.builder()
///             .domain(domain)
///             .instanceIds(default_.ids()[0])
///             .proxyTypes(DomainResourceProxyTypeArgs.builder()
///                 .proxyPorts(443)
///                 .proxyType("https")
///                 .build())
///             .realServers("177.167.32.11")
///             .rsType(0)
///             .build());
///
///         var defaultCooDomainPreciseAccessRule = new CooDomainPreciseAccessRule("defaultCooDomainPreciseAccessRule", CooDomainPreciseAccessRuleArgs.builder()
///             .conditions(CooDomainPreciseAccessRuleConditionArgs.builder()
///                 .matchMethod("contain")
///                 .field("header")
///                 .content("222")
///                 .headerName("15")
///                 .build())
///             .action("accept")
///             .expires(0)
///             .domain(defaultDomainResource.id())
///             .name(name)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform
///   domain:
///     type: string
///     default: terraform-example.alibaba.com
/// resources:
///   defaultDomainResource:
///     type: alicloud:ddos:DomainResource
///     name: default
///     properties:
///       domain: ${domain}
///       instanceIds:
///         - ${default.ids[0]}
///       proxyTypes:
///         - proxyPorts:
///             - 443
///           proxyType: https
///       realServers:
///         - 177.167.32.11
///       rsType: 0
///   defaultCooDomainPreciseAccessRule:
///     type: alicloud:ddos:CooDomainPreciseAccessRule
///     name: default
///     properties:
///       conditions:
///         - matchMethod: contain
///           field: header
///           content: '222'
///           headerName: '15'
///       action: accept
///       expires: '0'
///       domain: ${defaultDomainResource.id}
///       name: ${name}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:ddos:getDdosCooInstances
///       arguments: {}
/// ```
///
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// DdosCoo Domain Precise Access Rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ddos/cooDomainPreciseAccessRule:CooDomainPreciseAccessRule example <domain>:<name>
/// ```
class CooDomainPreciseAccessRule extends pulumi.CustomResource {
  /// Action to take on match. Valid values:
  late final pulumi.Output<String> action;
  /// List of matching conditions. See `condition` below.
  late final pulumi.Output<List<CooDomainPreciseAccessRuleCondition>> conditions;
  /// Domain name of the website service.
  /// > **NOTE:**  The domain name must already have a website service forwarding rule configured. You can call [DescribeDomains](https://help.aliyun.com/document_detail/91724.html) to query all domain names.
  late final pulumi.Output<String> domain;
  /// Rule validity period, in seconds. This parameter takes effect only when the rule's matching action is set to block (`action` is `block`), blocking access requests during the validity period. If this parameter is not specified, the rule remains effective permanently.
  late final pulumi.Output<int?> expires;
  /// Rule name.
  late final pulumi.Output<String> name;

  /// Creates a new [CooDomainPreciseAccessRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CooDomainPreciseAccessRule]. {@macro pulumi_ddos_coo_domain_precise_access_rule_coo_domain_precise_access_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CooDomainPreciseAccessRule(
    String name, {
    CooDomainPreciseAccessRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ddos/cooDomainPreciseAccessRule:CooDomainPreciseAccessRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.action = registerOutput<String>('action');
    this.conditions = registerOutput<List<CooDomainPreciseAccessRuleCondition>>('conditions');
    this.domain = registerOutput<String>('domain');
    this.expires = registerOutput<int?>('expires');
    this.name = registerOutput<String>('name');
  }
}
