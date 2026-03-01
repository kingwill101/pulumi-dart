import 'package:pulumi/pulumi.dart' as pulumi;
import 'waiting_room_event_args.dart';
import 'waiting_room_event_state.dart';

/// Provides a ESA Waiting Room Event resource.
///
///
///
/// For information about ESA Waiting Room Event and how to use it, see [What is Waiting Room Event](https://next.api.alibabacloud.com/document/ESA/2024-09-10/CreateWaitingRoomEvent).
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
/// const defaultSite = new alicloud.esa.Site("default", {
///     siteName: "chenxin0116.site",
///     instanceId: _default.then(_default => _default.sites?.[0]?.instanceId),
///     coverage: "overseas",
///     accessType: "NS",
/// });
/// const defaultWaitingRoom = new alicloud.esa.WaitingRoom("default", {
///     status: "off",
///     siteId: defaultSite.id,
///     jsonResponseEnable: "off",
///     description: "example",
///     waitingRoomType: "default",
///     disableSessionRenewalEnable: "off",
///     cookieName: "__aliwaitingroom_example",
///     waitingRoomName: "waitingroom_example",
///     queueAllEnable: "off",
///     queuingStatusCode: "200",
///     customPageHtml: "",
///     newUsersPerMinute: "200",
///     sessionDuration: "5",
///     language: "zhcn",
///     totalActiveUsers: "300",
///     queuingMethod: "fifo",
///     hostNameAndPaths: [{
///         domain: "sub_domain.com",
///         path: "/example",
///         subdomain: "example_sub_domain.com.",
///     }],
/// });
/// const defaultWaitingRoomEvent = new alicloud.esa.WaitingRoomEvent("default", {
///     waitingRoomId: defaultWaitingRoom.waitingRoomId,
///     endTime: "1719863200",
///     waitingRoomEventName: "WaitingRoomEvent_example",
///     preQueueStartTime: "",
///     randomPreQueueEnable: "off",
///     jsonResponseEnable: "off",
///     siteId: defaultSite.id,
///     preQueueEnable: "off",
///     description: "example",
///     newUsersPerMinute: "200",
///     queuingStatusCode: "200",
///     customPageHtml: "",
///     language: "zhcn",
///     totalActiveUsers: "300",
///     waitingRoomType: "default",
///     startTime: "1719763200",
///     status: "off",
///     disableSessionRenewalEnable: "off",
///     queuingMethod: "fifo",
///     sessionDuration: "5",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.esa.get_sites(plan_subscribe_type="enterpriseplan")
/// default_site = alicloud.esa.Site("default",
///     site_name="chenxin0116.site",
///     instance_id=default.sites[0].instance_id,
///     coverage="overseas",
///     access_type="NS")
/// default_waiting_room = alicloud.esa.WaitingRoom("default",
///     status="off",
///     site_id=default_site.id,
///     json_response_enable="off",
///     description="example",
///     waiting_room_type="default",
///     disable_session_renewal_enable="off",
///     cookie_name="__aliwaitingroom_example",
///     waiting_room_name="waitingroom_example",
///     queue_all_enable="off",
///     queuing_status_code="200",
///     custom_page_html="",
///     new_users_per_minute="200",
///     session_duration="5",
///     language="zhcn",
///     total_active_users="300",
///     queuing_method="fifo",
///     host_name_and_paths=[{
///         "domain": "sub_domain.com",
///         "path": "/example",
///         "subdomain": "example_sub_domain.com.",
///     }])
/// default_waiting_room_event = alicloud.esa.WaitingRoomEvent("default",
///     waiting_room_id=default_waiting_room.waiting_room_id,
///     end_time="1719863200",
///     waiting_room_event_name="WaitingRoomEvent_example",
///     pre_queue_start_time="",
///     random_pre_queue_enable="off",
///     json_response_enable="off",
///     site_id=default_site.id,
///     pre_queue_enable="off",
///     description="example",
///     new_users_per_minute="200",
///     queuing_status_code="200",
///     custom_page_html="",
///     language="zhcn",
///     total_active_users="300",
///     waiting_room_type="default",
///     start_time="1719763200",
///     status="off",
///     disable_session_renewal_enable="off",
///     queuing_method="fifo",
///     session_duration="5")
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
///         SiteName = "chenxin0116.site",
///         InstanceId = @default.Apply(@default => @default.Apply(getSitesResult => getSitesResult.Sites[0]?.InstanceId)),
///         Coverage = "overseas",
///         AccessType = "NS",
///     });
///
///     var defaultWaitingRoom = new AliCloud.Esa.WaitingRoom("default", new()
///     {
///         Status = "off",
///         SiteId = defaultSite.Id,
///         JsonResponseEnable = "off",
///         Description = "example",
///         WaitingRoomType = "default",
///         DisableSessionRenewalEnable = "off",
///         CookieName = "__aliwaitingroom_example",
///         WaitingRoomName = "waitingroom_example",
///         QueueAllEnable = "off",
///         QueuingStatusCode = "200",
///         CustomPageHtml = "",
///         NewUsersPerMinute = "200",
///         SessionDuration = "5",
///         Language = "zhcn",
///         TotalActiveUsers = "300",
///         QueuingMethod = "fifo",
///         HostNameAndPaths = new[]
///         {
///             new AliCloud.Esa.Inputs.WaitingRoomHostNameAndPathArgs
///             {
///                 Domain = "sub_domain.com",
///                 Path = "/example",
///                 Subdomain = "example_sub_domain.com.",
///             },
///         },
///     });
///
///     var defaultWaitingRoomEvent = new AliCloud.Esa.WaitingRoomEvent("default", new()
///     {
///         WaitingRoomId = defaultWaitingRoom.WaitingRoomId,
///         EndTime = "1719863200",
///         WaitingRoomEventName = "WaitingRoomEvent_example",
///         PreQueueStartTime = "",
///         RandomPreQueueEnable = "off",
///         JsonResponseEnable = "off",
///         SiteId = defaultSite.Id,
///         PreQueueEnable = "off",
///         Description = "example",
///         NewUsersPerMinute = "200",
///         QueuingStatusCode = "200",
///         CustomPageHtml = "",
///         Language = "zhcn",
///         TotalActiveUsers = "300",
///         WaitingRoomType = "default",
///         StartTime = "1719763200",
///         Status = "off",
///         DisableSessionRenewalEnable = "off",
///         QueuingMethod = "fifo",
///         SessionDuration = "5",
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
/// 			SiteName:   pulumi.String("chenxin0116.site"),
/// 			InstanceId: pulumi.String(_default.Sites[0].InstanceId),
/// 			Coverage:   pulumi.String("overseas"),
/// 			AccessType: pulumi.String("NS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultWaitingRoom, err := esa.NewWaitingRoom(ctx, "default", &esa.WaitingRoomArgs{
/// 			Status:                      pulumi.String("off"),
/// 			SiteId:                      defaultSite.ID(),
/// 			JsonResponseEnable:          pulumi.String("off"),
/// 			Description:                 pulumi.String("example"),
/// 			WaitingRoomType:             pulumi.String("default"),
/// 			DisableSessionRenewalEnable: pulumi.String("off"),
/// 			CookieName:                  pulumi.String("__aliwaitingroom_example"),
/// 			WaitingRoomName:             pulumi.String("waitingroom_example"),
/// 			QueueAllEnable:              pulumi.String("off"),
/// 			QueuingStatusCode:           pulumi.String("200"),
/// 			CustomPageHtml:              pulumi.String(""),
/// 			NewUsersPerMinute:           pulumi.String("200"),
/// 			SessionDuration:             pulumi.String("5"),
/// 			Language:                    pulumi.String("zhcn"),
/// 			TotalActiveUsers:            pulumi.String("300"),
/// 			QueuingMethod:               pulumi.String("fifo"),
/// 			HostNameAndPaths: esa.WaitingRoomHostNameAndPathArray{
/// 				&esa.WaitingRoomHostNameAndPathArgs{
/// 					Domain:    pulumi.String("sub_domain.com"),
/// 					Path:      pulumi.String("/example"),
/// 					Subdomain: pulumi.String("example_sub_domain.com."),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = esa.NewWaitingRoomEvent(ctx, "default", &esa.WaitingRoomEventArgs{
/// 			WaitingRoomId:               defaultWaitingRoom.WaitingRoomId,
/// 			EndTime:                     pulumi.String("1719863200"),
/// 			WaitingRoomEventName:        pulumi.String("WaitingRoomEvent_example"),
/// 			PreQueueStartTime:           pulumi.String(""),
/// 			RandomPreQueueEnable:        pulumi.String("off"),
/// 			JsonResponseEnable:          pulumi.String("off"),
/// 			SiteId:                      defaultSite.ID(),
/// 			PreQueueEnable:              pulumi.String("off"),
/// 			Description:                 pulumi.String("example"),
/// 			NewUsersPerMinute:           pulumi.String("200"),
/// 			QueuingStatusCode:           pulumi.String("200"),
/// 			CustomPageHtml:              pulumi.String(""),
/// 			Language:                    pulumi.String("zhcn"),
/// 			TotalActiveUsers:            pulumi.String("300"),
/// 			WaitingRoomType:             pulumi.String("default"),
/// 			StartTime:                   pulumi.String("1719763200"),
/// 			Status:                      pulumi.String("off"),
/// 			DisableSessionRenewalEnable: pulumi.String("off"),
/// 			QueuingMethod:               pulumi.String("fifo"),
/// 			SessionDuration:             pulumi.String("5"),
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
/// import com.pulumi.alicloud.esa.WaitingRoomEvent;
/// import com.pulumi.alicloud.esa.WaitingRoomEventArgs;
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
///             .siteName("chenxin0116.site")
///             .instanceId(default_.sites()[0].instanceId())
///             .coverage("overseas")
///             .accessType("NS")
///             .build());
///
///         var defaultWaitingRoom = new WaitingRoom("defaultWaitingRoom", WaitingRoomArgs.builder()
///             .status("off")
///             .siteId(defaultSite.id())
///             .jsonResponseEnable("off")
///             .description("example")
///             .waitingRoomType("default")
///             .disableSessionRenewalEnable("off")
///             .cookieName("__aliwaitingroom_example")
///             .waitingRoomName("waitingroom_example")
///             .queueAllEnable("off")
///             .queuingStatusCode("200")
///             .customPageHtml("")
///             .newUsersPerMinute("200")
///             .sessionDuration("5")
///             .language("zhcn")
///             .totalActiveUsers("300")
///             .queuingMethod("fifo")
///             .hostNameAndPaths(WaitingRoomHostNameAndPathArgs.builder()
///                 .domain("sub_domain.com")
///                 .path("/example")
///                 .subdomain("example_sub_domain.com.")
///                 .build())
///             .build());
///
///         var defaultWaitingRoomEvent = new WaitingRoomEvent("defaultWaitingRoomEvent", WaitingRoomEventArgs.builder()
///             .waitingRoomId(defaultWaitingRoom.waitingRoomId())
///             .endTime("1719863200")
///             .waitingRoomEventName("WaitingRoomEvent_example")
///             .preQueueStartTime("")
///             .randomPreQueueEnable("off")
///             .jsonResponseEnable("off")
///             .siteId(defaultSite.id())
///             .preQueueEnable("off")
///             .description("example")
///             .newUsersPerMinute("200")
///             .queuingStatusCode("200")
///             .customPageHtml("")
///             .language("zhcn")
///             .totalActiveUsers("300")
///             .waitingRoomType("default")
///             .startTime("1719763200")
///             .status("off")
///             .disableSessionRenewalEnable("off")
///             .queuingMethod("fifo")
///             .sessionDuration("5")
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
///       siteName: chenxin0116.site
///       instanceId: ${default.sites[0].instanceId}
///       coverage: overseas
///       accessType: NS
///   defaultWaitingRoom:
///     type: alicloud:esa:WaitingRoom
///     name: default
///     properties:
///       status: off
///       siteId: ${defaultSite.id}
///       jsonResponseEnable: off
///       description: example
///       waitingRoomType: default
///       disableSessionRenewalEnable: off
///       cookieName: __aliwaitingroom_example
///       waitingRoomName: waitingroom_example
///       queueAllEnable: off
///       queuingStatusCode: '200'
///       customPageHtml: ""
///       newUsersPerMinute: '200'
///       sessionDuration: '5'
///       language: zhcn
///       totalActiveUsers: '300'
///       queuingMethod: fifo
///       hostNameAndPaths:
///         - domain: sub_domain.com
///           path: /example
///           subdomain: example_sub_domain.com.
///   defaultWaitingRoomEvent:
///     type: alicloud:esa:WaitingRoomEvent
///     name: default
///     properties:
///       waitingRoomId: ${defaultWaitingRoom.waitingRoomId}
///       endTime: '1719863200'
///       waitingRoomEventName: WaitingRoomEvent_example
///       preQueueStartTime: ""
///       randomPreQueueEnable: off
///       jsonResponseEnable: off
///       siteId: ${defaultSite.id}
///       preQueueEnable: off
///       description: example
///       newUsersPerMinute: '200'
///       queuingStatusCode: '200'
///       customPageHtml: ""
///       language: zhcn
///       totalActiveUsers: '300'
///       waitingRoomType: default
///       startTime: '1719763200'
///       status: off
///       disableSessionRenewalEnable: off
///       queuingMethod: fifo
///       sessionDuration: '5'
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
/// ESA Waiting Room Event can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:esa/waitingRoomEvent:WaitingRoomEvent example <site_id>:<waiting_room_id>:<waiting_room_event_id>
/// ```
class WaitingRoomEvent extends pulumi.CustomResource {
  /// User-defined waiting room page content, when the waiting room type is custom type, you need to enter. The incoming content needs to be base64 encoded.
  late final pulumi.Output<String?> customPageHtml;
  /// Waiting room description.
  late final pulumi.Output<String?> description;
  /// Disable session renewal. Value:
  late final pulumi.Output<String?> disableSessionRenewalEnable;
  /// The timestamp of the end time of the event.
  late final pulumi.Output<String> endTime;
  /// JSON response switch. Value:
  late final pulumi.Output<String?> jsonResponseEnable;
  /// Default language setting. Values include:
  late final pulumi.Output<String?> language;
  /// Number of new users per minute.
  late final pulumi.Output<String> newUsersPerMinute;
  /// Pre-queue switch.
  late final pulumi.Output<String?> preQueueEnable;
  /// Pre-queue start time.
  late final pulumi.Output<String?> preQueueStartTime;
  /// Way of queuing. Value:
  late final pulumi.Output<String> queuingMethod;
  /// Waiting room status code. Value:
  late final pulumi.Output<String> queuingStatusCode;
  /// Random queue switch.
  late final pulumi.Output<String?> randomPreQueueEnable;
  /// User session duration in minutes.
  late final pulumi.Output<String> sessionDuration;
  /// The site ID, which can be obtained by calling the ListSites API.
  late final pulumi.Output<String> siteId;
  /// The timestamp of the event start time.
  late final pulumi.Output<String> startTime;
  /// Enabled status. Value:
  late final pulumi.Output<String> status;
  /// Total number of active users.
  late final pulumi.Output<String> totalActiveUsers;
  /// The waiting room event ID, which can be obtained by calling the [ListWaitingRoomEvents](https://help.aliyun.com/document_detail/2850279.html) operation.
  late final pulumi.Output<int> waitingRoomEventId;
  /// Event name, custom event description.
  late final pulumi.Output<String> waitingRoomEventName;
  /// Waiting room ID, used to identify a specific waiting room. It can be obtained by calling the [listwaitingroom](https://help.aliyun.com/document_detail/2850279.html) interface.
  late final pulumi.Output<String> waitingRoomId;
  /// Waiting room type. The following types are supported:
  late final pulumi.Output<String> waitingRoomType;

