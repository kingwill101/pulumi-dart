import 'package:pulumi/pulumi.dart' as pulumi;
import 'real_time_log_delivery_args.dart';
import 'real_time_log_delivery_state.dart';

/// Provides a CDN Real Time Log Delivery resource.
///
/// Accelerate domain name real-time log push.
///
/// For information about CDN Real Time Log Delivery and how to use it, see [What is Real Time Log Delivery](https://www.alibabacloud.com/help/en/cdn/developer-reference/api-cdn-2018-05-10-createrealtimelogdelivery).
///
/// &gt; **NOTE:** Available since v1.134.0.
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
/// const defaultInteger = new random.index.Integer("default", {
///     max: 99999,
///     min: 10000,
/// });
/// const defaultDomainNew = new alicloud.cdn.DomainNew("default", {
///     scope: "overseas",
///     domainName: `mycdndomain-${defaultInteger.result}.alicloud-provider.cn`,
///     cdnType: "web",
///     sources: [{
///         type: "ipaddr",
///         content: "1.1.3.1",
///         priority: 20,
///         port: 80,
///         weight: 15,
///     }],
/// });
/// const defaultProject = new alicloud.log.Project("default", {
///     projectName: `terraform-example-${defaultInteger.result}`,
///     description: "terraform-example",
/// });
/// const defaultStore = new alicloud.log.Store("default", {
///     projectName: defaultProject.projectName,
///     logstoreName: "example-store",
///     shardCount: 3,
///     autoSplit: true,
///     maxSplitShardCount: 60,
///     appendMeta: true,
/// });
/// const _default = alicloud.getRegions({
///     current: true,
/// });
/// const defaultRealTimeLogDelivery = new alicloud.cdn.RealTimeLogDelivery("default", {
///     domain: defaultDomainNew.domainName,
///     logstore: defaultStore.logstoreName,
///     project: defaultProject.projectName,
///     slsRegion: _default.then(_default => _default.regions?.[0]?.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// default_integer = random.index.Integer("default",
///     max=99999,
///     min=10000)
/// default_domain_new = alicloud.cdn.DomainNew("default",
///     scope="overseas",
///     domain_name=f"mycdndomain-{default_integer['result']}.alicloud-provider.cn",
///     cdn_type="web",
///     sources=[{
///         "type": "ipaddr",
///         "content": "1.1.3.1",
///         "priority": 20,
///         "port": 80,
///         "weight": 15,
///     }])
/// default_project = alicloud.log.Project("default",
///     project_name=f"terraform-example-{default_integer['result']}",
///     description="terraform-example")
/// default_store = alicloud.log.Store("default",
///     project_name=default_project.project_name,
///     logstore_name="example-store",
///     shard_count=3,
///     auto_split=True,
///     max_split_shard_count=60,
///     append_meta=True)
/// default = alicloud.get_regions(current=True)
/// default_real_time_log_delivery = alicloud.cdn.RealTimeLogDelivery("default",
///     domain=default_domain_new.domain_name,
///     logstore=default_store.logstore_name,
///     project=default_project.project_name,
///     sls_region=default.regions[0].id)
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
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Max = 99999,
///         Min = 10000,
///     });
///
///     var defaultDomainNew = new AliCloud.Cdn.DomainNew("default", new()
///     {
///         Scope = "overseas",
///         DomainName = $"mycdndomain-{defaultInteger.Result}.alicloud-provider.cn",
///         CdnType = "web",
///         Sources = new[]
///         {
///             new AliCloud.Cdn.Inputs.DomainNewSourceArgs
///             {
///                 Type = "ipaddr",
///                 Content = "1.1.3.1",
///                 Priority = 20,
///                 Port = 80,
///                 Weight = 15,
///             },
///         },
///     });
///
///     var defaultProject = new AliCloud.Log.Project("default", new()
///     {
///         ProjectName = $"terraform-example-{defaultInteger.Result}",
///         Description = "terraform-example",
///     });
///
///     var defaultStore = new AliCloud.Log.Store("default", new()
///     {
///         ProjectName = defaultProject.ProjectName,
///         LogstoreName = "example-store",
///         ShardCount = 3,
///         AutoSplit = true,
///         MaxSplitShardCount = 60,
///         AppendMeta = true,
///     });
///
///     var @default = AliCloud.GetRegions.Invoke(new()
///     {
///         Current = true,
///     });
///
///     var defaultRealTimeLogDelivery = new AliCloud.Cdn.RealTimeLogDelivery("default", new()
///     {
///         Domain = defaultDomainNew.DomainName,
///         Logstore = defaultStore.LogstoreName,
///         Project = defaultProject.ProjectName,
///         SlsRegion = @default.Apply(@default => @default.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id)),
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cdn"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/log"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Max: 99999,
/// 			Min: 10000,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultDomainNew, err := cdn.NewDomainNew(ctx, "default", &cdn.DomainNewArgs{
/// 			Scope:      pulumi.String("overseas"),
/// 			DomainName: pulumi.Sprintf("mycdndomain-%v.alicloud-provider.cn", defaultInteger.Result),
/// 			CdnType:    pulumi.String("web"),
/// 			Sources: cdn.DomainNewSourceArray{
/// 				&cdn.DomainNewSourceArgs{
/// 					Type:     pulumi.String("ipaddr"),
/// 					Content:  pulumi.String("1.1.3.1"),
/// 					Priority: pulumi.Int(20),
/// 					Port:     pulumi.Int(80),
/// 					Weight:   pulumi.Int(15),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultProject, err := log.NewProject(ctx, "default", &log.ProjectArgs{
/// 			ProjectName: pulumi.Sprintf("terraform-example-%v", defaultInteger.Result),
/// 			Description: pulumi.String("terraform-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultStore, err := log.NewStore(ctx, "default", &log.StoreArgs{
/// 			ProjectName:        defaultProject.ProjectName,
/// 			LogstoreName:       pulumi.String("example-store"),
/// 			ShardCount:         pulumi.Int(3),
/// 			AutoSplit:          pulumi.Bool(true),
/// 			MaxSplitShardCount: pulumi.Int(60),
/// 			AppendMeta:         pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := alicloud.GetRegions(ctx, &alicloud.GetRegionsArgs{
/// 			Current: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cdn.NewRealTimeLogDelivery(ctx, "default", &cdn.RealTimeLogDeliveryArgs{
/// 			Domain:    defaultDomainNew.DomainName,
/// 			Logstore:  defaultStore.LogstoreName,
/// 			Project:   defaultProject.ProjectName,
/// 			SlsRegion: pulumi.String(_default.Regions[0].Id),
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
/// import com.pulumi.alicloud.log.Project;
/// import com.pulumi.alicloud.log.ProjectArgs;
/// import com.pulumi.alicloud.log.Store;
/// import com.pulumi.alicloud.log.StoreArgs;
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetRegionsArgs;
/// import com.pulumi.alicloud.cdn.RealTimeLogDelivery;
/// import com.pulumi.alicloud.cdn.RealTimeLogDeliveryArgs;
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
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .max(99999)
///             .min(10000)
///             .build());
///
///         var defaultDomainNew = new DomainNew("defaultDomainNew", DomainNewArgs.builder()
///             .scope("overseas")
///             .domainName(String.format("mycdndomain-%s.alicloud-provider.cn", defaultInteger.result()))
///             .cdnType("web")
///             .sources(DomainNewSourceArgs.builder()
///                 .type("ipaddr")
///                 .content("1.1.3.1")
///                 .priority(20)
///                 .port(80)
///                 .weight(15)
///                 .build())
///             .build());
///
///         var defaultProject = new Project("defaultProject", ProjectArgs.builder()
///             .projectName(String.format("terraform-example-%s", defaultInteger.result()))
///             .description("terraform-example")
///             .build());
///
///         var defaultStore = new Store("defaultStore", StoreArgs.builder()
///             .projectName(defaultProject.projectName())
///             .logstoreName("example-store")
///             .shardCount(3)
///             .autoSplit(true)
///             .maxSplitShardCount(60)
///             .appendMeta(true)
///             .build());
///
///         final var default = AlicloudFunctions.getRegions(GetRegionsArgs.builder()
///             .current(true)
///             .build());
///
///         var defaultRealTimeLogDelivery = new RealTimeLogDelivery("defaultRealTimeLogDelivery", RealTimeLogDeliveryArgs.builder()
///             .domain(defaultDomainNew.domainName())
///             .logstore(defaultStore.logstoreName())
///             .project(defaultProject.projectName())
///             .slsRegion(default_.regions()[0].id())
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
///       max: 99999
///       min: 10000
///   defaultDomainNew:
///     type: alicloud:cdn:DomainNew
///     name: default
///     properties:
///       scope: overseas
///       domainName: mycdndomain-${defaultInteger.result}.alicloud-provider.cn
///       cdnType: web
///       sources:
///         - type: ipaddr
///           content: 1.1.3.1
///           priority: 20
///           port: 80
///           weight: 15
///   defaultProject:
///     type: alicloud:log:Project
///     name: default
///     properties:
///       projectName: terraform-example-${defaultInteger.result}
///       description: terraform-example
///   defaultStore:
///     type: alicloud:log:Store
///     name: default
///     properties:
///       projectName: ${defaultProject.projectName}
///       logstoreName: example-store
///       shardCount: 3
///       autoSplit: true
///       maxSplitShardCount: 60
///       appendMeta: true
///   defaultRealTimeLogDelivery:
///     type: alicloud:cdn:RealTimeLogDelivery
///     name: default
///     properties:
///       domain: ${defaultDomainNew.domainName}
///       logstore: ${defaultStore.logstoreName}
///       project: ${defaultProject.projectName}
///       slsRegion: ${default.regions[0].id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getRegions
///       arguments:
///         current: true
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// CDN Real Time Log Delivery can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cdn/realTimeLogDelivery:RealTimeLogDelivery example <id>
/// ```
class RealTimeLogDelivery extends pulumi.CustomResource {
  /// The accelerated domain name for which you want to disable real-time log delivery. You can specify multiple domain names and separate them with commas (,).
  late final pulumi.Output<String> domain;

