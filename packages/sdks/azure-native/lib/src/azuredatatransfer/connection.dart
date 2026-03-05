import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_args.dart';
import 'connection_properties_response.dart';
import 'system_data_response.dart';

/// The connection resource definition.
///
/// Uses Azure REST API version 2024-09-27. In version 2.x of the Azure Native provider, it used API version 2023-10-11-preview.
///
/// Other available API versions: 2023-10-11-preview, 2024-01-25, 2024-05-07, 2024-09-11, 2025-03-01-preview, 2025-04-11-preview, 2025-05-21, 2025-05-30-preview, 2025-10-10-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azuredatatransfer [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates or updates the connection resource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connection = new AzureNative.AzureDataTransfer.Connection("connection", new()
///     {
///         ConnectionName = "testConnection",
///         Location = "East US",
///         Properties = new AzureNative.AzureDataTransfer.Inputs.ConnectionPropertiesArgs
///         {
///             Justification = "justification",
///             Pipeline = "testdc",
///             RequirementId = "id",
///         },
///         ResourceGroupName = "testRG",
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
/// 	azuredatatransfer "github.com/pulumi/pulumi-azure-native-sdk/azuredatatransfer/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azuredatatransfer.NewConnection(ctx, "connection", &azuredatatransfer.ConnectionArgs{
/// 			ConnectionName: pulumi.String("testConnection"),
/// 			Location:       pulumi.String("East US"),
/// 			Properties: &azuredatatransfer.ConnectionPropertiesArgs{
/// 				Justification: pulumi.String("justification"),
/// 				Pipeline:      pulumi.String("testdc"),
/// 				RequirementId: pulumi.String("id"),
/// 			},
/// 			ResourceGroupName: pulumi.String("testRG"),
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
/// import com.pulumi.azurenative.azuredatatransfer.Connection;
/// import com.pulumi.azurenative.azuredatatransfer.ConnectionArgs;
/// import com.pulumi.azurenative.azuredatatransfer.inputs.ConnectionPropertiesArgs;
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
///         var connection = new Connection("connection", ConnectionArgs.builder()
///             .connectionName("testConnection")
///             .location("East US")
///             .properties(ConnectionPropertiesArgs.builder()
///                 .justification("justification")
///                 .pipeline("testdc")
///                 .requirementId("id")
///                 .build())
///             .resourceGroupName("testRG")
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
/// const connection = new azure_native.azuredatatransfer.Connection("connection", {
///     connectionName: "testConnection",
///     location: "East US",
///     properties: {
///         justification: "justification",
///         pipeline: "testdc",
///         requirementId: "id",
///     },
///     resourceGroupName: "testRG",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// connection = azure_native.azuredatatransfer.Connection("connection",
///     connection_name="testConnection",
///     location="East US",
///     properties={
///         "justification": "justification",
///         "pipeline": "testdc",
///         "requirement_id": "id",
///     },
///     resource_group_name="testRG")
///
/// ```
///
/// ```yaml
/// resources:
///   connection:
///     type: azure-native:azuredatatransfer:Connection
///     properties:
///       connectionName: testConnection
///       location: East US
///       properties:
///         justification: justification
///         pipeline: testdc
///         requirementId: id
///       resourceGroupName: testRG
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
/// $ pulumi import azure-native:azuredatatransfer:Connection myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureDataTransfer/connections/{connectionName}
/// ```
class Connection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Properties of connection
  late final pulumi.Output<ConnectionPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Connection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Connection]. {@macro pulumi_azuredatatransfer_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Connection(
    String name, {
    ConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:azuredatatransfer:Connection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ConnectionPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ConnectionPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
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