  /// Creates a new [WaitingRoomEvent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WaitingRoomEvent]. {@macro pulumi_esa_waiting_room_event_waiting_room_event_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WaitingRoomEvent(
    String name, {
    WaitingRoomEventArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/waitingRoomEvent:WaitingRoomEvent',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.customPageHtml = registerOutput<String?>('customPageHtml');
    this.description = registerOutput<String?>('description');
    this.disableSessionRenewalEnable = registerOutput<String?>('disableSessionRenewalEnable');
    this.endTime = registerOutput<String>('endTime');
    this.jsonResponseEnable = registerOutput<String?>('jsonResponseEnable');
    this.language = registerOutput<String?>('language');
    this.newUsersPerMinute = registerOutput<String>('newUsersPerMinute');
    this.preQueueEnable = registerOutput<String?>('preQueueEnable');
    this.preQueueStartTime = registerOutput<String?>('preQueueStartTime');
    this.queuingMethod = registerOutput<String>('queuingMethod');
    this.queuingStatusCode = registerOutput<String>('queuingStatusCode');
    this.randomPreQueueEnable = registerOutput<String?>('randomPreQueueEnable');
    this.sessionDuration = registerOutput<String>('sessionDuration');
    this.siteId = registerOutput<String>('siteId');
    this.startTime = registerOutput<String>('startTime');
    this.status = registerOutput<String>('status');
    this.totalActiveUsers = registerOutput<String>('totalActiveUsers');
    this.waitingRoomEventId = registerOutput<int>('waitingRoomEventId');
    this.waitingRoomEventName = registerOutput<String>('waitingRoomEventName');
    this.waitingRoomId = registerOutput<String>('waitingRoomId');
    this.waitingRoomType = registerOutput<String>('waitingRoomType');
  }

