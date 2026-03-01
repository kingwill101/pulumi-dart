import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_args.dart';
import 'private_endpoint_connection_properties_response.dart';

/// The private endpoint connection of a workspace
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2023-02-01, 2023-09-15-preview, 2024-09-01-preview, 2025-03-01-preview, 2025-08-01-preview, 2025-10-01-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native databricks [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Update a private endpoint connection
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateEndpointConnection = new AzureNative.Databricks.PrivateEndpointConnection("privateEndpointConnection", new()
///     {
///         PrivateEndpointConnectionName = "myWorkspace.23456789-1111-1111-1111-111111111111",
///         Properties = new AzureNative.Databricks.Inputs.PrivateEndpointConnectionPropertiesArgs
///         {
///             PrivateLinkServiceConnectionState = new AzureNative.Databricks.Inputs.PrivateLinkServiceConnectionStateArgs
///             {
///                 Description = "Approved by databricksadmin@contoso.com",
///                 Status = AzureNative.Databricks.PrivateLinkServiceConnectionStatus.Approved,
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         WorkspaceName = "myWorkspace",
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
/// 	databricks "github.com/pulumi/pulumi-azure-native-sdk/databricks/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := databricks.NewPrivateEndpointConnection(ctx, "privateEndpointConnection", &databricks.PrivateEndpointConnectionArgs{
/// 			PrivateEndpointConnectionName: pulumi.String("myWorkspace.23456789-1111-1111-1111-111111111111"),
/// 			Properties: &databricks.PrivateEndpointConnectionPropertiesArgs{
/// 				PrivateLinkServiceConnectionState: &databricks.PrivateLinkServiceConnectionStateArgs{
/// 					Description: pulumi.String("Approved by databricksadmin@contoso.com"),
/// 					Status:      pulumi.String(databricks.PrivateLinkServiceConnectionStatusApproved),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			WorkspaceName:     pulumi.String("myWorkspace"),
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
/// import com.pulumi.azurenative.databricks.PrivateEndpointConnection;
/// import com.pulumi.azurenative.databricks.PrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.databricks.inputs.PrivateEndpointConnectionPropertiesArgs;
/// import com.pulumi.azurenative.databricks.inputs.PrivateLinkServiceConnectionStateArgs;
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
///             .privateEndpointConnectionName("myWorkspace.23456789-1111-1111-1111-111111111111")
///             .properties(PrivateEndpointConnectionPropertiesArgs.builder()
///                 .privateLinkServiceConnectionState(PrivateLinkServiceConnectionStateArgs.builder()
///                     .description("Approved by databricksadmin@contoso.com")
///                     .status("Approved")
///                     .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .workspaceName("myWorkspace")
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
/// const privateEndpointConnection = new azure_native.databricks.PrivateEndpointConnection("privateEndpointConnection", {
///     privateEndpointConnectionName: "myWorkspace.23456789-1111-1111-1111-111111111111",
///     properties: {
///         privateLinkServiceConnectionState: {
///             description: "Approved by databricksadmin@contoso.com",
///             status: azure_native.databricks.PrivateLinkServiceConnectionStatus.Approved,
///         },
///     },
///     resourceGroupName: "myResourceGroup",
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_endpoint_connection = azure_native.databricks.PrivateEndpointConnection("privateEndpointConnection",
///     private_endpoint_connection_name="myWorkspace.23456789-1111-1111-1111-111111111111",
///     properties={
///         "private_link_service_connection_state": {
///             "description": "Approved by databricksadmin@contoso.com",
///             "status": azure_native.databricks.PrivateLinkServiceConnectionStatus.APPROVED,
///         },
///     },
///     resource_group_name="myResourceGroup",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   privateEndpointConnection:
///     type: azure-native:databricks:PrivateEndpointConnection
///     properties:
///       privateEndpointConnectionName: myWorkspace.23456789-1111-1111-1111-111111111111
///       properties:
///         privateLinkServiceConnectionState:
///           description: Approved by databricksadmin@contoso.com
///           status: Approved
///       resourceGroupName: myResourceGroup
///       workspaceName: myWorkspace
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
/// $ pulumi import azure-native:databricks:PrivateEndpointConnection myWorkspace.23456789-1111-1111-1111-111111111111 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Databricks/workspaces/{workspaceName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class PrivateEndpointConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The resource name.
  late final pulumi.Output<String> name;
  /// The private endpoint connection properties.
  late final pulumi.Output<PrivateEndpointConnectionPropertiesResponse> properties;
  /// The resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateEndpointConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateEndpointConnection]. {@macro pulumi_databricks_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateEndpointConnection(
    String name, {
    PrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:databricks:PrivateEndpointConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<PrivateEndpointConnectionPropertiesResponse>('properties');
    this.type = registerOutput<String>('type');
  }
}
