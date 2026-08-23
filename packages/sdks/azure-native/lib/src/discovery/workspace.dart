import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'workspace_args.dart';
import 'workspace_properties_response.dart';

/// Workspace tracked resource
///
/// Uses Azure REST API version 2026-02-01-preview.
///
/// Other available API versions: 2026-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native discovery [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Workspaces_CreateOrUpdate_MaximumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workspace = new AzureNative.Discovery.Workspace("workspace", new()
///     {
///         Location = "uksouth",
///         Properties = new AzureNative.Discovery.Inputs.WorkspacePropertiesArgs
///         {
///             AgentSubnetId = "/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/providers/Microsoft.Network/virtualNetworks/virtualnetwork1/subnets/agentSubnet1",
///             CustomerManagedKeys = AzureNative.Discovery.CustomerManagedKeys.Enabled,
///             KeyVaultProperties = new AzureNative.Discovery.Inputs.KeyVaultPropertiesArgs
///             {
///                 KeyName = "yfplarzdfwsut",
///                 KeyVaultUri = "https://microsoft.com/a",
///                 KeyVersion = "qlsjcf",
///             },
///             LogAnalyticsClusterId = "/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/providers/Microsoft.OperationalInsights/clusters/cluster1",
///             PrivateEndpointSubnetId = "/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/providers/Microsoft.Network/virtualNetworks/virtualnetwork1/subnets/privateEndpointSubnet1",
///             PublicNetworkAccess = AzureNative.Discovery.PublicNetworkAccess.Enabled,
///             SupercomputerIds = new[]
///             {
///                 "/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/resourceGroups/rgdiscovery/providers/Microsoft.Discovery/supercomputers/supercomputer12",
///             },
///             WorkspaceIdentity = new AzureNative.Discovery.Inputs.IdentityArgs
///             {
///                 Id = "/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/providers/Microsoft.ManagedIdentity/userAssignedIdentities/managedid1",
///             },
///             WorkspaceSubnetId = "/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/providers/Microsoft.Network/virtualNetworks/virtualnetwork1/subnets/workspaceSubnet1",
///         },
///         ResourceGroupName = "rgdiscovery",
///         Tags =
///         {
///             { "key5364", "xiwdefebkbfffgqlzmqaeqsqeq" },
///         },
///         WorkspaceName = "b8d58cd85996a6dea3",
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
/// 		_, err := discovery.NewWorkspace(ctx, "workspace", &discovery.WorkspaceArgs{
/// 			Location: pulumi.String("uksouth"),
/// 			Properties: &discovery.WorkspacePropertiesArgs{
/// 				AgentSubnetId:       pulumi.String("/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/providers/Microsoft.Network/virtualNetworks/virtualnetwork1/subnets/agentSubnet1"),
/// 				CustomerManagedKeys: pulumi.String(discovery.CustomerManagedKeysEnabled),
/// 				KeyVaultProperties: &discovery.KeyVaultPropertiesArgs{
/// 					KeyName:     pulumi.String("yfplarzdfwsut"),
/// 					KeyVaultUri: pulumi.String("https://microsoft.com/a"),
/// 					KeyVersion:  pulumi.String("qlsjcf"),
/// 				},
/// 				LogAnalyticsClusterId:   pulumi.String("/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/providers/Microsoft.OperationalInsights/clusters/cluster1"),
/// 				PrivateEndpointSubnetId: pulumi.String("/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/providers/Microsoft.Network/virtualNetworks/virtualnetwork1/subnets/privateEndpointSubnet1"),
/// 				PublicNetworkAccess:     pulumi.String(discovery.PublicNetworkAccessEnabled),
/// 				SupercomputerIds: pulumi.StringArray{
/// 					pulumi.String("/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/resourceGroups/rgdiscovery/providers/Microsoft.Discovery/supercomputers/supercomputer12"),
/// 				},
/// 				WorkspaceIdentity: &discovery.IdentityArgs{
/// 					Id: pulumi.String("/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/providers/Microsoft.ManagedIdentity/userAssignedIdentities/managedid1"),
/// 				},
/// 				WorkspaceSubnetId: pulumi.String("/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/providers/Microsoft.Network/virtualNetworks/virtualnetwork1/subnets/workspaceSubnet1"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgdiscovery"),
/// 			Tags: pulumi.StringMap{
/// 				"key5364": pulumi.String("xiwdefebkbfffgqlzmqaeqsqeq"),
/// 			},
/// 			WorkspaceName: pulumi.String("b8d58cd85996a6dea3"),
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
/// resource "azure-native_discovery_workspace" "workspace" {
///   location = "uksouth"
///   properties = {
///     agent_subnet_id       = "/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/providers/Microsoft.Network/virtualNetworks/virtualnetwork1/subnets/agentSubnet1"
///     customer_managed_keys = "Enabled"
///     key_vault_properties = {
///       key_name      = "yfplarzdfwsut"
///       key_vault_uri = "https://microsoft.com/a"
///       key_version   = "qlsjcf"
///     }
///     log_analytics_cluster_id   = "/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/providers/Microsoft.OperationalInsights/clusters/cluster1"
///     private_endpoint_subnet_id = "/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/providers/Microsoft.Network/virtualNetworks/virtualnetwork1/subnets/privateEndpointSubnet1"
///     public_network_access      = "Enabled"
///     supercomputer_ids          = ["/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/resourceGroups/rgdiscovery/providers/Microsoft.Discovery/supercomputers/supercomputer12"]
///     workspace_identity = {
///       id = "/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/providers/Microsoft.ManagedIdentity/userAssignedIdentities/managedid1"
///     }
///     workspace_subnet_id = "/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/providers/Microsoft.Network/virtualNetworks/virtualnetwork1/subnets/workspaceSubnet1"
///   }
///   resource_group_name = "rgdiscovery"
///   tags = {
///     "key5364" = "xiwdefebkbfffgqlzmqaeqsqeq"
///   }
///   workspace_name = "b8d58cd85996a6dea3"
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
/// import com.pulumi.azurenative.discovery.Workspace;
/// import com.pulumi.azurenative.discovery.WorkspaceArgs;
/// import com.pulumi.azurenative.discovery.inputs.WorkspacePropertiesArgs;
/// import com.pulumi.azurenative.discovery.inputs.KeyVaultPropertiesArgs;
/// import com.pulumi.azurenative.discovery.inputs.IdentityArgs;
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
///         var workspace = new Workspace("workspace", WorkspaceArgs.builder()
///             .location("uksouth")
///             .properties(WorkspacePropertiesArgs.builder()
///                 .agentSubnetId("/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/providers/Microsoft.Network/virtualNetworks/virtualnetwork1/subnets/agentSubnet1")
///                 .customerManagedKeys("Enabled")
///                 .keyVaultProperties(KeyVaultPropertiesArgs.builder()
///                     .keyName("yfplarzdfwsut")
///                     .keyVaultUri("https://microsoft.com/a")
///                     .keyVersion("qlsjcf")
///                     .build())
///                 .logAnalyticsClusterId("/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/providers/Microsoft.OperationalInsights/clusters/cluster1")
///                 .privateEndpointSubnetId("/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/providers/Microsoft.Network/virtualNetworks/virtualnetwork1/subnets/privateEndpointSubnet1")
///                 .publicNetworkAccess("Enabled")
///                 .supercomputerIds("/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/resourceGroups/rgdiscovery/providers/Microsoft.Discovery/supercomputers/supercomputer12")
///                 .workspaceIdentity(IdentityArgs.builder()
///                     .id("/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/providers/Microsoft.ManagedIdentity/userAssignedIdentities/managedid1")
///                     .build())
///                 .workspaceSubnetId("/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/providers/Microsoft.Network/virtualNetworks/virtualnetwork1/subnets/workspaceSubnet1")
///                 .build())
///             .resourceGroupName("rgdiscovery")
///             .tags(Map.of("key5364", "xiwdefebkbfffgqlzmqaeqsqeq"))
///             .workspaceName("b8d58cd85996a6dea3")
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
/// const workspace = new azure_native.discovery.Workspace("workspace", {
///     location: "uksouth",
///     properties: {
///         agentSubnetId: "/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/providers/Microsoft.Network/virtualNetworks/virtualnetwork1/subnets/agentSubnet1",
///         customerManagedKeys: azure_native.discovery.CustomerManagedKeys.Enabled,
///         keyVaultProperties: {
///             keyName: "yfplarzdfwsut",
///             keyVaultUri: "https://microsoft.com/a",
///             keyVersion: "qlsjcf",
///         },
///         logAnalyticsClusterId: "/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/providers/Microsoft.OperationalInsights/clusters/cluster1",
///         privateEndpointSubnetId: "/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/providers/Microsoft.Network/virtualNetworks/virtualnetwork1/subnets/privateEndpointSubnet1",
///         publicNetworkAccess: azure_native.discovery.PublicNetworkAccess.Enabled,
///         supercomputerIds: ["/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/resourceGroups/rgdiscovery/providers/Microsoft.Discovery/supercomputers/supercomputer12"],
///         workspaceIdentity: {
///             id: "/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/providers/Microsoft.ManagedIdentity/userAssignedIdentities/managedid1",
///         },
///         workspaceSubnetId: "/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/providers/Microsoft.Network/virtualNetworks/virtualnetwork1/subnets/workspaceSubnet1",
///     },
///     resourceGroupName: "rgdiscovery",
///     tags: {
///         key5364: "xiwdefebkbfffgqlzmqaeqsqeq",
///     },
///     workspaceName: "b8d58cd85996a6dea3",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workspace = azure_native.discovery.Workspace("workspace",
///     location="uksouth",
///     properties={
///         "agent_subnet_id": "/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/providers/Microsoft.Network/virtualNetworks/virtualnetwork1/subnets/agentSubnet1",
///         "customer_managed_keys": azure_native.discovery.CustomerManagedKeys.ENABLED,
///         "key_vault_properties": {
///             "key_name": "yfplarzdfwsut",
///             "key_vault_uri": "https://microsoft.com/a",
///             "key_version": "qlsjcf",
///         },
///         "log_analytics_cluster_id": "/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/providers/Microsoft.OperationalInsights/clusters/cluster1",
///         "private_endpoint_subnet_id": "/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/providers/Microsoft.Network/virtualNetworks/virtualnetwork1/subnets/privateEndpointSubnet1",
///         "public_network_access": azure_native.discovery.PublicNetworkAccess.ENABLED,
///         "supercomputer_ids": ["/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/resourceGroups/rgdiscovery/providers/Microsoft.Discovery/supercomputers/supercomputer12"],
///         "workspace_identity": {
///             "id": "/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/providers/Microsoft.ManagedIdentity/userAssignedIdentities/managedid1",
///         },
///         "workspace_subnet_id": "/subscriptions/31735C59-6307-4464-8B80-3675223F23D2/providers/Microsoft.Network/virtualNetworks/virtualnetwork1/subnets/workspaceSubnet1",
///     },
///     resource_group_name="rgdiscovery",
///     tags={
///         "key5364": "xiwdefebkbfffgqlzmqaeqsqeq",
///     },
///     workspace_name="b8d58cd85996a6dea3")
///
/// ```
///
/// ```yaml
/// resources:
///   workspace:
///     type: azure-native:discovery:Workspace
///     properties:
///       location: uksouth
///       properties:
///         agentSubnetId: /subscriptions/31735C59-6307-4464-8B80-3675223F23D2/providers/Microsoft.Network/virtualNetworks/virtualnetwork1/subnets/agentSubnet1
///         customerManagedKeys: Enabled
///         keyVaultProperties:
///           keyName: yfplarzdfwsut
///           keyVaultUri: https://microsoft.com/a
///           keyVersion: qlsjcf
///         logAnalyticsClusterId: /subscriptions/31735C59-6307-4464-8B80-3675223F23D2/providers/Microsoft.OperationalInsights/clusters/cluster1
///         privateEndpointSubnetId: /subscriptions/31735C59-6307-4464-8B80-3675223F23D2/providers/Microsoft.Network/virtualNetworks/virtualnetwork1/subnets/privateEndpointSubnet1
///         publicNetworkAccess: Enabled
///         supercomputerIds:
///           - /subscriptions/31735C59-6307-4464-8B80-3675223F23D2/resourceGroups/rgdiscovery/providers/Microsoft.Discovery/supercomputers/supercomputer12
///         workspaceIdentity:
///           id: /subscriptions/31735C59-6307-4464-8B80-3675223F23D2/providers/Microsoft.ManagedIdentity/userAssignedIdentities/managedid1
///         workspaceSubnetId: /subscriptions/31735C59-6307-4464-8B80-3675223F23D2/providers/Microsoft.Network/virtualNetworks/virtualnetwork1/subnets/workspaceSubnet1
///       resourceGroupName: rgdiscovery
///       tags:
///         key5364: xiwdefebkbfffgqlzmqaeqsqeq
///       workspaceName: b8d58cd85996a6dea3
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
/// $ pulumi import azure-native:discovery:Workspace b8d58cd85996a6dea3 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Discovery/workspaces/{workspaceName}
/// ```
class Workspace extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<WorkspacePropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Workspace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Workspace]. {@macro pulumi_discovery_workspace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Workspace(
    String name, {
    WorkspaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:discovery:Workspace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<WorkspacePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkspacePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
