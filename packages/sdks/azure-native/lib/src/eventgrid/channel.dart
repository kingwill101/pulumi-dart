import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_args.dart';
import 'partner_topic_info_response.dart';
import 'system_data_response.dart';

/// Channel info.
///
/// Uses Azure REST API version 2025-02-15. In version 2.x of the Azure Native provider, it used API version 2022-06-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Channels_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var channel = new AzureNative.EventGrid.Channel("channel", new()
///     {
///         ChannelName = "exampleChannelName1",
///         ChannelType = AzureNative.EventGrid.ChannelType.PartnerTopic,
///         ExpirationTimeIfNotActivatedUtc = "2021-10-21T22:50:25.410433Z",
///         MessageForActivation = "Example message to approver",
///         PartnerNamespaceName = "examplePartnerNamespaceName1",
///         PartnerTopicInfo = new AzureNative.EventGrid.Inputs.PartnerTopicInfoArgs
///         {
///             AzureSubscriptionId = "5b4b650e-28b9-4790-b3ab-ddbd88d727c4",
///             Name = "examplePartnerTopic1",
///             ResourceGroupName = "examplerg2",
///             Source = "ContosoCorp.Accounts.User1",
///         },
///         ResourceGroupName = "examplerg",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	eventgrid "github.com/pulumi/pulumi-azure-native-sdk/eventgrid/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := eventgrid.NewChannel(ctx, "channel", &eventgrid.ChannelArgs{
/// 			ChannelName:                     pulumi.String("exampleChannelName1"),
/// 			ChannelType:                     pulumi.String(eventgrid.ChannelTypePartnerTopic),
/// 			ExpirationTimeIfNotActivatedUtc: pulumi.String("2021-10-21T22:50:25.410433Z"),
/// 			MessageForActivation:            pulumi.String("Example message to approver"),
/// 			PartnerNamespaceName:            pulumi.String("examplePartnerNamespaceName1"),
/// 			PartnerTopicInfo: &eventgrid.PartnerTopicInfoArgs{
/// 				AzureSubscriptionId: pulumi.String("5b4b650e-28b9-4790-b3ab-ddbd88d727c4"),
/// 				Name:                pulumi.String("examplePartnerTopic1"),
/// 				ResourceGroupName:   pulumi.String("examplerg2"),
/// 				Source:              pulumi.String("ContosoCorp.Accounts.User1"),
/// 			},
/// 			ResourceGroupName: pulumi.String("examplerg"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_eventgrid_channel" "channel" {
///   channel_name                         = "exampleChannelName1"
///   channel_type                         = "PartnerTopic"
///   expiration_time_if_not_activated_utc = "2021-10-21T22:50:25.410433Z"
///   message_for_activation               = "Example message to approver"
///   partner_namespace_name               = "examplePartnerNamespaceName1"
///   partner_topic_info = {
///     azure_subscription_id = "5b4b650e-28b9-4790-b3ab-ddbd88d727c4"
///     name                  = "examplePartnerTopic1"
///     resource_group_name   = "examplerg2"
///     source                = "ContosoCorp.Accounts.User1"
///   }
///   resource_group_name = "examplerg"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.eventgrid.Channel;
/// import com.pulumi.azurenative.eventgrid.ChannelArgs;
/// import com.pulumi.azurenative.eventgrid.inputs.PartnerTopicInfoArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var channel = new Channel("channel", ChannelArgs.builder()
///             .channelName("exampleChannelName1")
///             .channelType("PartnerTopic")
///             .expirationTimeIfNotActivatedUtc("2021-10-21T22:50:25.410433Z")
///             .messageForActivation("Example message to approver")
///             .partnerNamespaceName("examplePartnerNamespaceName1")
///             .partnerTopicInfo(PartnerTopicInfoArgs.builder()
///                 .azureSubscriptionId("5b4b650e-28b9-4790-b3ab-ddbd88d727c4")
///                 .name("examplePartnerTopic1")
///                 .resourceGroupName("examplerg2")
///                 .source("ContosoCorp.Accounts.User1")
///                 .build())
///             .resourceGroupName("examplerg")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const channel = new azure_native.eventgrid.Channel("channel", {
///     channelName: "exampleChannelName1",
///     channelType: azure_native.eventgrid.ChannelType.PartnerTopic,
///     expirationTimeIfNotActivatedUtc: "2021-10-21T22:50:25.410433Z",
///     messageForActivation: "Example message to approver",
///     partnerNamespaceName: "examplePartnerNamespaceName1",
///     partnerTopicInfo: {
///         azureSubscriptionId: "5b4b650e-28b9-4790-b3ab-ddbd88d727c4",
///         name: "examplePartnerTopic1",
///         resourceGroupName: "examplerg2",
///         source: "ContosoCorp.Accounts.User1",
///     },
///     resourceGroupName: "examplerg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// channel = azure_native.eventgrid.Channel("channel",
///     channel_name="exampleChannelName1",
///     channel_type=azure_native.eventgrid.ChannelType.PARTNER_TOPIC,
///     expiration_time_if_not_activated_utc="2021-10-21T22:50:25.410433Z",
///     message_for_activation="Example message to approver",
///     partner_namespace_name="examplePartnerNamespaceName1",
///     partner_topic_info={
///         "azure_subscription_id": "5b4b650e-28b9-4790-b3ab-ddbd88d727c4",
///         "name": "examplePartnerTopic1",
///         "resource_group_name": "examplerg2",
///         "source": "ContosoCorp.Accounts.User1",
///     },
///     resource_group_name="examplerg")
///
/// ```
///
/// ```yaml
/// resources:
///   channel:
///     type: azure-native:eventgrid:Channel
///     properties:
///       channelName: exampleChannelName1
///       channelType: PartnerTopic
///       expirationTimeIfNotActivatedUtc: 2021-10-21T22:50:25.410433Z
///       messageForActivation: Example message to approver
///       partnerNamespaceName: examplePartnerNamespaceName1
///       partnerTopicInfo:
///         azureSubscriptionId: 5b4b650e-28b9-4790-b3ab-ddbd88d727c4
///         name: examplePartnerTopic1
///         resourceGroupName: examplerg2
///         source: ContosoCorp.Accounts.User1
///       resourceGroupName: examplerg
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:eventgrid:Channel exampleChannelName1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventGrid/partnerNamespaces/{partnerNamespaceName}/channels/{channelName}
/// ```
class Channel extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The type of the event channel which represents the direction flow of events.
  late final pulumi.Output<String?> channelType;
  /// Expiration time of the channel. If this timer expires while the corresponding partner topic is never activated,
  /// the channel and corresponding partner topic are deleted.
  late final pulumi.Output<String?> expirationTimeIfNotActivatedUtc;
  /// Context or helpful message that can be used during the approval process by the subscriber.
  late final pulumi.Output<String?> messageForActivation;
  /// Name of the resource.
  late final pulumi.Output<String> name;
  /// This property should be populated when channelType is PartnerTopic and represents information about the partner topic resource corresponding to the channel.
  late final pulumi.Output<PartnerTopicInfoResponse?> partnerTopicInfo;
  /// Provisioning state of the channel.
  late final pulumi.Output<String?> provisioningState;
  /// The readiness state of the corresponding partner topic.
  late final pulumi.Output<String?> readinessState;
  /// The system metadata relating to the Event Grid resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [Channel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Channel]. {@macro pulumi_eventgrid_channel_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Channel(
    String name, {
    ChannelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:eventgrid:Channel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    channelType = registerOutput<String?>('channelType');
    expirationTimeIfNotActivatedUtc = registerOutput<String?>('expirationTimeIfNotActivatedUtc');
    messageForActivation = registerOutput<String?>('messageForActivation');
    this.name = registerOutput<String>('name');
    partnerTopicInfo = registerOutput<PartnerTopicInfoResponse?>('partnerTopicInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PartnerTopicInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String?>('provisioningState');
    readinessState = registerOutput<String?>('readinessState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
