import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_type_info_response.dart';
import 'identity_info_response.dart';
import 'partner_topic_args.dart';
import 'system_data_response.dart';

/// Event Grid Partner Topic.
///
/// Uses Azure REST API version 2025-02-15. In version 2.x of the Azure Native provider, it used API version 2022-06-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PartnerTopics_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var partnerTopic = new AzureNative.EventGrid.PartnerTopic("partnerTopic", new()
///     {
///         ExpirationTimeIfNotActivatedUtc = "2022-03-23T23:06:13.109Z",
///         Location = "westus2",
///         MessageForActivation = "Example message for activation",
///         PartnerRegistrationImmutableId = "6f541064-031d-4cc8-9ec3-a3b4fc0f7185",
///         PartnerTopicFriendlyDescription = "Example description",
///         PartnerTopicName = "examplePartnerTopicName1",
///         ResourceGroupName = "examplerg",
///         Source = "ContosoCorp.Accounts.User1",
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
/// 		_, err := eventgrid.NewPartnerTopic(ctx, "partnerTopic", &eventgrid.PartnerTopicArgs{
/// 			ExpirationTimeIfNotActivatedUtc: pulumi.String("2022-03-23T23:06:13.109Z"),
/// 			Location:                        pulumi.String("westus2"),
/// 			MessageForActivation:            pulumi.String("Example message for activation"),
/// 			PartnerRegistrationImmutableId:  pulumi.String("6f541064-031d-4cc8-9ec3-a3b4fc0f7185"),
/// 			PartnerTopicFriendlyDescription: pulumi.String("Example description"),
/// 			PartnerTopicName:                pulumi.String("examplePartnerTopicName1"),
/// 			ResourceGroupName:               pulumi.String("examplerg"),
/// 			Source:                          pulumi.String("ContosoCorp.Accounts.User1"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.eventgrid.PartnerTopic;
/// import com.pulumi.azurenative.eventgrid.PartnerTopicArgs;
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
///         var partnerTopic = new PartnerTopic("partnerTopic", PartnerTopicArgs.builder()
///             .expirationTimeIfNotActivatedUtc("2022-03-23T23:06:13.109Z")
///             .location("westus2")
///             .messageForActivation("Example message for activation")
///             .partnerRegistrationImmutableId("6f541064-031d-4cc8-9ec3-a3b4fc0f7185")
///             .partnerTopicFriendlyDescription("Example description")
///             .partnerTopicName("examplePartnerTopicName1")
///             .resourceGroupName("examplerg")
///             .source("ContosoCorp.Accounts.User1")
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
/// const partnerTopic = new azure_native.eventgrid.PartnerTopic("partnerTopic", {
///     expirationTimeIfNotActivatedUtc: "2022-03-23T23:06:13.109Z",
///     location: "westus2",
///     messageForActivation: "Example message for activation",
///     partnerRegistrationImmutableId: "6f541064-031d-4cc8-9ec3-a3b4fc0f7185",
///     partnerTopicFriendlyDescription: "Example description",
///     partnerTopicName: "examplePartnerTopicName1",
///     resourceGroupName: "examplerg",
///     source: "ContosoCorp.Accounts.User1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// partner_topic = azure_native.eventgrid.PartnerTopic("partnerTopic",
///     expiration_time_if_not_activated_utc="2022-03-23T23:06:13.109Z",
///     location="westus2",
///     message_for_activation="Example message for activation",
///     partner_registration_immutable_id="6f541064-031d-4cc8-9ec3-a3b4fc0f7185",
///     partner_topic_friendly_description="Example description",
///     partner_topic_name="examplePartnerTopicName1",
///     resource_group_name="examplerg",
///     source="ContosoCorp.Accounts.User1")
///
/// ```
///
/// ```yaml
/// resources:
///   partnerTopic:
///     type: azure-native:eventgrid:PartnerTopic
///     properties:
///       expirationTimeIfNotActivatedUtc: 2022-03-23T23:06:13.109Z
///       location: westus2
///       messageForActivation: Example message for activation
///       partnerRegistrationImmutableId: 6f541064-031d-4cc8-9ec3-a3b4fc0f7185
///       partnerTopicFriendlyDescription: Example description
///       partnerTopicName: examplePartnerTopicName1
///       resourceGroupName: examplerg
///       source: ContosoCorp.Accounts.User1
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
/// $ pulumi import azure-native:eventgrid:PartnerTopic examplePartnerTopicName1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventGrid/partnerTopics/{partnerTopicName}
/// ```
class PartnerTopic extends pulumi.CustomResource {
  /// Activation state of the partner topic.
  late final pulumi.Output<String?> activationState;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Event Type information from the corresponding event channel.
  late final pulumi.Output<EventTypeInfoResponse?> eventTypeInfo;
  /// Expiration time of the partner topic. If this timer expires while the partner topic is still never activated,
  /// the partner topic and corresponding event channel are deleted.
  late final pulumi.Output<String?> expirationTimeIfNotActivatedUtc;
  /// Identity information for the Partner Topic resource.
  late final pulumi.Output<IdentityInfoResponse?> identity;
  /// Location of the resource.
  late final pulumi.Output<String> location;
  /// Context or helpful message that can be used during the approval process by the subscriber.
  late final pulumi.Output<String?> messageForActivation;
  /// Name of the resource.
  late final pulumi.Output<String> name;
  /// The immutableId of the corresponding partner registration.
  late final pulumi.Output<String?> partnerRegistrationImmutableId;
  /// Friendly description about the topic. This can be set by the publisher/partner to show custom description for the customer partner topic.
  /// This will be helpful to remove any ambiguity of the origin of creation of the partner topic for the customer.
  late final pulumi.Output<String?> partnerTopicFriendlyDescription;
  /// Provisioning state of the partner topic.
  late final pulumi.Output<String> provisioningState;
  /// Source associated with this partner topic. This represents a unique partner resource.
  late final pulumi.Output<String?> source;
  /// The system metadata relating to the Event Grid resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Tags of the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [PartnerTopic].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PartnerTopic]. {@macro pulumi_eventgrid_partner_topic_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PartnerTopic(
    String name, {
    PartnerTopicArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:eventgrid:PartnerTopic',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    activationState = registerOutput<String?>('activationState');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eventTypeInfo = registerOutput<EventTypeInfoResponse?>('eventTypeInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventTypeInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    expirationTimeIfNotActivatedUtc = registerOutput<String?>('expirationTimeIfNotActivatedUtc');
    identity = registerOutput<IdentityInfoResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IdentityInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    messageForActivation = registerOutput<String?>('messageForActivation');
    this.name = registerOutput<String>('name');
    partnerRegistrationImmutableId = registerOutput<String?>('partnerRegistrationImmutableId');
    partnerTopicFriendlyDescription = registerOutput<String?>('partnerTopicFriendlyDescription');
    provisioningState = registerOutput<String>('provisioningState');
    source = registerOutput<String?>('source');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
