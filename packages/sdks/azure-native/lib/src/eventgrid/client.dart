import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_args.dart';
import 'client_certificate_authentication_response.dart';
import 'system_data_response.dart';

/// The Client resource.
///
/// Uses Azure REST API version 2025-02-15. In version 2.x of the Azure Native provider, it used API version 2023-06-01-preview.
///
/// Other available API versions: 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Clients_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var client = new AzureNative.EventGrid.Client("client", new()
///     {
///         Attributes = new Dictionary<string, object?>
///         {
///             ["deviceTypes"] = new[]
///             {
///                 "Fan",
///                 "Light",
///                 "AC",
///             },
///             ["floor"] = 3,
///             ["room"] = "345",
///         },
///         ClientCertificateAuthentication = new AzureNative.EventGrid.Inputs.ClientCertificateAuthenticationArgs
///         {
///             ValidationScheme = AzureNative.EventGrid.ClientCertificateValidationScheme.SubjectMatchesAuthenticationName,
///         },
///         ClientName = "exampleClientName1",
///         Description = "This is a test client",
///         NamespaceName = "exampleNamespaceName1",
///         ResourceGroupName = "examplerg",
///         State = AzureNative.EventGrid.ClientState.Enabled,
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
/// 		_, err := eventgrid.NewClient(ctx, "client", &eventgrid.ClientArgs{
/// 			Attributes: pulumi.Any(map[string]interface{}{
/// 				"deviceTypes": []string{
/// 					"Fan",
/// 					"Light",
/// 					"AC",
/// 				},
/// 				"floor": 3,
/// 				"room":  "345",
/// 			}),
/// 			ClientCertificateAuthentication: &eventgrid.ClientCertificateAuthenticationArgs{
/// 				ValidationScheme: pulumi.String(eventgrid.ClientCertificateValidationSchemeSubjectMatchesAuthenticationName),
/// 			},
/// 			ClientName:        pulumi.String("exampleClientName1"),
/// 			Description:       pulumi.String("This is a test client"),
/// 			NamespaceName:     pulumi.String("exampleNamespaceName1"),
/// 			ResourceGroupName: pulumi.String("examplerg"),
/// 			State:             pulumi.String(eventgrid.ClientStateEnabled),
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
/// import com.pulumi.azurenative.eventgrid.Client;
/// import com.pulumi.azurenative.eventgrid.ClientArgs;
/// import com.pulumi.azurenative.eventgrid.inputs.ClientCertificateAuthenticationArgs;
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
///         var client = new Client("client", ClientArgs.builder()
///             .attributes(Map.ofEntries(
///                 Map.entry("deviceTypes",
///                     "Fan",
///                     "Light",
///                     "AC"),
///                 Map.entry("floor", 3),
///                 Map.entry("room", "345")
///             ))
///             .clientCertificateAuthentication(ClientCertificateAuthenticationArgs.builder()
///                 .validationScheme("SubjectMatchesAuthenticationName")
///                 .build())
///             .clientName("exampleClientName1")
///             .description("This is a test client")
///             .namespaceName("exampleNamespaceName1")
///             .resourceGroupName("examplerg")
///             .state("Enabled")
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
/// const client = new azure_native.eventgrid.Client("client", {
///     attributes: {
///         deviceTypes: [
///             "Fan",
///             "Light",
///             "AC",
///         ],
///         floor: 3,
///         room: "345",
///     },
///     clientCertificateAuthentication: {
///         validationScheme: azure_native.eventgrid.ClientCertificateValidationScheme.SubjectMatchesAuthenticationName,
///     },
///     clientName: "exampleClientName1",
///     description: "This is a test client",
///     namespaceName: "exampleNamespaceName1",
///     resourceGroupName: "examplerg",
///     state: azure_native.eventgrid.ClientState.Enabled,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// client = azure_native.eventgrid.Client("client",
///     attributes={
///         "deviceTypes": [
///             "Fan",
///             "Light",
///             "AC",
///         ],
///         "floor": 3,
///         "room": "345",
///     },
///     client_certificate_authentication={
///         "validation_scheme": azure_native.eventgrid.ClientCertificateValidationScheme.SUBJECT_MATCHES_AUTHENTICATION_NAME,
///     },
///     client_name="exampleClientName1",
///     description="This is a test client",
///     namespace_name="exampleNamespaceName1",
///     resource_group_name="examplerg",
///     state=azure_native.eventgrid.ClientState.ENABLED)
///
/// ```
///
/// ```yaml
/// resources:
///   client:
///     type: azure-native:eventgrid:Client
///     properties:
///       attributes:
///         deviceTypes:
///           - Fan
///           - Light
///           - AC
///         floor: 3
///         room: '345'
///       clientCertificateAuthentication:
///         validationScheme: SubjectMatchesAuthenticationName
///       clientName: exampleClientName1
///       description: This is a test client
///       namespaceName: exampleNamespaceName1
///       resourceGroupName: examplerg
///       state: Enabled
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
/// $ pulumi import azure-native:eventgrid:Client exampleClientName1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventGrid/namespaces/{namespaceName}/clients/{clientName}
/// ```
class Client extends pulumi.CustomResource {
  /// Attributes for the client. Supported values are int, bool, string, string[].
  /// Example:
  /// "attributes": { "room": "345", "floor": 12, "deviceTypes": ["Fan", "Light"] }
  late final pulumi.Output<dynamic> attributes;

  /// The name presented by the client for authentication. The default value is the name of the resource.
  late final pulumi.Output<String?> authenticationName;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The client certificate authentication information.
  late final pulumi.Output<ClientCertificateAuthenticationResponse?>
  clientCertificateAuthentication;

  /// Description for the Client resource.
  late final pulumi.Output<String?> description;

  /// Name of the resource.
  late final pulumi.Output<String> name;

  /// Provisioning state of the Client resource.
  late final pulumi.Output<String> provisioningState;

  /// Indicates if the client is enabled or not. Default value is Enabled.
  late final pulumi.Output<String?> state;

  /// The system metadata relating to the Event Grid resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [Client].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Client]. {@macro pulumi_eventgrid_client_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Client(String name, {ClientArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure-native:eventgrid:Client',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    attributes = registerOutput<dynamic>('attributes');
    authenticationName = registerOutput<String?>('authenticationName');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    clientCertificateAuthentication =
        registerOutput<ClientCertificateAuthenticationResponse?>(
          'clientCertificateAuthentication',
        );
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    state = registerOutput<String?>('state');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
