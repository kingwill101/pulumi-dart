import 'package:pulumi/pulumi.dart' as pulumi;
import 'msc_sub_subscription_args.dart';
import 'msc_sub_subscription_state.dart';

/// Provides a Msc Sub Subscription resource.
///
/// > **NOTE:** Available since v1.135.0.
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
/// const example = new alicloud.MscSubSubscription("example", {
///     itemName: "Notifications of Product Expiration",
///     smsStatus: 1,
///     emailStatus: 1,
///     pmsgStatus: 1,
///     ttsStatus: 1,
///     webhookStatus: 0,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.MscSubSubscription("example",
///     item_name="Notifications of Product Expiration",
///     sms_status=1,
///     email_status=1,
///     pmsg_status=1,
///     tts_status=1,
///     webhook_status=0)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AliCloud.MscSubSubscription("example", new()
///     {
///         ItemName = "Notifications of Product Expiration",
///         SmsStatus = 1,
///         EmailStatus = 1,
///         PmsgStatus = 1,
///         TtsStatus = 1,
///         WebhookStatus = 0,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := alicloud.NewMscSubSubscription(ctx, "example", &alicloud.MscSubSubscriptionArgs{
/// 			ItemName:      pulumi.String("Notifications of Product Expiration"),
/// 			SmsStatus:     pulumi.Int(1),
/// 			EmailStatus:   pulumi.Int(1),
/// 			PmsgStatus:    pulumi.Int(1),
/// 			TtsStatus:     pulumi.Int(1),
/// 			WebhookStatus: pulumi.Int(0),
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
/// import com.pulumi.alicloud.MscSubSubscription;
/// import com.pulumi.alicloud.MscSubSubscriptionArgs;
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
///         var example = new MscSubSubscription("example", MscSubSubscriptionArgs.builder()
///             .itemName("Notifications of Product Expiration")
///             .smsStatus(1)
///             .emailStatus(1)
///             .pmsgStatus(1)
///             .ttsStatus(1)
///             .webhookStatus(0)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:MscSubSubscription
///     properties:
///       itemName: Notifications of Product Expiration
///       smsStatus: '1'
///       emailStatus: '1'
///       pmsgStatus: '1'
///       ttsStatus: '1'
///       webhookStatus: '0'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Msc Sub Subscription can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:index/mscSubSubscription:MscSubSubscription example <id>
/// ```
class MscSubSubscription extends pulumi.CustomResource {
  /// The channel the Subscription.
  late final pulumi.Output<String> channel;
  /// The ids of subscribed contacts.
  /// **NOTE:** There is a potential diff error because of the order of `contact_ids` values indefinite.
  /// So, from version 1.161.0, `contact_ids` type has been updated as `set` from `list`,
  /// and you can use tolist to convert it to a list.
  late final pulumi.Output<List<String>> contactIds;
  /// The description of the Subscription.
  late final pulumi.Output<String> description;
  /// The status of email subscription. Valid values: `-1`, `-2`, `0`, `1`. `-1` means required, `-2` means banned; `1` means subscribed; `0` means not subscribed.
  late final pulumi.Output<int?> emailStatus;
  /// The name of the Subscription. **NOTE:**  You should use the `alicloud.getMscSubSubscriptions` to query the available subscription item name.
  late final pulumi.Output<String> itemName;
  /// The status of pmsg subscription. Valid values: `-1`, `-2`, `0`, `1`. `-1` means required, `-2` means banned; `1` means subscribed; `0` means not subscribed.
  late final pulumi.Output<int?> pmsgStatus;
  /// The status of sms subscription. Valid values: `-1`, `-2`, `0`, `1`. `-1` means required, `-2` means banned; `1` means subscribed; `0` means not subscribed.
  late final pulumi.Output<int?> smsStatus;
  /// The status of tts subscription. Valid values: `-1`, `-2`, `0`, `1`. `-1` means required, `-2` means banned; `1` means subscribed; `0` means not subscribed.
  late final pulumi.Output<int?> ttsStatus;
  /// The ids of subscribed webhooks.
  late final pulumi.Output<List<String>?> webhookIds;
  /// The status of webhook subscription. Valid values: `-1`, `-2`, `0`, `1`. `-1` means required, `-2` means banned; `1` means subscribed; `0` means not subscribed.
  late final pulumi.Output<int?> webhookStatus;

  /// Creates a new [MscSubSubscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MscSubSubscription]. {@macro pulumi_index_msc_sub_subscription_msc_sub_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MscSubSubscription(
    String name, {
    MscSubSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:index/mscSubSubscription:MscSubSubscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.channel = registerOutput<String>('channel');
    this.contactIds = registerOutput<List<String>>('contactIds');
    this.description = registerOutput<String>('description');
    this.emailStatus = registerOutput<int?>('emailStatus');
    this.itemName = registerOutput<String>('itemName');
    this.pmsgStatus = registerOutput<int?>('pmsgStatus');
    this.smsStatus = registerOutput<int?>('smsStatus');
    this.ttsStatus = registerOutput<int?>('ttsStatus');
    this.webhookIds = registerOutput<List<String>?>('webhookIds');
    this.webhookStatus = registerOutput<int?>('webhookStatus');
  }

  /// Gets an existing [MscSubSubscription] resource's state with the given [name] and [id].
  static MscSubSubscription get(
    String name,
    pulumi.Input<String> id, {
    MscSubSubscriptionState? state,
  }) {
    return MscSubSubscription._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MscSubSubscription._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:index/mscSubSubscription:MscSubSubscription',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.channel = registerOutput<String>('channel');
    this.contactIds = registerOutput<List<String>>('contactIds');
    this.description = registerOutput<String>('description');
    this.emailStatus = registerOutput<int?>('emailStatus');
    this.itemName = registerOutput<String>('itemName');
    this.pmsgStatus = registerOutput<int?>('pmsgStatus');
    this.smsStatus = registerOutput<int?>('smsStatus');
    this.ttsStatus = registerOutput<int?>('ttsStatus');
    this.webhookIds = registerOutput<List<String>?>('webhookIds');
    this.webhookStatus = registerOutput<int?>('webhookStatus');
  }
}
