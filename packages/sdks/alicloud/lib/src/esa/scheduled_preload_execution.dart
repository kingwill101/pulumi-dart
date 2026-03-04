import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_preload_execution_args.dart';
import 'scheduled_preload_execution_state.dart';

/// Provides a ESA Scheduled Preload Execution resource.
///
///
///
/// For information about ESA Scheduled Preload Execution and how to use it, see [What is Scheduled Preload Execution](https://next.api.alibabacloud.com/document/ESA/2024-09-10/CreateScheduledPreloadExecutions).
///
/// &gt; **NOTE:** Available since v1.248.0.
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
/// const _default = alicloud.esa.getSites({
///     planSubscribeType: "enterpriseplan",
/// });
/// const defaultSite = new alicloud.esa.Site("default", {
///     siteName: "terraform.cn",
///     instanceId: _default.then(_default => _default.sites?.[0]?.instanceId),
///     coverage: "overseas",
///     accessType: "NS",
/// });
/// const defaultScheduledPreloadJob = new alicloud.esa.ScheduledPreloadJob("default", {
///     insertWay: "textBox",
///     siteId: defaultSite.id,
///     scheduledPreloadJobName: "example_scheduledpreloadexecution_job",
///     urlList: "http://example.gositecdn.cn/example/example.txt",
/// });
/// const defaultScheduledPreloadExecution = new alicloud.esa.ScheduledPreloadExecution("default", {
///     sliceLen: 5,
///     endTime: "2024-06-04T10:02:09.000+08:00",
///     startTime: "2024-06-04T00:00:00.000+08:00",
///     scheduledPreloadJobId: defaultScheduledPreloadJob.scheduledPreloadJobId,
///     interval: 30,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.esa.get_sites(plan_subscribe_type="enterpriseplan")
/// default_site = alicloud.esa.Site("default",
///     site_name="terraform.cn",
///     instance_id=default.sites[0].instance_id,
///     coverage="overseas",
///     access_type="NS")
/// default_scheduled_preload_job = alicloud.esa.ScheduledPreloadJob("default",
///     insert_way="textBox",
///     site_id=default_site.id,
///     scheduled_preload_job_name="example_scheduledpreloadexecution_job",
///     url_list="http://example.gositecdn.cn/example/example.txt")
/// default_scheduled_preload_execution = alicloud.esa.ScheduledPreloadExecution("default",
///     slice_len=5,
///     end_time="2024-06-04T10:02:09.000+08:00",
///     start_time="2024-06-04T00:00:00.000+08:00",
///     scheduled_preload_job_id=default_scheduled_preload_job.scheduled_preload_job_id,
///     interval=30)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Esa.GetSites.Invoke(new()
///     {
///         PlanSubscribeType = "enterpriseplan",
///     });
///
///     var defaultSite = new AliCloud.Esa.Site("default", new()
///     {
///         SiteName = "terraform.cn",
///         InstanceId = @default.Apply(@default => @default.Apply(getSitesResult => getSitesResult.Sites[0]?.InstanceId)),
///         Coverage = "overseas",
///         AccessType = "NS",
///     });
///
///     var defaultScheduledPreloadJob = new AliCloud.Esa.ScheduledPreloadJob("default", new()
///     {
///         InsertWay = "textBox",
///         SiteId = defaultSite.Id,
///         ScheduledPreloadJobName = "example_scheduledpreloadexecution_job",
///         UrlList = "http://example.gositecdn.cn/example/example.txt",
///     });
///
///     var defaultScheduledPreloadExecution = new AliCloud.Esa.ScheduledPreloadExecution("default", new()
///     {
///         SliceLen = 5,
///         EndTime = "2024-06-04T10:02:09.000+08:00",
///         StartTime = "2024-06-04T00:00:00.000+08:00",
///         ScheduledPreloadJobId = defaultScheduledPreloadJob.ScheduledPreloadJobId,
///         Interval = 30,
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
/// 		defaultSite, err := esa.NewSite(ctx, "default", &esa.SiteArgs{
/// 			SiteName:   pulumi.String("terraform.cn"),
/// 			InstanceId: pulumi.String(_default.Sites[0].InstanceId),
/// 			Coverage:   pulumi.String("overseas"),
/// 			AccessType: pulumi.String("NS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultScheduledPreloadJob, err := esa.NewScheduledPreloadJob(ctx, "default", &esa.ScheduledPreloadJobArgs{
/// 			InsertWay:               pulumi.String("textBox"),
/// 			SiteId:                  defaultSite.ID(),
/// 			ScheduledPreloadJobName: pulumi.String("example_scheduledpreloadexecution_job"),
/// 			UrlList:                 pulumi.String("http://example.gositecdn.cn/example/example.txt"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = esa.NewScheduledPreloadExecution(ctx, "default", &esa.ScheduledPreloadExecutionArgs{
/// 			SliceLen:              pulumi.Int(5),
/// 			EndTime:               pulumi.String("2024-06-04T10:02:09.000+08:00"),
/// 			StartTime:             pulumi.String("2024-06-04T00:00:00.000+08:00"),
/// 			ScheduledPreloadJobId: defaultScheduledPreloadJob.ScheduledPreloadJobId,
/// 			Interval:              pulumi.Int(30),
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
/// import com.pulumi.alicloud.esa.ScheduledPreloadJob;
/// import com.pulumi.alicloud.esa.ScheduledPreloadJobArgs;
/// import com.pulumi.alicloud.esa.ScheduledPreloadExecution;
/// import com.pulumi.alicloud.esa.ScheduledPreloadExecutionArgs;
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
///         var defaultSite = new Site("defaultSite", SiteArgs.builder()
///             .siteName("terraform.cn")
///             .instanceId(default_.sites()[0].instanceId())
///             .coverage("overseas")
///             .accessType("NS")
///             .build());
///
///         var defaultScheduledPreloadJob = new ScheduledPreloadJob("defaultScheduledPreloadJob", ScheduledPreloadJobArgs.builder()
///             .insertWay("textBox")
///             .siteId(defaultSite.id())
///             .scheduledPreloadJobName("example_scheduledpreloadexecution_job")
///             .urlList("http://example.gositecdn.cn/example/example.txt")
///             .build());
///
///         var defaultScheduledPreloadExecution = new ScheduledPreloadExecution("defaultScheduledPreloadExecution", ScheduledPreloadExecutionArgs.builder()
///             .sliceLen(5)
///             .endTime("2024-06-04T10:02:09.000+08:00")
///             .startTime("2024-06-04T00:00:00.000+08:00")
///             .scheduledPreloadJobId(defaultScheduledPreloadJob.scheduledPreloadJobId())
///             .interval(30)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultSite:
///     type: alicloud:esa:Site
///     name: default
///     properties:
///       siteName: terraform.cn
///       instanceId: ${default.sites[0].instanceId}
///       coverage: overseas
///       accessType: NS
///   defaultScheduledPreloadJob:
///     type: alicloud:esa:ScheduledPreloadJob
///     name: default
///     properties:
///       insertWay: textBox
///       siteId: ${defaultSite.id}
///       scheduledPreloadJobName: example_scheduledpreloadexecution_job
///       urlList: http://example.gositecdn.cn/example/example.txt
///   defaultScheduledPreloadExecution:
///     type: alicloud:esa:ScheduledPreloadExecution
///     name: default
///     properties:
///       sliceLen: '5'
///       endTime: 2024-06-04T10:02:09.000+08:00
///       startTime: 2024-06-04T00:00:00.000+08:00
///       scheduledPreloadJobId: ${defaultScheduledPreloadJob.scheduledPreloadJobId}
///       interval: '30'
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
/// ESA Scheduled Preload Execution can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:esa/scheduledPreloadExecution:ScheduledPreloadExecution example <scheduled_preload_job_id>:<scheduled_preload_execution_id>
/// ```
class ScheduledPreloadExecution extends pulumi.CustomResource {
  /// The end time of the prefetch plan.
  late final pulumi.Output<String?> endTime;