  /// Gets an existing [WaitingRoomEvent] resource's state with the given [name] and [id].
  static WaitingRoomEvent get(
    String name,
    pulumi.Input<String> id, {
    WaitingRoomEventState? state,
  }) {
    return WaitingRoomEvent._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WaitingRoomEvent._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/waitingRoomEvent:WaitingRoomEvent',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.customPageHtml = registerOutput<String?>('customPageHtml');
    this.description = registerOutput<String?>('description');
    this.disableSessionRenewalEnable = registerOutput<String?>('disableSessionRenewalEnable');
    this.endTime = registerOutput<String>('endTime');
    this.jsonResponseEnable = registerOutput<String?>('jsonResponseEnable');
    this.language = registerOutput<String?>('language');
    this.newUsersPerMinute = registerOutput<String>('newUsersPerMinute');
    this.preQueueEnable = registerOutput<String?>('preQueueEnable');
    this.preQueueStartTime = registerOutput<String?>('preQueueStartTime');
    this.queuingMethod = registerOutput<String>('queuingMethod');
    this.queuingStatusCode = registerOutput<String>('queuingStatusCode');
    this.randomPreQueueEnable = registerOutput<String?>('randomPreQueueEnable');
    this.sessionDuration = registerOutput<String>('sessionDuration');
    this.siteId = registerOutput<String>('siteId');
    this.startTime = registerOutput<String>('startTime');
    this.status = registerOutput<String>('status');
    this.totalActiveUsers = registerOutput<String>('totalActiveUsers');
    this.waitingRoomEventId = registerOutput<int>('waitingRoomEventId');
    this.waitingRoomEventName = registerOutput<String>('waitingRoomEventName');
    this.waitingRoomId = registerOutput<String>('waitingRoomId');
    this.waitingRoomType = registerOutput<String>('waitingRoomType');
  }
}
