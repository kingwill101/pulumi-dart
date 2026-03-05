import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_adaptive_routing.dart';
import 'load_balancer_args.dart';
import 'load_balancer_monitor.dart';
import 'load_balancer_random_steering.dart';
import 'load_balancer_state.dart';

/// Provides a ESA Load Balancer resource.
///
///
///
/// For information about ESA Load Balancer and how to use it, see [What is Load Balancer](https://next.api.alibabacloud.com/document/ESA/2024-09-10/CreateLoadBalancer).
///
/// &gt; **NOTE:** Available since v1.262.0.
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
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.esa.getSites({
///     planSubscribeType: "enterpriseplan",
/// });
/// const defaultInteger = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const resourceSiteOriginPool = new alicloud.esa.Site("resource_Site_OriginPool", {
///     siteName: `${name}${defaultInteger.result}.com`,
///     instanceId: _default.then(_default => _default.sites?.[0]?.instanceId),
///     coverage: "overseas",
///     accessType: "NS",
/// });
/// const resourceOriginPoolLoadBalancer11 = new alicloud.esa.OriginPool("resource_OriginPool_LoadBalancer_1_1", {
///     origins: [{
///         type: "ip_domain",
///         address: "www.example.com",
///         header: "{\"Host\":[\"www.example.com\"]}",
///         enabled: true,
///         weight: 30,
///         name: "origin1",
///     }],
///     siteId: resourceSiteOriginPool.id,
///     originPoolName: "originpool1",
///     enabled: true,
/// });
/// const defaultLoadBalancer = new alicloud.esa.LoadBalancer("default", {
///     loadBalancerName: "lb.exampleloadbalancer.top",
///     fallbackPool: resourceOriginPoolLoadBalancer11.originPoolId,
///     siteId: resourceSiteOriginPool.id,
///     description: name,
///     defaultPools: [resourceOriginPoolLoadBalancer11.originPoolId],
///     steeringPolicy: "geo",
///     monitor: {
///         type: "ICMP Ping",
///         timeout: 5,
///         monitoringRegion: "ChineseMainland",
///         consecutiveUp: 3,
///         consecutiveDown: 5,
///         interval: 60,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.esa.get_sites(plan_subscribe_type="enterpriseplan")
/// default_integer = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// resource_site_origin_pool = alicloud.esa.Site("resource_Site_OriginPool",
///     site_name=f"{name}{default_integer['result']}.com",
///     instance_id=default.sites[0].instance_id,
///     coverage="overseas",
///     access_type="NS")
/// resource_origin_pool_load_balancer11 = alicloud.esa.OriginPool("resource_OriginPool_LoadBalancer_1_1",
///     origins=[{
///         "type": "ip_domain",
///         "address": "www.example.com",
///         "header": "{\"Host\":[\"www.example.com\"]}",
///         "enabled": True,
///         "weight": 30,
///         "name": "origin1",
///     }],
///     site_id=resource_site_origin_pool.id,
///     origin_pool_name="originpool1",
///     enabled=True)
/// default_load_balancer = alicloud.esa.LoadBalancer("default",
///     load_balancer_name="lb.exampleloadbalancer.top",
///     fallback_pool=resource_origin_pool_load_balancer11.origin_pool_id,
///     site_id=resource_site_origin_pool.id,
///     description=name,
///     default_pools=[resource_origin_pool_load_balancer11.origin_pool_id],
///     steering_policy="geo",
///     monitor={
///         "type": "ICMP Ping",
///         "timeout": 5,
///         "monitoring_region": "ChineseMainland",
///         "consecutive_up": 3,
///         "consecutive_down": 5,
///         "interval": 60,
///     })
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
///     var name = config.Get("name") ?? "terraform-example";
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
///     var resourceSiteOriginPool = new AliCloud.Esa.Site("resource_Site_OriginPool", new()
///     {
///         SiteName = $"{name}{defaultInteger.Result}.com",
///         InstanceId = @default.Apply(@default => @default.Apply(getSitesResult => getSitesResult.Sites[0]?.InstanceId)),
///         Coverage = "overseas",
///         AccessType = "NS",
///     });
///
///     var resourceOriginPoolLoadBalancer11 = new AliCloud.Esa.OriginPool("resource_OriginPool_LoadBalancer_1_1", new()
///     {
///         Origins = new[]
///         {
///             new AliCloud.Esa.Inputs.OriginPoolOriginArgs
///             {
///                 Type = "ip_domain",
///                 Address = "www.example.com",
///                 Header = "{\"Host\":[\"www.example.com\"]}",
///                 Enabled = true,
///                 Weight = 30,
///                 Name = "origin1",
///             },
///         },
///         SiteId = resourceSiteOriginPool.Id,
///         OriginPoolName = "originpool1",
///         Enabled = true,
///     });
///
///     var defaultLoadBalancer = new AliCloud.Esa.LoadBalancer("default", new()
///     {
///         LoadBalancerName = "lb.exampleloadbalancer.top",
///         FallbackPool = resourceOriginPoolLoadBalancer11.OriginPoolId,
///         SiteId = resourceSiteOriginPool.Id,
///         Description = name,
///         DefaultPools = new[]
///         {
///             resourceOriginPoolLoadBalancer11.OriginPoolId,
///         },
///         SteeringPolicy = "geo",
///         Monitor = new AliCloud.Esa.Inputs.LoadBalancerMonitorArgs
///         {
///             Type = "ICMP Ping",
///             Timeout = 5,
///             MonitoringRegion = "ChineseMainland",
///             ConsecutiveUp = 3,
///             ConsecutiveDown = 5,
///             Interval = 60,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/esa"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
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
/// 		resourceSiteOriginPool, err := esa.NewSite(ctx, "resource_Site_OriginPool", &esa.SiteArgs{
/// 			SiteName:   pulumi.Sprintf("%v%v.com", name, defaultInteger.Result),
/// 			InstanceId: pulumi.String(_default.Sites[0].InstanceId),
/// 			Coverage:   pulumi.String("overseas"),
/// 			AccessType: pulumi.String("NS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		resourceOriginPoolLoadBalancer11, err := esa.NewOriginPool(ctx, "resource_OriginPool_LoadBalancer_1_1", &esa.OriginPoolArgs{
/// 			Origins: esa.OriginPoolOriginArray{
/// 				&esa.OriginPoolOriginArgs{
/// 					Type:    pulumi.String("ip_domain"),
/// 					Address: pulumi.String("www.example.com"),
/// 					Header:  pulumi.String("{\"Host\":[\"www.example.com\"]}"),
/// 					Enabled: pulumi.Bool(true),
/// 					Weight:  pulumi.Int(30),
/// 					Name:    pulumi.String("origin1"),
/// 				},
/// 			},
/// 			SiteId:         resourceSiteOriginPool.ID(),
/// 			OriginPoolName: pulumi.String("originpool1"),
/// 			Enabled:        pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = esa.NewLoadBalancer(ctx, "default", &esa.LoadBalancerArgs{
/// 			LoadBalancerName: pulumi.String("lb.exampleloadbalancer.top"),
/// 			FallbackPool:     resourceOriginPoolLoadBalancer11.OriginPoolId,
/// 			SiteId:           resourceSiteOriginPool.ID(),
/// 			Description:      pulumi.String(name),
/// 			DefaultPools: pulumi.IntArray{
/// 				resourceOriginPoolLoadBalancer11.OriginPoolId,
/// 			},
/// 			SteeringPolicy: pulumi.String("geo"),
/// 			Monitor: &esa.LoadBalancerMonitorArgs{
/// 				Type:             pulumi.String("ICMP Ping"),
/// 				Timeout:          pulumi.Int(5),
/// 				MonitoringRegion: pulumi.String("ChineseMainland"),
/// 				ConsecutiveUp:    pulumi.Int(3),
/// 				ConsecutiveDown:  pulumi.Int(5),
/// 				Interval:         pulumi.Int(60),
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
/// import com.pulumi.alicloud.esa.EsaFunctions;
/// import com.pulumi.alicloud.esa.inputs.GetSitesArgs;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.esa.Site;
/// import com.pulumi.alicloud.esa.SiteArgs;
/// import com.pulumi.alicloud.esa.OriginPool;
/// import com.pulumi.alicloud.esa.OriginPoolArgs;
/// import com.pulumi.alicloud.esa.inputs.OriginPoolOriginArgs;
/// import com.pulumi.alicloud.esa.LoadBalancer;
/// import com.pulumi.alicloud.esa.LoadBalancerArgs;
/// import com.pulumi.alicloud.esa.inputs.LoadBalancerMonitorArgs;
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
///         final var default = EsaFunctions.getSites(GetSitesArgs.builder()
///             .planSubscribeType("enterpriseplan")
///             .build());
///
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var resourceSiteOriginPool = new Site("resourceSiteOriginPool", SiteArgs.builder()
///             .siteName(String.format("%s%s.com", name,defaultInteger.result()))
///             .instanceId(default_.sites()[0].instanceId())
///             .coverage("overseas")
///             .accessType("NS")
///             .build());
///
///         var resourceOriginPoolLoadBalancer11 = new OriginPool("resourceOriginPoolLoadBalancer11", OriginPoolArgs.builder()
///             .origins(OriginPoolOriginArgs.builder()
///                 .type("ip_domain")
///                 .address("www.example.com")
///                 .header("{\"Host\":[\"www.example.com\"]}")
///                 .enabled(true)
///                 .weight(30)
///                 .name("origin1")
///                 .build())
///             .siteId(resourceSiteOriginPool.id())
///             .originPoolName("originpool1")
///             .enabled(true)
///             .build());
///
///         var defaultLoadBalancer = new LoadBalancer("defaultLoadBalancer", LoadBalancerArgs.builder()
///             .loadBalancerName("lb.exampleloadbalancer.top")
///             .fallbackPool(resourceOriginPoolLoadBalancer11.originPoolId())
///             .siteId(resourceSiteOriginPool.id())
///             .description(name)
///             .defaultPools(resourceOriginPoolLoadBalancer11.originPoolId())
///             .steeringPolicy("geo")
///             .monitor(LoadBalancerMonitorArgs.builder()
///                 .type("ICMP Ping")
///                 .timeout(5)
///                 .monitoringRegion("ChineseMainland")
///                 .consecutiveUp(3)
///                 .consecutiveDown(5)
///                 .interval(60)
///                 .build())
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
/// resources:
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       min: 10000
///       max: 99999
///   resourceSiteOriginPool:
///     type: alicloud:esa:Site
///     name: resource_Site_OriginPool
///     properties:
///       siteName: ${name}${defaultInteger.result}.com
///       instanceId: ${default.sites[0].instanceId}
///       coverage: overseas
///       accessType: NS
///   resourceOriginPoolLoadBalancer11:
///     type: alicloud:esa:OriginPool
///     name: resource_OriginPool_LoadBalancer_1_1
///     properties:
///       origins:
///         - type: ip_domain
///           address: www.example.com
///           header: '{"Host":["www.example.com"]}'
///           enabled: true
///           weight: '30'
///           name: origin1
///       siteId: ${resourceSiteOriginPool.id}
///       originPoolName: originpool1
///       enabled: true
///   defaultLoadBalancer:
///     type: alicloud:esa:LoadBalancer
///     name: default
///     properties:
///       loadBalancerName: lb.exampleloadbalancer.top
///       fallbackPool: ${resourceOriginPoolLoadBalancer11.originPoolId}
///       siteId: ${resourceSiteOriginPool.id}
///       description: ${name}
///       defaultPools:
///         - ${resourceOriginPoolLoadBalancer11.originPoolId}
///       steeringPolicy: geo
///       monitor:
///         type: ICMP Ping
///         timeout: 5
///         monitoringRegion: ChineseMainland
///         consecutiveUp: 3
///         consecutiveDown: 5
///         interval: 60
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
/// ESA Load Balancer can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:esa/loadBalancer:LoadBalancer example <site_id>:<load_balancer_id>
/// ```
class LoadBalancer extends pulumi.CustomResource {
  /// Cross-pool origin configuration. See `adaptive_routing` below.
  late final pulumi.Output<LoadBalancerAdaptiveRouting> adaptiveRouting;

  /// List of default pool IDs.
  late final pulumi.Output<List<int>> defaultPools;

  /// The detailed description of the load balancer for easy management and identification.
  late final pulumi.Output<String?> description;

  /// Whether the load balancer is enabled.
  late final pulumi.Output<bool?> enabled;

  /// The fallback pool ID, to which traffic will be redirected if all other pools are unavailable.
  late final pulumi.Output<int> fallbackPool;

  /// The unique identifier ID of the load balancer.
  late final pulumi.Output<int> loadBalancerId;

  /// The name of the load balancer must meet the domain name format verification and be a subdomain name under the site.
  late final pulumi.Output<String> loadBalancerName;

  /// Monitor configuration for health check. See `monitor` below.
  late final pulumi.Output<LoadBalancerMonitor> monitor;

  /// Weighted round-robin configuration, used to control the traffic distribution weights among different pools. See `random_steering` below.
  late final pulumi.Output<LoadBalancerRandomSteering?> randomSteering;

  /// Address pools corresponding to primary regions.
  late final pulumi.Output<String?> regionPools;

  /// Rule configuration list, used to define behavior under specific conditions. See `rules` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> rules;

  /// Session persistence. Valid values:
  late final pulumi.Output<String?> sessionAffinity;

  /// The site ID.
  late final pulumi.Output<String> siteId;

  /// The status of the load balancer.
  late final pulumi.Output<String> status;

  /// Load balancing policy.
  late final pulumi.Output<String> steeringPolicy;

  /// Address pools corresponding to secondary regions. When multiple secondary regions share a set of address pools, the keys can be concatenated with commas.
  late final pulumi.Output<String?> subRegionPools;

  /// TTL value, the time-to-live for DNS records. The default value is 30. The value range is 10-600.
  late final pulumi.Output<int> ttl;

  /// Creates a new [LoadBalancer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LoadBalancer]. {@macro pulumi_esa_load_balancer_load_balancer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LoadBalancer(
    String name, {
    LoadBalancerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:esa/loadBalancer:LoadBalancer',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    adaptiveRouting = registerOutput<LoadBalancerAdaptiveRouting>(
      'adaptiveRouting',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LoadBalancerAdaptiveRouting.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    defaultPools = registerOutput<List<int>>('defaultPools');
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool?>('enabled');
    fallbackPool = registerOutput<int>('fallbackPool');
    loadBalancerId = registerOutput<int>('loadBalancerId');
    loadBalancerName = registerOutput<String>('loadBalancerName');
    monitor = registerOutput<LoadBalancerMonitor>(
      'monitor',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LoadBalancerMonitor.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    randomSteering = registerOutput<LoadBalancerRandomSteering?>(
      'randomSteering',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LoadBalancerRandomSteering.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    regionPools = registerOutput<String?>('regionPools');
    rules = registerOutput<List<Map<String, dynamic>>?>('rules');
    sessionAffinity = registerOutput<String?>('sessionAffinity');
    siteId = registerOutput<String>('siteId');
    status = registerOutput<String>('status');
    steeringPolicy = registerOutput<String>('steeringPolicy');
    subRegionPools = registerOutput<String?>('subRegionPools');
    ttl = registerOutput<int>('ttl');
  }

  /// Gets an existing [LoadBalancer] resource's state with the given [name] and [id].
  static LoadBalancer get(
    String name,
    pulumi.Input<String> id, {
    LoadBalancerState? state,
  }) {
    return LoadBalancer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LoadBalancer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:esa/loadBalancer:LoadBalancer',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    adaptiveRouting = registerOutput<LoadBalancerAdaptiveRouting>(
      'adaptiveRouting',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LoadBalancerAdaptiveRouting.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    defaultPools = registerOutput<List<int>>('defaultPools');
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool?>('enabled');
    fallbackPool = registerOutput<int>('fallbackPool');
    loadBalancerId = registerOutput<int>('loadBalancerId');
    loadBalancerName = registerOutput<String>('loadBalancerName');
    monitor = registerOutput<LoadBalancerMonitor>(
      'monitor',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LoadBalancerMonitor.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    randomSteering = registerOutput<LoadBalancerRandomSteering?>(
      'randomSteering',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LoadBalancerRandomSteering.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    regionPools = registerOutput<String?>('regionPools');
    rules = registerOutput<List<Map<String, dynamic>>?>('rules');
    sessionAffinity = registerOutput<String?>('sessionAffinity');
    siteId = registerOutput<String>('siteId');
    status = registerOutput<String>('status');
    steeringPolicy = registerOutput<String>('steeringPolicy');
    subRegionPools = registerOutput<String?>('subRegionPools');
    ttl = registerOutput<int>('ttl');
  }
}