  /// The ID of the region where the Log Service project is deployed. You can specify multiple region IDs and separate them with commas (,).
  ///
  /// For more information about regions, see [Regions that support real-time log delivery](https://www.alibabacloud.com/help/en/doc-detail/144883.html).
  late final pulumi.Output<String> logstore;

  /// The name of the Logstore that collects log data from Alibaba Cloud CDN in real time. You can specify multiple Logstore names and separate them with commas (,).
  late final pulumi.Output<String> project;

  /// The ID of the region where the Log Service project is deployed. For more information, see [Regions that support real-time log delivery](https://www.alibabacloud.com/help/en/doc-detail/144883.html).
  late final pulumi.Output<String> slsRegion;

  /// Resource attribute fields that represent the status of the resource.
  ///
  /// Value:
  /// - offline
  /// - online
  late final pulumi.Output<String> status;

  /// Creates a new [RealTimeLogDelivery].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RealTimeLogDelivery]. {@macro pulumi_cdn_real_time_log_delivery_real_time_log_delivery_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RealTimeLogDelivery(
    String name, {
    RealTimeLogDeliveryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cdn/realTimeLogDelivery:RealTimeLogDelivery',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    domain = registerOutput<String>('domain');
    logstore = registerOutput<String>('logstore');
    project = registerOutput<String>('project');
    slsRegion = registerOutput<String>('slsRegion');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [RealTimeLogDelivery] resource's state with the given [name] and [id].
  static RealTimeLogDelivery get(
    String name,
    pulumi.Input<String> id, {
    RealTimeLogDeliveryState? state,
  }) {
    return RealTimeLogDelivery._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RealTimeLogDelivery._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cdn/realTimeLogDelivery:RealTimeLogDelivery',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    domain = registerOutput<String>('domain');
    logstore = registerOutput<String>('logstore');
    project = registerOutput<String>('project');
    slsRegion = registerOutput<String>('slsRegion');
    status = registerOutput<String>('status');
  }
}
