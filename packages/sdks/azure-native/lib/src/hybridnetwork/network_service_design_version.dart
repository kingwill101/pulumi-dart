import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_service_design_version_args.dart';
import 'network_service_design_version_properties_format_response.dart';
import 'system_data_response.dart';

/// network service design version.
///
/// Uses Azure REST API version 2024-04-15. In version 2.x of the Azure Native provider, it used API version 2023-09-01.
///
/// Other available API versions: 2023-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridnetwork [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a network service design version resource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var networkServiceDesignVersion = new AzureNative.HybridNetwork.NetworkServiceDesignVersion("networkServiceDesignVersion", new()
///     {
///         Location = "eastus",
///         NetworkServiceDesignGroupName = "TestNetworkServiceDesignGroupName",
///         NetworkServiceDesignVersionName = "1.0.0",
///         Properties = new AzureNative.HybridNetwork.Inputs.NetworkServiceDesignVersionPropertiesFormatArgs
///         {
///             ConfigurationGroupSchemaReferences =
///             {
///                 { "MyVM_Configuration", new AzureNative.HybridNetwork.Inputs.ReferencedResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourcegroups/contosorg1/providers/microsoft.hybridnetwork/publishers/contosoGroup/networkServiceDesignGroups/NSD_contoso/configurationGroupSchemas/MyVM_Configuration_Schema",
///                 } },
///             },
///             ResourceElementTemplates = new[]
///             {
///                 new AzureNative.HybridNetwork.Inputs.ArmResourceDefinitionResourceElementTemplateDetailsArgs
///                 {
///                     Configuration = new AzureNative.HybridNetwork.Inputs.ArmResourceDefinitionResourceElementTemplateArgs
///                     {
///                         ArtifactProfile = new AzureNative.HybridNetwork.Inputs.NSDArtifactProfileArgs
///                         {
///                             ArtifactName = "MyVMArmTemplate",
///                             ArtifactStoreReference = new AzureNative.HybridNetwork.Inputs.ReferencedResourceArgs
///                             {
///                                 Id = "/subscriptions/subid/providers/Microsoft.HybridNetwork/publishers/contosoGroup/artifactStoreReference/store1",
///                             },
///                             ArtifactVersion = "1.0.0",
///                         },
///                         ParameterValues = "{\"publisherName\":\"{configurationparameters('MyVM_Configuration').publisherName}\",\"skuGroupName\":\"{configurationparameters('MyVM_Configuration').skuGroupName}\",\"skuVersion\":\"{configurationparameters('MyVM_Configuration').skuVersion}\",\"skuOfferingLocation\":\"{configurationparameters('MyVM_Configuration').skuOfferingLocation}\",\"nfviType\":\"{nfvis().nfvisFromSitePerNfviType.AzureCore.nfviAlias1.nfviType}\",\"nfviId\":\"{nfvis().nfvisFromSitePerNfviType.AzureCore.nfviAlias1.nfviId}\",\"allowSoftwareUpdates\":\"{configurationparameters('MyVM_Configuration').allowSoftwareUpdates}\",\"virtualNetworkName\":\"{configurationparameters('MyVM_Configuration').vnetName}\",\"subnetName\":\"{configurationparameters('MyVM_Configuration').subnetName}\",\"subnetAddressPrefix\":\"{configurationparameters('MyVM_Configuration').subnetAddressPrefix}\",\"managedResourceGroup\":\"{configurationparameters('SNSSelf').managedResourceGroupName}\",\"adminPassword\":\"{secretparameters('MyVM_Configuration').adminPassword}\"}",
///                         TemplateType = AzureNative.HybridNetwork.TemplateType.ArmTemplate,
///                     },
///                     DependsOnProfile = new AzureNative.HybridNetwork.Inputs.DependsOnProfileArgs
///                     {
///                         InstallDependsOn = new() { },
///                     },
///                     Name = "MyVM",
///                     ResourceElementType = "ArmResourceDefinition",
///                 },
///             },
///         },
///         PublisherName = "TestPublisher",
///         ResourceGroupName = "rg",
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
/// 		_, err := hybridnetwork.NewNetworkServiceDesignVersion(ctx, "networkServiceDesignVersion", &hybridnetwork.NetworkServiceDesignVersionArgs{
/// 			Location:                        pulumi.String("eastus"),
/// 			NetworkServiceDesignGroupName:   pulumi.String("TestNetworkServiceDesignGroupName"),
/// 			NetworkServiceDesignVersionName: pulumi.String("1.0.0"),
/// 			Properties: &hybridnetwork.NetworkServiceDesignVersionPropertiesFormatArgs{
/// 				ConfigurationGroupSchemaReferences: hybridnetwork.ReferencedResourceMap{
/// 					"MyVM_Configuration": &hybridnetwork.ReferencedResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourcegroups/contosorg1/providers/microsoft.hybridnetwork/publishers/contosoGroup/networkServiceDesignGroups/NSD_contoso/configurationGroupSchemas/MyVM_Configuration_Schema"),
/// 					},
/// 				},
/// 				ResourceElementTemplates: pulumi.Array{
/// 					hybridnetwork.ArmResourceDefinitionResourceElementTemplateDetails{
/// 						Configuration: hybridnetwork.ArmResourceDefinitionResourceElementTemplate{
/// 							ArtifactProfile: hybridnetwork.NSDArtifactProfile{
/// 								ArtifactName: "MyVMArmTemplate",
/// 								ArtifactStoreReference: hybridnetwork.ReferencedResource{
/// 									Id: "/subscriptions/subid/providers/Microsoft.HybridNetwork/publishers/contosoGroup/artifactStoreReference/store1",
/// 								},
/// 								ArtifactVersion: "1.0.0",
/// 							},
/// 							ParameterValues: "{\"publisherName\":\"{configurationparameters('MyVM_Configuration').publisherName}\",\"skuGroupName\":\"{configurationparameters('MyVM_Configuration').skuGroupName}\",\"skuVersion\":\"{configurationparameters('MyVM_Configuration').skuVersion}\",\"skuOfferingLocation\":\"{configurationparameters('MyVM_Configuration').skuOfferingLocation}\",\"nfviType\":\"{nfvis().nfvisFromSitePerNfviType.AzureCore.nfviAlias1.nfviType}\",\"nfviId\":\"{nfvis().nfvisFromSitePerNfviType.AzureCore.nfviAlias1.nfviId}\",\"allowSoftwareUpdates\":\"{configurationparameters('MyVM_Configuration').allowSoftwareUpdates}\",\"virtualNetworkName\":\"{configurationparameters('MyVM_Configuration').vnetName}\",\"subnetName\":\"{configurationparameters('MyVM_Configuration').subnetName}\",\"subnetAddressPrefix\":\"{configurationparameters('MyVM_Configuration').subnetAddressPrefix}\",\"managedResourceGroup\":\"{configurationparameters('SNSSelf').managedResourceGroupName}\",\"adminPassword\":\"{secretparameters('MyVM_Configuration').adminPassword}\"}",
/// 							TemplateType:    hybridnetwork.TemplateTypeArmTemplate,
/// 						},
/// 						DependsOnProfile: hybridnetwork.DependsOnProfile{
/// 							InstallDependsOn: []interface{}{},
/// 						},
/// 						Name:                "MyVM",
/// 						ResourceElementType: "ArmResourceDefinition",
/// 					},
/// 				},
/// 			},
/// 			PublisherName:     pulumi.String("TestPublisher"),
/// 			ResourceGroupName: pulumi.String("rg"),
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
/// import com.pulumi.azurenative.hybridnetwork.NetworkServiceDesignVersion;
/// import com.pulumi.azurenative.hybridnetwork.NetworkServiceDesignVersionArgs;
/// import com.pulumi.azurenative.hybridnetwork.inputs.NetworkServiceDesignVersionPropertiesFormatArgs;
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
///         var networkServiceDesignVersion = new NetworkServiceDesignVersion("networkServiceDesignVersion", NetworkServiceDesignVersionArgs.builder()
///             .location("eastus")
///             .networkServiceDesignGroupName("TestNetworkServiceDesignGroupName")
///             .networkServiceDesignVersionName("1.0.0")
///             .properties(NetworkServiceDesignVersionPropertiesFormatArgs.builder()
///                 .configurationGroupSchemaReferences(Map.of("MyVM_Configuration", ReferencedResourceArgs.builder()
///                     .id("/subscriptions/subid/resourcegroups/contosorg1/providers/microsoft.hybridnetwork/publishers/contosoGroup/networkServiceDesignGroups/NSD_contoso/configurationGroupSchemas/MyVM_Configuration_Schema")
///                     .build()))
///                 .resourceElementTemplates(ArmResourceDefinitionResourceElementTemplateDetailsArgs.builder()
///                     .configuration(ArmResourceDefinitionResourceElementTemplateArgs.builder()
///                         .artifactProfile(NSDArtifactProfileArgs.builder()
///                             .artifactName("MyVMArmTemplate")
///                             .artifactStoreReference(ReferencedResourceArgs.builder()
///                                 .id("/subscriptions/subid/providers/Microsoft.HybridNetwork/publishers/contosoGroup/artifactStoreReference/store1")
///                                 .build())
///                             .artifactVersion("1.0.0")
///                             .build())
///                         .parameterValues("{\"publisherName\":\"{configurationparameters('MyVM_Configuration').publisherName}\",\"skuGroupName\":\"{configurationparameters('MyVM_Configuration').skuGroupName}\",\"skuVersion\":\"{configurationparameters('MyVM_Configuration').skuVersion}\",\"skuOfferingLocation\":\"{configurationparameters('MyVM_Configuration').skuOfferingLocation}\",\"nfviType\":\"{nfvis().nfvisFromSitePerNfviType.AzureCore.nfviAlias1.nfviType}\",\"nfviId\":\"{nfvis().nfvisFromSitePerNfviType.AzureCore.nfviAlias1.nfviId}\",\"allowSoftwareUpdates\":\"{configurationparameters('MyVM_Configuration').allowSoftwareUpdates}\",\"virtualNetworkName\":\"{configurationparameters('MyVM_Configuration').vnetName}\",\"subnetName\":\"{configurationparameters('MyVM_Configuration').subnetName}\",\"subnetAddressPrefix\":\"{configurationparameters('MyVM_Configuration').subnetAddressPrefix}\",\"managedResourceGroup\":\"{configurationparameters('SNSSelf').managedResourceGroupName}\",\"adminPassword\":\"{secretparameters('MyVM_Configuration').adminPassword}\"}")
///                         .templateType("ArmTemplate")
///                         .build())
///                     .dependsOnProfile(DependsOnProfileArgs.builder()
///                         .installDependsOn()
///                         .build())
///                     .name("MyVM")
///                     .resourceElementType("ArmResourceDefinition")
///                     .build())
///                 .build())
///             .publisherName("TestPublisher")
///             .resourceGroupName("rg")
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
/// const networkServiceDesignVersion = new azure_native.hybridnetwork.NetworkServiceDesignVersion("networkServiceDesignVersion", {
///     location: "eastus",
///     networkServiceDesignGroupName: "TestNetworkServiceDesignGroupName",
///     networkServiceDesignVersionName: "1.0.0",
///     properties: {
///         configurationGroupSchemaReferences: {
///             MyVM_Configuration: {
///                 id: "/subscriptions/subid/resourcegroups/contosorg1/providers/microsoft.hybridnetwork/publishers/contosoGroup/networkServiceDesignGroups/NSD_contoso/configurationGroupSchemas/MyVM_Configuration_Schema",
///             },
///         },
///         resourceElementTemplates: [{
///             configuration: {
///                 artifactProfile: {
///                     artifactName: "MyVMArmTemplate",
///                     artifactStoreReference: {
///                         id: "/subscriptions/subid/providers/Microsoft.HybridNetwork/publishers/contosoGroup/artifactStoreReference/store1",
///                     },
///                     artifactVersion: "1.0.0",
///                 },
///                 parameterValues: "{\"publisherName\":\"{configurationparameters('MyVM_Configuration').publisherName}\",\"skuGroupName\":\"{configurationparameters('MyVM_Configuration').skuGroupName}\",\"skuVersion\":\"{configurationparameters('MyVM_Configuration').skuVersion}\",\"skuOfferingLocation\":\"{configurationparameters('MyVM_Configuration').skuOfferingLocation}\",\"nfviType\":\"{nfvis().nfvisFromSitePerNfviType.AzureCore.nfviAlias1.nfviType}\",\"nfviId\":\"{nfvis().nfvisFromSitePerNfviType.AzureCore.nfviAlias1.nfviId}\",\"allowSoftwareUpdates\":\"{configurationparameters('MyVM_Configuration').allowSoftwareUpdates}\",\"virtualNetworkName\":\"{configurationparameters('MyVM_Configuration').vnetName}\",\"subnetName\":\"{configurationparameters('MyVM_Configuration').subnetName}\",\"subnetAddressPrefix\":\"{configurationparameters('MyVM_Configuration').subnetAddressPrefix}\",\"managedResourceGroup\":\"{configurationparameters('SNSSelf').managedResourceGroupName}\",\"adminPassword\":\"{secretparameters('MyVM_Configuration').adminPassword}\"}",
///                 templateType: azure_native.hybridnetwork.TemplateType.ArmTemplate,
///             },
///             dependsOnProfile: {
///                 installDependsOn: [],
///             },
///             name: "MyVM",
///             resourceElementType: "ArmResourceDefinition",
///         }],
///     },
///     publisherName: "TestPublisher",
///     resourceGroupName: "rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// network_service_design_version = azure_native.hybridnetwork.NetworkServiceDesignVersion("networkServiceDesignVersion",
///     location="eastus",
///     network_service_design_group_name="TestNetworkServiceDesignGroupName",
///     network_service_design_version_name="1.0.0",
///     properties={
///         "configuration_group_schema_references": {
///             "MyVM_Configuration": {
///                 "id": "/subscriptions/subid/resourcegroups/contosorg1/providers/microsoft.hybridnetwork/publishers/contosoGroup/networkServiceDesignGroups/NSD_contoso/configurationGroupSchemas/MyVM_Configuration_Schema",
///             },
///         },
///         "resource_element_templates": [{
///             "configuration": {
///                 "artifact_profile": {
///                     "artifact_name": "MyVMArmTemplate",
///                     "artifact_store_reference": {
///                         "id": "/subscriptions/subid/providers/Microsoft.HybridNetwork/publishers/contosoGroup/artifactStoreReference/store1",
///                     },
///                     "artifact_version": "1.0.0",
///                 },
///                 "parameter_values": "{\"publisherName\":\"{configurationparameters('MyVM_Configuration').publisherName}\",\"skuGroupName\":\"{configurationparameters('MyVM_Configuration').skuGroupName}\",\"skuVersion\":\"{configurationparameters('MyVM_Configuration').skuVersion}\",\"skuOfferingLocation\":\"{configurationparameters('MyVM_Configuration').skuOfferingLocation}\",\"nfviType\":\"{nfvis().nfvisFromSitePerNfviType.AzureCore.nfviAlias1.nfviType}\",\"nfviId\":\"{nfvis().nfvisFromSitePerNfviType.AzureCore.nfviAlias1.nfviId}\",\"allowSoftwareUpdates\":\"{configurationparameters('MyVM_Configuration').allowSoftwareUpdates}\",\"virtualNetworkName\":\"{configurationparameters('MyVM_Configuration').vnetName}\",\"subnetName\":\"{configurationparameters('MyVM_Configuration').subnetName}\",\"subnetAddressPrefix\":\"{configurationparameters('MyVM_Configuration').subnetAddressPrefix}\",\"managedResourceGroup\":\"{configurationparameters('SNSSelf').managedResourceGroupName}\",\"adminPassword\":\"{secretparameters('MyVM_Configuration').adminPassword}\"}",
///                 "template_type": azure_native.hybridnetwork.TemplateType.ARM_TEMPLATE,
///             },
///             "depends_on_profile": {
///                 "install_depends_on": [],
///             },
///             "name": "MyVM",
///             "resource_element_type": "ArmResourceDefinition",
///         }],
///     },
///     publisher_name="TestPublisher",
///     resource_group_name="rg")
///
/// ```
///
/// ```yaml
/// resources:
///   networkServiceDesignVersion:
///     type: azure-native:hybridnetwork:NetworkServiceDesignVersion
///     properties:
///       location: eastus
///       networkServiceDesignGroupName: TestNetworkServiceDesignGroupName
///       networkServiceDesignVersionName: 1.0.0
///       properties:
///         configurationGroupSchemaReferences:
///           MyVM_Configuration:
///             id: /subscriptions/subid/resourcegroups/contosorg1/providers/microsoft.hybridnetwork/publishers/contosoGroup/networkServiceDesignGroups/NSD_contoso/configurationGroupSchemas/MyVM_Configuration_Schema
///         resourceElementTemplates:
///           - configuration:
///               artifactProfile:
///                 artifactName: MyVMArmTemplate
///                 artifactStoreReference:
///                   id: /subscriptions/subid/providers/Microsoft.HybridNetwork/publishers/contosoGroup/artifactStoreReference/store1
///                 artifactVersion: 1.0.0
///               parameterValues: '{"publisherName":"{configurationparameters(''MyVM_Configuration'').publisherName}","skuGroupName":"{configurationparameters(''MyVM_Configuration'').skuGroupName}","skuVersion":"{configurationparameters(''MyVM_Configuration'').skuVersion}","skuOfferingLocation":"{configurationparameters(''MyVM_Configuration'').skuOfferingLocation}","nfviType":"{nfvis().nfvisFromSitePerNfviType.AzureCore.nfviAlias1.nfviType}","nfviId":"{nfvis().nfvisFromSitePerNfviType.AzureCore.nfviAlias1.nfviId}","allowSoftwareUpdates":"{configurationparameters(''MyVM_Configuration'').allowSoftwareUpdates}","virtualNetworkName":"{configurationparameters(''MyVM_Configuration'').vnetName}","subnetName":"{configurationparameters(''MyVM_Configuration'').subnetName}","subnetAddressPrefix":"{configurationparameters(''MyVM_Configuration'').subnetAddressPrefix}","managedResourceGroup":"{configurationparameters(''SNSSelf'').managedResourceGroupName}","adminPassword":"{secretparameters(''MyVM_Configuration'').adminPassword}"}'
///               templateType: ArmTemplate
///             dependsOnProfile:
///               installDependsOn: []
///             name: MyVM
///             resourceElementType: ArmResourceDefinition
///       publisherName: TestPublisher
///       resourceGroupName: rg
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
/// $ pulumi import azure-native:hybridnetwork:NetworkServiceDesignVersion TestVersion /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HybridNetwork/publishers/{publisherName}/networkServiceDesignGroups/{networkServiceDesignGroupName}/networkServiceDesignVersions/{networkServiceDesignVersionName}
/// ```
class NetworkServiceDesignVersion extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// network service design version properties.
  late final pulumi.Output<NetworkServiceDesignVersionPropertiesFormatResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [NetworkServiceDesignVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkServiceDesignVersion]. {@macro pulumi_hybridnetwork_network_service_design_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkServiceDesignVersion(
    String name, {
    NetworkServiceDesignVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:hybridnetwork:NetworkServiceDesignVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<NetworkServiceDesignVersionPropertiesFormatResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkServiceDesignVersionPropertiesFormatResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
