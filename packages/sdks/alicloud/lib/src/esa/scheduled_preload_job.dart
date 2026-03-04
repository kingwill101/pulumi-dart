import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_preload_job_args.dart';
import 'scheduled_preload_job_state.dart';

/// Provides a ESA Scheduled Preload Job resource.
///
///
///
/// For information about ESA Scheduled Preload Job and how to use it, see [What is Scheduled Preload Job](https://next.api.alibabacloud.com/document/ESA/2024-09-10/CreateScheduledPreloadJob).
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
/// 		_, err = esa.NewScheduledPreloadJob(ctx, "default", &esa.ScheduledPreloadJobArgs{
/// 			InsertWay:               pulumi.String("textBox"),
/// 			SiteId:                  defaultSite.ID(),
/// 			ScheduledPreloadJobName: pulumi.String("example_scheduledpreloadexecution_job"),
/// 			UrlList:                 pulumi.String("http://example.gositecdn.cn/example/example.txt"),
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
/// ESA Scheduled Preload Job can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:esa/scheduledPreloadJob:ScheduledPreloadJob example <site_id>:<scheduled_preload_job_id>
/// ```
class ScheduledPreloadJob extends pulumi.CustomResource {
  /// The time when the task was created.
  late final pulumi.Output<String> createTime;

  /// The method to submit the URLs to be prefetched.
  late final pulumi.Output<String> insertWay;

  /// Preheat OSS files regularly and fill in the OSS file address. Note: The OSS file contains the URL that you need to warm up.
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<String?> ossUrl;

  /// The ID of the prefetch task.
  late final pulumi.Output<String> scheduledPreloadJobId;

  /// The task name.
  late final pulumi.Output<String> scheduledPreloadJobName;

  /// The site ID.
  late final pulumi.Output<String> siteId;

  /// A list of URLs to be preheated, which is used when uploading a preheated file in the text box mode.
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<String?> urlList;

  /// Creates a new [ScheduledPreloadJob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ScheduledPreloadJob]. {@macro pulumi_esa_scheduled_preload_job_scheduled_preload_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ScheduledPreloadJob(
    String name, {
    ScheduledPreloadJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:esa/scheduledPreloadJob:ScheduledPreloadJob',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    insertWay = registerOutput<String>('insertWay');
    ossUrl = registerOutput<String?>('ossUrl');
    scheduledPreloadJobId = registerOutput<String>('scheduledPreloadJobId');
    scheduledPreloadJobName = registerOutput<String>('scheduledPreloadJobName');
    siteId = registerOutput<String>('siteId');
    urlList = registerOutput<String?>('urlList');
  }

  /// Gets an existing [ScheduledPreloadJob] resource's state with the given [name] and [id].
  static ScheduledPreloadJob get(
    String name,
    pulumi.Input<String> id, {
    ScheduledPreloadJobState? state,
  }) {
    return ScheduledPreloadJob._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ScheduledPreloadJob._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:esa/scheduledPreloadJob:ScheduledPreloadJob',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    insertWay = registerOutput<String>('insertWay');
    ossUrl = registerOutput<String?>('ossUrl');
    scheduledPreloadJobId = registerOutput<String>('scheduledPreloadJobId');
    scheduledPreloadJobName = registerOutput<String>('scheduledPreloadJobName');
    siteId = registerOutput<String>('siteId');
    urlList = registerOutput<String?>('urlList');
  }
}
