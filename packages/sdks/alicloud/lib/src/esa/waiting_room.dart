import 'package:pulumi/pulumi.dart' as pulumi;
import 'waiting_room_args.dart';
import 'waiting_room_host_name_and_path.dart';
import 'waiting_room_state.dart';

/// Provides a ESA Waiting Room resource.
///
///
///
/// For information about ESA Waiting Room and how to use it, see [What is Waiting Room](https://next.api.alibabacloud.com/document/ESA/2024-09-10/CreateWaitingRoom).
///
/// > **NOTE:** Available since v1.244.0.
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
/// const resourceSiteExample = new alicloud.esa.Site("resource_Site_example", {
///     siteName: "terraform.site",
///     instanceId: _default.then(_default => _default.sites?.[0]?.instanceId),
///     coverage: "overseas",
///     accessType: "NS",
/// });
/// const defaultWaitingRoom = new alicloud.esa.WaitingRoom("default", {
///     queuingMethod: "fifo",
///     sessionDuration: "5",
///     totalActiveUsers: "300",
///     hostNameAndPaths: [
///         {
///             domain: "sub_domain.com",
///             path: "/example",
///             subdomain: "example_sub_domain.com.",
///         },
///         {
///             domain: "sub_domain.com",
///             path: "/example",
///             subdomain: "example_sub_domain1.com.",
///         },
///         {
///             path: "/example",
///             subdomain: "example_sub_domain2.com.",
///             domain: "sub_domain.com",
///         },
///     ],
///     waitingRoomType: "default",
///     newUsersPerMinute: "200",
///     customPageHtml: "",
///     language: "zhcn",
///     queuingStatusCode: "200",
///     waitingRoomName: "waitingroom_example",
///     status: "off",
///     siteId: resourceSiteExample.id,
///     queueAllEnable: "off",
///     disableSessionRenewalEnable: "off",
///     description: "example",
///     jsonResponseEnable: "off",
///     cookieName: "__aliwaitingroom_example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.esa.get_sites(plan_subscribe_type="enterpriseplan")
/// resource_site_example = alicloud.esa.Site("resource_Site_example",
///     site_name="terraform.site",
///     instance_id=default.sites[0].instance_id,
///     coverage="overseas",
///     access_type="NS")
/// default_waiting_room = alicloud.esa.WaitingRoom("default",
///     queuing_method="fifo",
///     session_duration="5",
///     total_active_users="300",
///     host_name_and_paths=[
///         {
///             "domain": "sub_domain.com",
///             "path": "/example",
///             "subdomain": "example_sub_domain.com.",
///         },
///         {
///             "domain": "sub_domain.com",
///             "path": "/example",
///             "subdomain": "example_sub_domain1.com.",
///         },
///         {
///             "path": "/example",
///             "subdomain": "example_sub_domain2.com.",
///             "domain": "sub_domain.com",
///         },
///     ],
///     waiting_room_type="default",
///     new_users_per_minute="200",
///     custom_page_html="",
///     language="zhcn",
///     queuing_status_code="200",
///     waiting_room_name="waitingroom_example",
///     status="off",
///     site_id=resource_site_example.id,
///     queue_all_enable="off",
///     disable_session_renewal_enable="off",
///     description="example",
///     json_response_enable="off",
///     cookie_name="__aliwaitingroom_example")
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
///     var resourceSiteExample = new AliCloud.Esa.Site("resource_Site_example", new()
///     {
///         SiteName = "terraform.site",
///         InstanceId = @default.Apply(@default => @default.Apply(getSitesResult => getSitesResult.Sites[0]?.InstanceId)),
///         Coverage = "overseas",
///         AccessType = "NS",
///     });
///
///     var defaultWaitingRoom = new AliCloud.Esa.WaitingRoom("default", new()
///     {
///         QueuingMethod = "fifo",
///         SessionDuration = "5",
///         TotalActiveUsers = "300",
///         HostNameAndPaths = new[]
///         {
///             new AliCloud.Esa.Inputs.WaitingRoomHostNameAndPathArgs
///             {
///                 Domain = "sub_domain.com",
///                 Path = "/example",
///                 Subdomain = "example_sub_domain.com.",
///             },
///             new AliCloud.Esa.Inputs.WaitingRoomHostNameAndPathArgs
///             {
///                 Domain = "sub_domain.com",
///                 Path = "/example",
///                 Subdomain = "example_sub_domain1.com.",
///             },
///             new AliCloud.Esa.Inputs.WaitingRoomHostNameAndPathArgs
///             {
///                 Path = "/example",
///                 Subdomain = "example_sub_domain2.com.",
///                 Domain = "sub_domain.com",
///             },
///         },
///         WaitingRoomType = "default",
///         NewUsersPerMinute = "200",
///         CustomPageHtml = "",
///         Language = "zhcn",
///         QueuingStatusCode = "200",
///         WaitingRoomName = "waitingroom_example",
///         Status = "off",
///         SiteId = resourceSiteExample.Id,
///         QueueAllEnable = "off",
///         DisableSessionRenewalEnable = "off",
///         Description = "example",
///         JsonResponseEnable = "off",
///         CookieName = "__aliwaitingroom_example",
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
/// 		resourceSiteExample, err := esa.NewSite(ctx, "resource_Site_example", &esa.SiteArgs{
/// 			SiteName:   pulumi.String("terraform.site"),
/// 			InstanceId: pulumi.String(_default.Sites[0].InstanceId),
/// 			Coverage:   pulumi.String("overseas"),
/// 			AccessType: pulumi.String("NS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = esa.NewWaitingRoom(ctx, "default", &esa.WaitingRoomArgs{
/// 			QueuingMethod:    pulumi.String("fifo"),
/// 			SessionDuration:  pulumi.String("5"),
/// 			TotalActiveUsers: pulumi.String("300"),
/// 			HostNameAndPaths: esa.WaitingRoomHostNameAndPathArray{
/// 				&esa.WaitingRoomHostNameAndPathArgs{
/// 					Domain:    pulumi.String("sub_domain.com"),
/// 					Path:      pulumi.String("/example"),
/// 					Subdomain: pulumi.String("example_sub_domain.com."),
/// 				},
/// 				&esa.WaitingRoomHostNameAndPathArgs{
/// 					Domain:    pulumi.String("sub_domain.com"),
/// 					Path:      pulumi.String("/example"),
/// 					Subdomain: pulumi.String("example_sub_domain1.com."),
/// 				},
/// 				&esa.WaitingRoomHostNameAndPathArgs{
/// 					Path:      pulumi.String("/example"),
/// 					Subdomain: pulumi.String("example_sub_domain2.com."),
/// 					Domain:    pulumi.String("sub_domain.com"),
/// 				},
/// 			},
/// 			WaitingRoomType:             pulumi.String("default"),
/// 			NewUsersPerMinute:           pulumi.String("200"),
/// 			CustomPageHtml:              pulumi.String(""),
/// 			Language:                    pulumi.String("zhcn"),
/// 			QueuingStatusCode:           pulumi.String("200"),
/// 			WaitingRoomName:             pulumi.String("waitingroom_example"),
/// 			Status:                      pulumi.String("off"),
/// 			SiteId:                      resourceSiteExample.ID(),
/// 			QueueAllEnable:              pulumi.String("off"),
/// 			DisableSessionRenewalEnable: pulumi.String("off"),
/// 			Description:                 pulumi.String("example"),
/// 			JsonResponseEnable:          pulumi.String("off"),
/// 			CookieName:                  pulumi.String("__aliwaitingroom_example"),
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
/// import com.pulumi.alicloud.esa.WaitingRoom;
/// import com.pulumi.alicloud.esa.WaitingRoomArgs;
/// import com.pulumi.alicloud.esa.inputs.WaitingRoomHostNameAndPathArgs;
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
///         var resourceSiteExample = new Site("resourceSiteExample", SiteArgs.builder()
///             .siteName("terraform.site")
///             .instanceId(default_.sites()[0].instanceId())
///             .coverage("overseas")
///             .accessType("NS")
///             .build());
///
///         var defaultWaitingRoom = new WaitingRoom("defaultWaitingRoom", WaitingRoomArgs.builder()
///             .queuingMethod("fifo")
///             .sessionDuration("5")
///             .totalActiveUsers("300")
///             .hostNameAndPaths(
///                 WaitingRoomHostNameAndPathArgs.builder()
///                     .domain("sub_domain.com")
///                     .path("/example")
///                     .subdomain("example_sub_domain.com.")
///                     .build(),
///                 WaitingRoomHostNameAndPathArgs.builder()
///                     .domain("sub_domain.com")
///                     .path("/example")
///                     .subdomain("example_sub_domain1.com.")
///                     .build(),
///                 WaitingRoomHostNameAndPathArgs.builder()
///                     .path("/example")
///                     .subdomain("example_sub_domain2.com.")
///                     .domain("sub_domain.com")
///                     .build())
///             .waitingRoomType("default")
///             .newUsersPerMinute("200")
///             .customPageHtml("")
///             .language("zhcn")
///             .queuingStatusCode("200")
///             .waitingRoomName("waitingroom_example")
///             .status("off")
///             .siteId(resourceSiteExample.id())
///             .queueAllEnable("off")
///             .disableSessionRenewalEnable("off")
///             .description("example")
///             .jsonResponseEnable("off")
///             .cookieName("__aliwaitingroom_example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   resourceSiteExample:
///     type: alicloud:esa:Site
///     name: resource_Site_example
///     properties:
///       siteName: terraform.site
///       instanceId: ${default.sites[0].instanceId}
///       coverage: overseas
///       accessType: NS
///   defaultWaitingRoom:
///     type: alicloud:esa:WaitingRoom
///     name: default
///     properties:
///       queuingMethod: fifo
///       sessionDuration: '5'
///       totalActiveUsers: '300'
///       hostNameAndPaths:
///         - domain: sub_domain.com
///           path: /example
///           subdomain: example_sub_domain.com.
///         - domain: sub_domain.com
///           path: /example
///           subdomain: example_sub_domain1.com.
///         - path: /example
///           subdomain: example_sub_domain2.com.
///           domain: sub_domain.com
///       waitingRoomType: default
///       newUsersPerMinute: '200'
///       customPageHtml: ""
///       language: zhcn
///       queuingStatusCode: '200'
///       waitingRoomName: waitingroom_example
///       status: off
///       siteId: ${resourceSiteExample.id}
///       queueAllEnable: off
///       disableSessionRenewalEnable: off
///       description: example
///       jsonResponseEnable: off
///       cookieName: __aliwaitingroom_example
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
/// ESA Waiting Room can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:esa/waitingRoom:WaitingRoom example <site_id>:<waiting_room_id>
/// ```
class WaitingRoom extends pulumi.CustomResource {
  /// Custom Cookie name.
  late final pulumi.Output<String> cookieName;
  /// User-defined waiting room page content, when the waiting room type is custom type, you need to enter. The incoming content needs to be base64 encoded.
  late final pulumi.Output<String?> customPageHtml;
  /// Waiting room description.
  late final pulumi.Output<String?> description;
  /// Disable session renewal. Value:
  late final pulumi.Output<String?> disableSessionRenewalEnable;
  /// Host name and path. See `host_name_and_path` below.
  late final pulumi.Output<List<WaitingRoomHostNameAndPath>> hostNameAndPaths;
  /// The JSON response. If the accept request header contains "application/json", JSON data is returned. Value:
  late final pulumi.Output<String?> jsonResponseEnable;
  /// The language of the waiting room page. When the waiting room type is the default type, it needs to be passed in. The following types are supported:
  late final pulumi.Output<String?> language;
  /// Number of new users per minute.
  late final pulumi.Output<String> newUsersPerMinute;
  /// All in line. Value:
  late final pulumi.Output<String?> queueAllEnable;
  /// Way of queuing. Value:
  late final pulumi.Output<String> queuingMethod;
  /// Waiting room status code. Value:
  late final pulumi.Output<String> queuingStatusCode;
  /// Session duration in minutes.
  late final pulumi.Output<String> sessionDuration;
  /// The site ID, which can be obtained by calling the [ListSites](https://help.aliyun.com/document_detail/2850189.html) interface.
  late final pulumi.Output<String> siteId;
  /// Waiting room enabled status. Value:
  /// - 'on': Enable waiting room
  /// - 'off': Disabled waiting room
  late final pulumi.Output<String> status;
  /// Total number of active users.
  late final pulumi.Output<String> totalActiveUsers;
  /// The waiting room ID, which can be obtained by calling the [ListWaitingRooms](https://help.aliyun.com/document_detail/2850279.html) API.
  late final pulumi.Output<String> waitingRoomId;
  /// The name of the waiting room.
  late final pulumi.Output<String> waitingRoomName;
  /// Waiting room type, support:
  late final pulumi.Output<String> waitingRoomType;

