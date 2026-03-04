import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_optimization_args.dart';
import 'network_optimization_state.dart';

/// Provides a ESA Network Optimization resource.
///
///
///
/// For information about ESA Network Optimization and how to use it, see [What is Network Optimization](https://next.api.alibabacloud.com/document/ESA/2024-09-10/CreateNetworkOptimization).
///
/// &gt; **NOTE:** Available since v1.244.0.
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
/// const _default = alicloud.esa.getSites({
///     planSubscribeType: "enterpriseplan",
/// });
/// const defaultInteger = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultSite = new alicloud.esa.Site("default", {
///     siteName: `gositecdn-${defaultInteger.result}.cn`,
///     instanceId: _default.then(_default => _default.sites?.[0]?.instanceId),
///     coverage: "overseas",
///     accessType: "NS",
/// });
/// const defaultNetworkOptimization = new alicloud.esa.NetworkOptimization("default", {
///     siteVersion: 0,
///     siteId: defaultSite.id,
///     ruleEnable: "on",
///     websocket: "off",
///     rule: "(http.host eq \"tf.example.com\")",
///     grpc: "off",
///     http2Origin: "off",
///     smartRouting: "off",
///     uploadMaxFilesize: "100",
///     ruleName: "network_optimization",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// default = alicloud.esa.get_sites(plan_subscribe_type="enterpriseplan")
/// default_integer = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default_site = alicloud.esa.Site("default",
///     site_name=f"gositecdn-{default_integer['result']}.cn",
///     instance_id=default.sites[0].instance_id,
///     coverage="overseas",
///     access_type="NS")
/// default_network_optimization = alicloud.esa.NetworkOptimization("default",
///     site_version=0,
///     site_id=default_site.id,
///     rule_enable="on",
///     websocket="off",
///     rule="(http.host eq \"tf.example.com\")",
///     grpc="off",
///     http2_origin="off",
///     smart_routing="off",
///     upload_max_filesize="100",
///     rule_name="network_optimization")
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
///     var @default = AliCloud.Esa.GetSites.Invoke(new()
///     {
///         PlanSubscribeType = "enterpriseplan",
///     });
///
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultSite = new AliCloud.Esa.Site("default", new()
///     {
///         SiteName = $"gositecdn-{defaultInteger.Result}.cn",
///         InstanceId = @default.Apply(@default => @default.Apply(getSitesResult => getSitesResult.Sites[0]?.InstanceId)),
///         Coverage = "overseas",
///         AccessType = "NS",
///     });
///
///     var defaultNetworkOptimization = new AliCloud.Esa.NetworkOptimization("default", new()
///     {
///         SiteVersion = 0,
///         SiteId = defaultSite.Id,
///         RuleEnable = "on",
///         Websocket = "off",
///         Rule = "(http.host eq \"tf.example.com\")",
///         Grpc = "off",
///         Http2Origin = "off",
///         SmartRouting = "off",
///         UploadMaxFilesize = "100",
///         RuleName = "network_optimization",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/esa"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := esa.GetSites(ctx, &esa.GetSitesArgs{
/// 			PlanSubscribeType: pulumi.StringRef("enterpriseplan"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSite, err := esa.NewSite(ctx, "default", &esa.SiteArgs{
/// 			SiteName:   pulumi.Sprintf("gositecdn-%v.cn", defaultInteger.Result),
/// 			InstanceId: pulumi.String(_default.Sites[0].InstanceId),
/// 			Coverage:   pulumi.String("overseas"),
/// 			AccessType: pulumi.String("NS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = esa.NewNetworkOptimization(ctx, "default", &esa.NetworkOptimizationArgs{
/// 			SiteVersion:       pulumi.Int(0),
/// 			SiteId:            defaultSite.ID(),
/// 			RuleEnable:        pulumi.String("on"),
/// 			Websocket:         pulumi.String("off"),
/// 			Rule:              pulumi.String("(http.host eq \"tf.example.com\")"),
/// 			Grpc:              pulumi.String("off"),
/// 			Http2Origin:       pulumi.String("off"),
/// 			SmartRouting:      pulumi.String("off"),
/// 			UploadMaxFilesize: pulumi.String("100"),
/// 			RuleName:          pulumi.String("network_optimization"),
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
/// import com.pulumi.alicloud.esa.EsaFunctions;
/// import com.pulumi.alicloud.esa.inputs.GetSitesArgs;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.esa.Site;
/// import com.pulumi.alicloud.esa.SiteArgs;
/// import com.pulumi.alicloud.esa.NetworkOptimization;
/// import com.pulumi.alicloud.esa.NetworkOptimizationArgs;
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
///         final var default = EsaFunctions.getSites(GetSitesArgs.builder()
///             .planSubscribeType("enterpriseplan")
///             .build());
///
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultSite = new Site("defaultSite", SiteArgs.builder()
///             .siteName(String.format("gositecdn-%s.cn", defaultInteger.result()))
///             .instanceId(default_.sites()[0].instanceId())
///             .coverage("overseas")
///             .accessType("NS")
///             .build());
///
///         var defaultNetworkOptimization = new NetworkOptimization("defaultNetworkOptimization", NetworkOptimizationArgs.builder()
///             .siteVersion(0)
///             .siteId(defaultSite.id())
///             .ruleEnable("on")
///             .websocket("off")
///             .rule("(http.host eq \"tf.example.com\")")
///             .grpc("off")
///             .http2Origin("off")
///             .smartRouting("off")
///             .uploadMaxFilesize("100")
///             .ruleName("network_optimization")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       min: 10000
///       max: 99999
///   defaultSite:
///     type: alicloud:esa:Site
///     name: default
///     properties:
///       siteName: gositecdn-${defaultInteger.result}.cn
///       instanceId: ${default.sites[0].instanceId}
///       coverage: overseas
///       accessType: NS
///   defaultNetworkOptimization:
///     type: alicloud:esa:NetworkOptimization
///     name: default
///     properties:
///       siteVersion: '0'
///       siteId: ${defaultSite.id}
///       ruleEnable: on
///       websocket: off
///       rule: (http.host eq "tf.example.com")
///       grpc: off
///       http2Origin: off
///       smartRouting: off
///       uploadMaxFilesize: '100'
///       ruleName: network_optimization
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:esa:getSites
///       arguments:
///         planSubscribeType: enterpriseplan
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ESA Network Optimization can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:esa/networkOptimization:NetworkOptimization example <site_id>:<config_id>
/// ```
class NetworkOptimization extends pulumi.CustomResource {
  /// ConfigId of the configuration, which can be obtained by calling the ListNetworkOptimizations.
  late final pulumi.Output<int> configId;

  /// Whether to enable GRPC, default is disabled. Value range:
  late final pulumi.Output<String?> grpc;

  /// Whether to enable HTTP2 origin, default is disabled. Value range:
  late final pulumi.Output<String?> http2Origin;

  /// Rule content, using conditional expressions to match user requests. When adding global configuration, this parameter does not need to be set. There are two usage scenarios:
  /// - Match all incoming requests: value set to true
  /// - Match specified request: Set the value to a custom expression, for example: (http.host eq \"video.example.com\")
  late final pulumi.Output<String?> rule;

  /// Rule switch. When adding global configuration, this parameter does not need to be set. Value range:
  late final pulumi.Output<String?> ruleEnable;

  /// Rule name.
  late final pulumi.Output<String?> ruleName;

  /// The rule execution order prioritizes lower numerical values. It is only applicable when setting or modifying the order of individual rule configurations.
  late final pulumi.Output<int> sequence;

  /// Site ID.
  late final pulumi.Output<String> siteId;

  /// The version number of the site configuration. For sites that have enabled configuration version management, this parameter can be used to specify the effective version of the configuration site, which defaults to version 0.
  late final pulumi.Output<int?> siteVersion;

  /// Whether to enable smart routing service, default is disabled. Value range:
  late final pulumi.Output<String?> smartRouting;

  /// Maximum upload file size, in MB, value range: 100～500.
  late final pulumi.Output<String?> uploadMaxFilesize;

  /// Whether to enable Websocket, default is enabled. Value range:
  late final pulumi.Output<String?> websocket;

  /// Creates a new [NetworkOptimization].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkOptimization]. {@macro pulumi_esa_network_optimization_network_optimization_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkOptimization(
    String name, {
    NetworkOptimizationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:esa/networkOptimization:NetworkOptimization',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    configId = registerOutput<int>('configId');
    grpc = registerOutput<String?>('grpc');
    http2Origin = registerOutput<String?>('http2Origin');
    rule = registerOutput<String?>('rule');
    ruleEnable = registerOutput<String?>('ruleEnable');
    ruleName = registerOutput<String?>('ruleName');
    sequence = registerOutput<int>('sequence');
    siteId = registerOutput<String>('siteId');
    siteVersion = registerOutput<int?>('siteVersion');
    smartRouting = registerOutput<String?>('smartRouting');
    uploadMaxFilesize = registerOutput<String?>('uploadMaxFilesize');
    websocket = registerOutput<String?>('websocket');
  }

  /// Gets an existing [NetworkOptimization] resource's state with the given [name] and [id].
  static NetworkOptimization get(
    String name,
    pulumi.Input<String> id, {
    NetworkOptimizationState? state,
  }) {
    return NetworkOptimization._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkOptimization._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:esa/networkOptimization:NetworkOptimization',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    configId = registerOutput<int>('configId');
    grpc = registerOutput<String?>('grpc');
    http2Origin = registerOutput<String?>('http2Origin');
    rule = registerOutput<String?>('rule');
    ruleEnable = registerOutput<String?>('ruleEnable');
    ruleName = registerOutput<String?>('ruleName');
    sequence = registerOutput<int>('sequence');
    siteId = registerOutput<String>('siteId');
    siteVersion = registerOutput<int?>('siteVersion');
    smartRouting = registerOutput<String?>('smartRouting');
    uploadMaxFilesize = registerOutput<String?>('uploadMaxFilesize');
    websocket = registerOutput<String?>('websocket');
  }
}
