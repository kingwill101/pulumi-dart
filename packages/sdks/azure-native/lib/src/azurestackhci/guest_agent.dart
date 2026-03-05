import 'package:pulumi/pulumi.dart' as pulumi;
import 'guest_agent_args.dart';
import 'guest_credential_response.dart';
import 'system_data_response.dart';

/// Defines the GuestAgent.
///
/// Uses Azure REST API version 2025-02-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-12-15-preview.
///
/// Other available API versions: 2022-12-15-preview, 2023-07-01-preview, 2023-09-01-preview, 2024-01-01, 2024-02-01-preview, 2024-05-01-preview, 2024-07-15-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-06-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateGuestAgent
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var guestAgent = new AzureNative.AzureStackHCI.GuestAgent("guestAgent", new()
///     {
///         Credentials = new AzureNative.AzureStackHCI.Inputs.GuestCredentialArgs
///         {
///             Password = "<password>",
///             Username = "tempuser",
///         },
///         ProvisioningAction = AzureNative.AzureStackHCI.ProvisioningAction.Install,
///         ResourceUri = "subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM",
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
/// 	azurestackhci "github.com/pulumi/pulumi-azure-native-sdk/azurestackhci/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azurestackhci.NewGuestAgent(ctx, "guestAgent", &azurestackhci.GuestAgentArgs{
/// 			Credentials: &azurestackhci.GuestCredentialArgs{
/// 				Password: pulumi.String("<password>"),
/// 				Username: pulumi.String("tempuser"),
/// 			},
/// 			ProvisioningAction: pulumi.String(azurestackhci.ProvisioningActionInstall),
/// 			ResourceUri:        pulumi.String("subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM"),
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
/// import com.pulumi.azurenative.azurestackhci.GuestAgent;
/// import com.pulumi.azurenative.azurestackhci.GuestAgentArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.GuestCredentialArgs;
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
///         var guestAgent = new GuestAgent("guestAgent", GuestAgentArgs.builder()
///             .credentials(GuestCredentialArgs.builder()
///                 .password("<password>")
///                 .username("tempuser")
///                 .build())
///             .provisioningAction("install")
///             .resourceUri("subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM")
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
/// const guestAgent = new azure_native.azurestackhci.GuestAgent("guestAgent", {
///     credentials: {
///         password: "<password>",
///         username: "tempuser",
///     },
///     provisioningAction: azure_native.azurestackhci.ProvisioningAction.Install,
///     resourceUri: "subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// guest_agent = azure_native.azurestackhci.GuestAgent("guestAgent",
///     credentials={
///         "password": "<password>",
///         "username": "tempuser",
///     },
///     provisioning_action=azure_native.azurestackhci.ProvisioningAction.INSTALL,
///     resource_uri="subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM")
///
/// ```
///
/// ```yaml
/// resources:
///   guestAgent:
///     type: azure-native:azurestackhci:GuestAgent
///     properties:
///       credentials:
///         password: <password>
///         username: tempuser
///       provisioningAction: install
///       resourceUri: subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/testrg/providers/Microsoft.HybridCompute/machines/DemoVM
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
/// $ pulumi import azure-native:azurestackhci:GuestAgent default /{resourceUri}/providers/Microsoft.AzureStackHCI/virtualMachineInstances/default/guestAgents/default
/// ```
class GuestAgent extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Username / Password Credentials to provision guest agent.
  late final pulumi.Output<GuestCredentialResponse?> credentials;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The guest agent provisioning action.
  late final pulumi.Output<String?> provisioningAction;
  /// Provisioning state of the virtual machine instance.
  late final pulumi.Output<String> provisioningState;
  /// The guest agent status.
  late final pulumi.Output<String> status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [GuestAgent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GuestAgent]. {@macro pulumi_azurestackhci_guest_agent_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GuestAgent(
    String name, {
    GuestAgentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azurestackhci:GuestAgent',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    credentials = registerOutput<GuestCredentialResponse?>('credentials', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GuestCredentialResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    provisioningAction = registerOutput<String?>('provisioningAction');
    provisioningState = registerOutput<String>('provisioningState');
    status = registerOutput<String>('status');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