  /// Creates a new [WaitingRoom].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WaitingRoom]. {@macro pulumi_esa_waiting_room_waiting_room_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WaitingRoom(
    String name, {
    WaitingRoomArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/waitingRoom:WaitingRoom',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cookieName = registerOutput<String>('cookieName');
    this.customPageHtml = registerOutput<String?>('customPageHtml');
    this.description = registerOutput<String?>('description');
    this.disableSessionRenewalEnable = registerOutput<String?>('disableSessionRenewalEnable');
    this.hostNameAndPaths = registerOutput<List<WaitingRoomHostNameAndPath>>('hostNameAndPaths');
    this.jsonResponseEnable = registerOutput<String?>('jsonResponseEnable');
    this.language = registerOutput<String?>('language');
    this.newUsersPerMinute = registerOutput<String>('newUsersPerMinute');
    this.queueAllEnable = registerOutput<String?>('queueAllEnable');
    this.queuingMethod = registerOutput<String>('queuingMethod');
    this.queuingStatusCode = registerOutput<String>('queuingStatusCode');
    this.sessionDuration = registerOutput<String>('sessionDuration');
    this.siteId = registerOutput<String>('siteId');
    this.status = registerOutput<String>('status');
    this.totalActiveUsers = registerOutput<String>('totalActiveUsers');
    this.waitingRoomId = registerOutput<String>('waitingRoomId');
    this.waitingRoomName = registerOutput<String>('waitingRoomName');
    this.waitingRoomType = registerOutput<String>('waitingRoomType');
  }

