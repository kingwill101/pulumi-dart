import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_args.dart';
import 'agent_properties_response.dart';
import 'managed_service_identity_response.dart';
import 'system_data_response.dart';

/// Site Reliability Engineer (SRE) Agent resource
///
/// Uses Azure REST API version 2026-01-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Agents_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var agent = new AzureNative.App.Agent("agent", new()
///     {
///         AgentName = "testAgent",
///         Identity = new AzureNative.App.Inputs.ManagedServiceIdentityArgs
///         {
///             Type = AzureNative.App.ManagedServiceIdentityType.SystemAssigned,
///         },
///         Location = "East US",
///         Properties = new AzureNative.App.Inputs.AgentPropertiesArgs
///         {
///             ActionConfiguration = new AzureNative.App.Inputs.ActionConfigurationArgs
///             {
///                 AccessLevel = AzureNative.App.AgentAccessLevel.High,
///                 Identity = "/subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/actionIdentity",
///                 Mode = AzureNative.App.AgentMode.Review,
///             },
///             AgentIdentity = new AzureNative.App.Inputs.AgentIdentityArgs
///             {
///                 InitialSponsorGroupId = "99999999-aaaa-bbbb-cccc-dddddddddddd",
///             },
///             AgentSpaceId = "/subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.App/agentSpaces/testAgentSpace",
///             DefaultModel = new AzureNative.App.Inputs.DefaultModelArgs
///             {
///                 Name = "gpt-5",
///                 Provider = "MicrosoftFoundry",
///             },
///             KnowledgeGraphConfiguration = new AzureNative.App.Inputs.KnowledgeGraphConfigurationArgs
///             {
///                 Identity = "/subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testIdentity",
///                 ManagedResources = new[]
///                 {
///                     "/subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/teststorage",
///                 },
///             },
///             LogConfiguration = new AzureNative.App.Inputs.LogConfigurationArgs
///             {
///                 ApplicationInsightsConfiguration = new AzureNative.App.Inputs.ApplicationInsightsConfigurationArgs
///                 {
///                     AppId = "87654321-4321-4321-4321-210987654321",
///                     ConnectionString = "InstrumentationKey=87654321-4321-4321-4321-210987654321;IngestionEndpoint=https://eastus-0.in.applicationinsights.azure.com/",
///                 },
///             },
///         },
///         ResourceGroupName = "examplerg",
///         Tags =
///         {
///             { "environment", "production" },
///             { "team", "platform" },
///         },
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
/// 		_, err := app.NewAgent(ctx, "agent", &app.AgentArgs{
/// 			AgentName: pulumi.String("testAgent"),
/// 			Identity: &app.ManagedServiceIdentityArgs{
/// 				Type: pulumi.String(app.ManagedServiceIdentityTypeSystemAssigned),
/// 			},
/// 			Location: pulumi.String("East US"),
/// 			Properties: &app.AgentPropertiesArgs{
/// 				ActionConfiguration: &app.ActionConfigurationArgs{
/// 					AccessLevel: pulumi.String(app.AgentAccessLevelHigh),
/// 					Identity:    pulumi.String("/subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/actionIdentity"),
/// 					Mode:        pulumi.String(app.AgentModeReview),
/// 				},
/// 				AgentIdentity: &app.AgentIdentityArgs{
/// 					InitialSponsorGroupId: pulumi.String("99999999-aaaa-bbbb-cccc-dddddddddddd"),
/// 				},
/// 				AgentSpaceId: pulumi.String("/subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.App/agentSpaces/testAgentSpace"),
/// 				DefaultModel: &app.DefaultModelArgs{
/// 					Name:     pulumi.String("gpt-5"),
/// 					Provider: pulumi.String("MicrosoftFoundry"),
/// 				},
/// 				KnowledgeGraphConfiguration: &app.KnowledgeGraphConfigurationArgs{
/// 					Identity: pulumi.String("/subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testIdentity"),
/// 					ManagedResources: pulumi.StringArray{
/// 						pulumi.String("/subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/teststorage"),
/// 					},
/// 				},
/// 				LogConfiguration: &app.LogConfigurationArgs{
/// 					ApplicationInsightsConfiguration: &app.ApplicationInsightsConfigurationArgs{
/// 						AppId:            pulumi.String("87654321-4321-4321-4321-210987654321"),
/// 						ConnectionString: pulumi.String("InstrumentationKey=87654321-4321-4321-4321-210987654321;IngestionEndpoint=https://eastus-0.in.applicationinsights.azure.com/"),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("examplerg"),
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("production"),
/// 				"team":        pulumi.String("platform"),
/// 			},
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
/// resource "azure-native_app_agent" "agent" {
///   agent_name = "testAgent"
///   identity = {
///     type = "SystemAssigned"
///   }
///   location = "East US"
///   properties = {
///     action_configuration = {
///       access_level = "High"
///       identity     = "/subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/actionIdentity"
///       mode         = "Review"
///     }
///     agent_identity = {
///       initial_sponsor_group_id = "99999999-aaaa-bbbb-cccc-dddddddddddd"
///     }
///     agent_space_id = "/subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.App/agentSpaces/testAgentSpace"
///     default_model = {
///       name     = "gpt-5"
///       provider = "MicrosoftFoundry"
///     }
///     knowledge_graph_configuration = {
///       identity          = "/subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testIdentity"
///       managed_resources = ["/subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/teststorage"]
///     }
///     log_configuration = {
///       application_insights_configuration = {
///         app_id            = "87654321-4321-4321-4321-210987654321"
///         connection_string = "InstrumentationKey=87654321-4321-4321-4321-210987654321;IngestionEndpoint=https://eastus-0.in.applicationinsights.azure.com/"
///       }
///     }
///   }
///   resource_group_name = "examplerg"
///   tags = {
///     "environment" = "production"
///     "team"        = "platform"
///   }
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
/// import com.pulumi.azurenative.app.Agent;
/// import com.pulumi.azurenative.app.AgentArgs;
/// import com.pulumi.azurenative.app.inputs.ManagedServiceIdentityArgs;
/// import com.pulumi.azurenative.app.inputs.AgentPropertiesArgs;
/// import com.pulumi.azurenative.app.inputs.ActionConfigurationArgs;
/// import com.pulumi.azurenative.app.inputs.AgentIdentityArgs;
/// import com.pulumi.azurenative.app.inputs.DefaultModelArgs;
/// import com.pulumi.azurenative.app.inputs.KnowledgeGraphConfigurationArgs;
/// import com.pulumi.azurenative.app.inputs.LogConfigurationArgs;
/// import com.pulumi.azurenative.app.inputs.ApplicationInsightsConfigurationArgs;
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
///         var agent = new Agent("agent", AgentArgs.builder()
///             .agentName("testAgent")
///             .identity(ManagedServiceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .location("East US")
///             .properties(AgentPropertiesArgs.builder()
///                 .actionConfiguration(ActionConfigurationArgs.builder()
///                     .accessLevel("High")
///                     .identity("/subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/actionIdentity")
///                     .mode("Review")
///                     .build())
///                 .agentIdentity(AgentIdentityArgs.builder()
///                     .initialSponsorGroupId("99999999-aaaa-bbbb-cccc-dddddddddddd")
///                     .build())
///                 .agentSpaceId("/subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.App/agentSpaces/testAgentSpace")
///                 .defaultModel(DefaultModelArgs.builder()
///                     .name("gpt-5")
///                     .provider("MicrosoftFoundry")
///                     .build())
///                 .knowledgeGraphConfiguration(KnowledgeGraphConfigurationArgs.builder()
///                     .identity("/subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testIdentity")
///                     .managedResources("/subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/teststorage")
///                     .build())
///                 .logConfiguration(LogConfigurationArgs.builder()
///                     .applicationInsightsConfiguration(ApplicationInsightsConfigurationArgs.builder()
///                         .appId("87654321-4321-4321-4321-210987654321")
///                         .connectionString("InstrumentationKey=87654321-4321-4321-4321-210987654321;IngestionEndpoint=https://eastus-0.in.applicationinsights.azure.com/")
///                         .build())
///                     .build())
///                 .build())
///             .resourceGroupName("examplerg")
///             .tags(Map.ofEntries(
///                 Map.entry("environment", "production"),
///                 Map.entry("team", "platform")
///             ))
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
/// const agent = new azure_native.app.Agent("agent", {
///     agentName: "testAgent",
///     identity: {
///         type: azure_native.app.ManagedServiceIdentityType.SystemAssigned,
///     },
///     location: "East US",
///     properties: {
///         actionConfiguration: {
///             accessLevel: azure_native.app.AgentAccessLevel.High,
///             identity: "/subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/actionIdentity",
///             mode: azure_native.app.AgentMode.Review,
///         },
///         agentIdentity: {
///             initialSponsorGroupId: "99999999-aaaa-bbbb-cccc-dddddddddddd",
///         },
///         agentSpaceId: "/subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.App/agentSpaces/testAgentSpace",
///         defaultModel: {
///             name: "gpt-5",
///             provider: "MicrosoftFoundry",
///         },
///         knowledgeGraphConfiguration: {
///             identity: "/subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testIdentity",
///             managedResources: ["/subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/teststorage"],
///         },
///         logConfiguration: {
///             applicationInsightsConfiguration: {
///                 appId: "87654321-4321-4321-4321-210987654321",
///                 connectionString: "InstrumentationKey=87654321-4321-4321-4321-210987654321;IngestionEndpoint=https://eastus-0.in.applicationinsights.azure.com/",
///             },
///         },
///     },
///     resourceGroupName: "examplerg",
///     tags: {
///         environment: "production",
///         team: "platform",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// agent = azure_native.app.Agent("agent",
///     agent_name="testAgent",
///     identity={
///         "type": azure_native.app.ManagedServiceIdentityType.SYSTEM_ASSIGNED,
///     },
///     location="East US",
///     properties={
///         "action_configuration": {
///             "access_level": azure_native.app.AgentAccessLevel.HIGH,
///             "identity": "/subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/actionIdentity",
///             "mode": azure_native.app.AgentMode.REVIEW,
///         },
///         "agent_identity": {
///             "initial_sponsor_group_id": "99999999-aaaa-bbbb-cccc-dddddddddddd",
///         },
///         "agent_space_id": "/subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.App/agentSpaces/testAgentSpace",
///         "default_model": {
///             "name": "gpt-5",
///             "provider": "MicrosoftFoundry",
///         },
///         "knowledge_graph_configuration": {
///             "identity": "/subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testIdentity",
///             "managed_resources": ["/subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/teststorage"],
///         },
///         "log_configuration": {
///             "application_insights_configuration": {
///                 "app_id": "87654321-4321-4321-4321-210987654321",
///                 "connection_string": "InstrumentationKey=87654321-4321-4321-4321-210987654321;IngestionEndpoint=https://eastus-0.in.applicationinsights.azure.com/",
///             },
///         },
///     },
///     resource_group_name="examplerg",
///     tags={
///         "environment": "production",
///         "team": "platform",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   agent:
///     type: azure-native:app:Agent
///     properties:
///       agentName: testAgent
///       identity:
///         type: SystemAssigned
///       location: East US
///       properties:
///         actionConfiguration:
///           accessLevel: High
///           identity: /subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/actionIdentity
///           mode: Review
///         agentIdentity:
///           initialSponsorGroupId: 99999999-aaaa-bbbb-cccc-dddddddddddd
///         agentSpaceId: /subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.App/agentSpaces/testAgentSpace
///         defaultModel:
///           name: gpt-5
///           provider: MicrosoftFoundry
///         knowledgeGraphConfiguration:
///           identity: /subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testIdentity
///           managedResources:
///             - /subscriptions/8efdecc5-919e-44eb-b179-915dca89ebf9/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/teststorage
///         logConfiguration:
///           applicationInsightsConfiguration:
///             appId: 87654321-4321-4321-4321-210987654321
///             connectionString: InstrumentationKey=87654321-4321-4321-4321-210987654321;IngestionEndpoint=https://eastus-0.in.applicationinsights.azure.com/
///       resourceGroupName: examplerg
///       tags:
///         environment: production
///         team: platform
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
/// $ pulumi import azure-native:app:Agent testAgent /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.App/agents/{agentName}
/// ```
class Agent extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The managed service identities assigned to this resource.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<AgentPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Agent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Agent]. {@macro pulumi_app_agent_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Agent(
    String name, {
    AgentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:app:Agent',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AgentPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
