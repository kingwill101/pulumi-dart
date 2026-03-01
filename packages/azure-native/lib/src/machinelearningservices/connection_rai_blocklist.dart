import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_rai_blocklist_args.dart';
import 'rai_blocklist_properties_response.dart';
import 'system_data_response.dart';

/// Uses Azure REST API version 2025-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-04-01-preview.
///
/// Other available API versions: 2024-07-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Rai Blocklist
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connectionRaiBlocklist = new AzureNative.MachineLearningServices.ConnectionRaiBlocklist("connectionRaiBlocklist", new()
///     {
///         ConnectionName = "testConnection",
///         Properties = new AzureNative.MachineLearningServices.Inputs.RaiBlocklistPropertiesArgs
///         {
///             Description = "Basic blocklist description",
///         },
///         RaiBlocklistName = "raiBlocklistName",
///         ResourceGroupName = "test-rg",
///         WorkspaceName = "aml-workspace-name",
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
/// 	machinelearningservices "github.com/pulumi/pulumi-azure-native-sdk/machinelearningservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := machinelearningservices.NewConnectionRaiBlocklist(ctx, "connectionRaiBlocklist", &machinelearningservices.ConnectionRaiBlocklistArgs{
/// 			ConnectionName: pulumi.String("testConnection"),
/// 			Properties: &machinelearningservices.RaiBlocklistPropertiesArgs{
/// 				Description: pulumi.String("Basic blocklist description"),
/// 			},
/// 			RaiBlocklistName:  pulumi.String("raiBlocklistName"),
/// 			ResourceGroupName: pulumi.String("test-rg"),
/// 			WorkspaceName:     pulumi.String("aml-workspace-name"),
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
/// import com.pulumi.azurenative.machinelearningservices.ConnectionRaiBlocklist;
/// import com.pulumi.azurenative.machinelearningservices.ConnectionRaiBlocklistArgs;
/// import com.pulumi.azurenative.machinelearningservices.inputs.RaiBlocklistPropertiesArgs;
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
///         var connectionRaiBlocklist = new ConnectionRaiBlocklist("connectionRaiBlocklist", ConnectionRaiBlocklistArgs.builder()
///             .connectionName("testConnection")
///             .properties(RaiBlocklistPropertiesArgs.builder()
///                 .description("Basic blocklist description")
///                 .build())
///             .raiBlocklistName("raiBlocklistName")
///             .resourceGroupName("test-rg")
///             .workspaceName("aml-workspace-name")
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
/// const connectionRaiBlocklist = new azure_native.machinelearningservices.ConnectionRaiBlocklist("connectionRaiBlocklist", {
///     connectionName: "testConnection",
///     properties: {
///         description: "Basic blocklist description",
///     },
///     raiBlocklistName: "raiBlocklistName",
///     resourceGroupName: "test-rg",
///     workspaceName: "aml-workspace-name",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// connection_rai_blocklist = azure_native.machinelearningservices.ConnectionRaiBlocklist("connectionRaiBlocklist",
///     connection_name="testConnection",
///     properties={
///         "description": "Basic blocklist description",
///     },
///     rai_blocklist_name="raiBlocklistName",
///     resource_group_name="test-rg",
///     workspace_name="aml-workspace-name")
///
/// ```
///
/// ```yaml
/// resources:
///   connectionRaiBlocklist:
///     type: azure-native:machinelearningservices:ConnectionRaiBlocklist
///     properties:
///       connectionName: testConnection
///       properties:
///         description: Basic blocklist description
///       raiBlocklistName: raiBlocklistName
///       resourceGroupName: test-rg
///       workspaceName: aml-workspace-name
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
/// $ pulumi import azure-native:machinelearningservices:ConnectionRaiBlocklist raiBlocklistName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MachineLearningServices/workspaces/{workspaceName}/connections/{connectionName}/raiBlocklists/{raiBlocklistName}
/// ```
class ConnectionRaiBlocklist extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// RAI Custom Blocklist properties.
  late final pulumi.Output<RaiBlocklistPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ConnectionRaiBlocklist].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConnectionRaiBlocklist]. {@macro pulumi_machinelearningservices_connection_rai_blocklist_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConnectionRaiBlocklist(
    String name, {
    ConnectionRaiBlocklistArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:machinelearningservices:ConnectionRaiBlocklist',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<RaiBlocklistPropertiesResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
