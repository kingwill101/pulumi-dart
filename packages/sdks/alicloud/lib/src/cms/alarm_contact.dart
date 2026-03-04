import 'package:pulumi/pulumi.dart' as pulumi;
import 'alarm_contact_args.dart';
import 'alarm_contact_state.dart';

/// Creates or modifies an alarm contact. For information about alarm contact and how to use it, see [What is alarm contact](https://www.alibabacloud.com/help/en/cloudmonitor/latest/putcontact).
///
/// &gt; **NOTE:** Available since v1.99.0.
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
/// // You need to activate the link before you can return to the alarm contact information, otherwise diff will appear in terraform. So please confirm the activation link as soon as possible. Besides, you can ignore the diff of the alarm contact information by `lifestyle`.
/// const example = new alicloud.cms.AlarmContact("example", {
///     alarmContactName: "tf-example",
///     describe: "For example",
///     channelsMail: "terraform@test.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # You need to activate the link before you can return to the alarm contact information, otherwise diff will appear in terraform. So please confirm the activation link as soon as possible. Besides, you can ignore the diff of the alarm contact information by `lifestyle`.
/// example = alicloud.cms.AlarmContact("example",
///     alarm_contact_name="tf-example",
///     describe="For example",
///     channels_mail="terraform@test.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // You need to activate the link before you can return to the alarm contact information, otherwise diff will appear in terraform. So please confirm the activation link as soon as possible. Besides, you can ignore the diff of the alarm contact information by `lifestyle`.
///     var example = new AliCloud.Cms.AlarmContact("example", new()
///     {
///         AlarmContactName = "tf-example",
///         Describe = "For example",
///         ChannelsMail = "terraform@test.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// You need to activate the link before you can return to the alarm contact information, otherwise diff will appear in terraform. So please confirm the activation link as soon as possible. Besides, you can ignore the diff of the alarm contact information by `lifestyle`.
/// 		_, err := cms.NewAlarmContact(ctx, "example", &cms.AlarmContactArgs{
/// 			AlarmContactName: pulumi.String("tf-example"),
/// 			Describe:         pulumi.String("For example"),
/// 			ChannelsMail:     pulumi.String("terraform@test.com"),
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
/// import com.pulumi.alicloud.cms.AlarmContact;
/// import com.pulumi.alicloud.cms.AlarmContactArgs;
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
///         // You need to activate the link before you can return to the alarm contact information, otherwise diff will appear in terraform. So please confirm the activation link as soon as possible. Besides, you can ignore the diff of the alarm contact information by `lifestyle`.
///         var example = new AlarmContact("example", AlarmContactArgs.builder()
///             .alarmContactName("tf-example")
///             .describe("For example")
///             .channelsMail("terraform@test.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # You need to activate the link before you can return to the alarm contact information, otherwise diff will appear in terraform. So please confirm the activation link as soon as possible. Besides, you can ignore the diff of the alarm contact information by `lifestyle`.
///   example:
///     type: alicloud:cms:AlarmContact
///     properties:
///       alarmContactName: tf-example
///       describe: For example
///       channelsMail: terraform@test.com
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Alarm contact can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cms/alarmContact:AlarmContact example abc12345
/// ```
class AlarmContact extends pulumi.CustomResource {
  /// The name of the alarm contact. The length should between 2 and 40 characters.
  late final pulumi.Output<String> alarmContactName;

  /// The TradeManager ID of the alarm contact.
  late final pulumi.Output<String?> channelsAliim;

  /// The webhook URL of the DingTalk chatbot.
  late final pulumi.Output<String?> channelsDingWebHook;

  /// The email address of the alarm contact. After you add or modify an email address, the recipient receives an email that contains an activation link. The system adds the recipient to the list of alarm contacts only after the recipient activates the email address.
  late final pulumi.Output<String?> channelsMail;

  /// The phone number of the alarm contact. After you add or modify an email address, the recipient receives an email that contains an activation link. The system adds the recipient to the list of alarm contacts only after the recipient activates the email address.
  late final pulumi.Output<String?> channelsSms;

  /// The description of the alarm contact.
  late final pulumi.Output<String> describe;

  /// The language type of the alarm. Valid values: `en`, `zh-cn`.
  ///
  /// &gt; **NOTE:** Specify at least one of the following alarm notification targets: `channels_aliim`, `channels_ding_web_hook`, `channels_mail`, `channels_sms`.
  late final pulumi.Output<String?> lang;

  /// Creates a new [AlarmContact].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AlarmContact]. {@macro pulumi_cms_alarm_contact_alarm_contact_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AlarmContact(
    String name, {
    AlarmContactArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cms/alarmContact:AlarmContact',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    alarmContactName = registerOutput<String>('alarmContactName');
    channelsAliim = registerOutput<String?>('channelsAliim');
    channelsDingWebHook = registerOutput<String?>('channelsDingWebHook');
    channelsMail = registerOutput<String?>('channelsMail');
    channelsSms = registerOutput<String?>('channelsSms');
    describe = registerOutput<String>('describe');
    lang = registerOutput<String?>('lang');
  }

  /// Gets an existing [AlarmContact] resource's state with the given [name] and [id].
  static AlarmContact get(
    String name,
    pulumi.Input<String> id, {
    AlarmContactState? state,
  }) {
    return AlarmContact._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AlarmContact._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cms/alarmContact:AlarmContact',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    alarmContactName = registerOutput<String>('alarmContactName');
    channelsAliim = registerOutput<String?>('channelsAliim');
    channelsDingWebHook = registerOutput<String?>('channelsDingWebHook');
    channelsMail = registerOutput<String?>('channelsMail');
    channelsSms = registerOutput<String?>('channelsSms');
    describe = registerOutput<String>('describe');
    lang = registerOutput<String?>('lang');
  }
}