  /// The time interval between each batch execution. Unit: seconds.
  late final pulumi.Output<int> interval;

  /// The ID of the prefetch plan.
  late final pulumi.Output<String> scheduledPreloadExecutionId;

  /// The ID of the prefetch task.
  late final pulumi.Output<String> scheduledPreloadJobId;

  /// The number of URLs prefetched in each batch.
  late final pulumi.Output<int> sliceLen;

  /// The start time of the prefetch plan.
  late final pulumi.Output<String?> startTime;

  /// The status of the prefetch plan, including the following statuses.
  late final pulumi.Output<String> status;

  /// Creates a new [ScheduledPreloadExecution].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ScheduledPreloadExecution]. {@macro pulumi_esa_scheduled_preload_execution_scheduled_preload_execution_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ScheduledPreloadExecution(
    String name, {
    ScheduledPreloadExecutionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:esa/scheduledPreloadExecution:ScheduledPreloadExecution',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    endTime = registerOutput<String?>('endTime');
    interval = registerOutput<int>('interval');
    scheduledPreloadExecutionId = registerOutput<String>(
      'scheduledPreloadExecutionId',
    );
    scheduledPreloadJobId = registerOutput<String>('scheduledPreloadJobId');
    sliceLen = registerOutput<int>('sliceLen');
    startTime = registerOutput<String?>('startTime');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [ScheduledPreloadExecution] resource's state with the given [name] and [id].
  static ScheduledPreloadExecution get(
    String name,
    pulumi.Input<String> id, {
    ScheduledPreloadExecutionState? state,
  }) {
    return ScheduledPreloadExecution._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ScheduledPreloadExecution._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:esa/scheduledPreloadExecution:ScheduledPreloadExecution',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    endTime = registerOutput<String?>('endTime');
    interval = registerOutput<int>('interval');
    scheduledPreloadExecutionId = registerOutput<String>(
      'scheduledPreloadExecutionId',
    );
    scheduledPreloadJobId = registerOutput<String>('scheduledPreloadJobId');
    sliceLen = registerOutput<int>('sliceLen');
    startTime = registerOutput<String?>('startTime');
    status = registerOutput<String>('status');
  }
}
