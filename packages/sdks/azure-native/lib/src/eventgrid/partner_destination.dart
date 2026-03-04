import 'package:pulumi/pulumi.dart' as pulumi;
import 'partner_destination_args.dart';
import 'system_data_response.dart';

/// Event Grid Partner Destination.
///
/// Uses Azure REST API version 2024-12-15-preview. In version 2.x of the Azure Native provider, it used API version 2023-06-01-preview.
///
/// Other available API versions: 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PartnerDestinations_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var partnerDestination = new AzureNative.EventGrid.PartnerDestination("partnerDestination", new()
///     {
///         EndpointBaseUrl = "https://www.example/endpoint",
///         EndpointServiceContext = "This is an example",
///         ExpirationTimeIfNotActivatedUtc = "2022-03-14T19:33:43.430Z",
///         Location = "westus2",
///         MessageForActivation = "Sample Activation message",
///         PartnerDestinationName = "examplePartnerDestinationName1",
///         PartnerRegistrationImmutableId = "0bd70ee2-7d95-447e-ab1f-c4f320019404",
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
/// 		_, err := eventgrid.NewPartnerDestination(ctx, "partnerDestination", &eventgrid.PartnerDestinationArgs{
/// 			EndpointBaseUrl:                 pulumi.String("https://www.example/endpoint"),
/// 			EndpointServiceContext:          pulumi.String("This is an example"),
/// 			ExpirationTimeIfNotActivatedUtc: pulumi.String("2022-03-14T19:33:43.430Z"),
/// 			Location:                        pulumi.String("westus2"),
/// 			MessageForActivation:            pulumi.String("Sample Activation message"),
/// 			PartnerDestinationName:          pulumi.String("examplePartnerDestinationName1"),
/// 			PartnerRegistrationImmutableId:  pulumi.String("0bd70ee2-7d95-447e-ab1f-c4f320019404"),
/// 			ResourceGroupName:               pulumi.String("examplerg"),
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
/// import com.pulumi.azurenative.eventgrid.PartnerDestination;
/// import com.pulumi.azurenative.eventgrid.PartnerDestinationArgs;
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
///         var partnerDestination = new PartnerDestination("partnerDestination", PartnerDestinationArgs.builder()
///             .endpointBaseUrl("https://www.example/endpoint")
///             .endpointServiceContext("This is an example")
///             .expirationTimeIfNotActivatedUtc("2022-03-14T19:33:43.430Z")
///             .location("westus2")
///             .messageForActivation("Sample Activation message")
///             .partnerDestinationName("examplePartnerDestinationName1")
///             .partnerRegistrationImmutableId("0bd70ee2-7d95-447e-ab1f-c4f320019404")
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
/// const partnerDestination = new azure_native.eventgrid.PartnerDestination("partnerDestination", {
///     endpointBaseUrl: "https://www.example/endpoint",
///     endpointServiceContext: "This is an example",
///     expirationTimeIfNotActivatedUtc: "2022-03-14T19:33:43.430Z",
///     location: "westus2",
///     messageForActivation: "Sample Activation message",
///     partnerDestinationName: "examplePartnerDestinationName1",
///     partnerRegistrationImmutableId: "0bd70ee2-7d95-447e-ab1f-c4f320019404",
///     resourceGroupName: "examplerg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// partner_destination = azure_native.eventgrid.PartnerDestination("partnerDestination",
///     endpoint_base_url="https://www.example/endpoint",
///     endpoint_service_context="This is an example",
///     expiration_time_if_not_activated_utc="2022-03-14T19:33:43.430Z",
///     location="westus2",
///     message_for_activation="Sample Activation message",
///     partner_destination_name="examplePartnerDestinationName1",
///     partner_registration_immutable_id="0bd70ee2-7d95-447e-ab1f-c4f320019404",
///     resource_group_name="examplerg")
///
/// ```
///
/// ```yaml
/// resources:
///   partnerDestination:
///     type: azure-native:eventgrid:PartnerDestination
///     properties:
///       endpointBaseUrl: https://www.example/endpoint
///       endpointServiceContext: This is an example
///       expirationTimeIfNotActivatedUtc: 2022-03-14T19:33:43.430Z
///       location: westus2
///       messageForActivation: Sample Activation message
///       partnerDestinationName: examplePartnerDestinationName1
///       partnerRegistrationImmutableId: 0bd70ee2-7d95-447e-ab1f-c4f320019404
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
/// $ pulumi import azure-native:eventgrid:PartnerDestination examplePartnerDestinationName1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventGrid/partnerDestinations/{partnerDestinationName}
/// ```
class PartnerDestination extends pulumi.CustomResource {
  /// Activation state of the partner destination.
  late final pulumi.Output<String?> activationState;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Endpoint Base URL of the partner destination
  late final pulumi.Output<String?> endpointBaseUrl;

  /// Endpoint context associated with this partner destination.
  late final pulumi.Output<String?> endpointServiceContext;

  /// Expiration time of the partner destination. If this timer expires and the partner destination was never activated,
  /// the partner destination and corresponding channel are deleted.
  late final pulumi.Output<String?> expirationTimeIfNotActivatedUtc;

  /// Location of the resource.
  late final pulumi.Output<String> location;

  /// Context or helpful message that can be used during the approval process.
  late final pulumi.Output<String?> messageForActivation;

  /// Name of the resource.
  late final pulumi.Output<String> name;

  /// The immutable Id of the corresponding partner registration.
  late final pulumi.Output<String?> partnerRegistrationImmutableId;

  /// Provisioning state of the partner destination.
  late final pulumi.Output<String> provisioningState;

  /// The system metadata relating to the Event Grid resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Tags of the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [PartnerDestination].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PartnerDestination]. {@macro pulumi_eventgrid_partner_destination_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PartnerDestination(
    String name, {
    PartnerDestinationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:eventgrid:PartnerDestination',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    activationState = registerOutput<String?>('activationState');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    endpointBaseUrl = registerOutput<String?>('endpointBaseUrl');
    endpointServiceContext = registerOutput<String?>('endpointServiceContext');
    expirationTimeIfNotActivatedUtc = registerOutput<String?>(
      'expirationTimeIfNotActivatedUtc',
    );
    location = registerOutput<String>('location');
    messageForActivation = registerOutput<String?>('messageForActivation');
    this.name = registerOutput<String>('name');
    partnerRegistrationImmutableId = registerOutput<String?>(
      'partnerRegistrationImmutableId',
    );
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
