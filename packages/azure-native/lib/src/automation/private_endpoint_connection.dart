import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_args.dart';
import 'private_endpoint_property_response.dart';
import 'private_link_service_connection_state_property_response.dart';
import 'system_data_response.dart';

/// A private endpoint connection
///
/// Uses Azure REST API version 2023-05-15-preview. In version 2.x of the Azure Native provider, it used API version 2020-01-13-preview.
///
/// Other available API versions: 2020-01-13-preview, 2024-10-23. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Approve or reject a private endpoint connection with a given name.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateEndpointConnection = new AzureNative.Automation.PrivateEndpointConnection("privateEndpointConnection", new()
///     {
///         AutomationAccountName = "automationAccountName",
///         PrivateEndpointConnectionName = "privateEndpointConnectionName",
///         PrivateLinkServiceConnectionState = new AzureNative.Automation.Inputs.PrivateLinkServiceConnectionStatePropertyArgs
///         {
///             Description = "Approved by johndoe@contoso.com",
///             Status = "Approved",
///         },
///         ResourceGroupName = "rg1",
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
/// 	automation "github.com/pulumi/pulumi-azure-native-sdk/automation/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := automation.NewPrivateEndpointConnection(ctx, "privateEndpointConnection", &automation.PrivateEndpointConnectionArgs{
/// 			AutomationAccountName:         pulumi.String("automationAccountName"),
/// 			PrivateEndpointConnectionName: pulumi.String("privateEndpointConnectionName"),
/// 			PrivateLinkServiceConnectionState: &automation.PrivateLinkServiceConnectionStatePropertyArgs{
/// 				Description: pulumi.String("Approved by johndoe@contoso.com"),
/// 				Status:      pulumi.String("Approved"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.automation.PrivateEndpointConnection;
/// import com.pulumi.azurenative.automation.PrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.automation.inputs.PrivateLinkServiceConnectionStatePropertyArgs;
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
///         var privateEndpointConnection = new PrivateEndpointConnection("privateEndpointConnection", PrivateEndpointConnectionArgs.builder()
///             .automationAccountName("automationAccountName")
///             .privateEndpointConnectionName("privateEndpointConnectionName")
///             .privateLinkServiceConnectionState(PrivateLinkServiceConnectionStatePropertyArgs.builder()
///                 .description("Approved by johndoe@contoso.com")
///                 .status("Approved")
///                 .build())
///             .resourceGroupName("rg1")
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
/// const privateEndpointConnection = new azure_native.automation.PrivateEndpointConnection("privateEndpointConnection", {
///     automationAccountName: "automationAccountName",
///     privateEndpointConnectionName: "privateEndpointConnectionName",
///     privateLinkServiceConnectionState: {
///         description: "Approved by johndoe@contoso.com",
///         status: "Approved",
///     },
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_endpoint_connection = azure_native.automation.PrivateEndpointConnection("privateEndpointConnection",
///     automation_account_name="automationAccountName",
///     private_endpoint_connection_name="privateEndpointConnectionName",
///     private_link_service_connection_state={
///         "description": "Approved by johndoe@contoso.com",
///         "status": "Approved",
///     },
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   privateEndpointConnection:
///     type: azure-native:automation:PrivateEndpointConnection
///     properties:
///       automationAccountName: automationAccountName
///       privateEndpointConnectionName: privateEndpointConnectionName
///       privateLinkServiceConnectionState:
///         description: Approved by johndoe@contoso.com
///         status: Approved
///       resourceGroupName: rg1
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
/// $ pulumi import azure-native:automation:PrivateEndpointConnection privateEndpointConnectionName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class PrivateEndpointConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets the groupIds.
  late final pulumi.Output<List<String>?> groupIds;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Private endpoint which the connection belongs to.
  late final pulumi.Output<PrivateEndpointPropertyResponse?> privateEndpoint;
  /// Connection State of the Private Endpoint Connection.
  late final pulumi.Output<PrivateLinkServiceConnectionStatePropertyResponse?> privateLinkServiceConnectionState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateEndpointConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateEndpointConnection]. {@macro pulumi_automation_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateEndpointConnection(
    String name, {
    PrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:automation:PrivateEndpointConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.groupIds = registerOutput<List<String>?>('groupIds');
    this.name = registerOutput<String>('name');
    this.privateEndpoint = registerOutput<PrivateEndpointPropertyResponse?>('privateEndpoint');
    this.privateLinkServiceConnectionState = registerOutput<PrivateLinkServiceConnectionStatePropertyResponse?>('privateLinkServiceConnectionState');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
