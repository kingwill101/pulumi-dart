import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_link_member_args.dart';
import 'app_link_member_properties_response.dart';
import 'system_data_response.dart';

/// AppLink Member resource
///
/// Uses Azure REST API version 2025-08-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### AppLinkMembers_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var appLinkMember = new AzureNative.AppLink.AppLinkMember("appLinkMember", new()
///     {
///         AppLinkMemberName = "member-01",
///         AppLinkName = "applink-test-01",
///         Location = "westus2",
///         Properties = new AzureNative.AppLink.Inputs.AppLinkMemberPropertiesArgs
///         {
///             ClusterType = AzureNative.AppLink.ClusterType.AKS,
///             ConnectivityProfile = new AzureNative.AppLink.Inputs.ConnectivityProfileArgs
///             {
///                 EastWestGateway = new AzureNative.AppLink.Inputs.EastWestGatewayProfileArgs
///                 {
///                     Visibility = AzureNative.AppLink.EastWestGatewayVisibility.Internal,
///                 },
///                 PrivateConnect = new AzureNative.AppLink.Inputs.PrivateConnectProfileArgs
///                 {
///                     SubnetResourceId = "/subscriptions/bc7e0da9-5e4c-4a91-9252-9658837006cf/resourceGroups/applink-vnet-rg/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/subnet1",
///                 },
///             },
///             Metadata = new AzureNative.AppLink.Inputs.MetadataArgs
///             {
///                 ResourceId = "/subscriptions/bc7e0da9-5e4c-4a91-9252-9658837006cf/resourcegroups/applink-rg/providers/Microsoft.ContainerService/managedClusters/applink-member1",
///             },
///             UpgradeProfile = new AzureNative.AppLink.Inputs.UpgradeProfileArgs
///             {
///                 FullyManagedUpgradeProfile = new AzureNative.AppLink.Inputs.FullyManagedUpgradeProfileArgs
///                 {
///                     ReleaseChannel = AzureNative.AppLink.UpgradeReleaseChannel.Stable,
///                 },
///                 Mode = AzureNative.AppLink.UpgradeMode.FullyManaged,
///             },
///         },
///         ResourceGroupName = "test_rg",
///         Tags =
///         {
///             { "key2913", "test_tag" },
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
/// 	applink "github.com/pulumi/pulumi-azure-native-sdk/applink/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := applink.NewAppLinkMember(ctx, "appLinkMember", &applink.AppLinkMemberArgs{
/// 			AppLinkMemberName: pulumi.String("member-01"),
/// 			AppLinkName:       pulumi.String("applink-test-01"),
/// 			Location:          pulumi.String("westus2"),
/// 			Properties: &applink.AppLinkMemberPropertiesArgs{
/// 				ClusterType: pulumi.String(applink.ClusterTypeAKS),
/// 				ConnectivityProfile: &applink.ConnectivityProfileArgs{
/// 					EastWestGateway: &applink.EastWestGatewayProfileArgs{
/// 						Visibility: pulumi.String(applink.EastWestGatewayVisibilityInternal),
/// 					},
/// 					PrivateConnect: &applink.PrivateConnectProfileArgs{
/// 						SubnetResourceId: pulumi.String("/subscriptions/bc7e0da9-5e4c-4a91-9252-9658837006cf/resourceGroups/applink-vnet-rg/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/subnet1"),
/// 					},
/// 				},
/// 				Metadata: &applink.MetadataArgs{
/// 					ResourceId: pulumi.String("/subscriptions/bc7e0da9-5e4c-4a91-9252-9658837006cf/resourcegroups/applink-rg/providers/Microsoft.ContainerService/managedClusters/applink-member1"),
/// 				},
/// 				UpgradeProfile: &applink.UpgradeProfileArgs{
/// 					FullyManagedUpgradeProfile: &applink.FullyManagedUpgradeProfileArgs{
/// 						ReleaseChannel: pulumi.String(applink.UpgradeReleaseChannelStable),
/// 					},
/// 					Mode: pulumi.String(applink.UpgradeModeFullyManaged),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("test_rg"),
/// 			Tags: pulumi.StringMap{
/// 				"key2913": pulumi.String("test_tag"),
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
/// resource "azure-native_applink_applinkmember" "appLinkMember" {
///   app_link_member_name = "member-01"
///   app_link_name        = "applink-test-01"
///   location             = "westus2"
///   properties = {
///     cluster_type = "AKS"
///     connectivity_profile = {
///       east_west_gateway = {
///         visibility = "Internal"
///       }
///       private_connect = {
///         subnet_resource_id = "/subscriptions/bc7e0da9-5e4c-4a91-9252-9658837006cf/resourceGroups/applink-vnet-rg/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/subnet1"
///       }
///     }
///     metadata = {
///       resource_id = "/subscriptions/bc7e0da9-5e4c-4a91-9252-9658837006cf/resourcegroups/applink-rg/providers/Microsoft.ContainerService/managedClusters/applink-member1"
///     }
///     upgrade_profile = {
///       fully_managed_upgrade_profile = {
///         release_channel = "Stable"
///       }
///       mode = "FullyManaged"
///     }
///   }
///   resource_group_name = "test_rg"
///   tags = {
///     "key2913" = "test_tag"
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
/// import com.pulumi.azurenative.applink.AppLinkMember;
/// import com.pulumi.azurenative.applink.AppLinkMemberArgs;
/// import com.pulumi.azurenative.applink.inputs.AppLinkMemberPropertiesArgs;
/// import com.pulumi.azurenative.applink.inputs.ConnectivityProfileArgs;
/// import com.pulumi.azurenative.applink.inputs.EastWestGatewayProfileArgs;
/// import com.pulumi.azurenative.applink.inputs.PrivateConnectProfileArgs;
/// import com.pulumi.azurenative.applink.inputs.MetadataArgs;
/// import com.pulumi.azurenative.applink.inputs.UpgradeProfileArgs;
/// import com.pulumi.azurenative.applink.inputs.FullyManagedUpgradeProfileArgs;
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
///         var appLinkMember = new AppLinkMember("appLinkMember", AppLinkMemberArgs.builder()
///             .appLinkMemberName("member-01")
///             .appLinkName("applink-test-01")
///             .location("westus2")
///             .properties(AppLinkMemberPropertiesArgs.builder()
///                 .clusterType("AKS")
///                 .connectivityProfile(ConnectivityProfileArgs.builder()
///                     .eastWestGateway(EastWestGatewayProfileArgs.builder()
///                         .visibility("Internal")
///                         .build())
///                     .privateConnect(PrivateConnectProfileArgs.builder()
///                         .subnetResourceId("/subscriptions/bc7e0da9-5e4c-4a91-9252-9658837006cf/resourceGroups/applink-vnet-rg/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/subnet1")
///                         .build())
///                     .build())
///                 .metadata(MetadataArgs.builder()
///                     .resourceId("/subscriptions/bc7e0da9-5e4c-4a91-9252-9658837006cf/resourcegroups/applink-rg/providers/Microsoft.ContainerService/managedClusters/applink-member1")
///                     .build())
///                 .upgradeProfile(UpgradeProfileArgs.builder()
///                     .fullyManagedUpgradeProfile(FullyManagedUpgradeProfileArgs.builder()
///                         .releaseChannel("Stable")
///                         .build())
///                     .mode("FullyManaged")
///                     .build())
///                 .build())
///             .resourceGroupName("test_rg")
///             .tags(Map.of("key2913", "test_tag"))
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
/// const appLinkMember = new azure_native.applink.AppLinkMember("appLinkMember", {
///     appLinkMemberName: "member-01",
///     appLinkName: "applink-test-01",
///     location: "westus2",
///     properties: {
///         clusterType: azure_native.applink.ClusterType.AKS,
///         connectivityProfile: {
///             eastWestGateway: {
///                 visibility: azure_native.applink.EastWestGatewayVisibility.Internal,
///             },
///             privateConnect: {
///                 subnetResourceId: "/subscriptions/bc7e0da9-5e4c-4a91-9252-9658837006cf/resourceGroups/applink-vnet-rg/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/subnet1",
///             },
///         },
///         metadata: {
///             resourceId: "/subscriptions/bc7e0da9-5e4c-4a91-9252-9658837006cf/resourcegroups/applink-rg/providers/Microsoft.ContainerService/managedClusters/applink-member1",
///         },
///         upgradeProfile: {
///             fullyManagedUpgradeProfile: {
///                 releaseChannel: azure_native.applink.UpgradeReleaseChannel.Stable,
///             },
///             mode: azure_native.applink.UpgradeMode.FullyManaged,
///         },
///     },
///     resourceGroupName: "test_rg",
///     tags: {
///         key2913: "test_tag",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// app_link_member = azure_native.applink.AppLinkMember("appLinkMember",
///     app_link_member_name="member-01",
///     app_link_name="applink-test-01",
///     location="westus2",
///     properties={
///         "cluster_type": azure_native.applink.ClusterType.AKS,
///         "connectivity_profile": {
///             "east_west_gateway": {
///                 "visibility": azure_native.applink.EastWestGatewayVisibility.INTERNAL,
///             },
///             "private_connect": {
///                 "subnet_resource_id": "/subscriptions/bc7e0da9-5e4c-4a91-9252-9658837006cf/resourceGroups/applink-vnet-rg/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/subnet1",
///             },
///         },
///         "metadata": {
///             "resource_id": "/subscriptions/bc7e0da9-5e4c-4a91-9252-9658837006cf/resourcegroups/applink-rg/providers/Microsoft.ContainerService/managedClusters/applink-member1",
///         },
///         "upgrade_profile": {
///             "fully_managed_upgrade_profile": {
///                 "release_channel": azure_native.applink.UpgradeReleaseChannel.STABLE,
///             },
///             "mode": azure_native.applink.UpgradeMode.FULLY_MANAGED,
///         },
///     },
///     resource_group_name="test_rg",
///     tags={
///         "key2913": "test_tag",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   appLinkMember:
///     type: azure-native:applink:AppLinkMember
///     properties:
///       appLinkMemberName: member-01
///       appLinkName: applink-test-01
///       location: westus2
///       properties:
///         clusterType: AKS
///         connectivityProfile:
///           eastWestGateway:
///             visibility: Internal
///           privateConnect:
///             subnetResourceId: /subscriptions/bc7e0da9-5e4c-4a91-9252-9658837006cf/resourceGroups/applink-vnet-rg/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/subnet1
///         metadata:
///           resourceId: /subscriptions/bc7e0da9-5e4c-4a91-9252-9658837006cf/resourcegroups/applink-rg/providers/Microsoft.ContainerService/managedClusters/applink-member1
///         upgradeProfile:
///           fullyManagedUpgradeProfile:
///             releaseChannel: Stable
///           mode: FullyManaged
///       resourceGroupName: test_rg
///       tags:
///         key2913: test_tag
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
/// $ pulumi import azure-native:applink:AppLinkMember member-01 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AppLink/appLinks/{appLinkName}/appLinkMembers/{appLinkMemberName}
/// ```
class AppLinkMember extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<AppLinkMemberPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AppLinkMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppLinkMember]. {@macro pulumi_applink_app_link_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppLinkMember(
    String name, {
    AppLinkMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:applink:AppLinkMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AppLinkMemberPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppLinkMemberPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [AppLinkMember] resource.
  AppLinkMember.reference(String urn)
    : super(
        'azure-native:applink:AppLinkMember',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AppLinkMemberPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppLinkMemberPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
