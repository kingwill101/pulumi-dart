import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_contact_group_args.dart';

/// Provides a Application Real-Time Monitoring Service (ARMS) Alert Contact Group resource.
///
/// For information about Application Real-Time Monitoring Service (ARMS) Alert Contact Group and how to use it, see [What is Alert Contact Group](https://next.api.aliyun.com/api/ARMS/2019-08-08/CreateAlertContactGroup).
///
/// > **NOTE:** Available since v1.131.0.
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
/// const example = new alicloud.arms.AlertContact("example", {
///     alertContactName: "example_value",
///     dingRobotWebhookUrl: "https://oapi.dingtalk.com/robot/send?access_token=91f2f6****",
///     email: "someone@example.com",
///     phoneNum: "1381111****",
/// });
/// const exampleAlertContactGroup = new alicloud.arms.AlertContactGroup("example", {
///     alertContactGroupName: "example_value",
///     contactIds: [example.id],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.arms.AlertContact("example",
///     alert_contact_name="example_value",
///     ding_robot_webhook_url="https://oapi.dingtalk.com/robot/send?access_token=91f2f6****",
///     email="someone@example.com",
///     phone_num="1381111****")
/// example_alert_contact_group = alicloud.arms.AlertContactGroup("example",
///     alert_contact_group_name="example_value",
///     contact_ids=[example.id])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AliCloud.Arms.AlertContact("example", new()
///     {
///         AlertContactName = "example_value",
///         DingRobotWebhookUrl = "https://oapi.dingtalk.com/robot/send?access_token=91f2f6****",
///         Email = "someone@example.com",
///         PhoneNum = "1381111****",
///     });
///
///     var exampleAlertContactGroup = new AliCloud.Arms.AlertContactGroup("example", new()
///     {
///         AlertContactGroupName = "example_value",
///         ContactIds = new[]
///         {
///             example.Id,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/arms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := arms.NewAlertContact(ctx, "example", &arms.AlertContactArgs{
/// 			AlertContactName:    pulumi.String("example_value"),
/// 			DingRobotWebhookUrl: pulumi.String("https://oapi.dingtalk.com/robot/send?access_token=91f2f6****"),
/// 			Email:               pulumi.String("someone@example.com"),
/// 			PhoneNum:            pulumi.String("1381111****"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = arms.NewAlertContactGroup(ctx, "example", &arms.AlertContactGroupArgs{
/// 			AlertContactGroupName: pulumi.String("example_value"),
/// 			ContactIds: pulumi.StringArray{
/// 				example.ID(),
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
/// import com.pulumi.alicloud.arms.AlertContact;
/// import com.pulumi.alicloud.arms.AlertContactArgs;
/// import com.pulumi.alicloud.arms.AlertContactGroup;
/// import com.pulumi.alicloud.arms.AlertContactGroupArgs;
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
///         var example = new AlertContact("example", AlertContactArgs.builder()
///             .alertContactName("example_value")
///             .dingRobotWebhookUrl("https://oapi.dingtalk.com/robot/send?access_token=91f2f6****")
///             .email("someone@example.com")
///             .phoneNum("1381111****")
///             .build());
///
///         var exampleAlertContactGroup = new AlertContactGroup("exampleAlertContactGroup", AlertContactGroupArgs.builder()
///             .alertContactGroupName("example_value")
///             .contactIds(example.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:arms:AlertContact
///     properties:
///       alertContactName: example_value
///       dingRobotWebhookUrl: https://oapi.dingtalk.com/robot/send?access_token=91f2f6****
///       email: someone@example.com
///       phoneNum: 1381111****
///   exampleAlertContactGroup:
///     type: alicloud:arms:AlertContactGroup
///     name: example
///     properties:
///       alertContactGroupName: example_value
///       contactIds:
///         - ${example.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Application Real-Time Monitoring Service (ARMS) Alert Contact Group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:arms/alertContactGroup:AlertContactGroup example <id>
/// ```
class AlertContactGroup extends pulumi.CustomResource {
  /// The name of the resource.
  late final pulumi.Output<String> alertContactGroupName;
  /// The list id of alert contact.
  late final pulumi.Output<List<String>?> contactIds;

  /// Creates a new [AlertContactGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AlertContactGroup]. {@macro pulumi_arms_alert_contact_group_alert_contact_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AlertContactGroup(
    String name, {
    AlertContactGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:arms/alertContactGroup:AlertContactGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.alertContactGroupName = registerOutput<String>('alertContactGroupName');
    this.contactIds = registerOutput<List<String>?>('contactIds');
  }
}
