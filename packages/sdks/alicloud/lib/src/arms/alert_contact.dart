import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_contact_args.dart';
import 'alert_contact_state.dart';

/// Provides a Application Real-Time Monitoring Service (ARMS) Alert Contact resource.
///
/// For information about Application Real-Time Monitoring Service (ARMS) Alert Contact and how to use it, see [What is Alert Contact](https://next.api.aliyun.com/api/ARMS/2019-08-08/CreateAlertContact).
///
/// &gt; **NOTE:** Available since v1.129.0.
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
/// 		_, err := arms.NewAlertContact(ctx, "example", &arms.AlertContactArgs{
/// 			AlertContactName:    pulumi.String("example_value"),
/// 			DingRobotWebhookUrl: pulumi.String("https://oapi.dingtalk.com/robot/send?access_token=91f2f6****"),
/// 			Email:               pulumi.String("someone@example.com"),
/// 			PhoneNum:            pulumi.String("1381111****"),
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
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Application Real-Time Monitoring Service (ARMS) Alert Contact can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:arms/alertContact:AlertContact example <id>
/// ```
class AlertContact extends pulumi.CustomResource {
  /// The name of the alert contact.
  late final pulumi.Output<String?> alertContactName;
  /// The webhook URL of the DingTalk chatbot. For more information about how to obtain the URL, see Configure a DingTalk chatbot to send alert notifications: https://www.alibabacloud.com/help/en/doc-detail/106247.htm. You must specify at least one of the following parameters: PhoneNum, Email, and DingRobotWebhookUrl.
  late final pulumi.Output<String?> dingRobotWebhookUrl;
  /// The email address of the alert contact. You must specify at least one of the following parameters: PhoneNum, Email, and DingRobotWebhookUrl.
  late final pulumi.Output<String?> email;
  /// The mobile number of the alert contact. You must specify at least one of the following parameters: PhoneNum, Email, and DingRobotWebhookUrl.
  late final pulumi.Output<String?> phoneNum;
  /// Specifies whether the alert contact receives system notifications. Valid values:  true: receives system notifications. false: does not receive system notifications.
  late final pulumi.Output<bool?> systemNoc;

  /// Creates a new [AlertContact].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AlertContact]. {@macro pulumi_arms_alert_contact_alert_contact_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AlertContact(
    String name, {
    AlertContactArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:arms/alertContact:AlertContact',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    alertContactName = registerOutput<String?>('alertContactName');
    dingRobotWebhookUrl = registerOutput<String?>('dingRobotWebhookUrl');
    email = registerOutput<String?>('email');
    phoneNum = registerOutput<String?>('phoneNum');
    systemNoc = registerOutput<bool?>('systemNoc');
  }

  /// Gets an existing [AlertContact] resource's state with the given [name] and [id].
  static AlertContact get(
    String name,
    pulumi.Input<String> id, {
    AlertContactState? state,
  }) {
    return AlertContact._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AlertContact._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:arms/alertContact:AlertContact',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    alertContactName = registerOutput<String?>('alertContactName');
    dingRobotWebhookUrl = registerOutput<String?>('dingRobotWebhookUrl');
    email = registerOutput<String?>('email');
    phoneNum = registerOutput<String?>('phoneNum');
    systemNoc = registerOutput<bool?>('systemNoc');
  }
}
