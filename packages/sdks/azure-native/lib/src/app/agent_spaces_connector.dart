import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_space_connector_properties_response.dart';
import 'agent_spaces_connector_args.dart';
import 'system_data_response.dart';

/// Agent Space Connector used to connect to data sources
///
/// Uses Azure REST API version 2026-01-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### AgentSpacesConnectors_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var agentSpacesConnector = new AzureNative.App.AgentSpacesConnector("agentSpacesConnector", new()
///     {
///         AgentSpaceName = "testAgentSpace",
///         ConnectorName = "new-shared-cosmosdb-connector",
///         Properties = new AzureNative.App.Inputs.AgentSpaceConnectorPropertiesArgs
///         {
///             DataConnectorType = "Kusto",
///             Endpoint = "https://newsharedkusto.kusto.windows.net",
///             ExtendedProperties = new Dictionary<string, object?>
///             {
///                 ["additionalEndpoints"] = new[]
///                 {
///                     "https://foo.kusto.windows.net/databasename",
///                     "https://bar.kusto.windows.net/databasename",
///                 },
///                 ["environment"] = "production",
///                 ["owner"] = "alice",
///             },
///             Identity = "/subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/sharedCosmosIdentity",
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
/// 	app "github.com/pulumi/pulumi-azure-native-sdk/app/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := app.NewAgentSpacesConnector(ctx, "agentSpacesConnector", &app.AgentSpacesConnectorArgs{
/// 			AgentSpaceName: pulumi.String("testAgentSpace"),
/// 			ConnectorName:  pulumi.String("new-shared-cosmosdb-connector"),
/// 			Properties: &app.AgentSpaceConnectorPropertiesArgs{
/// 				DataConnectorType: pulumi.String("Kusto"),
/// 				Endpoint:          pulumi.String("https://newsharedkusto.kusto.windows.net"),
/// 				ExtendedProperties: pulumi.Any(map[string]interface{}{
/// 					"additionalEndpoints": []string{
/// 						"https://foo.kusto.windows.net/databasename",
/// 						"https://bar.kusto.windows.net/databasename",
/// 					},
/// 					"environment": "production",
/// 					"owner":       "alice",
/// 				}),
/// 				Identity: pulumi.String("/subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/sharedCosmosIdentity"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_app_agentspacesconnector" "agentSpacesConnector" {
///   agent_space_name = "testAgentSpace"
///   connector_name   = "new-shared-cosmosdb-connector"
///   properties = {
///     data_connector_type = "Kusto"
///     endpoint            = "https://newsharedkusto.kusto.windows.net"
///     extended_properties = {
///       "additionalEndpoints" = ["https://foo.kusto.windows.net/databasename", "https://bar.kusto.windows.net/databasename"]
///       "environment"         = "production"
///       "owner"               = "alice"
///     }
///     identity = "/subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/sharedCosmosIdentity"
///   }
///   resource_group_name = "examplerg"
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
/// import com.pulumi.azurenative.app.AgentSpacesConnector;
/// import com.pulumi.azurenative.app.AgentSpacesConnectorArgs;
/// import com.pulumi.azurenative.app.inputs.AgentSpaceConnectorPropertiesArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var agentSpacesConnector = new AgentSpacesConnector("agentSpacesConnector", AgentSpacesConnectorArgs.builder()
///             .agentSpaceName("testAgentSpace")
///             .connectorName("new-shared-cosmosdb-connector")
///             .properties(AgentSpaceConnectorPropertiesArgs.builder()
///                 .dataConnectorType("Kusto")
///                 .endpoint("https://newsharedkusto.kusto.windows.net")
///                 .extendedProperties(Map.ofEntries(
///                     Map.entry("additionalEndpoints", Arrays.asList(
///                         "https://foo.kusto.windows.net/databasename",
///                         "https://bar.kusto.windows.net/databasename")),
///                     Map.entry("environment", "production"),
///                     Map.entry("owner", "alice")
///                 ))
///                 .identity("/subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/sharedCosmosIdentity")
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
/// const agentSpacesConnector = new azure_native.app.AgentSpacesConnector("agentSpacesConnector", {
///     agentSpaceName: "testAgentSpace",
///     connectorName: "new-shared-cosmosdb-connector",
///     properties: {
///         dataConnectorType: "Kusto",
///         endpoint: "https://newsharedkusto.kusto.windows.net",
///         extendedProperties: {
///             additionalEndpoints: [
///                 "https://foo.kusto.windows.net/databasename",
///                 "https://bar.kusto.windows.net/databasename",
///             ],
///             environment: "production",
///             owner: "alice",
///         },
///         identity: "/subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/sharedCosmosIdentity",
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
/// agent_spaces_connector = azure_native.app.AgentSpacesConnector("agentSpacesConnector",
///     agent_space_name="testAgentSpace",
///     connector_name="new-shared-cosmosdb-connector",
///     properties={
///         "data_connector_type": "Kusto",
///         "endpoint": "https://newsharedkusto.kusto.windows.net",
///         "extended_properties": {
///             "additionalEndpoints": [
///                 "https://foo.kusto.windows.net/databasename",
///                 "https://bar.kusto.windows.net/databasename",
///             ],
///             "environment": "production",
///             "owner": "alice",
///         },
///         "identity": "/subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/sharedCosmosIdentity",
///     },
///     resource_group_name="examplerg")
///
/// ```
///
/// ```yaml
/// resources:
///   agentSpacesConnector:
///     type: azure-native:app:AgentSpacesConnector
///     properties:
///       agentSpaceName: testAgentSpace
///       connectorName: new-shared-cosmosdb-connector
///       properties:
///         dataConnectorType: Kusto
///         endpoint: https://newsharedkusto.kusto.windows.net
///         extendedProperties:
///           additionalEndpoints:
///             - https://foo.kusto.windows.net/databasename
///             - https://bar.kusto.windows.net/databasename
///           environment: production
///           owner: alice
///         identity: /subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/sharedCosmosIdentity
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
/// $ pulumi import azure-native:app:AgentSpacesConnector new-shared-cosmosdb-connector /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.App/agentSpaces/{agentSpaceName}/connectors/{connectorName}
/// ```
class AgentSpacesConnector extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<AgentSpaceConnectorPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AgentSpacesConnector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentSpacesConnector]. {@macro pulumi_app_agent_spaces_connector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentSpacesConnector(
    String name, {
    AgentSpacesConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:app:AgentSpacesConnector',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AgentSpaceConnectorPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentSpaceConnectorPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
