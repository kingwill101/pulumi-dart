import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_deployment_args.dart';
import 'hosted_agent_deployment_response.dart';
import 'system_data_response.dart';

/// Agent Deployment resource
///
/// Uses Azure REST API version 2025-10-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update Agent Deployment.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var agentDeployment = new AzureNative.CognitiveServices.AgentDeployment("agentDeployment", new()
///     {
///         AccountName = "my-cognitive-services-account",
///         AppName = "agent-app-1",
///         DeploymentName = "deployment-1",
///         ProjectName = "my-project",
///         Properties = new AzureNative.CognitiveServices.Inputs.ManagedAgentDeploymentArgs
///         {
///             Agents = new[]
///             {
///                 new AzureNative.CognitiveServices.Inputs.VersionedAgentReferenceArgs
///                 {
///                     AgentId = "agent-123",
///                     AgentName = "support-agent",
///                     AgentVersion = "1.0.0",
///                 },
///             },
///             DeploymentType = "Managed",
///             DisplayName = "Production Deployment",
///             Protocols = new[]
///             {
///                 new AzureNative.CognitiveServices.Inputs.AgentProtocolVersionArgs
///                 {
///                     Protocol = AzureNative.CognitiveServices.AgentProtocol.Agent,
///                     Version = "1.0",
///                 },
///             },
///             State = AzureNative.CognitiveServices.AgentDeploymentState.Starting,
///         },
///         ResourceGroupName = "test-rg",
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
/// 	cognitiveservices "github.com/pulumi/pulumi-azure-native-sdk/cognitiveservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cognitiveservices.NewAgentDeployment(ctx, "agentDeployment", &cognitiveservices.AgentDeploymentArgs{
/// 			AccountName:    pulumi.String("my-cognitive-services-account"),
/// 			AppName:        pulumi.String("agent-app-1"),
/// 			DeploymentName: pulumi.String("deployment-1"),
/// 			ProjectName:    pulumi.String("my-project"),
/// 			Properties: &cognitiveservices.ManagedAgentDeploymentArgs{
/// 				Agents: cognitiveservices.VersionedAgentReferenceArray{
/// 					&cognitiveservices.VersionedAgentReferenceArgs{
/// 						AgentId:      pulumi.String("agent-123"),
/// 						AgentName:    pulumi.String("support-agent"),
/// 						AgentVersion: pulumi.String("1.0.0"),
/// 					},
/// 				},
/// 				DeploymentType: pulumi.String("Managed"),
/// 				DisplayName:    pulumi.String("Production Deployment"),
/// 				Protocols: cognitiveservices.AgentProtocolVersionArray{
/// 					&cognitiveservices.AgentProtocolVersionArgs{
/// 						Protocol: pulumi.String(cognitiveservices.AgentProtocolAgent),
/// 						Version:  pulumi.String("1.0"),
/// 					},
/// 				},
/// 				State: pulumi.String(cognitiveservices.AgentDeploymentStateStarting),
/// 			},
/// 			ResourceGroupName: pulumi.String("test-rg"),
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
/// import com.pulumi.azurenative.cognitiveservices.AgentDeployment;
/// import com.pulumi.azurenative.cognitiveservices.AgentDeploymentArgs;
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
///         var agentDeployment = new AgentDeployment("agentDeployment", AgentDeploymentArgs.builder()
///             .accountName("my-cognitive-services-account")
///             .appName("agent-app-1")
///             .deploymentName("deployment-1")
///             .projectName("my-project")
///             .properties(ManagedAgentDeploymentArgs.builder()
///                 .agents(VersionedAgentReferenceArgs.builder()
///                     .agentId("agent-123")
///                     .agentName("support-agent")
///                     .agentVersion("1.0.0")
///                     .build())
///                 .deploymentType("Managed")
///                 .displayName("Production Deployment")
///                 .protocols(AgentProtocolVersionArgs.builder()
///                     .protocol("Agent")
///                     .version("1.0")
///                     .build())
///                 .state("Starting")
///                 .build())
///             .resourceGroupName("test-rg")
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
/// const agentDeployment = new azure_native.cognitiveservices.AgentDeployment("agentDeployment", {
///     accountName: "my-cognitive-services-account",
///     appName: "agent-app-1",
///     deploymentName: "deployment-1",
///     projectName: "my-project",
///     properties: {
///         agents: [{
///             agentId: "agent-123",
///             agentName: "support-agent",
///             agentVersion: "1.0.0",
///         }],
///         deploymentType: "Managed",
///         displayName: "Production Deployment",
///         protocols: [{
///             protocol: azure_native.cognitiveservices.AgentProtocol.Agent,
///             version: "1.0",
///         }],
///         state: azure_native.cognitiveservices.AgentDeploymentState.Starting,
///     },
///     resourceGroupName: "test-rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// agent_deployment = azure_native.cognitiveservices.AgentDeployment("agentDeployment",
///     account_name="my-cognitive-services-account",
///     app_name="agent-app-1",
///     deployment_name="deployment-1",
///     project_name="my-project",
///     properties={
///         "agents": [{
///             "agent_id": "agent-123",
///             "agent_name": "support-agent",
///             "agent_version": "1.0.0",
///         }],
///         "deployment_type": "Managed",
///         "display_name": "Production Deployment",
///         "protocols": [{
///             "protocol": azure_native.cognitiveservices.AgentProtocol.AGENT,
///             "version": "1.0",
///         }],
///         "state": azure_native.cognitiveservices.AgentDeploymentState.STARTING,
///     },
///     resource_group_name="test-rg")
///
/// ```
///
/// ```yaml
/// resources:
///   agentDeployment:
///     type: azure-native:cognitiveservices:AgentDeployment
///     properties:
///       accountName: my-cognitive-services-account
///       appName: agent-app-1
///       deploymentName: deployment-1
///       projectName: my-project
///       properties:
///         agents:
///           - agentId: agent-123
///             agentName: support-agent
///             agentVersion: 1.0.0
///         deploymentType: Managed
///         displayName: Production Deployment
///         protocols:
///           - protocol: Agent
///             version: '1.0'
///         state: Starting
///       resourceGroupName: test-rg
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
/// $ pulumi import azure-native:cognitiveservices:AgentDeployment deployment-1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CognitiveServices/accounts/{accountName}/projects/{projectName}/applications/{appName}/agentDeployments/{deploymentName}
/// ```
class AgentDeployment extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// [Required] Additional attributes of the entity.
  late final pulumi.Output<HostedAgentDeploymentResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AgentDeployment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentDeployment]. {@macro pulumi_cognitiveservices_agent_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentDeployment(
    String name, {
    AgentDeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cognitiveservices:AgentDeployment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<HostedAgentDeploymentResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HostedAgentDeploymentResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
