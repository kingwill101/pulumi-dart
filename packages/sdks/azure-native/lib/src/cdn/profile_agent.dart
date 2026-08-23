import 'package:pulumi/pulumi.dart' as pulumi;
import 'profile_agent_args.dart';
import 'resource_reference_response.dart';
import 'system_data_response.dart';

/// An agent link (web agent association) within a CDN profile.
///
/// Uses Azure REST API version 2025-09-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ProfileAgents_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var profileAgent = new AzureNative.Cdn.ProfileAgent("profileAgent", new()
///     {
///         AgentName = "agent1",
///         CustomDomains = new[]
///         {
///             new AzureNative.Cdn.Inputs.ResourceReferenceArgs
///             {
///                 Id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/customDomains/mydomain.com",
///             },
///         },
///         ProfileName = "profile1",
///         ResourceGroupName = "RG",
///         WebAgent = new AzureNative.Cdn.Inputs.ResourceReferenceArgs
///         {
///             Id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/RG/providers/Microsoft.Cdn/webAgents/webagent1",
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
/// 	cdn "github.com/pulumi/pulumi-azure-native-sdk/cdn/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cdn.NewProfileAgent(ctx, "profileAgent", &cdn.ProfileAgentArgs{
/// 			AgentName: pulumi.String("agent1"),
/// 			CustomDomains: cdn.ResourceReferenceArray{
/// 				&cdn.ResourceReferenceArgs{
/// 					Id: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/customDomains/mydomain.com"),
/// 				},
/// 			},
/// 			ProfileName:       pulumi.String("profile1"),
/// 			ResourceGroupName: pulumi.String("RG"),
/// 			WebAgent: &cdn.ResourceReferenceArgs{
/// 				Id: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/RG/providers/Microsoft.Cdn/webAgents/webagent1"),
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
/// resource "azure-native_cdn_profileagent" "profileAgent" {
///   agent_name = "agent1"
///   custom_domains {
///     id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/customDomains/mydomain.com"
///   }
///   profile_name        = "profile1"
///   resource_group_name = "RG"
///   web_agent = {
///     id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/RG/providers/Microsoft.Cdn/webAgents/webagent1"
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
/// import com.pulumi.azurenative.cdn.ProfileAgent;
/// import com.pulumi.azurenative.cdn.ProfileAgentArgs;
/// import com.pulumi.azurenative.cdn.inputs.ResourceReferenceArgs;
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
///         var profileAgent = new ProfileAgent("profileAgent", ProfileAgentArgs.builder()
///             .agentName("agent1")
///             .customDomains(ResourceReferenceArgs.builder()
///                 .id("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/customDomains/mydomain.com")
///                 .build())
///             .profileName("profile1")
///             .resourceGroupName("RG")
///             .webAgent(ResourceReferenceArgs.builder()
///                 .id("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/RG/providers/Microsoft.Cdn/webAgents/webagent1")
///                 .build())
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
/// const profileAgent = new azure_native.cdn.ProfileAgent("profileAgent", {
///     agentName: "agent1",
///     customDomains: [{
///         id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/customDomains/mydomain.com",
///     }],
///     profileName: "profile1",
///     resourceGroupName: "RG",
///     webAgent: {
///         id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/RG/providers/Microsoft.Cdn/webAgents/webagent1",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// profile_agent = azure_native.cdn.ProfileAgent("profileAgent",
///     agent_name="agent1",
///     custom_domains=[{
///         "id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/customDomains/mydomain.com",
///     }],
///     profile_name="profile1",
///     resource_group_name="RG",
///     web_agent={
///         "id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/RG/providers/Microsoft.Cdn/webAgents/webagent1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   profileAgent:
///     type: azure-native:cdn:ProfileAgent
///     properties:
///       agentName: agent1
///       customDomains:
///         - id: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/customDomains/mydomain.com
///       profileName: profile1
///       resourceGroupName: RG
///       webAgent:
///         id: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/RG/providers/Microsoft.Cdn/webAgents/webagent1
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
/// $ pulumi import azure-native:cdn:ProfileAgent agent1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cdn/profiles/{profileName}/agents/{agentName}
/// ```
class ProfileAgent extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// List of custom domains associated with this agent link.
  late final pulumi.Output<List<Map<String, dynamic>>> customDomains;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Provisioning status of the profile agent association.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Reference to the web agent resource.
  late final pulumi.Output<ResourceReferenceResponse> webAgent;

  /// Creates a new [ProfileAgent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProfileAgent]. {@macro pulumi_cdn_profile_agent_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProfileAgent(
    String name, {
    ProfileAgentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cdn:ProfileAgent',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    customDomains = registerOutput<List<Map<String, dynamic>>>('customDomains');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    webAgent = registerOutput<ResourceReferenceResponse>('webAgent', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
