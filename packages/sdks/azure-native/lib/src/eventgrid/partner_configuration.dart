import 'package:pulumi/pulumi.dart' as pulumi;
import 'partner_authorization_response.dart';
import 'partner_configuration_args.dart';
import 'system_data_response.dart';

/// Partner configuration information
///
/// Uses Azure REST API version 2025-02-15. In version 2.x of the Azure Native provider, it used API version 2022-06-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PartnerConfigurations_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var partnerConfiguration = new AzureNative.EventGrid.PartnerConfiguration("partnerConfiguration", new()
///     {
///         PartnerAuthorization = new AzureNative.EventGrid.Inputs.PartnerAuthorizationArgs
///         {
///             AuthorizedPartnersList = new[]
///             {
///                 new AzureNative.EventGrid.Inputs.PartnerArgs
///                 {
///                     AuthorizationExpirationTimeInUtc = "2022-01-28T01:20:55.142Z",
///                     PartnerName = "Contoso.Finance",
///                     PartnerRegistrationImmutableId = "941892bc-f5d0-4d1c-8fb5-477570fc2b71",
///                 },
///                 new AzureNative.EventGrid.Inputs.PartnerArgs
///                 {
///                     AuthorizationExpirationTimeInUtc = "2022-02-20T01:00:00.142Z",
///                     PartnerName = "fabrikam.HR",
///                     PartnerRegistrationImmutableId = "5362bdb6-ce3e-4d0d-9a5b-3eb92c8aab38",
///                 },
///             },
///             DefaultMaximumExpirationTimeInDays = 10,
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
/// 		_, err := eventgrid.NewPartnerConfiguration(ctx, "partnerConfiguration", &eventgrid.PartnerConfigurationArgs{
/// 			PartnerAuthorization: &eventgrid.PartnerAuthorizationArgs{
/// 				AuthorizedPartnersList: eventgrid.PartnerArray{
/// 					&eventgrid.PartnerArgs{
/// 						AuthorizationExpirationTimeInUtc: pulumi.String("2022-01-28T01:20:55.142Z"),
/// 						PartnerName:                      pulumi.String("Contoso.Finance"),
/// 						PartnerRegistrationImmutableId:   pulumi.String("941892bc-f5d0-4d1c-8fb5-477570fc2b71"),
/// 					},
/// 					&eventgrid.PartnerArgs{
/// 						AuthorizationExpirationTimeInUtc: pulumi.String("2022-02-20T01:00:00.142Z"),
/// 						PartnerName:                      pulumi.String("fabrikam.HR"),
/// 						PartnerRegistrationImmutableId:   pulumi.String("5362bdb6-ce3e-4d0d-9a5b-3eb92c8aab38"),
/// 					},
/// 				},
/// 				DefaultMaximumExpirationTimeInDays: pulumi.Int(10),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.eventgrid.PartnerConfiguration;
/// import com.pulumi.azurenative.eventgrid.PartnerConfigurationArgs;
/// import com.pulumi.azurenative.eventgrid.inputs.PartnerAuthorizationArgs;
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
///         var partnerConfiguration = new PartnerConfiguration("partnerConfiguration", PartnerConfigurationArgs.builder()
///             .partnerAuthorization(PartnerAuthorizationArgs.builder()
///                 .authorizedPartnersList(
///                     PartnerArgs.builder()
///                         .authorizationExpirationTimeInUtc("2022-01-28T01:20:55.142Z")
///                         .partnerName("Contoso.Finance")
///                         .partnerRegistrationImmutableId("941892bc-f5d0-4d1c-8fb5-477570fc2b71")
///                         .build(),
///                     PartnerArgs.builder()
///                         .authorizationExpirationTimeInUtc("2022-02-20T01:00:00.142Z")
///                         .partnerName("fabrikam.HR")
///                         .partnerRegistrationImmutableId("5362bdb6-ce3e-4d0d-9a5b-3eb92c8aab38")
///                         .build())
///                 .defaultMaximumExpirationTimeInDays(10)
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
/// const partnerConfiguration = new azure_native.eventgrid.PartnerConfiguration("partnerConfiguration", {
///     partnerAuthorization: {
///         authorizedPartnersList: [
///             {
///                 authorizationExpirationTimeInUtc: "2022-01-28T01:20:55.142Z",
///                 partnerName: "Contoso.Finance",
///                 partnerRegistrationImmutableId: "941892bc-f5d0-4d1c-8fb5-477570fc2b71",
///             },
///             {
///                 authorizationExpirationTimeInUtc: "2022-02-20T01:00:00.142Z",
///                 partnerName: "fabrikam.HR",
///                 partnerRegistrationImmutableId: "5362bdb6-ce3e-4d0d-9a5b-3eb92c8aab38",
///             },
///         ],
///         defaultMaximumExpirationTimeInDays: 10,
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
/// partner_configuration = azure_native.eventgrid.PartnerConfiguration("partnerConfiguration",
///     partner_authorization={
///         "authorized_partners_list": [
///             {
///                 "authorization_expiration_time_in_utc": "2022-01-28T01:20:55.142Z",
///                 "partner_name": "Contoso.Finance",
///                 "partner_registration_immutable_id": "941892bc-f5d0-4d1c-8fb5-477570fc2b71",
///             },
///             {
///                 "authorization_expiration_time_in_utc": "2022-02-20T01:00:00.142Z",
///                 "partner_name": "fabrikam.HR",
///                 "partner_registration_immutable_id": "5362bdb6-ce3e-4d0d-9a5b-3eb92c8aab38",
///             },
///         ],
///         "default_maximum_expiration_time_in_days": 10,
///     },
///     resource_group_name="examplerg")
///
/// ```
///
/// ```yaml
/// resources:
///   partnerConfiguration:
///     type: azure-native:eventgrid:PartnerConfiguration
///     properties:
///       partnerAuthorization:
///         authorizedPartnersList:
///           - authorizationExpirationTimeInUtc: 2022-01-28T01:20:55.142Z
///             partnerName: Contoso.Finance
///             partnerRegistrationImmutableId: 941892bc-f5d0-4d1c-8fb5-477570fc2b71
///           - authorizationExpirationTimeInUtc: 2022-02-20T01:00:00.142Z
///             partnerName: fabrikam.HR
///             partnerRegistrationImmutableId: 5362bdb6-ce3e-4d0d-9a5b-3eb92c8aab38
///         defaultMaximumExpirationTimeInDays: 10
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
/// $ pulumi import azure-native:eventgrid:PartnerConfiguration default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventGrid/partnerConfigurations/default
/// ```
class PartnerConfiguration extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Location of the resource.
  late final pulumi.Output<String?> location;

  /// Name of the resource.
  late final pulumi.Output<String> name;

  /// The details of authorized partners.
  late final pulumi.Output<PartnerAuthorizationResponse?> partnerAuthorization;

  /// Provisioning state of the partner configuration.
  late final pulumi.Output<String?> provisioningState;

  /// The system metadata relating to the Event Grid resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Tags of the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [PartnerConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PartnerConfiguration]. {@macro pulumi_eventgrid_partner_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PartnerConfiguration(
    String name, {
    PartnerConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:eventgrid:PartnerConfiguration',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    partnerAuthorization = registerOutput<PartnerAuthorizationResponse?>(
      'partnerAuthorization',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return PartnerAuthorizationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    provisioningState = registerOutput<String?>('provisioningState');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
