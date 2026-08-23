import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_args.dart';
import 'site_properties_format_response.dart';
import 'system_data_response.dart';

/// Site resource.
///
/// Uses Azure REST API version 2024-04-15. In version 2.x of the Azure Native provider, it used API version 2023-09-01.
///
/// Other available API versions: 2023-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridnetwork [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create network site
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var site = new AzureNative.HybridNetwork.Site("site", new()
///     {
///         Location = "westUs2",
///         Properties = new AzureNative.HybridNetwork.Inputs.SitePropertiesFormatArgs
///         {
///             Nfvis =
///             {
///                 new AzureNative.HybridNetwork.Inputs.AzureCoreNFVIDetailsArgs
///                 {
///                     Location = "westUs2",
///                     Name = "nfvi1",
///                     NfviType = "AzureCore",
///                 },
///                 new AzureNative.HybridNetwork.Inputs.AzureArcK8sClusterNFVIDetailsArgs
///                 {
///                     CustomLocationReference = new AzureNative.HybridNetwork.Inputs.ReferencedResourceArgs
///                     {
///                         Id = "/subscriptions/subid/resourceGroups/testResourceGroup/providers/Microsoft.ExtendedLocation/customLocations/testCustomLocation1",
///                     },
///                     Name = "nfvi2",
///                     NfviType = "AzureArcKubernetes",
///                 },
///                 new AzureNative.HybridNetwork.Inputs.AzureOperatorNexusClusterNFVIDetailsArgs
///                 {
///                     CustomLocationReference = new AzureNative.HybridNetwork.Inputs.ReferencedResourceArgs
///                     {
///                         Id = "/subscriptions/subid/resourceGroups/testResourceGroup/providers/Microsoft.ExtendedLocation/customLocations/testCustomLocation2",
///                     },
///                     Name = "nfvi3",
///                     NfviType = "AzureOperatorNexus",
///                 },
///             },
///         },
///         ResourceGroupName = "rg1",
///         SiteName = "testSite",
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
/// 	hybridnetwork "github.com/pulumi/pulumi-azure-native-sdk/hybridnetwork/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hybridnetwork.NewSite(ctx, "site", &hybridnetwork.SiteArgs{
/// 			Location: pulumi.String("westUs2"),
/// 			Properties: &hybridnetwork.SitePropertiesFormatArgs{
/// 				Nfvis: pulumi.Array{
/// 					hybridnetwork.AzureCoreNFVIDetails{
/// 						Location: "westUs2",
/// 						Name:     "nfvi1",
/// 						NfviType: "AzureCore",
/// 					},
/// 					hybridnetwork.AzureArcK8sClusterNFVIDetails{
/// 						CustomLocationReference: hybridnetwork.ReferencedResource{
/// 							Id: "/subscriptions/subid/resourceGroups/testResourceGroup/providers/Microsoft.ExtendedLocation/customLocations/testCustomLocation1",
/// 						},
/// 						Name:     "nfvi2",
/// 						NfviType: "AzureArcKubernetes",
/// 					},
/// 					hybridnetwork.AzureOperatorNexusClusterNFVIDetails{
/// 						CustomLocationReference: hybridnetwork.ReferencedResource{
/// 							Id: "/subscriptions/subid/resourceGroups/testResourceGroup/providers/Microsoft.ExtendedLocation/customLocations/testCustomLocation2",
/// 						},
/// 						Name:     "nfvi3",
/// 						NfviType: "AzureOperatorNexus",
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			SiteName:          pulumi.String("testSite"),
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
/// resource "azure-native_hybridnetwork_site" "site" {
///   location = "westUs2"
///   properties = {
///     nfvis = [{
///       "location" = "westUs2"
///       "name"     = "nfvi1"
///       "nfviType" = "AzureCore"
///       }, {
///       "customLocationReference" = {
///         "id" = "/subscriptions/subid/resourceGroups/testResourceGroup/providers/Microsoft.ExtendedLocation/customLocations/testCustomLocation1"
///       }
///       "name"     = "nfvi2"
///       "nfviType" = "AzureArcKubernetes"
///       }, {
///       "customLocationReference" = {
///         "id" = "/subscriptions/subid/resourceGroups/testResourceGroup/providers/Microsoft.ExtendedLocation/customLocations/testCustomLocation2"
///       }
///       "name"     = "nfvi3"
///       "nfviType" = "AzureOperatorNexus"
///     }]
///   }
///   resource_group_name = "rg1"
///   site_name           = "testSite"
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
/// import com.pulumi.azurenative.hybridnetwork.Site;
/// import com.pulumi.azurenative.hybridnetwork.SiteArgs;
/// import com.pulumi.azurenative.hybridnetwork.inputs.SitePropertiesFormatArgs;
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
///         var site = new Site("site", SiteArgs.builder()
///             .location("westUs2")
///             .properties(SitePropertiesFormatArgs.builder()
///                 .nfvis(
///                     AzureCoreNFVIDetailsArgs.builder()
///                         .location("westUs2")
///                         .name("nfvi1")
///                         .nfviType("AzureCore")
///                         .build(),
///                     AzureArcK8sClusterNFVIDetailsArgs.builder()
///                         .customLocationReference(ReferencedResourceArgs.builder()
///                             .id("/subscriptions/subid/resourceGroups/testResourceGroup/providers/Microsoft.ExtendedLocation/customLocations/testCustomLocation1")
///                             .build())
///                         .name("nfvi2")
///                         .nfviType("AzureArcKubernetes")
///                         .build(),
///                     AzureOperatorNexusClusterNFVIDetailsArgs.builder()
///                         .customLocationReference(ReferencedResourceArgs.builder()
///                             .id("/subscriptions/subid/resourceGroups/testResourceGroup/providers/Microsoft.ExtendedLocation/customLocations/testCustomLocation2")
///                             .build())
///                         .name("nfvi3")
///                         .nfviType("AzureOperatorNexus")
///                         .build())
///                 .build())
///             .resourceGroupName("rg1")
///             .siteName("testSite")
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
/// const site = new azure_native.hybridnetwork.Site("site", {
///     location: "westUs2",
///     properties: {
///         nfvis: [
///             {
///                 location: "westUs2",
///                 name: "nfvi1",
///                 nfviType: "AzureCore",
///             },
///             {
///                 customLocationReference: {
///                     id: "/subscriptions/subid/resourceGroups/testResourceGroup/providers/Microsoft.ExtendedLocation/customLocations/testCustomLocation1",
///                 },
///                 name: "nfvi2",
///                 nfviType: "AzureArcKubernetes",
///             },
///             {
///                 customLocationReference: {
///                     id: "/subscriptions/subid/resourceGroups/testResourceGroup/providers/Microsoft.ExtendedLocation/customLocations/testCustomLocation2",
///                 },
///                 name: "nfvi3",
///                 nfviType: "AzureOperatorNexus",
///             },
///         ],
///     },
///     resourceGroupName: "rg1",
///     siteName: "testSite",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// site = azure_native.hybridnetwork.Site("site",
///     location="westUs2",
///     properties={
///         "nfvis": [
///             {
///                 "location": "westUs2",
///                 "name": "nfvi1",
///                 "nfvi_type": "AzureCore",
///             },
///             {
///                 "custom_location_reference": {
///                     "id": "/subscriptions/subid/resourceGroups/testResourceGroup/providers/Microsoft.ExtendedLocation/customLocations/testCustomLocation1",
///                 },
///                 "name": "nfvi2",
///                 "nfvi_type": "AzureArcKubernetes",
///             },
///             {
///                 "custom_location_reference": {
///                     "id": "/subscriptions/subid/resourceGroups/testResourceGroup/providers/Microsoft.ExtendedLocation/customLocations/testCustomLocation2",
///                 },
///                 "name": "nfvi3",
///                 "nfvi_type": "AzureOperatorNexus",
///             },
///         ],
///     },
///     resource_group_name="rg1",
///     site_name="testSite")
///
/// ```
///
/// ```yaml
/// resources:
///   site:
///     type: azure-native:hybridnetwork:Site
///     properties:
///       location: westUs2
///       properties:
///         nfvis:
///           - location: westUs2
///             name: nfvi1
///             nfviType: AzureCore
///           - customLocationReference:
///               id: /subscriptions/subid/resourceGroups/testResourceGroup/providers/Microsoft.ExtendedLocation/customLocations/testCustomLocation1
///             name: nfvi2
///             nfviType: AzureArcKubernetes
///           - customLocationReference:
///               id: /subscriptions/subid/resourceGroups/testResourceGroup/providers/Microsoft.ExtendedLocation/customLocations/testCustomLocation2
///             name: nfvi3
///             nfviType: AzureOperatorNexus
///       resourceGroupName: rg1
///       siteName: testSite
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
/// $ pulumi import azure-native:hybridnetwork:Site testSite /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HybridNetwork/sites/{siteName}
/// ```
class Site extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Site properties.
  late final pulumi.Output<SitePropertiesFormatResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Site].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Site]. {@macro pulumi_hybridnetwork_site_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Site(
    String name, {
    SiteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:hybridnetwork:Site',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<SitePropertiesFormatResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SitePropertiesFormatResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
