import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity_response.dart';
import 'site_network_service_args.dart';
import 'site_network_service_properties_format_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Site network service resource.
///
/// Uses Azure REST API version 2024-04-15. In version 2.x of the Azure Native provider, it used API version 2023-09-01.
///
/// Other available API versions: 2023-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridnetwork [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create first party site network service
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var siteNetworkService = new AzureNative.HybridNetwork.SiteNetworkService("siteNetworkService", new()
///     {
///         Location = "westUs2",
///         Properties = new AzureNative.HybridNetwork.Inputs.SiteNetworkServicePropertiesFormatArgs
///         {
///             DesiredStateConfigurationGroupValueReferences =
///             {
///                 { "MyVM_Configuration", new AzureNative.HybridNetwork.Inputs.ReferencedResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourcegroups/contosorg1/providers/microsoft.hybridnetwork/configurationgroupvalues/MyVM_Configuration1",
///                 } },
///             },
///             NetworkServiceDesignVersionResourceReference = new AzureNative.HybridNetwork.Inputs.SecretDeploymentResourceReferenceArgs
///             {
///                 Id = "/subscriptions/subid/resourcegroups/rg/providers/Microsoft.HybridNetwork/publishers/TestPublisher/networkServiceDesignGroups/TestNetworkServiceDesignGroupName/networkServiceDesignVersions/1.0.0",
///                 IdType = "Secret",
///             },
///             SiteReference = new AzureNative.HybridNetwork.Inputs.ReferencedResourceArgs
///             {
///                 Id = "/subscriptions/subid/resourcegroups/contosorg1/providers/microsoft.hybridnetwork/sites/testSite",
///             },
///         },
///         ResourceGroupName = "rg1",
///         SiteNetworkServiceName = "testSiteNetworkServiceName",
///         Sku = new AzureNative.HybridNetwork.Inputs.SkuArgs
///         {
///             Name = AzureNative.HybridNetwork.SkuName.Standard,
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
/// 	hybridnetwork "github.com/pulumi/pulumi-azure-native-sdk/hybridnetwork/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hybridnetwork.NewSiteNetworkService(ctx, "siteNetworkService", &hybridnetwork.SiteNetworkServiceArgs{
/// 			Location: pulumi.String("westUs2"),
/// 			Properties: &hybridnetwork.SiteNetworkServicePropertiesFormatArgs{
/// 				DesiredStateConfigurationGroupValueReferences: hybridnetwork.ReferencedResourceMap{
/// 					"MyVM_Configuration": &hybridnetwork.ReferencedResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourcegroups/contosorg1/providers/microsoft.hybridnetwork/configurationgroupvalues/MyVM_Configuration1"),
/// 					},
/// 				},
/// 				NetworkServiceDesignVersionResourceReference: hybridnetwork.SecretDeploymentResourceReference{
/// 					Id:     "/subscriptions/subid/resourcegroups/rg/providers/Microsoft.HybridNetwork/publishers/TestPublisher/networkServiceDesignGroups/TestNetworkServiceDesignGroupName/networkServiceDesignVersions/1.0.0",
/// 					IdType: "Secret",
/// 				},
/// 				SiteReference: &hybridnetwork.ReferencedResourceArgs{
/// 					Id: pulumi.String("/subscriptions/subid/resourcegroups/contosorg1/providers/microsoft.hybridnetwork/sites/testSite"),
/// 				},
/// 			},
/// 			ResourceGroupName:      pulumi.String("rg1"),
/// 			SiteNetworkServiceName: pulumi.String("testSiteNetworkServiceName"),
/// 			Sku: &hybridnetwork.SkuArgs{
/// 				Name: pulumi.String(hybridnetwork.SkuNameStandard),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.hybridnetwork.SiteNetworkService;
/// import com.pulumi.azurenative.hybridnetwork.SiteNetworkServiceArgs;
/// import com.pulumi.azurenative.hybridnetwork.inputs.SiteNetworkServicePropertiesFormatArgs;
/// import com.pulumi.azurenative.hybridnetwork.inputs.ReferencedResourceArgs;
/// import com.pulumi.azurenative.hybridnetwork.inputs.SkuArgs;
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
///         var siteNetworkService = new SiteNetworkService("siteNetworkService", SiteNetworkServiceArgs.builder()
///             .location("westUs2")
///             .properties(SiteNetworkServicePropertiesFormatArgs.builder()
///                 .desiredStateConfigurationGroupValueReferences(Map.of("MyVM_Configuration", ReferencedResourceArgs.builder()
///                     .id("/subscriptions/subid/resourcegroups/contosorg1/providers/microsoft.hybridnetwork/configurationgroupvalues/MyVM_Configuration1")
///                     .build()))
///                 .networkServiceDesignVersionResourceReference(SecretDeploymentResourceReferenceArgs.builder()
///                     .id("/subscriptions/subid/resourcegroups/rg/providers/Microsoft.HybridNetwork/publishers/TestPublisher/networkServiceDesignGroups/TestNetworkServiceDesignGroupName/networkServiceDesignVersions/1.0.0")
///                     .idType("Secret")
///                     .build())
///                 .siteReference(ReferencedResourceArgs.builder()
///                     .id("/subscriptions/subid/resourcegroups/contosorg1/providers/microsoft.hybridnetwork/sites/testSite")
///                     .build())
///                 .build())
///             .resourceGroupName("rg1")
///             .siteNetworkServiceName("testSiteNetworkServiceName")
///             .sku(SkuArgs.builder()
///                 .name("Standard")
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
/// const siteNetworkService = new azure_native.hybridnetwork.SiteNetworkService("siteNetworkService", {
///     location: "westUs2",
///     properties: {
///         desiredStateConfigurationGroupValueReferences: {
///             MyVM_Configuration: {
///                 id: "/subscriptions/subid/resourcegroups/contosorg1/providers/microsoft.hybridnetwork/configurationgroupvalues/MyVM_Configuration1",
///             },
///         },
///         networkServiceDesignVersionResourceReference: {
///             id: "/subscriptions/subid/resourcegroups/rg/providers/Microsoft.HybridNetwork/publishers/TestPublisher/networkServiceDesignGroups/TestNetworkServiceDesignGroupName/networkServiceDesignVersions/1.0.0",
///             idType: "Secret",
///         },
///         siteReference: {
///             id: "/subscriptions/subid/resourcegroups/contosorg1/providers/microsoft.hybridnetwork/sites/testSite",
///         },
///     },
///     resourceGroupName: "rg1",
///     siteNetworkServiceName: "testSiteNetworkServiceName",
///     sku: {
///         name: azure_native.hybridnetwork.SkuName.Standard,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// site_network_service = azure_native.hybridnetwork.SiteNetworkService("siteNetworkService",
///     location="westUs2",
///     properties={
///         "desired_state_configuration_group_value_references": {
///             "MyVM_Configuration": {
///                 "id": "/subscriptions/subid/resourcegroups/contosorg1/providers/microsoft.hybridnetwork/configurationgroupvalues/MyVM_Configuration1",
///             },
///         },
///         "network_service_design_version_resource_reference": {
///             "id": "/subscriptions/subid/resourcegroups/rg/providers/Microsoft.HybridNetwork/publishers/TestPublisher/networkServiceDesignGroups/TestNetworkServiceDesignGroupName/networkServiceDesignVersions/1.0.0",
///             "id_type": "Secret",
///         },
///         "site_reference": {
///             "id": "/subscriptions/subid/resourcegroups/contosorg1/providers/microsoft.hybridnetwork/sites/testSite",
///         },
///     },
///     resource_group_name="rg1",
///     site_network_service_name="testSiteNetworkServiceName",
///     sku={
///         "name": azure_native.hybridnetwork.SkuName.STANDARD,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   siteNetworkService:
///     type: azure-native:hybridnetwork:SiteNetworkService
///     properties:
///       location: westUs2
///       properties:
///         desiredStateConfigurationGroupValueReferences:
///           MyVM_Configuration:
///             id: /subscriptions/subid/resourcegroups/contosorg1/providers/microsoft.hybridnetwork/configurationgroupvalues/MyVM_Configuration1
///         networkServiceDesignVersionResourceReference:
///           id: /subscriptions/subid/resourcegroups/rg/providers/Microsoft.HybridNetwork/publishers/TestPublisher/networkServiceDesignGroups/TestNetworkServiceDesignGroupName/networkServiceDesignVersions/1.0.0
///           idType: Secret
///         siteReference:
///           id: /subscriptions/subid/resourcegroups/contosorg1/providers/microsoft.hybridnetwork/sites/testSite
///       resourceGroupName: rg1
///       siteNetworkServiceName: testSiteNetworkServiceName
///       sku:
///         name: Standard
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create site network service
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var siteNetworkService = new AzureNative.HybridNetwork.SiteNetworkService("siteNetworkService", new()
///     {
///         Location = "westUs2",
///         Properties = new AzureNative.HybridNetwork.Inputs.SiteNetworkServicePropertiesFormatArgs
///         {
///             DesiredStateConfigurationGroupValueReferences =
///             {
///                 { "MyVM_Configuration", new AzureNative.HybridNetwork.Inputs.ReferencedResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourcegroups/contosorg1/providers/microsoft.hybridnetwork/configurationgroupvalues/MyVM_Configuration1",
///                 } },
///             },
///             NetworkServiceDesignVersionResourceReference = new AzureNative.HybridNetwork.Inputs.OpenDeploymentResourceReferenceArgs
///             {
///                 Id = "/subscriptions/subid/resourcegroups/rg/providers/Microsoft.HybridNetwork/publishers/TestPublisher/networkServiceDesignGroups/TestNetworkServiceDesignGroupName/networkServiceDesignVersions/1.0.0",
///                 IdType = "Open",
///             },
///             SiteReference = new AzureNative.HybridNetwork.Inputs.ReferencedResourceArgs
///             {
///                 Id = "/subscriptions/subid/resourcegroups/contosorg1/providers/microsoft.hybridnetwork/sites/testSite",
///             },
///         },
///         ResourceGroupName = "rg1",
///         SiteNetworkServiceName = "testSiteNetworkServiceName",
///         Sku = new AzureNative.HybridNetwork.Inputs.SkuArgs
///         {
///             Name = AzureNative.HybridNetwork.SkuName.Standard,
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
/// 	hybridnetwork "github.com/pulumi/pulumi-azure-native-sdk/hybridnetwork/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hybridnetwork.NewSiteNetworkService(ctx, "siteNetworkService", &hybridnetwork.SiteNetworkServiceArgs{
/// 			Location: pulumi.String("westUs2"),
/// 			Properties: &hybridnetwork.SiteNetworkServicePropertiesFormatArgs{
/// 				DesiredStateConfigurationGroupValueReferences: hybridnetwork.ReferencedResourceMap{
/// 					"MyVM_Configuration": &hybridnetwork.ReferencedResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourcegroups/contosorg1/providers/microsoft.hybridnetwork/configurationgroupvalues/MyVM_Configuration1"),
/// 					},
/// 				},
/// 				NetworkServiceDesignVersionResourceReference: hybridnetwork.OpenDeploymentResourceReference{
/// 					Id:     "/subscriptions/subid/resourcegroups/rg/providers/Microsoft.HybridNetwork/publishers/TestPublisher/networkServiceDesignGroups/TestNetworkServiceDesignGroupName/networkServiceDesignVersions/1.0.0",
/// 					IdType: "Open",
/// 				},
/// 				SiteReference: &hybridnetwork.ReferencedResourceArgs{
/// 					Id: pulumi.String("/subscriptions/subid/resourcegroups/contosorg1/providers/microsoft.hybridnetwork/sites/testSite"),
/// 				},
/// 			},
/// 			ResourceGroupName:      pulumi.String("rg1"),
/// 			SiteNetworkServiceName: pulumi.String("testSiteNetworkServiceName"),
/// 			Sku: &hybridnetwork.SkuArgs{
/// 				Name: pulumi.String(hybridnetwork.SkuNameStandard),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.hybridnetwork.SiteNetworkService;
/// import com.pulumi.azurenative.hybridnetwork.SiteNetworkServiceArgs;
/// import com.pulumi.azurenative.hybridnetwork.inputs.SiteNetworkServicePropertiesFormatArgs;
/// import com.pulumi.azurenative.hybridnetwork.inputs.ReferencedResourceArgs;
/// import com.pulumi.azurenative.hybridnetwork.inputs.SkuArgs;
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
///         var siteNetworkService = new SiteNetworkService("siteNetworkService", SiteNetworkServiceArgs.builder()
///             .location("westUs2")
///             .properties(SiteNetworkServicePropertiesFormatArgs.builder()
///                 .desiredStateConfigurationGroupValueReferences(Map.of("MyVM_Configuration", ReferencedResourceArgs.builder()
///                     .id("/subscriptions/subid/resourcegroups/contosorg1/providers/microsoft.hybridnetwork/configurationgroupvalues/MyVM_Configuration1")
///                     .build()))
///                 .networkServiceDesignVersionResourceReference(OpenDeploymentResourceReferenceArgs.builder()
///                     .id("/subscriptions/subid/resourcegroups/rg/providers/Microsoft.HybridNetwork/publishers/TestPublisher/networkServiceDesignGroups/TestNetworkServiceDesignGroupName/networkServiceDesignVersions/1.0.0")
///                     .idType("Open")
///                     .build())
///                 .siteReference(ReferencedResourceArgs.builder()
///                     .id("/subscriptions/subid/resourcegroups/contosorg1/providers/microsoft.hybridnetwork/sites/testSite")
///                     .build())
///                 .build())
///             .resourceGroupName("rg1")
///             .siteNetworkServiceName("testSiteNetworkServiceName")
///             .sku(SkuArgs.builder()
///                 .name("Standard")
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
/// const siteNetworkService = new azure_native.hybridnetwork.SiteNetworkService("siteNetworkService", {
///     location: "westUs2",
///     properties: {
///         desiredStateConfigurationGroupValueReferences: {
///             MyVM_Configuration: {
///                 id: "/subscriptions/subid/resourcegroups/contosorg1/providers/microsoft.hybridnetwork/configurationgroupvalues/MyVM_Configuration1",
///             },
///         },
///         networkServiceDesignVersionResourceReference: {
///             id: "/subscriptions/subid/resourcegroups/rg/providers/Microsoft.HybridNetwork/publishers/TestPublisher/networkServiceDesignGroups/TestNetworkServiceDesignGroupName/networkServiceDesignVersions/1.0.0",
///             idType: "Open",
///         },
///         siteReference: {
///             id: "/subscriptions/subid/resourcegroups/contosorg1/providers/microsoft.hybridnetwork/sites/testSite",
///         },
///     },
///     resourceGroupName: "rg1",
///     siteNetworkServiceName: "testSiteNetworkServiceName",
///     sku: {
///         name: azure_native.hybridnetwork.SkuName.Standard,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// site_network_service = azure_native.hybridnetwork.SiteNetworkService("siteNetworkService",
///     location="westUs2",
///     properties={
///         "desired_state_configuration_group_value_references": {
///             "MyVM_Configuration": {
///                 "id": "/subscriptions/subid/resourcegroups/contosorg1/providers/microsoft.hybridnetwork/configurationgroupvalues/MyVM_Configuration1",
///             },
///         },
///         "network_service_design_version_resource_reference": {
///             "id": "/subscriptions/subid/resourcegroups/rg/providers/Microsoft.HybridNetwork/publishers/TestPublisher/networkServiceDesignGroups/TestNetworkServiceDesignGroupName/networkServiceDesignVersions/1.0.0",
///             "id_type": "Open",
///         },
///         "site_reference": {
///             "id": "/subscriptions/subid/resourcegroups/contosorg1/providers/microsoft.hybridnetwork/sites/testSite",
///         },
///     },
///     resource_group_name="rg1",
///     site_network_service_name="testSiteNetworkServiceName",
///     sku={
///         "name": azure_native.hybridnetwork.SkuName.STANDARD,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   siteNetworkService:
///     type: azure-native:hybridnetwork:SiteNetworkService
///     properties:
///       location: westUs2
///       properties:
///         desiredStateConfigurationGroupValueReferences:
///           MyVM_Configuration:
///             id: /subscriptions/subid/resourcegroups/contosorg1/providers/microsoft.hybridnetwork/configurationgroupvalues/MyVM_Configuration1
///         networkServiceDesignVersionResourceReference:
///           id: /subscriptions/subid/resourcegroups/rg/providers/Microsoft.HybridNetwork/publishers/TestPublisher/networkServiceDesignGroups/TestNetworkServiceDesignGroupName/networkServiceDesignVersions/1.0.0
///           idType: Open
///         siteReference:
///           id: /subscriptions/subid/resourcegroups/contosorg1/providers/microsoft.hybridnetwork/sites/testSite
///       resourceGroupName: rg1
///       siteNetworkServiceName: testSiteNetworkServiceName
///       sku:
///         name: Standard
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
/// $ pulumi import azure-native:hybridnetwork:SiteNetworkService testSiteNetworkServiceName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HybridNetwork/siteNetworkServices/{siteNetworkServiceName}
/// ```
class SiteNetworkService extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The managed identity of the Site network service, if configured.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Site network service properties.
  late final pulumi.Output<SiteNetworkServicePropertiesFormatResponse> properties;
  /// Sku of the site network service.
  late final pulumi.Output<SkuResponse?> sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SiteNetworkService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SiteNetworkService]. {@macro pulumi_hybridnetwork_site_network_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SiteNetworkService(
    String name, {
    SiteNetworkServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:hybridnetwork:SiteNetworkService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<SiteNetworkServicePropertiesFormatResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SiteNetworkServicePropertiesFormatResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sku = registerOutput<SkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
