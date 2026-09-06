import 'package:pulumi/pulumi.dart' as pulumi;
import 'chat_model_deployment_args.dart';
import 'chat_model_deployment_properties_response.dart';
import 'system_data_response.dart';

/// Represents a deployment that ties a specific model family to a user defined deployment name used when invoking the chat model.
///
/// Uses Azure REST API version 2026-02-01-preview.
///
/// Other available API versions: 2026-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native discovery [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ChatModelDeployments_CreateOrUpdate_MaximumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var chatModelDeployment = new AzureNative.Discovery.ChatModelDeployment("chatModelDeployment", new()
///     {
///         ChatModelDeploymentName = "d1844ae17cc93bd299",
///         Location = "uksouth",
///         Properties = new AzureNative.Discovery.Inputs.ChatModelDeploymentPropertiesArgs
///         {
///             ModelFormat = "tcttsgevrsuflt",
///             ModelName = "nvwdoluhukiachlyrdnpxusxsc",
///         },
///         ResourceGroupName = "rgdiscovery",
///         Tags =
///         {
///             { "key4822", "fpesmhjievwzxmhxszcgpztivcgw" },
///         },
///         WorkspaceName = "eb2204766409e111d9",
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
/// 	discovery "github.com/pulumi/pulumi-azure-native-sdk/discovery/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := discovery.NewChatModelDeployment(ctx, "chatModelDeployment", &discovery.ChatModelDeploymentArgs{
/// 			ChatModelDeploymentName: pulumi.String("d1844ae17cc93bd299"),
/// 			Location:                pulumi.String("uksouth"),
/// 			Properties: &discovery.ChatModelDeploymentPropertiesArgs{
/// 				ModelFormat: pulumi.String("tcttsgevrsuflt"),
/// 				ModelName:   pulumi.String("nvwdoluhukiachlyrdnpxusxsc"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgdiscovery"),
/// 			Tags: pulumi.StringMap{
/// 				"key4822": pulumi.String("fpesmhjievwzxmhxszcgpztivcgw"),
/// 			},
/// 			WorkspaceName: pulumi.String("eb2204766409e111d9"),
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
/// resource "azure-native_discovery_chatmodeldeployment" "chatModelDeployment" {
///   chat_model_deployment_name = "d1844ae17cc93bd299"
///   location                   = "uksouth"
///   properties = {
///     model_format = "tcttsgevrsuflt"
///     model_name   = "nvwdoluhukiachlyrdnpxusxsc"
///   }
///   resource_group_name = "rgdiscovery"
///   tags = {
///     "key4822" = "fpesmhjievwzxmhxszcgpztivcgw"
///   }
///   workspace_name = "eb2204766409e111d9"
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
/// import com.pulumi.azurenative.discovery.ChatModelDeployment;
/// import com.pulumi.azurenative.discovery.ChatModelDeploymentArgs;
/// import com.pulumi.azurenative.discovery.inputs.ChatModelDeploymentPropertiesArgs;
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
///         var chatModelDeployment = new ChatModelDeployment("chatModelDeployment", ChatModelDeploymentArgs.builder()
///             .chatModelDeploymentName("d1844ae17cc93bd299")
///             .location("uksouth")
///             .properties(ChatModelDeploymentPropertiesArgs.builder()
///                 .modelFormat("tcttsgevrsuflt")
///                 .modelName("nvwdoluhukiachlyrdnpxusxsc")
///                 .build())
///             .resourceGroupName("rgdiscovery")
///             .tags(Map.of("key4822", "fpesmhjievwzxmhxszcgpztivcgw"))
///             .workspaceName("eb2204766409e111d9")
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
/// const chatModelDeployment = new azure_native.discovery.ChatModelDeployment("chatModelDeployment", {
///     chatModelDeploymentName: "d1844ae17cc93bd299",
///     location: "uksouth",
///     properties: {
///         modelFormat: "tcttsgevrsuflt",
///         modelName: "nvwdoluhukiachlyrdnpxusxsc",
///     },
///     resourceGroupName: "rgdiscovery",
///     tags: {
///         key4822: "fpesmhjievwzxmhxszcgpztivcgw",
///     },
///     workspaceName: "eb2204766409e111d9",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// chat_model_deployment = azure_native.discovery.ChatModelDeployment("chatModelDeployment",
///     chat_model_deployment_name="d1844ae17cc93bd299",
///     location="uksouth",
///     properties={
///         "model_format": "tcttsgevrsuflt",
///         "model_name": "nvwdoluhukiachlyrdnpxusxsc",
///     },
///     resource_group_name="rgdiscovery",
///     tags={
///         "key4822": "fpesmhjievwzxmhxszcgpztivcgw",
///     },
///     workspace_name="eb2204766409e111d9")
///
/// ```
///
/// ```yaml
/// resources:
///   chatModelDeployment:
///     type: azure-native:discovery:ChatModelDeployment
///     properties:
///       chatModelDeploymentName: d1844ae17cc93bd299
///       location: uksouth
///       properties:
///         modelFormat: tcttsgevrsuflt
///         modelName: nvwdoluhukiachlyrdnpxusxsc
///       resourceGroupName: rgdiscovery
///       tags:
///         key4822: fpesmhjievwzxmhxszcgpztivcgw
///       workspaceName: eb2204766409e111d9
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
/// $ pulumi import azure-native:discovery:ChatModelDeployment d1844ae17cc93bd299 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Discovery/workspaces/{workspaceName}/chatModelDeployments/{chatModelDeploymentName}
/// ```
class ChatModelDeployment extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<ChatModelDeploymentPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ChatModelDeployment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ChatModelDeployment]. {@macro pulumi_discovery_chat_model_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ChatModelDeployment(
    String name, {
    ChatModelDeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:discovery:ChatModelDeployment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ChatModelDeploymentPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ChatModelDeploymentPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ChatModelDeployment] resource.
  ChatModelDeployment.reference(String urn)
    : super(
        'azure-native:discovery:ChatModelDeployment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ChatModelDeploymentPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ChatModelDeploymentPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