  /// Gets an existing [WaitingRoom] resource's state with the given [name] and [id].
  static WaitingRoom get(
    String name,
    pulumi.Input<String> id, {
    WaitingRoomState? state,
  }) {
    return WaitingRoom._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WaitingRoom._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/waitingRoom:WaitingRoom',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cookieName = registerOutput<String>('cookieName');
    this.customPageHtml = registerOutput<String?>('customPageHtml');
    this.description = registerOutput<String?>('description');
    this.disableSessionRenewalEnable = registerOutput<String?>('disableSessionRenewalEnable');
    this.hostNameAndPaths = registerOutput<List<WaitingRoomHostNameAndPath>>('hostNameAndPaths');
    this.jsonResponseEnable = registerOutput<String?>('jsonResponseEnable');
    this.language = registerOutput<String?>('language');
    this.newUsersPerMinute = registerOutput<String>('newUsersPerMinute');
    this.queueAllEnable = registerOutput<String?>('queueAllEnable');
    this.queuingMethod = registerOutput<String>('queuingMethod');
    this.queuingStatusCode = registerOutput<String>('queuingStatusCode');
    this.sessionDuration = registerOutput<String>('sessionDuration');
    this.siteId = registerOutput<String>('siteId');
    this.status = registerOutput<String>('status');
    this.totalActiveUsers = registerOutput<String>('totalActiveUsers');
    this.waitingRoomId = registerOutput<String>('waitingRoomId');
    this.waitingRoomName = registerOutput<String>('waitingRoomName');
    this.waitingRoomType = registerOutput<String>('waitingRoomType');
  }
}
