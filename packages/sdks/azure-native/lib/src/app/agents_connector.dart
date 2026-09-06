import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_connector_properties_response.dart';
import 'agents_connector_args.dart';
import 'system_data_response.dart';

/// Agent Connector used to connect to data sources
///
/// Uses Azure REST API version 2026-01-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### AgentsConnectors_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var agentsConnector = new AzureNative.App.AgentsConnector("agentsConnector", new()
///     {
///         AgentName = "testAgent",
///         ConnectorName = "new-kusto-connector",
///         Properties = new AzureNative.App.Inputs.AgentConnectorPropertiesArgs
///         {
///             DataConnectorType = "Kusto",
///             Endpoint = "https://newcluster.eastus.kusto.windows.net",
///             ExtendedProperties = new Dictionary<string, object?>
///             {
///                 ["AuthType"] = "Custom",
///                 ["CustomHeader"] = new Dictionary<string, object?>
///                 {
///                     ["DD_API_KEY"] = "value 1",
///                     ["DD_APPLICATION_KEY"] = "value 2",
///                 },
///             },
///             Identity = "/subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/kustoIdentity",
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
/// 		_, err := app.NewAgentsConnector(ctx, "agentsConnector", &app.AgentsConnectorArgs{
/// 			AgentName:     pulumi.String("testAgent"),
/// 			ConnectorName: pulumi.String("new-kusto-connector"),
/// 			Properties: &app.AgentConnectorPropertiesArgs{
/// 				DataConnectorType: pulumi.String("Kusto"),
/// 				Endpoint:          pulumi.String("https://newcluster.eastus.kusto.windows.net"),
/// 				ExtendedProperties: pulumi.Any(map[string]interface{}{
/// 					"AuthType": "Custom",
/// 					"CustomHeader": map[string]interface{}{
/// 						"DD_API_KEY":         "value 1",
/// 						"DD_APPLICATION_KEY": "value 2",
/// 					},
/// 				}),
/// 				Identity: pulumi.String("/subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/kustoIdentity"),
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
/// resource "azure-native_app_agentsconnector" "agentsConnector" {
///   agent_name     = "testAgent"
///   connector_name = "new-kusto-connector"
///   properties = {
///     data_connector_type = "Kusto"
///     endpoint            = "https://newcluster.eastus.kusto.windows.net"
///     extended_properties = {
///       "AuthType" = "Custom"
///       "CustomHeader" = {
///         "DD_API_KEY"         = "value 1"
///         "DD_APPLICATION_KEY" = "value 2"
///       }
///     }
///     identity = "/subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/kustoIdentity"
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
/// import com.pulumi.azurenative.app.AgentsConnector;
/// import com.pulumi.azurenative.app.AgentsConnectorArgs;
/// import com.pulumi.azurenative.app.inputs.AgentConnectorPropertiesArgs;
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
///         var agentsConnector = new AgentsConnector("agentsConnector", AgentsConnectorArgs.builder()
///             .agentName("testAgent")
///             .connectorName("new-kusto-connector")
///             .properties(AgentConnectorPropertiesArgs.builder()
///                 .dataConnectorType("Kusto")
///                 .endpoint("https://newcluster.eastus.kusto.windows.net")
///                 .extendedProperties(Map.ofEntries(
///                     Map.entry("AuthType", "Custom"),
///                     Map.entry("CustomHeader", Map.ofEntries(
///                         Map.entry("DD_API_KEY", "value 1"),
///                         Map.entry("DD_APPLICATION_KEY", "value 2")
///                     ))
///                 ))
///                 .identity("/subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/kustoIdentity")
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
/// const agentsConnector = new azure_native.app.AgentsConnector("agentsConnector", {
///     agentName: "testAgent",
///     connectorName: "new-kusto-connector",
///     properties: {
///         dataConnectorType: "Kusto",
///         endpoint: "https://newcluster.eastus.kusto.windows.net",
///         extendedProperties: {
///             AuthType: "Custom",
///             CustomHeader: {
///                 DD_API_KEY: "value 1",
///                 DD_APPLICATION_KEY: "value 2",
///             },
///         },
///         identity: "/subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/kustoIdentity",
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
/// agents_connector = azure_native.app.AgentsConnector("agentsConnector",
///     agent_name="testAgent",
///     connector_name="new-kusto-connector",
///     properties={
///         "data_connector_type": "Kusto",
///         "endpoint": "https://newcluster.eastus.kusto.windows.net",
///         "extended_properties": {
///             "AuthType": "Custom",
///             "CustomHeader": {
///                 "DD_API_KEY": "value 1",
///                 "DD_APPLICATION_KEY": "value 2",
///             },
///         },
///         "identity": "/subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/kustoIdentity",
///     },
///     resource_group_name="examplerg")
///
/// ```
///
/// ```yaml
/// resources:
///   agentsConnector:
///     type: azure-native:app:AgentsConnector
///     properties:
///       agentName: testAgent
///       connectorName: new-kusto-connector
///       properties:
///         dataConnectorType: Kusto
///         endpoint: https://newcluster.eastus.kusto.windows.net
///         extendedProperties:
///           AuthType: Custom
///           CustomHeader:
///             DD_API_KEY: value 1
///             DD_APPLICATION_KEY: value 2
///         identity: /subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/kustoIdentity
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
/// $ pulumi import azure-native:app:AgentsConnector new-kusto-connector /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.App/agents/{agentName}/connectors/{connectorName}
/// ```
class AgentsConnector extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<AgentConnectorPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AgentsConnector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentsConnector]. {@macro pulumi_app_agents_connector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentsConnector(
    String name, {
    AgentsConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:app:AgentsConnector',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AgentConnectorPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentConnectorPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [AgentsConnector] resource.
  AgentsConnector.reference(String urn)
    : super(
        'azure-native:app:AgentsConnector',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AgentConnectorPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentConnectorPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
