import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_path_response.dart';
import 'resource_reference_response.dart';
import 'system_data_response.dart';
import 'web_agent_args.dart';

/// Defines a web agent resource for Azure CDN.
///
/// Uses Azure REST API version 2025-09-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update Web Agent
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var webAgent = new AzureNative.Cdn.WebAgent("webAgent", new()
///     {
///         Description = "Primary web agent for content processing",
///         Location = "WestUs",
///         Paths = new[]
///         {
///             new AzureNative.Cdn.Inputs.AgentPathArgs
///             {
///                 Path = "/chat",
///                 Type = AzureNative.Cdn.AgentPathType.Chat,
///             },
///             new AzureNative.Cdn.Inputs.AgentPathArgs
///             {
///                 Path = "/mcp",
///                 Type = AzureNative.Cdn.AgentPathType.McpServer,
///             },
///         },
///         ResourceGroupName = "RG",
///         SystemPrompt = "You are a helpful AI assistant for customer support. Please provide accurate and friendly responses.",
///         Tags =
///         {
///             { "key1", "value1" },
///         },
///         WebAgentName = "myWebAgent1",
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
/// 	cdn "github.com/pulumi/pulumi-azure-native-sdk/cdn/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cdn.NewWebAgent(ctx, "webAgent", &cdn.WebAgentArgs{
/// 			Description: pulumi.String("Primary web agent for content processing"),
/// 			Location:    pulumi.String("WestUs"),
/// 			Paths: cdn.AgentPathArray{
/// 				&cdn.AgentPathArgs{
/// 					Path: pulumi.String("/chat"),
/// 					Type: pulumi.String(cdn.AgentPathTypeChat),
/// 				},
/// 				&cdn.AgentPathArgs{
/// 					Path: pulumi.String("/mcp"),
/// 					Type: pulumi.String(cdn.AgentPathTypeMcpServer),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("RG"),
/// 			SystemPrompt:      pulumi.String("You are a helpful AI assistant for customer support. Please provide accurate and friendly responses."),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 			},
/// 			WebAgentName: pulumi.String("myWebAgent1"),
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
/// resource "azure-native_cdn_webagent" "webAgent" {
///   description = "Primary web agent for content processing"
///   location    = "WestUs"
///   paths {
///     path = "/chat"
///     type = "Chat"
///   }
///   paths {
///     path = "/mcp"
///     type = "McpServer"
///   }
///   resource_group_name = "RG"
///   system_prompt       = "You are a helpful AI assistant for customer support. Please provide accurate and friendly responses."
///   tags = {
///     "key1" = "value1"
///   }
///   web_agent_name = "myWebAgent1"
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
/// import com.pulumi.azurenative.cdn.WebAgent;
/// import com.pulumi.azurenative.cdn.WebAgentArgs;
/// import com.pulumi.azurenative.cdn.inputs.AgentPathArgs;
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
///         var webAgent = new WebAgent("webAgent", WebAgentArgs.builder()
///             .description("Primary web agent for content processing")
///             .location("WestUs")
///             .paths(
///                 AgentPathArgs.builder()
///                     .path("/chat")
///                     .type("Chat")
///                     .build(),
///                 AgentPathArgs.builder()
///                     .path("/mcp")
///                     .type("McpServer")
///                     .build())
///             .resourceGroupName("RG")
///             .systemPrompt("You are a helpful AI assistant for customer support. Please provide accurate and friendly responses.")
///             .tags(Map.of("key1", "value1"))
///             .webAgentName("myWebAgent1")
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
/// const webAgent = new azure_native.cdn.WebAgent("webAgent", {
///     description: "Primary web agent for content processing",
///     location: "WestUs",
///     paths: [
///         {
///             path: "/chat",
///             type: azure_native.cdn.AgentPathType.Chat,
///         },
///         {
///             path: "/mcp",
///             type: azure_native.cdn.AgentPathType.McpServer,
///         },
///     ],
///     resourceGroupName: "RG",
///     systemPrompt: "You are a helpful AI assistant for customer support. Please provide accurate and friendly responses.",
///     tags: {
///         key1: "value1",
///     },
///     webAgentName: "myWebAgent1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// web_agent = azure_native.cdn.WebAgent("webAgent",
///     description="Primary web agent for content processing",
///     location="WestUs",
///     paths=[
///         {
///             "path": "/chat",
///             "type": azure_native.cdn.AgentPathType.CHAT,
///         },
///         {
///             "path": "/mcp",
///             "type": azure_native.cdn.AgentPathType.MCP_SERVER,
///         },
///     ],
///     resource_group_name="RG",
///     system_prompt="You are a helpful AI assistant for customer support. Please provide accurate and friendly responses.",
///     tags={
///         "key1": "value1",
///     },
///     web_agent_name="myWebAgent1")
///
/// ```
///
/// ```yaml
/// resources:
///   webAgent:
///     type: azure-native:cdn:WebAgent
///     properties:
///       description: Primary web agent for content processing
///       location: WestUs
///       paths:
///         - path: /chat
///           type: Chat
///         - path: /mcp
///           type: McpServer
///       resourceGroupName: RG
///       systemPrompt: You are a helpful AI assistant for customer support. Please provide accurate and friendly responses.
///       tags:
///         key1: value1
///       webAgentName: myWebAgent1
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
/// $ pulumi import azure-native:cdn:WebAgent myWebAgent1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cdn/webAgents/{webAgentName}
/// ```
class WebAgent extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Optional textual description of the agent.
  late final pulumi.Output<String?> description;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// List of paths associated with the web agent.
  late final pulumi.Output<List<AgentPathResponse>?> paths;
  /// References to agent links in CDN profiles.
  late final pulumi.Output<List<ResourceReferenceResponse>> profileAgentLinks;
  /// Provisioning status of the web agent.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// System prompt for the web agent.
  late final pulumi.Output<String?> systemPrompt;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [WebAgent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAgent]. {@macro pulumi_cdn_web_agent_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAgent(
    String name, {
    WebAgentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cdn:WebAgent',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    paths = registerOutput<List<AgentPathResponse>?>('paths', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPathResponse>(guardedValue, (value) => AgentPathResponse.fromMap((value as Map).cast<String, dynamic>())); });
    profileAgentLinks = registerOutput<List<ResourceReferenceResponse>>('profileAgentLinks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResourceReferenceResponse>(guardedValue, (value) => ResourceReferenceResponse.fromMap((value as Map).cast<String, dynamic>())); });
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemPrompt = registerOutput<String?>('systemPrompt');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [WebAgent] resource.
  WebAgent.reference(String urn)
    : super(
        'azure-native:cdn:WebAgent',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    paths = registerOutput<List<AgentPathResponse>?>('paths', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPathResponse>(guardedValue, (value) => AgentPathResponse.fromMap((value as Map).cast<String, dynamic>())); });
    profileAgentLinks = registerOutput<List<ResourceReferenceResponse>>('profileAgentLinks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResourceReferenceResponse>(guardedValue, (value) => ResourceReferenceResponse.fromMap((value as Map).cast<String, dynamic>())); });
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemPrompt = registerOutput<String?>('systemPrompt');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
