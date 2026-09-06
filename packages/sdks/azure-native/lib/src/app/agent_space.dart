import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_space_args.dart';
import 'agent_space_properties_response.dart';
import 'managed_service_identity_response.dart';
import 'system_data_response.dart';

/// SRE Agent Space resource
///
/// Uses Azure REST API version 2026-01-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### AgentSpaces_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var agentSpace = new AzureNative.App.AgentSpace("agentSpace", new()
///     {
///         AgentSpaceName = "newAgentSpace",
///         Identity = new AzureNative.App.Inputs.ManagedServiceIdentityArgs
///         {
///             Type = AzureNative.App.ManagedServiceIdentityType.SystemAssigned,
///         },
///         Location = "East US",
///         Properties = new AzureNative.App.Inputs.AgentSpacePropertiesArgs
///         {
///             Description = "New production agent space for AI assistant services",
///             MaxAgentCount = 15,
///             Policies = new AzureNative.App.Inputs.AgentSpacePoliciesArgs
///             {
///                 GenevaActionsConfiguration = new AzureNative.App.Inputs.GenevaActionsPolicyArgs
///                 {
///                     AcisEndpoint = "https://acis.eastus.monitoring.azure.com",
///                     AllowedActions = new[]
///                     {
///                         new AzureNative.App.Inputs.GenevaActionConfigArgs
///                         {
///                             ActionName = "RestartService",
///                             ActionParameters = new[]
///                             {
///                                 new AzureNative.App.Inputs.GenevaActionParameterArgs
///                                 {
///                                     Name = "serviceName",
///                                     Type = "string",
///                                 },
///                             },
///                             ApprovalRequired = true,
///                             Extension = "GenevaActions",
///                         },
///                         new AzureNative.App.Inputs.GenevaActionConfigArgs
///                         {
///                             ActionName = "GetMetrics",
///                             ActionParameters = new[]
///                             {
///                                 new AzureNative.App.Inputs.GenevaActionParameterArgs
///                                 {
///                                     Name = "metricName",
///                                     Type = "string",
///                                 },
///                                 new AzureNative.App.Inputs.GenevaActionParameterArgs
///                                 {
///                                     Name = "timeRange",
///                                     Type = "string",
///                                 },
///                             },
///                             ApprovalRequired = false,
///                             Extension = "GenevaActions",
///                         },
///                     },
///                     AuthenticationMode = AzureNative.App.GenevaActionAuthenticationMode.OAuth,
///                     CertificateSubjectName = "CN=AgentSpaceAuth",
///                     ClientId = "12345678-1234-1234-1234-123456789012",
///                     ExtensionName = "GenevaActions",
///                 },
///             },
///             ServiceTreeId = "abcdef12-3456-7890-abcd-ef1234567890",
///         },
///         ResourceGroupName = "examplerg",
///         Tags =
///         {
///             { "environment", "production" },
///             { "project", "aiAssistant" },
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
/// 		_, err := app.NewAgentSpace(ctx, "agentSpace", &app.AgentSpaceArgs{
/// 			AgentSpaceName: pulumi.String("newAgentSpace"),
/// 			Identity: &app.ManagedServiceIdentityArgs{
/// 				Type: pulumi.String(app.ManagedServiceIdentityTypeSystemAssigned),
/// 			},
/// 			Location: pulumi.String("East US"),
/// 			Properties: &app.AgentSpacePropertiesArgs{
/// 				Description:   pulumi.String("New production agent space for AI assistant services"),
/// 				MaxAgentCount: pulumi.Int(15),
/// 				Policies: &app.AgentSpacePoliciesArgs{
/// 					GenevaActionsConfiguration: &app.GenevaActionsPolicyArgs{
/// 						AcisEndpoint: pulumi.String("https://acis.eastus.monitoring.azure.com"),
/// 						AllowedActions: app.GenevaActionConfigArray{
/// 							&app.GenevaActionConfigArgs{
/// 								ActionName: pulumi.String("RestartService"),
/// 								ActionParameters: app.GenevaActionParameterArray{
/// 									&app.GenevaActionParameterArgs{
/// 										Name: pulumi.String("serviceName"),
/// 										Type: pulumi.String("string"),
/// 									},
/// 								},
/// 								ApprovalRequired: pulumi.Bool(true),
/// 								Extension:        pulumi.String("GenevaActions"),
/// 							},
/// 							&app.GenevaActionConfigArgs{
/// 								ActionName: pulumi.String("GetMetrics"),
/// 								ActionParameters: app.GenevaActionParameterArray{
/// 									&app.GenevaActionParameterArgs{
/// 										Name: pulumi.String("metricName"),
/// 										Type: pulumi.String("string"),
/// 									},
/// 									&app.GenevaActionParameterArgs{
/// 										Name: pulumi.String("timeRange"),
/// 										Type: pulumi.String("string"),
/// 									},
/// 								},
/// 								ApprovalRequired: pulumi.Bool(false),
/// 								Extension:        pulumi.String("GenevaActions"),
/// 							},
/// 						},
/// 						AuthenticationMode:     pulumi.String(app.GenevaActionAuthenticationModeOAuth),
/// 						CertificateSubjectName: pulumi.String("CN=AgentSpaceAuth"),
/// 						ClientId:               pulumi.String("12345678-1234-1234-1234-123456789012"),
/// 						ExtensionName:          pulumi.String("GenevaActions"),
/// 					},
/// 				},
/// 				ServiceTreeId: pulumi.String("abcdef12-3456-7890-abcd-ef1234567890"),
/// 			},
/// 			ResourceGroupName: pulumi.String("examplerg"),
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("production"),
/// 				"project":     pulumi.String("aiAssistant"),
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
/// resource "azure-native_app_agentspace" "agentSpace" {
///   agent_space_name = "newAgentSpace"
///   identity = {
///     type = "SystemAssigned"
///   }
///   location = "East US"
///   properties = {
///     description     = "New production agent space for AI assistant services"
///     max_agent_count = 15
///     policies = {
///       geneva_actions_configuration = {
///         acis_endpoint = "https://acis.eastus.monitoring.azure.com"
///         allowed_actions = [{
///           "actionName" = "RestartService"
///           "actionParameters" = [{
///             "name" = "serviceName"
///             "type" = "string"
///           }]
///           "approvalRequired" = true
///           "extension"        = "GenevaActions"
///           }, {
///           "actionName" = "GetMetrics"
///           "actionParameters" = [{
///             "name" = "metricName"
///             "type" = "string"
///             }, {
///             "name" = "timeRange"
///             "type" = "string"
///           }]
///           "approvalRequired" = false
///           "extension"        = "GenevaActions"
///         }]
///         authentication_mode      = "OAuth"
///         certificate_subject_name = "CN=AgentSpaceAuth"
///         client_id                = "12345678-1234-1234-1234-123456789012"
///         extension_name           = "GenevaActions"
///       }
///     }
///     service_tree_id = "abcdef12-3456-7890-abcd-ef1234567890"
///   }
///   resource_group_name = "examplerg"
///   tags = {
///     "environment" = "production"
///     "project"     = "aiAssistant"
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
/// import com.pulumi.azurenative.app.AgentSpace;
/// import com.pulumi.azurenative.app.AgentSpaceArgs;
/// import com.pulumi.azurenative.app.inputs.ManagedServiceIdentityArgs;
/// import com.pulumi.azurenative.app.inputs.AgentSpacePropertiesArgs;
/// import com.pulumi.azurenative.app.inputs.AgentSpacePoliciesArgs;
/// import com.pulumi.azurenative.app.inputs.GenevaActionsPolicyArgs;
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
///         var agentSpace = new AgentSpace("agentSpace", AgentSpaceArgs.builder()
///             .agentSpaceName("newAgentSpace")
///             .identity(ManagedServiceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .location("East US")
///             .properties(AgentSpacePropertiesArgs.builder()
///                 .description("New production agent space for AI assistant services")
///                 .maxAgentCount(15)
///                 .policies(AgentSpacePoliciesArgs.builder()
///                     .genevaActionsConfiguration(GenevaActionsPolicyArgs.builder()
///                         .acisEndpoint("https://acis.eastus.monitoring.azure.com")
///                         .allowedActions(
///                             GenevaActionConfigArgs.builder()
///                                 .actionName("RestartService")
///                                 .actionParameters(GenevaActionParameterArgs.builder()
///                                     .name("serviceName")
///                                     .type("string")
///                                     .build())
///                                 .approvalRequired(true)
///                                 .extension("GenevaActions")
///                                 .build(),
///                             GenevaActionConfigArgs.builder()
///                                 .actionName("GetMetrics")
///                                 .actionParameters(
///                                     GenevaActionParameterArgs.builder()
///                                         .name("metricName")
///                                         .type("string")
///                                         .build(),
///                                     GenevaActionParameterArgs.builder()
///                                         .name("timeRange")
///                                         .type("string")
///                                         .build())
///                                 .approvalRequired(false)
///                                 .extension("GenevaActions")
///                                 .build())
///                         .authenticationMode("OAuth")
///                         .certificateSubjectName("CN=AgentSpaceAuth")
///                         .clientId("12345678-1234-1234-1234-123456789012")
///                         .extensionName("GenevaActions")
///                         .build())
///                     .build())
///                 .serviceTreeId("abcdef12-3456-7890-abcd-ef1234567890")
///                 .build())
///             .resourceGroupName("examplerg")
///             .tags(Map.ofEntries(
///                 Map.entry("environment", "production"),
///                 Map.entry("project", "aiAssistant"),
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
/// const agentSpace = new azure_native.app.AgentSpace("agentSpace", {
///     agentSpaceName: "newAgentSpace",
///     identity: {
///         type: azure_native.app.ManagedServiceIdentityType.SystemAssigned,
///     },
///     location: "East US",
///     properties: {
///         description: "New production agent space for AI assistant services",
///         maxAgentCount: 15,
///         policies: {
///             genevaActionsConfiguration: {
///                 acisEndpoint: "https://acis.eastus.monitoring.azure.com",
///                 allowedActions: [
///                     {
///                         actionName: "RestartService",
///                         actionParameters: [{
///                             name: "serviceName",
///                             type: "string",
///                         }],
///                         approvalRequired: true,
///                         extension: "GenevaActions",
///                     },
///                     {
///                         actionName: "GetMetrics",
///                         actionParameters: [
///                             {
///                                 name: "metricName",
///                                 type: "string",
///                             },
///                             {
///                                 name: "timeRange",
///                                 type: "string",
///                             },
///                         ],
///                         approvalRequired: false,
///                         extension: "GenevaActions",
///                     },
///                 ],
///                 authenticationMode: azure_native.app.GenevaActionAuthenticationMode.OAuth,
///                 certificateSubjectName: "CN=AgentSpaceAuth",
///                 clientId: "12345678-1234-1234-1234-123456789012",
///                 extensionName: "GenevaActions",
///             },
///         },
///         serviceTreeId: "abcdef12-3456-7890-abcd-ef1234567890",
///     },
///     resourceGroupName: "examplerg",
///     tags: {
///         environment: "production",
///         project: "aiAssistant",
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
/// agent_space = azure_native.app.AgentSpace("agentSpace",
///     agent_space_name="newAgentSpace",
///     identity={
///         "type": azure_native.app.ManagedServiceIdentityType.SYSTEM_ASSIGNED,
///     },
///     location="East US",
///     properties={
///         "description": "New production agent space for AI assistant services",
///         "max_agent_count": 15,
///         "policies": {
///             "geneva_actions_configuration": {
///                 "acis_endpoint": "https://acis.eastus.monitoring.azure.com",
///                 "allowed_actions": [
///                     {
///                         "action_name": "RestartService",
///                         "action_parameters": [{
///                             "name": "serviceName",
///                             "type": "string",
///                         }],
///                         "approval_required": True,
///                         "extension": "GenevaActions",
///                     },
///                     {
///                         "action_name": "GetMetrics",
///                         "action_parameters": [
///                             {
///                                 "name": "metricName",
///                                 "type": "string",
///                             },
///                             {
///                                 "name": "timeRange",
///                                 "type": "string",
///                             },
///                         ],
///                         "approval_required": False,
///                         "extension": "GenevaActions",
///                     },
///                 ],
///                 "authentication_mode": azure_native.app.GenevaActionAuthenticationMode.O_AUTH,
///                 "certificate_subject_name": "CN=AgentSpaceAuth",
///                 "client_id": "12345678-1234-1234-1234-123456789012",
///                 "extension_name": "GenevaActions",
///             },
///         },
///         "service_tree_id": "abcdef12-3456-7890-abcd-ef1234567890",
///     },
///     resource_group_name="examplerg",
///     tags={
///         "environment": "production",
///         "project": "aiAssistant",
///         "team": "platform",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   agentSpace:
///     type: azure-native:app:AgentSpace
///     properties:
///       agentSpaceName: newAgentSpace
///       identity:
///         type: SystemAssigned
///       location: East US
///       properties:
///         description: New production agent space for AI assistant services
///         maxAgentCount: 15
///         policies:
///           genevaActionsConfiguration:
///             acisEndpoint: https://acis.eastus.monitoring.azure.com
///             allowedActions:
///               - actionName: RestartService
///                 actionParameters:
///                   - name: serviceName
///                     type: string
///                 approvalRequired: true
///                 extension: GenevaActions
///               - actionName: GetMetrics
///                 actionParameters:
///                   - name: metricName
///                     type: string
///                   - name: timeRange
///                     type: string
///                 approvalRequired: false
///                 extension: GenevaActions
///             authenticationMode: OAuth
///             certificateSubjectName: CN=AgentSpaceAuth
///             clientId: 12345678-1234-1234-1234-123456789012
///             extensionName: GenevaActions
///         serviceTreeId: abcdef12-3456-7890-abcd-ef1234567890
///       resourceGroupName: examplerg
///       tags:
///         environment: production
///         project: aiAssistant
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
/// $ pulumi import azure-native:app:AgentSpace newAgentSpace /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.App/agentSpaces/{agentSpaceName}
/// ```
class AgentSpace extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The managed service identities assigned to this resource.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<AgentSpacePropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AgentSpace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentSpace]. {@macro pulumi_app_agent_space_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentSpace(
    String name, {
    AgentSpaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:app:AgentSpace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AgentSpacePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentSpacePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [AgentSpace] resource.
  AgentSpace.reference(String urn)
    : super(
        'azure-native:app:AgentSpace',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AgentSpacePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentSpacePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
