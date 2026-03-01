import 'package:pulumi/pulumi.dart' as pulumi;
import 'edge_container_app_record_args.dart';
import 'edge_container_app_record_state.dart';

/// Provides a ESA Edge Container App Record resource.
///
///
///
/// For information about ESA Edge Container App Record and how to use it, see [What is Edge Container App Record](https://next.api.alibabacloud.com/document/ESA/2024-09-10/CreateEdgeContainerAppRecord).
///
/// > **NOTE:** Available since v1.247.0.
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
/// const name = config.get("name") || "terraform.com";
/// const _default = alicloud.esa.getSites({
///     planSubscribeType: "enterpriseplan",
/// });
/// const defaultInteger = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const resourceSiteOriginPoolTest = new alicloud.esa.Site("resource_Site_OriginPool_test", {
///     siteName: `gositecdn-${defaultInteger.result}.cn`,
///     instanceId: _default.then(_default => _default.sites?.[0]?.instanceId),
///     coverage: "overseas",
///     accessType: "NS",
/// });
/// const defaultEdgeContainerApp = new alicloud.esa.EdgeContainerApp("default", {
///     healthCheckHost: "example.com",
///     healthCheckType: "l7",
///     servicePort: 80,
///     healthCheckInterval: 5,
///     edgeContainerAppName: "terraform-app2",
///     healthCheckHttpCode: "http_2xx",
///     healthCheckUri: "/",
///     healthCheckTimeout: 3,
///     healthCheckSuccTimes: 2,
///     remarks: name,
///     healthCheckMethod: "HEAD",
///     healthCheckPort: 80,
///     healthCheckFailTimes: 5,
///     targetPort: 3000,
/// });
/// const defaultEdgeContainerAppRecord = new alicloud.esa.EdgeContainerAppRecord("default", {
///     recordName: "tf.terraform.com",
///     siteId: resourceSiteOriginPoolTest.id,
///     appId: defaultEdgeContainerApp.id,
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
///     name = "terraform.com"
/// default = alicloud.esa.get_sites(plan_subscribe_type="enterpriseplan")
/// default_integer = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// resource_site_origin_pool_test = alicloud.esa.Site("resource_Site_OriginPool_test",
///     site_name=f"gositecdn-{default_integer['result']}.cn",
///     instance_id=default.sites[0].instance_id,
///     coverage="overseas",
///     access_type="NS")
/// default_edge_container_app = alicloud.esa.EdgeContainerApp("default",
///     health_check_host="example.com",
///     health_check_type="l7",
///     service_port=80,
///     health_check_interval=5,
///     edge_container_app_name="terraform-app2",
///     health_check_http_code="http_2xx",
///     health_check_uri="/",
///     health_check_timeout=3,
///     health_check_succ_times=2,
///     remarks=name,
///     health_check_method="HEAD",
///     health_check_port=80,
///     health_check_fail_times=5,
///     target_port=3000)
/// default_edge_container_app_record = alicloud.esa.EdgeContainerAppRecord("default",
///     record_name="tf.terraform.com",
///     site_id=resource_site_origin_pool_test.id,
///     app_id=default_edge_container_app.id)
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
///     var name = config.Get("name") ?? "terraform.com";
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
///     var resourceSiteOriginPoolTest = new AliCloud.Esa.Site("resource_Site_OriginPool_test", new()
///     {
///         SiteName = $"gositecdn-{defaultInteger.Result}.cn",
///         InstanceId = @default.Apply(@default => @default.Apply(getSitesResult => getSitesResult.Sites[0]?.InstanceId)),
///         Coverage = "overseas",
///         AccessType = "NS",
///     });
///
///     var defaultEdgeContainerApp = new AliCloud.Esa.EdgeContainerApp("default", new()
///     {
///         HealthCheckHost = "example.com",
///         HealthCheckType = "l7",
///         ServicePort = 80,
///         HealthCheckInterval = 5,
///         EdgeContainerAppName = "terraform-app2",
///         HealthCheckHttpCode = "http_2xx",
///         HealthCheckUri = "/",
///         HealthCheckTimeout = 3,
///         HealthCheckSuccTimes = 2,
///         Remarks = name,
///         HealthCheckMethod = "HEAD",
///         HealthCheckPort = 80,
///         HealthCheckFailTimes = 5,
///         TargetPort = 3000,
///     });
///
///     var defaultEdgeContainerAppRecord = new AliCloud.Esa.EdgeContainerAppRecord("default", new()
///     {
///         RecordName = "tf.terraform.com",
///         SiteId = resourceSiteOriginPoolTest.Id,
///         AppId = defaultEdgeContainerApp.Id,
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
/// 		name := "terraform.com"
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
/// 		resourceSiteOriginPoolTest, err := esa.NewSite(ctx, "resource_Site_OriginPool_test", &esa.SiteArgs{
/// 			SiteName:   pulumi.Sprintf("gositecdn-%v.cn", defaultInteger.Result),
/// 			InstanceId: pulumi.String(_default.Sites[0].InstanceId),
/// 			Coverage:   pulumi.String("overseas"),
/// 			AccessType: pulumi.String("NS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultEdgeContainerApp, err := esa.NewEdgeContainerApp(ctx, "default", &esa.EdgeContainerAppArgs{
/// 			HealthCheckHost:      pulumi.String("example.com"),
/// 			HealthCheckType:      pulumi.String("l7"),
/// 			ServicePort:          pulumi.Int(80),
/// 			HealthCheckInterval:  pulumi.Int(5),
/// 			EdgeContainerAppName: pulumi.String("terraform-app2"),
/// 			HealthCheckHttpCode:  pulumi.String("http_2xx"),
/// 			HealthCheckUri:       pulumi.String("/"),
/// 			HealthCheckTimeout:   pulumi.Int(3),
/// 			HealthCheckSuccTimes: pulumi.Int(2),
/// 			Remarks:              pulumi.String(name),
/// 			HealthCheckMethod:    pulumi.String("HEAD"),
/// 			HealthCheckPort:      pulumi.Int(80),
/// 			HealthCheckFailTimes: pulumi.Int(5),
/// 			TargetPort:           pulumi.Int(3000),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = esa.NewEdgeContainerAppRecord(ctx, "default", &esa.EdgeContainerAppRecordArgs{
/// 			RecordName: pulumi.String("tf.terraform.com"),
/// 			SiteId:     resourceSiteOriginPoolTest.ID(),
/// 			AppId:      defaultEdgeContainerApp.ID(),
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
/// import com.pulumi.alicloud.esa.EdgeContainerApp;
/// import com.pulumi.alicloud.esa.EdgeContainerAppArgs;
/// import com.pulumi.alicloud.esa.EdgeContainerAppRecord;
/// import com.pulumi.alicloud.esa.EdgeContainerAppRecordArgs;
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
///         final var name = config.get("name").orElse("terraform.com");
///         final var default = EsaFunctions.getSites(GetSitesArgs.builder()
///             .planSubscribeType("enterpriseplan")
///             .build());
///
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var resourceSiteOriginPoolTest = new Site("resourceSiteOriginPoolTest", SiteArgs.builder()
///             .siteName(String.format("gositecdn-%s.cn", defaultInteger.result()))
///             .instanceId(default_.sites()[0].instanceId())
///             .coverage("overseas")
///             .accessType("NS")
///             .build());
///
///         var defaultEdgeContainerApp = new EdgeContainerApp("defaultEdgeContainerApp", EdgeContainerAppArgs.builder()
///             .healthCheckHost("example.com")
///             .healthCheckType("l7")
///             .servicePort(80)
///             .healthCheckInterval(5)
///             .edgeContainerAppName("terraform-app2")
///             .healthCheckHttpCode("http_2xx")
///             .healthCheckUri("/")
///             .healthCheckTimeout(3)
///             .healthCheckSuccTimes(2)
///             .remarks(name)
///             .healthCheckMethod("HEAD")
///             .healthCheckPort(80)
///             .healthCheckFailTimes(5)
///             .targetPort(3000)
///             .build());
///
///         var defaultEdgeContainerAppRecord = new EdgeContainerAppRecord("defaultEdgeContainerAppRecord", EdgeContainerAppRecordArgs.builder()
///             .recordName("tf.terraform.com")
///             .siteId(resourceSiteOriginPoolTest.id())
///             .appId(defaultEdgeContainerApp.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform.com
/// resources:
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       min: 10000
///       max: 99999
///   resourceSiteOriginPoolTest:
///     type: alicloud:esa:Site
///     name: resource_Site_OriginPool_test
///     properties:
///       siteName: gositecdn-${defaultInteger.result}.cn
///       instanceId: ${default.sites[0].instanceId}
///       coverage: overseas
///       accessType: NS
///   defaultEdgeContainerApp:
///     type: alicloud:esa:EdgeContainerApp
///     name: default
///     properties:
///       healthCheckHost: example.com
///       healthCheckType: l7
///       servicePort: '80'
///       healthCheckInterval: '5'
///       edgeContainerAppName: terraform-app2
///       healthCheckHttpCode: http_2xx
///       healthCheckUri: /
///       healthCheckTimeout: '3'
///       healthCheckSuccTimes: '2'
///       remarks: ${name}
///       healthCheckMethod: HEAD
///       healthCheckPort: '80'
///       healthCheckFailTimes: '5'
///       targetPort: '3000'
///   defaultEdgeContainerAppRecord:
///     type: alicloud:esa:EdgeContainerAppRecord
///     name: default
///     properties:
///       recordName: tf.terraform.com
///       siteId: ${resourceSiteOriginPoolTest.id}
///       appId: ${defaultEdgeContainerApp.id}
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
/// ESA Edge Container App Record can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:esa/edgeContainerAppRecord:EdgeContainerAppRecord example <site_id>:<app_id>:<record_name>
/// ```
class EdgeContainerAppRecord extends pulumi.CustomResource {
  /// The application ID
  late final pulumi.Output<String> appId;
  /// The time when the domain name was added. The time follows the ISO 8601 standard in the YYYY-MM-DDThh:mm:ss format. The time is displayed in UTC.
  late final pulumi.Output<String> createTime;
  /// The associated domain name.
  late final pulumi.Output<String> recordName;
  /// The website ID.
  late final pulumi.Output<String> siteId;

  /// Creates a new [EdgeContainerAppRecord].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EdgeContainerAppRecord]. {@macro pulumi_esa_edge_container_app_record_edge_container_app_record_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EdgeContainerAppRecord(
    String name, {
    EdgeContainerAppRecordArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/edgeContainerAppRecord:EdgeContainerAppRecord',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appId = registerOutput<String>('appId');
    this.createTime = registerOutput<String>('createTime');
    this.recordName = registerOutput<String>('recordName');
    this.siteId = registerOutput<String>('siteId');
  }

  /// Gets an existing [EdgeContainerAppRecord] resource's state with the given [name] and [id].
  static EdgeContainerAppRecord get(
    String name,
    pulumi.Input<String> id, {
    EdgeContainerAppRecordState? state,
  }) {
    return EdgeContainerAppRecord._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EdgeContainerAppRecord._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/edgeContainerAppRecord:EdgeContainerAppRecord',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appId = registerOutput<String>('appId');
    this.createTime = registerOutput<String>('createTime');
    this.recordName = registerOutput<String>('recordName');
    this.siteId = registerOutput<String>('siteId');
  }
}
