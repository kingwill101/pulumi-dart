import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_gateway_config_connection_args.dart';

/// A single API Management gateway resource in List or Get response.
///
/// Uses Azure REST API version 2024-06-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-09-01-preview.
///
/// Other available API versions: 2023-09-01-preview, 2024-05-01, 2024-10-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateGatewayConfigConnection
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var apiGatewayConfigConnection = new AzureNative.ApiManagement.ApiGatewayConfigConnection("apiGatewayConfigConnection", new()
///     {
///         ConfigConnectionName = "gcc-01",
///         GatewayName = "standard-gw-01",
///         ResourceGroupName = "rg1",
///         SourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/services/apim-service-1/workspaces/ws-001",
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
/// 	apimanagement "github.com/pulumi/pulumi-azure-native-sdk/apimanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apimanagement.NewApiGatewayConfigConnection(ctx, "apiGatewayConfigConnection", &apimanagement.ApiGatewayConfigConnectionArgs{
/// 			ConfigConnectionName: pulumi.String("gcc-01"),
/// 			GatewayName:          pulumi.String("standard-gw-01"),
/// 			ResourceGroupName:    pulumi.String("rg1"),
/// 			SourceId:             pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/services/apim-service-1/workspaces/ws-001"),
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
/// import com.pulumi.azurenative.apimanagement.ApiGatewayConfigConnection;
/// import com.pulumi.azurenative.apimanagement.ApiGatewayConfigConnectionArgs;
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
///         var apiGatewayConfigConnection = new ApiGatewayConfigConnection("apiGatewayConfigConnection", ApiGatewayConfigConnectionArgs.builder()
///             .configConnectionName("gcc-01")
///             .gatewayName("standard-gw-01")
///             .resourceGroupName("rg1")
///             .sourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/services/apim-service-1/workspaces/ws-001")
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
/// const apiGatewayConfigConnection = new azure_native.apimanagement.ApiGatewayConfigConnection("apiGatewayConfigConnection", {
///     configConnectionName: "gcc-01",
///     gatewayName: "standard-gw-01",
///     resourceGroupName: "rg1",
///     sourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/services/apim-service-1/workspaces/ws-001",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// api_gateway_config_connection = azure_native.apimanagement.ApiGatewayConfigConnection("apiGatewayConfigConnection",
///     config_connection_name="gcc-01",
///     gateway_name="standard-gw-01",
///     resource_group_name="rg1",
///     source_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/services/apim-service-1/workspaces/ws-001")
///
/// ```
///
/// ```yaml
/// resources:
///   apiGatewayConfigConnection:
///     type: azure-native:apimanagement:ApiGatewayConfigConnection
///     properties:
///       configConnectionName: gcc-01
///       gatewayName: standard-gw-01
///       resourceGroupName: rg1
///       sourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/services/apim-service-1/workspaces/ws-001
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
/// $ pulumi import azure-native:apimanagement:ApiGatewayConfigConnection gcc-1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/gateways/{gatewayName}/configConnections/{configConnectionName}
/// ```
class ApiGatewayConfigConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The default hostname of the data-plane gateway.
  late final pulumi.Output<String> defaultHostname;
  /// ETag of the resource.
  late final pulumi.Output<String> etag;
  /// The hostnames of the data-plane gateway to which requests can be sent.
  late final pulumi.Output<List<String>?> hostnames;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The current provisioning state of the API Management gateway config connection
  late final pulumi.Output<String> provisioningState;
  /// The link to the API Management service workspace.
  late final pulumi.Output<String?> sourceId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ApiGatewayConfigConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiGatewayConfigConnection]. {@macro pulumi_apimanagement_api_gateway_config_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiGatewayConfigConnection(
    String name, {
    ApiGatewayConfigConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apimanagement:ApiGatewayConfigConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    defaultHostname = registerOutput<String>('defaultHostname');
    etag = registerOutput<String>('etag');
    hostnames = registerOutput<List<String>?>('hostnames');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    sourceId = registerOutput<String?>('sourceId');
    type = registerOutput<String>('type');
  }
}
