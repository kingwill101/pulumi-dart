import 'package:pulumi/pulumi.dart' as pulumi;
import 'defense_rule_args.dart';
import 'defense_rule_config.dart';

/// Provides a WAFV3 Defense Rule resource.
///
///
///
/// For information about WAFV3 Defense Rule and how to use it, see [What is Defense Rule](https://next.api.alibabacloud.com/document/waf-openapi/2021-10-01/CreateDefenseRule).
///
/// > **NOTE:** Available since v1.257.0.
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
/// const name = config.get("name") || "tfexample";
/// const regionId = config.get("regionId") || "cn-hangzhou";
/// const domain = config.get("domain") || "example.wafqax.top";
/// const _default = alicloud.wafv3.getInstances({});
/// const defaultICMRhk = new alicloud.wafv3.Domain("defaultICMRhk", {
///     redirect: {
///         loadbalance: "iphash",
///         backends: ["39.98.217.197"],
///         connectTimeout: 5,
///         readTimeout: 120,
///         writeTimeout: 120,
///     },
///     domain: "example.wafqax.top",
///     accessType: "share",
///     instanceId: _default.then(_default => _default.ids?.[0]),
///     listen: {
///         httpPorts: [80],
///     },
/// });
/// const defaultDefenseRule = new alicloud.wafv3.DefenseRule("default", {
///     defenseType: "resource",
///     defenseScene: "account_identifier",
///     ruleStatus: 1,
///     resource: defaultICMRhk.domainId,
///     defenseOrigin: "custom",
///     config: {
///         accountIdentifiers: [{
///             position: "jwt",
///             priority: 2,
///             decodeType: "jwt",
///             key: "Query-Arg",
///             subKey: "adb",
///         }],
///     },
///     instanceId: _default.then(_default => _default.ids?.[0]),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tfexample"
/// region_id = config.get("regionId")
/// if region_id is None:
///     region_id = "cn-hangzhou"
/// domain = config.get("domain")
/// if domain is None:
///     domain = "example.wafqax.top"
/// default = alicloud.wafv3.get_instances()
/// default_icm_rhk = alicloud.wafv3.Domain("defaultICMRhk",
///     redirect={
///         "loadbalance": "iphash",
///         "backends": ["39.98.217.197"],
///         "connect_timeout": 5,
///         "read_timeout": 120,
///         "write_timeout": 120,
///     },
///     domain="example.wafqax.top",
///     access_type="share",
///     instance_id=default.ids[0],
///     listen={
///         "http_ports": [80],
///     })
/// default_defense_rule = alicloud.wafv3.DefenseRule("default",
///     defense_type="resource",
///     defense_scene="account_identifier",
///     rule_status=1,
///     resource=default_icm_rhk.domain_id,
///     defense_origin="custom",
///     config={
///         "account_identifiers": [{
///             "position": "jwt",
///             "priority": 2,
///             "decode_type": "jwt",
///             "key": "Query-Arg",
///             "sub_key": "adb",
///         }],
///     },
///     instance_id=default.ids[0])
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
///     var name = config.Get("name") ?? "tfexample";
///     var regionId = config.Get("regionId") ?? "cn-hangzhou";
///     var domain = config.Get("domain") ?? "example.wafqax.top";
///     var @default = AliCloud.Wafv3.GetInstances.Invoke();
///
///     var defaultICMRhk = new AliCloud.Wafv3.Domain("defaultICMRhk", new()
///     {
///         Redirect = new AliCloud.Wafv3.Inputs.DomainRedirectArgs
///         {
///             Loadbalance = "iphash",
///             Backends = new[]
///             {
///                 "39.98.217.197",
///             },
///             ConnectTimeout = 5,
///             ReadTimeout = 120,
///             WriteTimeout = 120,
///         },
///         DomainName = "example.wafqax.top",
///         AccessType = "share",
///         InstanceId = @default.Apply(@default => @default.Apply(getInstancesResult => getInstancesResult.Ids[0])),
///         Listen = new AliCloud.Wafv3.Inputs.DomainListenArgs
///         {
///             HttpPorts = new[]
///             {
///                 80,
///             },
///         },
///     });
///
///     var defaultDefenseRule = new AliCloud.Wafv3.DefenseRule("default", new()
///     {
///         DefenseType = "resource",
///         DefenseScene = "account_identifier",
///         RuleStatus = 1,
///         Resource = defaultICMRhk.DomainId,
///         DefenseOrigin = "custom",
///         Config = new AliCloud.Wafv3.Inputs.DefenseRuleConfigArgs
///         {
///             AccountIdentifiers = new[]
///             {
///                 new AliCloud.Wafv3.Inputs.DefenseRuleConfigAccountIdentifierArgs
///                 {
///                     Position = "jwt",
///                     Priority = 2,
///                     DecodeType = "jwt",
///                     Key = "Query-Arg",
///                     SubKey = "adb",
///                 },
///             },
///         },
///         InstanceId = @default.Apply(@default => @default.Apply(getInstancesResult => getInstancesResult.Ids[0])),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/wafv3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tfexample"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		regionId := "cn-hangzhou"
/// 		if param := cfg.Get("regionId"); param != "" {
/// 			regionId = param
/// 		}
/// 		domain := "example.wafqax.top"
/// 		if param := cfg.Get("domain"); param != "" {
/// 			domain = param
/// 		}
/// 		_default, err := wafv3.GetInstances(ctx, &wafv3.GetInstancesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultICMRhk, err := wafv3.NewDomain(ctx, "defaultICMRhk", &wafv3.DomainArgs{
/// 			Redirect: &wafv3.DomainRedirectArgs{
/// 				Loadbalance: pulumi.String("iphash"),
/// 				Backends: pulumi.StringArray{
/// 					pulumi.String("39.98.217.197"),
/// 				},
/// 				ConnectTimeout: pulumi.Int(5),
/// 				ReadTimeout:    pulumi.Int(120),
/// 				WriteTimeout:   pulumi.Int(120),
/// 			},
/// 			Domain:     pulumi.String("example.wafqax.top"),
/// 			AccessType: pulumi.String("share"),
/// 			InstanceId: pulumi.String(_default.Ids[0]),
/// 			Listen: &wafv3.DomainListenArgs{
/// 				HttpPorts: pulumi.IntArray{
/// 					pulumi.Int(80),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = wafv3.NewDefenseRule(ctx, "default", &wafv3.DefenseRuleArgs{
/// 			DefenseType:   pulumi.String("resource"),
/// 			DefenseScene:  pulumi.String("account_identifier"),
/// 			RuleStatus:    pulumi.Int(1),
/// 			Resource:      defaultICMRhk.DomainId,
/// 			DefenseOrigin: pulumi.String("custom"),
/// 			Config: &wafv3.DefenseRuleConfigArgs{
/// 				AccountIdentifiers: wafv3.DefenseRuleConfigAccountIdentifierArray{
/// 					&wafv3.DefenseRuleConfigAccountIdentifierArgs{
/// 						Position:   pulumi.String("jwt"),
/// 						Priority:   pulumi.Int(2),
/// 						DecodeType: pulumi.String("jwt"),
/// 						Key:        pulumi.String("Query-Arg"),
/// 						SubKey:     pulumi.String("adb"),
/// 					},
/// 				},
/// 			},
/// 			InstanceId: pulumi.String(_default.Ids[0]),
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
/// import com.pulumi.alicloud.wafv3.Wafv3Functions;
/// import com.pulumi.alicloud.wafv3.inputs.GetInstancesArgs;
/// import com.pulumi.alicloud.wafv3.Domain;
/// import com.pulumi.alicloud.wafv3.DomainArgs;
/// import com.pulumi.alicloud.wafv3.inputs.DomainRedirectArgs;
/// import com.pulumi.alicloud.wafv3.inputs.DomainListenArgs;
/// import com.pulumi.alicloud.wafv3.DefenseRule;
/// import com.pulumi.alicloud.wafv3.DefenseRuleArgs;
/// import com.pulumi.alicloud.wafv3.inputs.DefenseRuleConfigArgs;
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
///         final var name = config.get("name").orElse("tfexample");
///         final var regionId = config.get("regionId").orElse("cn-hangzhou");
///         final var domain = config.get("domain").orElse("example.wafqax.top");
///         final var default = Wafv3Functions.getInstances(GetInstancesArgs.builder()
///             .build());
///
///         var defaultICMRhk = new Domain("defaultICMRhk", DomainArgs.builder()
///             .redirect(DomainRedirectArgs.builder()
///                 .loadbalance("iphash")
///                 .backends("39.98.217.197")
///                 .connectTimeout(5)
///                 .readTimeout(120)
///                 .writeTimeout(120)
///                 .build())
///             .domain("example.wafqax.top")
///             .accessType("share")
///             .instanceId(default_.ids()[0])
///             .listen(DomainListenArgs.builder()
///                 .httpPorts(80)
///                 .build())
///             .build());
///
///         var defaultDefenseRule = new DefenseRule("defaultDefenseRule", DefenseRuleArgs.builder()
///             .defenseType("resource")
///             .defenseScene("account_identifier")
///             .ruleStatus(1)
///             .resource(defaultICMRhk.domainId())
///             .defenseOrigin("custom")
///             .config(DefenseRuleConfigArgs.builder()
///                 .accountIdentifiers(DefenseRuleConfigAccountIdentifierArgs.builder()
///                     .position("jwt")
///                     .priority(2)
///                     .decodeType("jwt")
///                     .key("Query-Arg")
///                     .subKey("adb")
///                     .build())
///                 .build())
///             .instanceId(default_.ids()[0])
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tfexample
///   regionId:
///     type: string
///     default: cn-hangzhou
///   domain:
///     type: string
///     default: example.wafqax.top
/// resources:
///   defaultICMRhk:
///     type: alicloud:wafv3:Domain
///     properties:
///       redirect:
///         loadbalance: iphash
///         backends:
///           - 39.98.217.197
///         connectTimeout: 5
///         readTimeout: 120
///         writeTimeout: 120
///       domain: example.wafqax.top
///       accessType: share
///       instanceId: ${default.ids[0]}
///       listen:
///         httpPorts:
///           - '80'
///   defaultDefenseRule:
///     type: alicloud:wafv3:DefenseRule
///     name: default
///     properties:
///       defenseType: resource
///       defenseScene: account_identifier
///       ruleStatus: '1'
///       resource: ${defaultICMRhk.domainId}
///       defenseOrigin: custom
///       config:
///         accountIdentifiers:
///           - position: jwt
///             priority: '2'
///             decodeType: jwt
///             key: Query-Arg
///             subKey: adb
///       instanceId: ${default.ids[0]}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:wafv3:getInstances
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// WAFV3 Defense Rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:wafv3/defenseRule:DefenseRule example <instance_id>:<defense_type>:<rule_id>
/// ```
class DefenseRule extends pulumi.CustomResource {
  /// Rule configuration content, in JSON format, constructed with a series of parameters.
  ///
  /// > **NOTE:**  Depending on the specified **protection rule type**(`DefenseScene`), the specific parameters vary. For more information, see **Protection Rule Parameter Description**.
  /// See `config` below.
  late final pulumi.Output<DefenseRuleConfig> config;
  /// Sources of protection. Value:
  late final pulumi.Output<String?> defenseOrigin;
  /// The WAF protection scenario to be created.
  ///
  /// When the protection rule type `DefenseType` is set to `template`, the value is as follows:
  late final pulumi.Output<String> defenseScene;
  /// The protection rule type. Value:
  late final pulumi.Output<String> defenseType;
  /// The ID of the Web Application Firewall (WAF) instance.
  late final pulumi.Output<String> instanceId;
  /// The protection object corresponding to the rule to be queried.
  ///
  /// > **NOTE:**  This parameter is required only when `DefenseType` is set to `resource`.
  late final pulumi.Output<String> resource;
  /// The protection rule ID.
  late final pulumi.Output<int> ruleId;
  /// The rule name.
  late final pulumi.Output<String> ruleName;
  /// Protection rule status.
  late final pulumi.Output<int?> ruleStatus;
  /// The protection template ID of the protection rule to be created.
  late final pulumi.Output<int?> templateId;

  /// Creates a new [DefenseRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DefenseRule]. {@macro pulumi_wafv3_defense_rule_defense_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DefenseRule(
    String name, {
    DefenseRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:wafv3/defenseRule:DefenseRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.config = registerOutput<DefenseRuleConfig>('config');
    this.defenseOrigin = registerOutput<String?>('defenseOrigin');
    this.defenseScene = registerOutput<String>('defenseScene');
    this.defenseType = registerOutput<String>('defenseType');
    this.instanceId = registerOutput<String>('instanceId');
    this.resource = registerOutput<String>('resource');
    this.ruleId = registerOutput<int>('ruleId');
    this.ruleName = registerOutput<String>('ruleName');
    this.ruleStatus = registerOutput<int?>('ruleStatus');
    this.templateId = registerOutput<int?>('templateId');
  }
}
