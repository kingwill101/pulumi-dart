import 'package:pulumi/pulumi.dart' as pulumi;
import 'waiting_room_rule_args.dart';
import 'waiting_room_rule_state.dart';

/// Provides a ESA Waiting Room Rule resource.
///
///
///
/// For information about ESA Waiting Room Rule and how to use it, see [What is Waiting Room Rule](https://next.api.alibabacloud.com/document/ESA/2024-09-10/CreateWaitingRoomRule).
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
///
/// const _default = alicloud.esa.getSites({
///     planSubscribeType: "enterpriseplan",
/// });
/// const defaultSite = new alicloud.esa.Site("default", {
///     siteName: "terraform.site",
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
/// const defaultWaitingRoomRule = new alicloud.esa.WaitingRoomRule("default", {
///     rule: "(http.host eq \"video.example.com\")",
///     waitingRoomId: defaultWaitingRoom.waitingRoomId,
///     ruleName: "WaitingRoomRule_example1",
///     status: "off",
///     siteId: defaultSite.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.esa.get_sites(plan_subscribe_type="enterpriseplan")
/// default_site = alicloud.esa.Site("default",
///     site_name="terraform.site",
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
/// default_waiting_room_rule = alicloud.esa.WaitingRoomRule("default",
///     rule="(http.host eq \"video.example.com\")",
///     waiting_room_id=default_waiting_room.waiting_room_id,
///     rule_name="WaitingRoomRule_example1",
///     status="off",
///     site_id=default_site.id)
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
///         SiteName = "terraform.site",
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
///     var defaultWaitingRoomRule = new AliCloud.Esa.WaitingRoomRule("default", new()
///     {
///         Rule = "(http.host eq \"video.example.com\")",
///         WaitingRoomId = defaultWaitingRoom.WaitingRoomId,
///         RuleName = "WaitingRoomRule_example1",
///         Status = "off",
///         SiteId = defaultSite.Id,
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
/// 			SiteName:   pulumi.String("terraform.site"),
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
/// 		_, err = esa.NewWaitingRoomRule(ctx, "default", &esa.WaitingRoomRuleArgs{
/// 			Rule:          pulumi.String("(http.host eq \"video.example.com\")"),
/// 			WaitingRoomId: defaultWaitingRoom.WaitingRoomId,
/// 			RuleName:      pulumi.String("WaitingRoomRule_example1"),
/// 			Status:        pulumi.String("off"),
/// 			SiteId:        defaultSite.ID(),
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
/// import com.pulumi.alicloud.esa.WaitingRoomRule;
/// import com.pulumi.alicloud.esa.WaitingRoomRuleArgs;
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
///             .siteName("terraform.site")
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
///         var defaultWaitingRoomRule = new WaitingRoomRule("defaultWaitingRoomRule", WaitingRoomRuleArgs.builder()
///             .rule("(http.host eq \"video.example.com\")")
///             .waitingRoomId(defaultWaitingRoom.waitingRoomId())
///             .ruleName("WaitingRoomRule_example1")
///             .status("off")
///             .siteId(defaultSite.id())
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
///       siteName: terraform.site
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
///   defaultWaitingRoomRule:
///     type: alicloud:esa:WaitingRoomRule
///     name: default
///     properties:
///       rule: (http.host eq "video.example.com")
///       waitingRoomId: ${defaultWaitingRoom.waitingRoomId}
///       ruleName: WaitingRoomRule_example1
///       status: off
///       siteId: ${defaultSite.id}
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
/// ESA Waiting Room Rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:esa/waitingRoomRule:WaitingRoomRule example <site_id>:<waiting_room_id>:<waiting_room_rule_id>
/// ```
class WaitingRoomRule extends pulumi.CustomResource {
  /// The content of the rule, the implemented policy or conditional expression.
  late final pulumi.Output<String> rule;

  /// Rule name, optional, used to query by waiting room bypass rule name.
  late final pulumi.Output<String> ruleName;

  /// The site ID, which can be obtained by calling the ListSites API.
  late final pulumi.Output<String> siteId;

  /// Rule switch. When adding global configuration, this parameter does not need to be set. Value range:
  /// - on: open.
  /// - off: close.
  late final pulumi.Output<String> status;

  /// Waiting room ID, used to identify a specific waiting room. It can be obtained by calling the [listwaitingroom](https://help.aliyun.com/document_detail/2850279.html) interface.
  late final pulumi.Output<String> waitingRoomId;

  /// The rule ID, which can be used to query a specific rule.
  late final pulumi.Output<int> waitingRoomRuleId;

  /// Creates a new [WaitingRoomRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WaitingRoomRule]. {@macro pulumi_esa_waiting_room_rule_waiting_room_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WaitingRoomRule(
    String name, {
    WaitingRoomRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:esa/waitingRoomRule:WaitingRoomRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    rule = registerOutput<String>('rule');
    ruleName = registerOutput<String>('ruleName');
    siteId = registerOutput<String>('siteId');
    status = registerOutput<String>('status');
    waitingRoomId = registerOutput<String>('waitingRoomId');
    waitingRoomRuleId = registerOutput<int>('waitingRoomRuleId');
  }

  /// Gets an existing [WaitingRoomRule] resource's state with the given [name] and [id].
  static WaitingRoomRule get(
    String name,
    pulumi.Input<String> id, {
    WaitingRoomRuleState? state,
  }) {
    return WaitingRoomRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WaitingRoomRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:esa/waitingRoomRule:WaitingRoomRule',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    rule = registerOutput<String>('rule');
    ruleName = registerOutput<String>('ruleName');
    siteId = registerOutput<String>('siteId');
    status = registerOutput<String>('status');
    waitingRoomId = registerOutput<String>('waitingRoomId');
    waitingRoomRuleId = registerOutput<int>('waitingRoomRuleId');
  }
}
