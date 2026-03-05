import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_application_args.dart';
import 'agentic_application_response.dart';
import 'system_data_response.dart';

/// Agent Application resource
///
/// Uses Azure REST API version 2025-10-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update Account Agent Application.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var agentApplication = new AzureNative.CognitiveServices.AgentApplication("agentApplication", new()
///     {
///         AccountName = "my-cognitive-services-account",
///         Name = "agent-app-1",
///         ProjectName = "my-project",
///         Properties = new AzureNative.CognitiveServices.Inputs.AgenticApplicationArgs
///         {
///             Description = "Sample agent application for customer support",
///             DisplayName = "Customer Support Agent",
///             Tags =
///             {
///                 { "environment", "production" },
///                 { "team", "ai-platform" },
///             },
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
/// 		_, err := cognitiveservices.NewAgentApplication(ctx, "agentApplication", &cognitiveservices.AgentApplicationArgs{
/// 			AccountName: pulumi.String("my-cognitive-services-account"),
/// 			Name:        pulumi.String("agent-app-1"),
/// 			ProjectName: pulumi.String("my-project"),
/// 			Properties: &cognitiveservices.AgenticApplicationArgs{
/// 				Description: pulumi.String("Sample agent application for customer support"),
/// 				DisplayName: pulumi.String("Customer Support Agent"),
/// 				Tags: pulumi.StringMap{
/// 					"environment": pulumi.String("production"),
/// 					"team":        pulumi.String("ai-platform"),
/// 				},
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
/// import com.pulumi.azurenative.cognitiveservices.AgentApplication;
/// import com.pulumi.azurenative.cognitiveservices.AgentApplicationArgs;
/// import com.pulumi.azurenative.cognitiveservices.inputs.AgenticApplicationArgs;
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
///         var agentApplication = new AgentApplication("agentApplication", AgentApplicationArgs.builder()
///             .accountName("my-cognitive-services-account")
///             .name("agent-app-1")
///             .projectName("my-project")
///             .properties(AgenticApplicationArgs.builder()
///                 .description("Sample agent application for customer support")
///                 .displayName("Customer Support Agent")
///                 .tags(Map.ofEntries(
///                     Map.entry("environment", "production"),
///                     Map.entry("team", "ai-platform")
///                 ))
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
/// const agentApplication = new azure_native.cognitiveservices.AgentApplication("agentApplication", {
///     accountName: "my-cognitive-services-account",
///     name: "agent-app-1",
///     projectName: "my-project",
///     properties: {
///         description: "Sample agent application for customer support",
///         displayName: "Customer Support Agent",
///         tags: {
///             environment: "production",
///             team: "ai-platform",
///         },
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
/// agent_application = azure_native.cognitiveservices.AgentApplication("agentApplication",
///     account_name="my-cognitive-services-account",
///     name="agent-app-1",
///     project_name="my-project",
///     properties={
///         "description": "Sample agent application for customer support",
///         "display_name": "Customer Support Agent",
///         "tags": {
///             "environment": "production",
///             "team": "ai-platform",
///         },
///     },
///     resource_group_name="test-rg")
///
/// ```
///
/// ```yaml
/// resources:
///   agentApplication:
///     type: azure-native:cognitiveservices:AgentApplication
///     properties:
///       accountName: my-cognitive-services-account
///       name: agent-app-1
///       projectName: my-project
///       properties:
///         description: Sample agent application for customer support
///         displayName: Customer Support Agent
///         tags:
///           environment: production
///           team: ai-platform
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
/// $ pulumi import azure-native:cognitiveservices:AgentApplication agent-app-1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CognitiveServices/accounts/{accountName}/projects/{projectName}/applications/{name}
/// ```
class AgentApplication extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// [Required] Additional attributes of the entity.
  late final pulumi.Output<AgenticApplicationResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AgentApplication].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentApplication]. {@macro pulumi_cognitiveservices_agent_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentApplication(
    String name, {
    AgentApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:cognitiveservices:AgentApplication',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AgenticApplicationResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AgenticApplicationResponse.fromMap(
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
    type = registerOutput<String>('type');
  }
}
