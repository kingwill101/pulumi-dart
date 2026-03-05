import 'package:pulumi/pulumi.dart' as pulumi;
import 'coo_web_cc_rule_args.dart';
import 'coo_web_cc_rule_rule_detail.dart';
import 'coo_web_cc_rule_state.dart';

/// Provides a DdosCoo Web Cc Rule resource.
///
/// CC frequency control rules.
///
/// For information about DdosCoo Web Cc Rule and how to use it, see [What is Web Cc Rule](https://next.api.alibabacloud.com/document/ddoscoo/2020-01-01/ConfigWebCCRuleV2).
///
/// &gt; **NOTE:** Available since v1.271.0.
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
/// const defaultCooWebCcRule = new alicloud.ddos.CooWebCcRule("default", {
///     ruleDetail: {
///         action: "block",
///         rateLimit: {
///             interval: 11,
///             threshold: 2,
///             ttl: 840,
///             target: "header",
///             subKey: "33",
///         },
///         conditions: [
///             {
///                 matchMethod: "belong",
///                 field: "ip",
///                 content: "1.1.1.1",
///             },
///             {
///                 matchMethod: "contain",
///                 field: "uri",
///                 content: "/a",
///             },
///             {
///                 matchMethod: "contain",
///                 field: "header",
///                 headerName: "123",
///                 content: "1234",
///             },
///         ],
///         statistics: {
///             mode: "distinct",
///             field: "header",
///             headerName: "12",
///         },
///         statusCode: {
///             enabled: true,
///             code: 100,
///             useRatio: false,
///             countThreshold: 2,
///             ratioThreshold: 5,
///         },
///     },
///     name: name,
///     domain: defaultDomainResource.id,
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
/// default_coo_web_cc_rule = alicloud.ddos.CooWebCcRule("default",
///     rule_detail={
///         "action": "block",
///         "rate_limit": {
///             "interval": 11,
///             "threshold": 2,
///             "ttl": 840,
///             "target": "header",
///             "sub_key": "33",
///         },
///         "conditions": [
///             {
///                 "match_method": "belong",
///                 "field": "ip",
///                 "content": "1.1.1.1",
///             },
///             {
///                 "match_method": "contain",
///                 "field": "uri",
///                 "content": "/a",
///             },
///             {
///                 "match_method": "contain",
///                 "field": "header",
///                 "header_name": "123",
///                 "content": "1234",
///             },
///         ],
///         "statistics": {
///             "mode": "distinct",
///             "field": "header",
///             "header_name": "12",
///         },
///         "status_code": {
///             "enabled": True,
///             "code": 100,
///             "use_ratio": False,
///             "count_threshold": 2,
///             "ratio_threshold": 5,
///         },
///     },
///     name=name,
///     domain=default_domain_resource.id)
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
///     var defaultCooWebCcRule = new AliCloud.Ddos.CooWebCcRule("default", new()
///     {
///         RuleDetail = new AliCloud.Ddos.Inputs.CooWebCcRuleRuleDetailArgs
///         {
///             Action = "block",
///             RateLimit = new AliCloud.Ddos.Inputs.CooWebCcRuleRuleDetailRateLimitArgs
///             {
///                 Interval = 11,
///                 Threshold = 2,
///                 Ttl = 840,
///                 Target = "header",
///                 SubKey = "33",
///             },
///             Conditions = new[]
///             {
///                 new AliCloud.Ddos.Inputs.CooWebCcRuleRuleDetailConditionArgs
///                 {
///                     MatchMethod = "belong",
///                     Field = "ip",
///                     Content = "1.1.1.1",
///                 },
///                 new AliCloud.Ddos.Inputs.CooWebCcRuleRuleDetailConditionArgs
///                 {
///                     MatchMethod = "contain",
///                     Field = "uri",
///                     Content = "/a",
///                 },
///                 new AliCloud.Ddos.Inputs.CooWebCcRuleRuleDetailConditionArgs
///                 {
///                     MatchMethod = "contain",
///                     Field = "header",
///                     HeaderName = "123",
///                     Content = "1234",
///                 },
///             },
///             Statistics = new AliCloud.Ddos.Inputs.CooWebCcRuleRuleDetailStatisticsArgs
///             {
///                 Mode = "distinct",
///                 Field = "header",
///                 HeaderName = "12",
///             },
///             StatusCode = new AliCloud.Ddos.Inputs.CooWebCcRuleRuleDetailStatusCodeArgs
///             {
///                 Enabled = true,
///                 Code = 100,
///                 UseRatio = false,
///                 CountThreshold = 2,
///                 RatioThreshold = 5,
///             },
///         },
///         Name = name,
///         Domain = defaultDomainResource.Id,
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
/// 		_, err = ddos.NewCooWebCcRule(ctx, "default", &ddos.CooWebCcRuleArgs{
/// 			RuleDetail: &ddos.CooWebCcRuleRuleDetailArgs{
/// 				Action: pulumi.String("block"),
/// 				RateLimit: &ddos.CooWebCcRuleRuleDetailRateLimitArgs{
/// 					Interval:  pulumi.Int(11),
/// 					Threshold: pulumi.Int(2),
/// 					Ttl:       pulumi.Int(840),
/// 					Target:    pulumi.String("header"),
/// 					SubKey:    pulumi.String("33"),
/// 				},
/// 				Conditions: ddos.CooWebCcRuleRuleDetailConditionArray{
/// 					&ddos.CooWebCcRuleRuleDetailConditionArgs{
/// 						MatchMethod: pulumi.String("belong"),
/// 						Field:       pulumi.String("ip"),
/// 						Content:     pulumi.String("1.1.1.1"),
/// 					},
/// 					&ddos.CooWebCcRuleRuleDetailConditionArgs{
/// 						MatchMethod: pulumi.String("contain"),
/// 						Field:       pulumi.String("uri"),
/// 						Content:     pulumi.String("/a"),
/// 					},
/// 					&ddos.CooWebCcRuleRuleDetailConditionArgs{
/// 						MatchMethod: pulumi.String("contain"),
/// 						Field:       pulumi.String("header"),
/// 						HeaderName:  pulumi.String("123"),
/// 						Content:     pulumi.String("1234"),
/// 					},
/// 				},
/// 				Statistics: &ddos.CooWebCcRuleRuleDetailStatisticsArgs{
/// 					Mode:       pulumi.String("distinct"),
/// 					Field:      pulumi.String("header"),
/// 					HeaderName: pulumi.String("12"),
/// 				},
/// 				StatusCode: &ddos.CooWebCcRuleRuleDetailStatusCodeArgs{
/// 					Enabled:        pulumi.Bool(true),
/// 					Code:           pulumi.Int(100),
/// 					UseRatio:       pulumi.Bool(false),
/// 					CountThreshold: pulumi.Int(2),
/// 					RatioThreshold: pulumi.Int(5),
/// 				},
/// 			},
/// 			Name:   pulumi.String(name),
/// 			Domain: defaultDomainResource.ID(),
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
/// import com.pulumi.alicloud.ddos.CooWebCcRule;
/// import com.pulumi.alicloud.ddos.CooWebCcRuleArgs;
/// import com.pulumi.alicloud.ddos.inputs.CooWebCcRuleRuleDetailArgs;
/// import com.pulumi.alicloud.ddos.inputs.CooWebCcRuleRuleDetailRateLimitArgs;
/// import com.pulumi.alicloud.ddos.inputs.CooWebCcRuleRuleDetailStatisticsArgs;
/// import com.pulumi.alicloud.ddos.inputs.CooWebCcRuleRuleDetailStatusCodeArgs;
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
///         var defaultCooWebCcRule = new CooWebCcRule("defaultCooWebCcRule", CooWebCcRuleArgs.builder()
///             .ruleDetail(CooWebCcRuleRuleDetailArgs.builder()
///                 .action("block")
///                 .rateLimit(CooWebCcRuleRuleDetailRateLimitArgs.builder()
///                     .interval(11)
///                     .threshold(2)
///                     .ttl(840)
///                     .target("header")
///                     .subKey("33")
///                     .build())
///                 .conditions(
///                     CooWebCcRuleRuleDetailConditionArgs.builder()
///                         .matchMethod("belong")
///                         .field("ip")
///                         .content("1.1.1.1")
///                         .build(),
///                     CooWebCcRuleRuleDetailConditionArgs.builder()
///                         .matchMethod("contain")
///                         .field("uri")
///                         .content("/a")
///                         .build(),
///                     CooWebCcRuleRuleDetailConditionArgs.builder()
///                         .matchMethod("contain")
///                         .field("header")
///                         .headerName("123")
///                         .content("1234")
///                         .build())
///                 .statistics(CooWebCcRuleRuleDetailStatisticsArgs.builder()
///                     .mode("distinct")
///                     .field("header")
///                     .headerName("12")
///                     .build())
///                 .statusCode(CooWebCcRuleRuleDetailStatusCodeArgs.builder()
///                     .enabled(true)
///                     .code(100)
///                     .useRatio(false)
///                     .countThreshold(2)
///                     .ratioThreshold(5)
///                     .build())
///                 .build())
///             .name(name)
///             .domain(defaultDomainResource.id())
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
///   defaultCooWebCcRule:
///     type: alicloud:ddos:CooWebCcRule
///     name: default
///     properties:
///       ruleDetail:
///         action: block
///         rateLimit:
///           interval: '11'
///           threshold: '2'
///           ttl: '840'
///           target: header
///           subKey: '33'
///         conditions:
///           - matchMethod: belong
///             field: ip
///             content: 1.1.1.1
///           - matchMethod: contain
///             field: uri
///             content: /a
///           - matchMethod: contain
///             field: header
///             headerName: '123'
///             content: '1234'
///         statistics:
///           mode: distinct
///           field: header
///           headerName: '12'
///         statusCode:
///           enabled: true
///           code: '100'
///           useRatio: false
///           countThreshold: '2'
///           ratioThreshold: '5'
///       name: ${name}
///       domain: ${defaultDomainResource.id}
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
/// DdosCoo Web Cc Rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ddos/cooWebCcRule:CooWebCcRule example <domain>:<name>
/// ```
class CooWebCcRule extends pulumi.CustomResource {
  /// The domain name of the website service.
  ///
  /// &gt; **NOTE:**  The domain name must already have website service forwarding rules configured. You can call [DescribeDomains](https://help.aliyun.com/document_detail/91724.html) to query all domain names.
  late final pulumi.Output<String> domain;
  /// Rule name.
  late final pulumi.Output<String> name;
  /// Rule details.   See `rule_detail` below.
  late final pulumi.Output<CooWebCcRuleRuleDetail> ruleDetail;

  /// Creates a new [CooWebCcRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CooWebCcRule]. {@macro pulumi_ddos_coo_web_cc_rule_coo_web_cc_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CooWebCcRule(
    String name, {
    CooWebCcRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ddos/cooWebCcRule:CooWebCcRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    domain = registerOutput<String>('domain');
    this.name = registerOutput<String>('name');
    ruleDetail = registerOutput<CooWebCcRuleRuleDetail>('ruleDetail', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CooWebCcRuleRuleDetail.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [CooWebCcRule] resource's state with the given [name] and [id].
  static CooWebCcRule get(
    String name,
    pulumi.Input<String> id, {
    CooWebCcRuleState? state,
  }) {
    return CooWebCcRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CooWebCcRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ddos/cooWebCcRule:CooWebCcRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    domain = registerOutput<String>('domain');
    this.name = registerOutput<String>('name');
    ruleDetail = registerOutput<CooWebCcRuleRuleDetail>('ruleDetail', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CooWebCcRuleRuleDetail.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
