import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_delivery_task_args.dart';
import 'site_delivery_task_http_delivery.dart';
import 'site_delivery_task_kafka_delivery.dart';
import 'site_delivery_task_oss_delivery.dart';
import 'site_delivery_task_s3_delivery.dart';
import 'site_delivery_task_sls_delivery.dart';
import 'site_delivery_task_state.dart';

/// Provides a ESA Site Delivery Task resource.
///
///
///
/// For information about ESA Site Delivery Task and how to use it, see [What is Site Delivery Task](https://next.api.alibabacloud.com/document/ESA/2024-09-10/CreateSiteDeliveryTask).
///
/// &gt; **NOTE:** Available since v1.247.0.
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
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.esa.getSites({
///     planSubscribeType: "enterpriseplan",
/// });
/// const resourceSiteHttpExample = new alicloud.esa.Site("resource_Site_http_example", {
///     siteName: "chenxin0116.site",
///     instanceId: _default.then(_default => _default.sites?.[0]?.instanceId),
///     coverage: "overseas",
///     accessType: "NS",
/// });
/// const defaultSiteDeliveryTask = new alicloud.esa.SiteDeliveryTask("default", {
///     httpDelivery: {
///         standardAuthParam: {
///             privateKey: "***",
///             urlPath: "v1/log/upload",
///             expiredTime: 300,
///         },
///         transformTimeout: 10,
///         maxRetry: 3,
///         maxBatchMb: 5,
///         compress: "gzip",
///         logBodySuffix: "cdnVersion:1.0",
///         standardAuthOn: false,
///         logBodyPrefix: "cdnVersion:1.0",
///         destUrl: "http://11.177.129.13:8081",
///         maxBatchSize: 1000,
///     },
///     dataCenter: "global",
///     discardRate: 0,
///     taskName: "dcdn-example-task",
///     businessType: "dcdn_log_access_l1",
///     fieldName: "ConsoleLog,CPUTime,Duration,ErrorCode,ErrorMessage,ResponseSize,ResponseStatus,RoutineName,ClientRequestID,LogTimestamp,FetchStatus,SubRequestID",
///     deliveryType: "http",
///     siteId: resourceSiteHttpExample.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.esa.get_sites(plan_subscribe_type="enterpriseplan")
/// resource_site_http_example = alicloud.esa.Site("resource_Site_http_example",
///     site_name="chenxin0116.site",
///     instance_id=default.sites[0].instance_id,
///     coverage="overseas",
///     access_type="NS")
/// default_site_delivery_task = alicloud.esa.SiteDeliveryTask("default",
///     http_delivery={
///         "standard_auth_param": {
///             "private_key": "***",
///             "url_path": "v1/log/upload",
///             "expired_time": 300,
///         },
///         "transform_timeout": 10,
///         "max_retry": 3,
///         "max_batch_mb": 5,
///         "compress": "gzip",
///         "log_body_suffix": "cdnVersion:1.0",
///         "standard_auth_on": False,
///         "log_body_prefix": "cdnVersion:1.0",
///         "dest_url": "http://11.177.129.13:8081",
///         "max_batch_size": 1000,
///     },
///     data_center="global",
///     discard_rate=0,
///     task_name="dcdn-example-task",
///     business_type="dcdn_log_access_l1",
///     field_name="ConsoleLog,CPUTime,Duration,ErrorCode,ErrorMessage,ResponseSize,ResponseStatus,RoutineName,ClientRequestID,LogTimestamp,FetchStatus,SubRequestID",
///     delivery_type="http",
///     site_id=resource_site_http_example.id)
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
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = AliCloud.Esa.GetSites.Invoke(new()
///     {
///         PlanSubscribeType = "enterpriseplan",
///     });
///
///     var resourceSiteHttpExample = new AliCloud.Esa.Site("resource_Site_http_example", new()
///     {
///         SiteName = "chenxin0116.site",
///         InstanceId = @default.Apply(@default => @default.Apply(getSitesResult => getSitesResult.Sites[0]?.InstanceId)),
///         Coverage = "overseas",
///         AccessType = "NS",
///     });
///
///     var defaultSiteDeliveryTask = new AliCloud.Esa.SiteDeliveryTask("default", new()
///     {
///         HttpDelivery = new AliCloud.Esa.Inputs.SiteDeliveryTaskHttpDeliveryArgs
///         {
///             StandardAuthParam = new AliCloud.Esa.Inputs.SiteDeliveryTaskHttpDeliveryStandardAuthParamArgs
///             {
///                 PrivateKey = "***",
///                 UrlPath = "v1/log/upload",
///                 ExpiredTime = 300,
///             },
///             TransformTimeout = 10,
///             MaxRetry = 3,
///             MaxBatchMb = 5,
///             Compress = "gzip",
///             LogBodySuffix = "cdnVersion:1.0",
///             StandardAuthOn = false,
///             LogBodyPrefix = "cdnVersion:1.0",
///             DestUrl = "http://11.177.129.13:8081",
///             MaxBatchSize = 1000,
///         },
///         DataCenter = "global",
///         DiscardRate = 0,
///         TaskName = "dcdn-example-task",
///         BusinessType = "dcdn_log_access_l1",
///         FieldName = "ConsoleLog,CPUTime,Duration,ErrorCode,ErrorMessage,ResponseSize,ResponseStatus,RoutineName,ClientRequestID,LogTimestamp,FetchStatus,SubRequestID",
///         DeliveryType = "http",
///         SiteId = resourceSiteHttpExample.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/esa"
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
/// 		resourceSiteHttpExample, err := esa.NewSite(ctx, "resource_Site_http_example", &esa.SiteArgs{
/// 			SiteName:   pulumi.String("chenxin0116.site"),
/// 			InstanceId: pulumi.String(_default.Sites[0].InstanceId),
/// 			Coverage:   pulumi.String("overseas"),
/// 			AccessType: pulumi.String("NS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = esa.NewSiteDeliveryTask(ctx, "default", &esa.SiteDeliveryTaskArgs{
/// 			HttpDelivery: &esa.SiteDeliveryTaskHttpDeliveryArgs{
/// 				StandardAuthParam: &esa.SiteDeliveryTaskHttpDeliveryStandardAuthParamArgs{
/// 					PrivateKey:  pulumi.String("***"),
/// 					UrlPath:     pulumi.String("v1/log/upload"),
/// 					ExpiredTime: pulumi.Int(300),
/// 				},
/// 				TransformTimeout: pulumi.Int(10),
/// 				MaxRetry:         pulumi.Int(3),
/// 				MaxBatchMb:       pulumi.Int(5),
/// 				Compress:         pulumi.String("gzip"),
/// 				LogBodySuffix:    pulumi.String("cdnVersion:1.0"),
/// 				StandardAuthOn:   pulumi.Bool(false),
/// 				LogBodyPrefix:    pulumi.String("cdnVersion:1.0"),
/// 				DestUrl:          pulumi.String("http://11.177.129.13:8081"),
/// 				MaxBatchSize:     pulumi.Int(1000),
/// 			},
/// 			DataCenter:   pulumi.String("global"),
/// 			DiscardRate:  pulumi.Float64(0),
/// 			TaskName:     pulumi.String("dcdn-example-task"),
/// 			BusinessType: pulumi.String("dcdn_log_access_l1"),
/// 			FieldName:    pulumi.String("ConsoleLog,CPUTime,Duration,ErrorCode,ErrorMessage,ResponseSize,ResponseStatus,RoutineName,ClientRequestID,LogTimestamp,FetchStatus,SubRequestID"),
/// 			DeliveryType: pulumi.String("http"),
/// 			SiteId:       resourceSiteHttpExample.ID(),
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
/// import com.pulumi.alicloud.esa.Site;
/// import com.pulumi.alicloud.esa.SiteArgs;
/// import com.pulumi.alicloud.esa.SiteDeliveryTask;
/// import com.pulumi.alicloud.esa.SiteDeliveryTaskArgs;
/// import com.pulumi.alicloud.esa.inputs.SiteDeliveryTaskHttpDeliveryArgs;
/// import com.pulumi.alicloud.esa.inputs.SiteDeliveryTaskHttpDeliveryStandardAuthParamArgs;
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
///         var resourceSiteHttpExample = new Site("resourceSiteHttpExample", SiteArgs.builder()
///             .siteName("chenxin0116.site")
///             .instanceId(default_.sites()[0].instanceId())
///             .coverage("overseas")
///             .accessType("NS")
///             .build());
///
///         var defaultSiteDeliveryTask = new SiteDeliveryTask("defaultSiteDeliveryTask", SiteDeliveryTaskArgs.builder()
///             .httpDelivery(SiteDeliveryTaskHttpDeliveryArgs.builder()
///                 .standardAuthParam(SiteDeliveryTaskHttpDeliveryStandardAuthParamArgs.builder()
///                     .privateKey("***")
///                     .urlPath("v1/log/upload")
///                     .expiredTime(300)
///                     .build())
///                 .transformTimeout(10)
///                 .maxRetry(3)
///                 .maxBatchMb(5)
///                 .compress("gzip")
///                 .logBodySuffix("cdnVersion:1.0")
///                 .standardAuthOn(false)
///                 .logBodyPrefix("cdnVersion:1.0")
///                 .destUrl("http://11.177.129.13:8081")
///                 .maxBatchSize(1000)
///                 .build())
///             .dataCenter("global")
///             .discardRate(0.0)
///             .taskName("dcdn-example-task")
///             .businessType("dcdn_log_access_l1")
///             .fieldName("ConsoleLog,CPUTime,Duration,ErrorCode,ErrorMessage,ResponseSize,ResponseStatus,RoutineName,ClientRequestID,LogTimestamp,FetchStatus,SubRequestID")
///             .deliveryType("http")
///             .siteId(resourceSiteHttpExample.id())
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
///   resourceSiteHttpExample:
///     type: alicloud:esa:Site
///     name: resource_Site_http_example
///     properties:
///       siteName: chenxin0116.site
///       instanceId: ${default.sites[0].instanceId}
///       coverage: overseas
///       accessType: NS
///   defaultSiteDeliveryTask:
///     type: alicloud:esa:SiteDeliveryTask
///     name: default
///     properties:
///       httpDelivery:
///         standardAuthParam:
///           privateKey: '***'
///           urlPath: v1/log/upload
///           expiredTime: '300'
///         transformTimeout: '10'
///         maxRetry: '3'
///         maxBatchMb: '5'
///         compress: gzip
///         logBodySuffix: cdnVersion:1.0
///         standardAuthOn: 'false'
///         logBodyPrefix: cdnVersion:1.0
///         destUrl: http://11.177.129.13:8081
///         maxBatchSize: '1000'
///       dataCenter: global
///       discardRate: '0.0'
///       taskName: dcdn-example-task
///       businessType: dcdn_log_access_l1
///       fieldName: ConsoleLog,CPUTime,Duration,ErrorCode,ErrorMessage,ResponseSize,ResponseStatus,RoutineName,ClientRequestID,LogTimestamp,FetchStatus,SubRequestID
///       deliveryType: http
///       siteId: ${resourceSiteHttpExample.id}
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
/// ESA Site Delivery Task can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:esa/siteDeliveryTask:SiteDeliveryTask example <site_id>:<task_name>
/// ```
class SiteDeliveryTask extends pulumi.CustomResource {
  /// Real-time log type. Valid values:
  /// - `dcdn_log_access_l1 (default)`: access log.
  late final pulumi.Output<String> businessType;

  /// Data Center. Values:
  late final pulumi.Output<String> dataCenter;

  /// Delivery Type:
  late final pulumi.Output<String> deliveryType;

  /// If the discard rate is not filled, the default value is 0.
  late final pulumi.Output<double?> discardRate;

  /// The list of delivery fields to be modified, separated by commas.
  late final pulumi.Output<String> fieldName;

  /// HTTP delivery configuration parameters. See `http_delivery` below.
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<SiteDeliveryTaskHttpDelivery?> httpDelivery;

  /// Kafka delivery configuration parameters. See `kafka_delivery` below.
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<SiteDeliveryTaskKafkaDelivery?> kafkaDelivery;

  /// OSS delivery configuration. See `oss_delivery` below.
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<SiteDeliveryTaskOssDelivery?> ossDelivery;

  /// S3/S3 compatible delivery configuration parameters. See `s3_delivery` below.
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<SiteDeliveryTaskS3Delivery?> s3Delivery;

  /// The site ID, which can be obtained by calling the [ListSites](https://help.aliyun.com/document_detail/2850189.html) interface.
  late final pulumi.Output<String> siteId;

  /// SLS delivery configuration. See `sls_delivery` below.
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<SiteDeliveryTaskSlsDelivery?> slsDelivery;

  /// Task status, value:
  late final pulumi.Output<String> status;

  /// The task name.
  late final pulumi.Output<String> taskName;

  /// Creates a new [SiteDeliveryTask].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SiteDeliveryTask]. {@macro pulumi_esa_site_delivery_task_site_delivery_task_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SiteDeliveryTask(
    String name, {
    SiteDeliveryTaskArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:esa/siteDeliveryTask:SiteDeliveryTask',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    businessType = registerOutput<String>('businessType');
    dataCenter = registerOutput<String>('dataCenter');
    deliveryType = registerOutput<String>('deliveryType');
    discardRate = registerOutput<double?>('discardRate');
    fieldName = registerOutput<String>('fieldName');
    httpDelivery = registerOutput<SiteDeliveryTaskHttpDelivery?>(
      'httpDelivery',
    );
    kafkaDelivery = registerOutput<SiteDeliveryTaskKafkaDelivery?>(
      'kafkaDelivery',
    );
    ossDelivery = registerOutput<SiteDeliveryTaskOssDelivery?>('ossDelivery');
    s3Delivery = registerOutput<SiteDeliveryTaskS3Delivery?>('s3Delivery');
    siteId = registerOutput<String>('siteId');
    slsDelivery = registerOutput<SiteDeliveryTaskSlsDelivery?>('slsDelivery');
    status = registerOutput<String>('status');
    taskName = registerOutput<String>('taskName');
  }

  /// Gets an existing [SiteDeliveryTask] resource's state with the given [name] and [id].
  static SiteDeliveryTask get(
    String name,
    pulumi.Input<String> id, {
    SiteDeliveryTaskState? state,
  }) {
    return SiteDeliveryTask._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SiteDeliveryTask._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:esa/siteDeliveryTask:SiteDeliveryTask',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    businessType = registerOutput<String>('businessType');
    dataCenter = registerOutput<String>('dataCenter');
    deliveryType = registerOutput<String>('deliveryType');
    discardRate = registerOutput<double?>('discardRate');
    fieldName = registerOutput<String>('fieldName');
    httpDelivery = registerOutput<SiteDeliveryTaskHttpDelivery?>(
      'httpDelivery',
    );
    kafkaDelivery = registerOutput<SiteDeliveryTaskKafkaDelivery?>(
      'kafkaDelivery',
    );
    ossDelivery = registerOutput<SiteDeliveryTaskOssDelivery?>('ossDelivery');
    s3Delivery = registerOutput<SiteDeliveryTaskS3Delivery?>('s3Delivery');
    siteId = registerOutput<String>('siteId');
    slsDelivery = registerOutput<SiteDeliveryTaskSlsDelivery?>('slsDelivery');
    status = registerOutput<String>('status');
    taskName = registerOutput<String>('taskName');
  }
}
