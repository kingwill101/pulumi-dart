import 'package:pulumi/pulumi.dart' as pulumi;
import 'containerized_network_function_definition_version_response.dart';
import 'network_function_definition_version_args.dart';
import 'system_data_response.dart';

/// Network function definition version.
///
/// Uses Azure REST API version 2024-04-15. In version 2.x of the Azure Native provider, it used API version 2023-09-01.
///
/// Other available API versions: 2023-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridnetwork [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a network function definition version resource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var networkFunctionDefinitionVersion = new AzureNative.HybridNetwork.NetworkFunctionDefinitionVersion("networkFunctionDefinitionVersion", new()
///     {
///         Location = "eastus",
///         NetworkFunctionDefinitionGroupName = "TestNetworkFunctionDefinitionGroupName",
///         NetworkFunctionDefinitionVersionName = "1.0.0",
///         Properties = new AzureNative.HybridNetwork.Inputs.ContainerizedNetworkFunctionDefinitionVersionArgs
///         {
///             DeployParameters = "{\"type\":\"object\",\"properties\":{\"releaseName\":{\"type\":\"string\"},\"namespace\":{\"type\":\"string\"}}}",
///             NetworkFunctionTemplate = new AzureNative.HybridNetwork.Inputs.AzureArcKubernetesNetworkFunctionTemplateArgs
///             {
///                 NetworkFunctionApplications = new[]
///                 {
///                     new AzureNative.HybridNetwork.Inputs.AzureArcKubernetesHelmApplicationArgs
///                     {
///                         ArtifactProfile = new AzureNative.HybridNetwork.Inputs.AzureArcKubernetesArtifactProfileArgs
///                         {
///                             ArtifactStore = new AzureNative.HybridNetwork.Inputs.ReferencedResourceArgs
///                             {
///                                 Id = "/subscriptions/subid/resourcegroups/rg/providers/microsoft.hybridnetwork/publishers/TestPublisher/artifactStores/testArtifactStore",
///                             },
///                             HelmArtifactProfile = new AzureNative.HybridNetwork.Inputs.HelmArtifactProfileArgs
///                             {
///                                 HelmPackageName = "fed-rbac",
///                                 HelmPackageVersionRange = "~2.1.3",
///                                 ImagePullSecretsValuesPaths = new[]
///                                 {
///                                     "global.imagePullSecrets",
///                                 },
///                                 RegistryValuesPaths = new[]
///                                 {
///                                     "global.registry.docker.repoPath",
///                                 },
///                             },
///                         },
///                         ArtifactType = "HelmPackage",
///                         DependsOnProfile = new AzureNative.HybridNetwork.Inputs.DependsOnProfileArgs
///                         {
///                             InstallDependsOn = new() { },
///                             UninstallDependsOn = new() { },
///                             UpdateDependsOn = new() { },
///                         },
///                         DeployParametersMappingRuleProfile = new AzureNative.HybridNetwork.Inputs.AzureArcKubernetesDeployMappingRuleProfileArgs
///                         {
///                             ApplicationEnablement = AzureNative.HybridNetwork.ApplicationEnablement.Enabled,
///                             HelmMappingRuleProfile = new AzureNative.HybridNetwork.Inputs.HelmMappingRuleProfileArgs
///                             {
///                                 HelmPackageVersion = "2.1.3",
///                                 Options = new AzureNative.HybridNetwork.Inputs.HelmMappingRuleProfileOptionsArgs
///                                 {
///                                     InstallOptions = new AzureNative.HybridNetwork.Inputs.HelmInstallOptionsArgs
///                                     {
///                                         Atomic = "true",
///                                         Timeout = "30",
///                                         Wait = "waitValue",
///                                     },
///                                     UpgradeOptions = new AzureNative.HybridNetwork.Inputs.HelmUpgradeOptionsArgs
///                                     {
///                                         Atomic = "true",
///                                         Timeout = "30",
///                                         Wait = "waitValue",
///                                     },
///                                 },
///                                 ReleaseName = "{deployParameters.releaseName}",
///                                 ReleaseNamespace = "{deployParameters.namesapce}",
///                                 Values = "",
///                             },
///                         },
///                         Name = "fedrbac",
///                     },
///                 },
///                 NfviType = "AzureArcKubernetes",
///             },
///             NetworkFunctionType = "ContainerizedNetworkFunction",
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
/// 		_, err := hybridnetwork.NewNetworkFunctionDefinitionVersion(ctx, "networkFunctionDefinitionVersion", &hybridnetwork.NetworkFunctionDefinitionVersionArgs{
/// 			Location:                             pulumi.String("eastus"),
/// 			NetworkFunctionDefinitionGroupName:   pulumi.String("TestNetworkFunctionDefinitionGroupName"),
/// 			NetworkFunctionDefinitionVersionName: pulumi.String("1.0.0"),
/// 			Properties: &hybridnetwork.ContainerizedNetworkFunctionDefinitionVersionArgs{
/// 				DeployParameters: pulumi.String("{\"type\":\"object\",\"properties\":{\"releaseName\":{\"type\":\"string\"},\"namespace\":{\"type\":\"string\"}}}"),
/// 				NetworkFunctionTemplate: &hybridnetwork.AzureArcKubernetesNetworkFunctionTemplateArgs{
/// 					NetworkFunctionApplications: hybridnetwork.AzureArcKubernetesHelmApplicationArray{
/// 						&hybridnetwork.AzureArcKubernetesHelmApplicationArgs{
/// 							ArtifactProfile: &hybridnetwork.AzureArcKubernetesArtifactProfileArgs{
/// 								ArtifactStore: &hybridnetwork.ReferencedResourceArgs{
/// 									Id: pulumi.String("/subscriptions/subid/resourcegroups/rg/providers/microsoft.hybridnetwork/publishers/TestPublisher/artifactStores/testArtifactStore"),
/// 								},
/// 								HelmArtifactProfile: &hybridnetwork.HelmArtifactProfileArgs{
/// 									HelmPackageName:         pulumi.String("fed-rbac"),
/// 									HelmPackageVersionRange: pulumi.String("~2.1.3"),
/// 									ImagePullSecretsValuesPaths: pulumi.StringArray{
/// 										pulumi.String("global.imagePullSecrets"),
/// 									},
/// 									RegistryValuesPaths: pulumi.StringArray{
/// 										pulumi.String("global.registry.docker.repoPath"),
/// 									},
/// 								},
/// 							},
/// 							ArtifactType: pulumi.String("HelmPackage"),
/// 							DependsOnProfile: &hybridnetwork.DependsOnProfileArgs{
/// 								InstallDependsOn:   pulumi.StringArray{},
/// 								UninstallDependsOn: pulumi.StringArray{},
/// 								UpdateDependsOn:    pulumi.StringArray{},
/// 							},
/// 							DeployParametersMappingRuleProfile: &hybridnetwork.AzureArcKubernetesDeployMappingRuleProfileArgs{
/// 								ApplicationEnablement: pulumi.String(hybridnetwork.ApplicationEnablementEnabled),
/// 								HelmMappingRuleProfile: &hybridnetwork.HelmMappingRuleProfileArgs{
/// 									HelmPackageVersion: pulumi.String("2.1.3"),
/// 									Options: &hybridnetwork.HelmMappingRuleProfileOptionsArgs{
/// 										InstallOptions: &hybridnetwork.HelmInstallOptionsArgs{
/// 											Atomic:  pulumi.String("true"),
/// 											Timeout: pulumi.String("30"),
/// 											Wait:    pulumi.String("waitValue"),
/// 										},
/// 										UpgradeOptions: &hybridnetwork.HelmUpgradeOptionsArgs{
/// 											Atomic:  pulumi.String("true"),
/// 											Timeout: pulumi.String("30"),
/// 											Wait:    pulumi.String("waitValue"),
/// 										},
/// 									},
/// 									ReleaseName:      pulumi.String("{deployParameters.releaseName}"),
/// 									ReleaseNamespace: pulumi.String("{deployParameters.namesapce}"),
/// 									Values:           pulumi.String(""),
/// 								},
/// 							},
/// 							Name: pulumi.String("fedrbac"),
/// 						},
/// 					},
/// 					NfviType: pulumi.String("AzureArcKubernetes"),
/// 				},
/// 				NetworkFunctionType: pulumi.String("ContainerizedNetworkFunction"),
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
/// import com.pulumi.azurenative.hybridnetwork.NetworkFunctionDefinitionVersion;
/// import com.pulumi.azurenative.hybridnetwork.NetworkFunctionDefinitionVersionArgs;
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
///         var networkFunctionDefinitionVersion = new NetworkFunctionDefinitionVersion("networkFunctionDefinitionVersion", NetworkFunctionDefinitionVersionArgs.builder()
///             .location("eastus")
///             .networkFunctionDefinitionGroupName("TestNetworkFunctionDefinitionGroupName")
///             .networkFunctionDefinitionVersionName("1.0.0")
///             .properties(ContainerizedNetworkFunctionDefinitionVersionArgs.builder()
///                 .deployParameters("{\"type\":\"object\",\"properties\":{\"releaseName\":{\"type\":\"string\"},\"namespace\":{\"type\":\"string\"}}}")
///                 .networkFunctionTemplate(Map.ofEntries(
///                     Map.entry("networkFunctionApplications", Map.ofEntries(
///                         Map.entry("artifactProfile", AzureArcKubernetesArtifactProfileArgs.builder()
///                             .artifactStore(ReferencedResourceArgs.builder()
///                                 .id("/subscriptions/subid/resourcegroups/rg/providers/microsoft.hybridnetwork/publishers/TestPublisher/artifactStores/testArtifactStore")
///                                 .build())
///                             .helmArtifactProfile(HelmArtifactProfileArgs.builder()
///                                 .helmPackageName("fed-rbac")
///                                 .helmPackageVersionRange("~2.1.3")
///                                 .imagePullSecretsValuesPaths("global.imagePullSecrets")
///                                 .registryValuesPaths("global.registry.docker.repoPath")
///                                 .build())
///                             .build()),
///                         Map.entry("artifactType", "HelmPackage"),
///                         Map.entry("dependsOnProfile", DependsOnProfileArgs.builder()
///                             .installDependsOn()
///                             .uninstallDependsOn()
///                             .updateDependsOn()
///                             .build()),
///                         Map.entry("deployParametersMappingRuleProfile", AzureArcKubernetesDeployMappingRuleProfileArgs.builder()
///                             .applicationEnablement("Enabled")
///                             .helmMappingRuleProfile(HelmMappingRuleProfileArgs.builder()
///                                 .helmPackageVersion("2.1.3")
///                                 .options(HelmMappingRuleProfileOptionsArgs.builder()
///                                     .installOptions(HelmInstallOptionsArgs.builder()
///                                         .atomic("true")
///                                         .timeout("30")
///                                         .wait("waitValue")
///                                         .build())
///                                     .upgradeOptions(HelmUpgradeOptionsArgs.builder()
///                                         .atomic("true")
///                                         .timeout("30")
///                                         .wait("waitValue")
///                                         .build())
///                                     .build())
///                                 .releaseName("{deployParameters.releaseName}")
///                                 .releaseNamespace("{deployParameters.namesapce}")
///                                 .values("")
///                                 .build())
///                             .build()),
///                         Map.entry("name", "fedrbac")
///                     )),
///                     Map.entry("nfviType", "AzureArcKubernetes")
///                 ))
///                 .networkFunctionType("ContainerizedNetworkFunction")
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
/// const networkFunctionDefinitionVersion = new azure_native.hybridnetwork.NetworkFunctionDefinitionVersion("networkFunctionDefinitionVersion", {
///     location: "eastus",
///     networkFunctionDefinitionGroupName: "TestNetworkFunctionDefinitionGroupName",
///     networkFunctionDefinitionVersionName: "1.0.0",
///     properties: {
///         deployParameters: "{\"type\":\"object\",\"properties\":{\"releaseName\":{\"type\":\"string\"},\"namespace\":{\"type\":\"string\"}}}",
///         networkFunctionTemplate: {
///             networkFunctionApplications: [{
///                 artifactProfile: {
///                     artifactStore: {
///                         id: "/subscriptions/subid/resourcegroups/rg/providers/microsoft.hybridnetwork/publishers/TestPublisher/artifactStores/testArtifactStore",
///                     },
///                     helmArtifactProfile: {
///                         helmPackageName: "fed-rbac",
///                         helmPackageVersionRange: "~2.1.3",
///                         imagePullSecretsValuesPaths: ["global.imagePullSecrets"],
///                         registryValuesPaths: ["global.registry.docker.repoPath"],
///                     },
///                 },
///                 artifactType: "HelmPackage",
///                 dependsOnProfile: {
///                     installDependsOn: [],
///                     uninstallDependsOn: [],
///                     updateDependsOn: [],
///                 },
///                 deployParametersMappingRuleProfile: {
///                     applicationEnablement: azure_native.hybridnetwork.ApplicationEnablement.Enabled,
///                     helmMappingRuleProfile: {
///                         helmPackageVersion: "2.1.3",
///                         options: {
///                             installOptions: {
///                                 atomic: "true",
///                                 timeout: "30",
///                                 wait: "waitValue",
///                             },
///                             upgradeOptions: {
///                                 atomic: "true",
///                                 timeout: "30",
///                                 wait: "waitValue",
///                             },
///                         },
///                         releaseName: "{deployParameters.releaseName}",
///                         releaseNamespace: "{deployParameters.namesapce}",
///                         values: "",
///                     },
///                 },
///                 name: "fedrbac",
///             }],
///             nfviType: "AzureArcKubernetes",
///         },
///         networkFunctionType: "ContainerizedNetworkFunction",
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
/// network_function_definition_version = azure_native.hybridnetwork.NetworkFunctionDefinitionVersion("networkFunctionDefinitionVersion",
///     location="eastus",
///     network_function_definition_group_name="TestNetworkFunctionDefinitionGroupName",
///     network_function_definition_version_name="1.0.0",
///     properties={
///         "deploy_parameters": "{\"type\":\"object\",\"properties\":{\"releaseName\":{\"type\":\"string\"},\"namespace\":{\"type\":\"string\"}}}",
///         "network_function_template": {
///             "network_function_applications": [{
///                 "artifact_profile": {
///                     "artifact_store": {
///                         "id": "/subscriptions/subid/resourcegroups/rg/providers/microsoft.hybridnetwork/publishers/TestPublisher/artifactStores/testArtifactStore",
///                     },
///                     "helm_artifact_profile": {
///                         "helm_package_name": "fed-rbac",
///                         "helm_package_version_range": "~2.1.3",
///                         "image_pull_secrets_values_paths": ["global.imagePullSecrets"],
///                         "registry_values_paths": ["global.registry.docker.repoPath"],
///                     },
///                 },
///                 "artifact_type": "HelmPackage",
///                 "depends_on_profile": {
///                     "install_depends_on": [],
///                     "uninstall_depends_on": [],
///                     "update_depends_on": [],
///                 },
///                 "deploy_parameters_mapping_rule_profile": {
///                     "application_enablement": azure_native.hybridnetwork.ApplicationEnablement.ENABLED,
///                     "helm_mapping_rule_profile": {
///                         "helm_package_version": "2.1.3",
///                         "options": {
///                             "install_options": {
///                                 "atomic": "true",
///                                 "timeout": "30",
///                                 "wait": "waitValue",
///                             },
///                             "upgrade_options": {
///                                 "atomic": "true",
///                                 "timeout": "30",
///                                 "wait": "waitValue",
///                             },
///                         },
///                         "release_name": "{deployParameters.releaseName}",
///                         "release_namespace": "{deployParameters.namesapce}",
///                         "values": "",
///                     },
///                 },
///                 "name": "fedrbac",
///             }],
///             "nfvi_type": "AzureArcKubernetes",
///         },
///         "network_function_type": "ContainerizedNetworkFunction",
///     },
///     publisher_name="TestPublisher",
///     resource_group_name="rg")
///
/// ```
///
/// ```yaml
/// resources:
///   networkFunctionDefinitionVersion:
///     type: azure-native:hybridnetwork:NetworkFunctionDefinitionVersion
///     properties:
///       location: eastus
///       networkFunctionDefinitionGroupName: TestNetworkFunctionDefinitionGroupName
///       networkFunctionDefinitionVersionName: 1.0.0
///       properties:
///         deployParameters: '{"type":"object","properties":{"releaseName":{"type":"string"},"namespace":{"type":"string"}}}'
///         networkFunctionTemplate:
///           networkFunctionApplications:
///             - artifactProfile:
///                 artifactStore:
///                   id: /subscriptions/subid/resourcegroups/rg/providers/microsoft.hybridnetwork/publishers/TestPublisher/artifactStores/testArtifactStore
///                 helmArtifactProfile:
///                   helmPackageName: fed-rbac
///                   helmPackageVersionRange: ~2.1.3
///                   imagePullSecretsValuesPaths:
///                     - global.imagePullSecrets
///                   registryValuesPaths:
///                     - global.registry.docker.repoPath
///               artifactType: HelmPackage
///               dependsOnProfile:
///                 installDependsOn: []
///                 uninstallDependsOn: []
///                 updateDependsOn: []
///               deployParametersMappingRuleProfile:
///                 applicationEnablement: Enabled
///                 helmMappingRuleProfile:
///                   helmPackageVersion: 2.1.3
///                   options:
///                     installOptions:
///                       atomic: 'true'
///                       timeout: '30'
///                       wait: waitValue
///                     upgradeOptions:
///                       atomic: 'true'
///                       timeout: '30'
///                       wait: waitValue
///                   releaseName: '{deployParameters.releaseName}'
///                   releaseNamespace: '{deployParameters.namesapce}'
///                   values: ""
///               name: fedrbac
///           nfviType: AzureArcKubernetes
///         networkFunctionType: ContainerizedNetworkFunction
///       publisherName: TestPublisher
///       resourceGroupName: rg
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update a network function definition version resource for AzureCore VNF
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var networkFunctionDefinitionVersion = new AzureNative.HybridNetwork.NetworkFunctionDefinitionVersion("networkFunctionDefinitionVersion", new()
///     {
///         Location = "eastus",
///         NetworkFunctionDefinitionGroupName = "TestNetworkFunctionDefinitionGroupName",
///         NetworkFunctionDefinitionVersionName = "1.0.0",
///         Properties = new AzureNative.HybridNetwork.Inputs.VirtualNetworkFunctionNetworkFunctionDefinitionVersionArgs
///         {
///             DeployParameters = "{\"virtualMachineName\":{\"type\":\"string\"},\"cpuCores\":{\"type\":\"int\"},\"memorySizeGB\":{\"type\":\"int\"},\"cloudServicesNetworkAttachment\":{\"type\":\"object\",\"properties\":{\"networkAttachmentName\":{\"type\":\"string\"},\"attachedNetworkId\":{\"type\":\"string\"},\"ipAllocationMethod\":{\"type\":\"string\"},\"ipv4Address\":{\"type\":\"string\"},\"ipv6Address\":{\"type\":\"string\"},\"defaultGateway\":{\"type\":\"string\"}},\"required\":[\"attachedNetworkId\",\"ipAllocationMethod\"]},\"networkAttachments\":{\"type\":\"array\",\"items\":{\"type\":\"object\",\"properties\":{\"networkAttachmentName\":{\"type\":\"string\"},\"attachedNetworkId\":{\"type\":\"string\"},\"ipAllocationMethod\":{\"type\":\"string\"},\"ipv4Address\":{\"type\":\"string\"},\"ipv6Address\":{\"type\":\"string\"},\"defaultGateway\":{\"type\":\"string\"}},\"required\":[\"attachedNetworkId\",\"ipAllocationMethod\"]}},\"storageProfile\":{\"type\":\"object\",\"properties\":{\"osDisk\":{\"type\":\"object\",\"properties\":{\"createOption\":{\"type\":\"string\"},\"deleteOption\":{\"type\":\"string\"},\"diskSizeGB\":{\"type\":\"integer\"}},\"required\":[\"diskSizeGB\"]}},\"required\":[\"osDisk\"]},\"sshPublicKeys\":{\"type\":\"array\",\"items\":{\"type\":\"object\",\"properties\":{\"keyData\":{\"type\":\"string\"}},\"required\":[\"keyData\"]}},\"userData\":{\"type\":\"string\"},\"adminUsername\":{\"type\":\"string\"},\"bootMethod\":{\"type\":\"string\",\"default\":\"UEFI\",\"enum\":[\"UEFI\",\"BIOS\"]},\"isolateEmulatorThread\":{\"type\":\"string\"},\"virtioInterface\":{\"type\":\"string\"},\"placementHints\":{\"type\":\"array\",\"items\":{\"type\":\"object\",\"properties\":{\"hintType\":{\"type\":\"string\",\"enum\":[\"Affinity\",\"AntiAffinity\"]},\"resourceId\":{\"type\":\"string\"},\"schedulingExecution\":{\"type\":\"string\",\"enum\":[\"Soft\",\"Hard\"]},\"scope\":{\"type\":\"string\"}},\"required\":[\"hintType\",\"schedulingExecution\",\"resourceId\",\"scope\"]}}}",
///             Description = "test NFDV for AzureCore",
///             NetworkFunctionTemplate = new AzureNative.HybridNetwork.Inputs.AzureCoreNetworkFunctionTemplateArgs
///             {
///                 NetworkFunctionApplications =
///                 {
///                     new AzureNative.HybridNetwork.Inputs.AzureCoreNetworkFunctionVhdApplicationArgs
///                     {
///                         ArtifactProfile = new AzureNative.HybridNetwork.Inputs.AzureCoreVhdImageArtifactProfileArgs
///                         {
///                             ArtifactStore = new AzureNative.HybridNetwork.Inputs.ReferencedResourceArgs
///                             {
///                                 Id = "/subscriptions/subid/resourceGroups/rg/providers/microsoft.hybridnetwork/publishers/TestPublisher/artifactStores/TestArtifactStore",
///                             },
///                             VhdArtifactProfile = new AzureNative.HybridNetwork.Inputs.VhdImageArtifactProfileArgs
///                             {
///                                 VhdName = "test-image",
///                                 VhdVersion = "1-0-0",
///                             },
///                         },
///                         ArtifactType = "VhdImageFile",
///                         DependsOnProfile = new AzureNative.HybridNetwork.Inputs.DependsOnProfileArgs
///                         {
///                             InstallDependsOn = new() { },
///                             UninstallDependsOn = new() { },
///                             UpdateDependsOn = new() { },
///                         },
///                         DeployParametersMappingRuleProfile = new AzureNative.HybridNetwork.Inputs.AzureCoreVhdImageDeployMappingRuleProfileArgs
///                         {
///                             ApplicationEnablement = AzureNative.HybridNetwork.ApplicationEnablement.Unknown,
///                             VhdImageMappingRuleProfile = new AzureNative.HybridNetwork.Inputs.VhdImageMappingRuleProfileArgs
///                             {
///                                 UserConfiguration = "",
///                             },
///                         },
///                         Name = "testImageRole",
///                     },
///                     new AzureNative.HybridNetwork.Inputs.AzureCoreNetworkFunctionArmTemplateApplicationArgs
///                     {
///                         ArtifactProfile = new AzureNative.HybridNetwork.Inputs.AzureCoreArmTemplateArtifactProfileArgs
///                         {
///                             ArtifactStore = new AzureNative.HybridNetwork.Inputs.ReferencedResourceArgs
///                             {
///                                 Id = "/subscriptions/subid/resourceGroups/rg/providers/microsoft.hybridnetwork/publishers/TestPublisher/artifactStores/TestArtifactStore",
///                             },
///                             TemplateArtifactProfile = new AzureNative.HybridNetwork.Inputs.ArmTemplateArtifactProfileArgs
///                             {
///                                 TemplateName = "test-template",
///                                 TemplateVersion = "1.0.0",
///                             },
///                         },
///                         ArtifactType = "ArmTemplate",
///                         DependsOnProfile = new AzureNative.HybridNetwork.Inputs.DependsOnProfileArgs
///                         {
///                             InstallDependsOn = new[]
///                             {
///                                 "testImageRole",
///                             },
///                             UninstallDependsOn = new[]
///                             {
///                                 "testImageRole",
///                             },
///                             UpdateDependsOn = new[]
///                             {
///                                 "testImageRole",
///                             },
///                         },
///                         DeployParametersMappingRuleProfile = new AzureNative.HybridNetwork.Inputs.AzureCoreArmTemplateDeployMappingRuleProfileArgs
///                         {
///                             ApplicationEnablement = AzureNative.HybridNetwork.ApplicationEnablement.Unknown,
///                             TemplateMappingRuleProfile = new AzureNative.HybridNetwork.Inputs.ArmTemplateMappingRuleProfileArgs
///                             {
///                                 TemplateParameters = "{\"virtualMachineName\":\"{deployParameters.virtualMachineName}\",\"cpuCores\":\"{deployParameters.cpuCores}\",\"memorySizeGB\":\"{deployParameters.memorySizeGB}\",\"cloudServicesNetworkAttachment\":\"{deployParameters.cloudServicesNetworkAttachment}\",\"networkAttachments\":\"{deployParameters.networkAttachments}\",\"sshPublicKeys\":\"{deployParameters.sshPublicKeys}\",\"storageProfile\":\"{deployParameters.storageProfile}\",\"isolateEmulatorThread\":\"{deployParameters.isolateEmulatorThread}\",\"virtioInterface\":\"{deployParameters.virtioInterface}\",\"userData\":\"{deployParameters.userData}\",\"adminUsername\":\"{deployParameters.adminUsername}\",\"bootMethod\":\"{deployParameters.bootMethod}\",\"placementHints\":\"{deployParameters.placementHints}\"}",
///                             },
///                         },
///                         Name = "testTemplateRole",
///                     },
///                 },
///                 NfviType = "AzureCore",
///             },
///             NetworkFunctionType = "VirtualNetworkFunction",
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
/// 		_, err := hybridnetwork.NewNetworkFunctionDefinitionVersion(ctx, "networkFunctionDefinitionVersion", &hybridnetwork.NetworkFunctionDefinitionVersionArgs{
/// 			Location:                             pulumi.String("eastus"),
/// 			NetworkFunctionDefinitionGroupName:   pulumi.String("TestNetworkFunctionDefinitionGroupName"),
/// 			NetworkFunctionDefinitionVersionName: pulumi.String("1.0.0"),
/// 			Properties: &hybridnetwork.VirtualNetworkFunctionNetworkFunctionDefinitionVersionArgs{
/// 				DeployParameters: pulumi.String("{\"virtualMachineName\":{\"type\":\"string\"},\"cpuCores\":{\"type\":\"int\"},\"memorySizeGB\":{\"type\":\"int\"},\"cloudServicesNetworkAttachment\":{\"type\":\"object\",\"properties\":{\"networkAttachmentName\":{\"type\":\"string\"},\"attachedNetworkId\":{\"type\":\"string\"},\"ipAllocationMethod\":{\"type\":\"string\"},\"ipv4Address\":{\"type\":\"string\"},\"ipv6Address\":{\"type\":\"string\"},\"defaultGateway\":{\"type\":\"string\"}},\"required\":[\"attachedNetworkId\",\"ipAllocationMethod\"]},\"networkAttachments\":{\"type\":\"array\",\"items\":{\"type\":\"object\",\"properties\":{\"networkAttachmentName\":{\"type\":\"string\"},\"attachedNetworkId\":{\"type\":\"string\"},\"ipAllocationMethod\":{\"type\":\"string\"},\"ipv4Address\":{\"type\":\"string\"},\"ipv6Address\":{\"type\":\"string\"},\"defaultGateway\":{\"type\":\"string\"}},\"required\":[\"attachedNetworkId\",\"ipAllocationMethod\"]}},\"storageProfile\":{\"type\":\"object\",\"properties\":{\"osDisk\":{\"type\":\"object\",\"properties\":{\"createOption\":{\"type\":\"string\"},\"deleteOption\":{\"type\":\"string\"},\"diskSizeGB\":{\"type\":\"integer\"}},\"required\":[\"diskSizeGB\"]}},\"required\":[\"osDisk\"]},\"sshPublicKeys\":{\"type\":\"array\",\"items\":{\"type\":\"object\",\"properties\":{\"keyData\":{\"type\":\"string\"}},\"required\":[\"keyData\"]}},\"userData\":{\"type\":\"string\"},\"adminUsername\":{\"type\":\"string\"},\"bootMethod\":{\"type\":\"string\",\"default\":\"UEFI\",\"enum\":[\"UEFI\",\"BIOS\"]},\"isolateEmulatorThread\":{\"type\":\"string\"},\"virtioInterface\":{\"type\":\"string\"},\"placementHints\":{\"type\":\"array\",\"items\":{\"type\":\"object\",\"properties\":{\"hintType\":{\"type\":\"string\",\"enum\":[\"Affinity\",\"AntiAffinity\"]},\"resourceId\":{\"type\":\"string\"},\"schedulingExecution\":{\"type\":\"string\",\"enum\":[\"Soft\",\"Hard\"]},\"scope\":{\"type\":\"string\"}},\"required\":[\"hintType\",\"schedulingExecution\",\"resourceId\",\"scope\"]}}}"),
/// 				Description:      pulumi.String("test NFDV for AzureCore"),
/// 				NetworkFunctionTemplate: hybridnetwork.AzureCoreNetworkFunctionTemplate{
/// 					NetworkFunctionApplications: []interface{}{
/// 						hybridnetwork.AzureCoreNetworkFunctionVhdApplication{
/// 							ArtifactProfile: hybridnetwork.AzureCoreVhdImageArtifactProfile{
/// 								ArtifactStore: hybridnetwork.ReferencedResource{
/// 									Id: "/subscriptions/subid/resourceGroups/rg/providers/microsoft.hybridnetwork/publishers/TestPublisher/artifactStores/TestArtifactStore",
/// 								},
/// 								VhdArtifactProfile: hybridnetwork.VhdImageArtifactProfile{
/// 									VhdName:    "test-image",
/// 									VhdVersion: "1-0-0",
/// 								},
/// 							},
/// 							ArtifactType: "VhdImageFile",
/// 							DependsOnProfile: hybridnetwork.DependsOnProfile{
/// 								InstallDependsOn:   []interface{}{},
/// 								UninstallDependsOn: []interface{}{},
/// 								UpdateDependsOn:    []interface{}{},
/// 							},
/// 							DeployParametersMappingRuleProfile: hybridnetwork.AzureCoreVhdImageDeployMappingRuleProfile{
/// 								ApplicationEnablement: hybridnetwork.ApplicationEnablementUnknown,
/// 								VhdImageMappingRuleProfile: hybridnetwork.VhdImageMappingRuleProfile{
/// 									UserConfiguration: "",
/// 								},
/// 							},
/// 							Name: "testImageRole",
/// 						},
/// 						hybridnetwork.AzureCoreNetworkFunctionArmTemplateApplication{
/// 							ArtifactProfile: hybridnetwork.AzureCoreArmTemplateArtifactProfile{
/// 								ArtifactStore: hybridnetwork.ReferencedResource{
/// 									Id: "/subscriptions/subid/resourceGroups/rg/providers/microsoft.hybridnetwork/publishers/TestPublisher/artifactStores/TestArtifactStore",
/// 								},
/// 								TemplateArtifactProfile: hybridnetwork.ArmTemplateArtifactProfile{
/// 									TemplateName:    "test-template",
/// 									TemplateVersion: "1.0.0",
/// 								},
/// 							},
/// 							ArtifactType: "ArmTemplate",
/// 							DependsOnProfile: hybridnetwork.DependsOnProfile{
/// 								InstallDependsOn: []string{
/// 									"testImageRole",
/// 								},
/// 								UninstallDependsOn: []string{
/// 									"testImageRole",
/// 								},
/// 								UpdateDependsOn: []string{
/// 									"testImageRole",
/// 								},
/// 							},
/// 							DeployParametersMappingRuleProfile: hybridnetwork.AzureCoreArmTemplateDeployMappingRuleProfile{
/// 								ApplicationEnablement: hybridnetwork.ApplicationEnablementUnknown,
/// 								TemplateMappingRuleProfile: hybridnetwork.ArmTemplateMappingRuleProfile{
/// 									TemplateParameters: "{\"virtualMachineName\":\"{deployParameters.virtualMachineName}\",\"cpuCores\":\"{deployParameters.cpuCores}\",\"memorySizeGB\":\"{deployParameters.memorySizeGB}\",\"cloudServicesNetworkAttachment\":\"{deployParameters.cloudServicesNetworkAttachment}\",\"networkAttachments\":\"{deployParameters.networkAttachments}\",\"sshPublicKeys\":\"{deployParameters.sshPublicKeys}\",\"storageProfile\":\"{deployParameters.storageProfile}\",\"isolateEmulatorThread\":\"{deployParameters.isolateEmulatorThread}\",\"virtioInterface\":\"{deployParameters.virtioInterface}\",\"userData\":\"{deployParameters.userData}\",\"adminUsername\":\"{deployParameters.adminUsername}\",\"bootMethod\":\"{deployParameters.bootMethod}\",\"placementHints\":\"{deployParameters.placementHints}\"}",
/// 								},
/// 							},
/// 							Name: "testTemplateRole",
/// 						},
/// 					},
/// 					NfviType: "AzureCore",
/// 				},
/// 				NetworkFunctionType: pulumi.String("VirtualNetworkFunction"),
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
/// import com.pulumi.azurenative.hybridnetwork.NetworkFunctionDefinitionVersion;
/// import com.pulumi.azurenative.hybridnetwork.NetworkFunctionDefinitionVersionArgs;
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
///         var networkFunctionDefinitionVersion = new NetworkFunctionDefinitionVersion("networkFunctionDefinitionVersion", NetworkFunctionDefinitionVersionArgs.builder()
///             .location("eastus")
///             .networkFunctionDefinitionGroupName("TestNetworkFunctionDefinitionGroupName")
///             .networkFunctionDefinitionVersionName("1.0.0")
///             .properties(VirtualNetworkFunctionNetworkFunctionDefinitionVersionArgs.builder()
///                 .deployParameters("{\"virtualMachineName\":{\"type\":\"string\"},\"cpuCores\":{\"type\":\"int\"},\"memorySizeGB\":{\"type\":\"int\"},\"cloudServicesNetworkAttachment\":{\"type\":\"object\",\"properties\":{\"networkAttachmentName\":{\"type\":\"string\"},\"attachedNetworkId\":{\"type\":\"string\"},\"ipAllocationMethod\":{\"type\":\"string\"},\"ipv4Address\":{\"type\":\"string\"},\"ipv6Address\":{\"type\":\"string\"},\"defaultGateway\":{\"type\":\"string\"}},\"required\":[\"attachedNetworkId\",\"ipAllocationMethod\"]},\"networkAttachments\":{\"type\":\"array\",\"items\":{\"type\":\"object\",\"properties\":{\"networkAttachmentName\":{\"type\":\"string\"},\"attachedNetworkId\":{\"type\":\"string\"},\"ipAllocationMethod\":{\"type\":\"string\"},\"ipv4Address\":{\"type\":\"string\"},\"ipv6Address\":{\"type\":\"string\"},\"defaultGateway\":{\"type\":\"string\"}},\"required\":[\"attachedNetworkId\",\"ipAllocationMethod\"]}},\"storageProfile\":{\"type\":\"object\",\"properties\":{\"osDisk\":{\"type\":\"object\",\"properties\":{\"createOption\":{\"type\":\"string\"},\"deleteOption\":{\"type\":\"string\"},\"diskSizeGB\":{\"type\":\"integer\"}},\"required\":[\"diskSizeGB\"]}},\"required\":[\"osDisk\"]},\"sshPublicKeys\":{\"type\":\"array\",\"items\":{\"type\":\"object\",\"properties\":{\"keyData\":{\"type\":\"string\"}},\"required\":[\"keyData\"]}},\"userData\":{\"type\":\"string\"},\"adminUsername\":{\"type\":\"string\"},\"bootMethod\":{\"type\":\"string\",\"default\":\"UEFI\",\"enum\":[\"UEFI\",\"BIOS\"]},\"isolateEmulatorThread\":{\"type\":\"string\"},\"virtioInterface\":{\"type\":\"string\"},\"placementHints\":{\"type\":\"array\",\"items\":{\"type\":\"object\",\"properties\":{\"hintType\":{\"type\":\"string\",\"enum\":[\"Affinity\",\"AntiAffinity\"]},\"resourceId\":{\"type\":\"string\"},\"schedulingExecution\":{\"type\":\"string\",\"enum\":[\"Soft\",\"Hard\"]},\"scope\":{\"type\":\"string\"}},\"required\":[\"hintType\",\"schedulingExecution\",\"resourceId\",\"scope\"]}}}")
///                 .description("test NFDV for AzureCore")
///                 .networkFunctionTemplate(AzureCoreNetworkFunctionTemplateArgs.builder()
///                     .networkFunctionApplications(%!v(PANIC=Format method: interface conversion: model.Expression is *model.FunctionCallExpression, not *model.ObjectConsExpression))
///                     .nfviType("AzureCore")
///                     .build())
///                 .networkFunctionType("VirtualNetworkFunction")
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
/// const networkFunctionDefinitionVersion = new azure_native.hybridnetwork.NetworkFunctionDefinitionVersion("networkFunctionDefinitionVersion", {
///     location: "eastus",
///     networkFunctionDefinitionGroupName: "TestNetworkFunctionDefinitionGroupName",
///     networkFunctionDefinitionVersionName: "1.0.0",
///     properties: {
///         deployParameters: "{\"virtualMachineName\":{\"type\":\"string\"},\"cpuCores\":{\"type\":\"int\"},\"memorySizeGB\":{\"type\":\"int\"},\"cloudServicesNetworkAttachment\":{\"type\":\"object\",\"properties\":{\"networkAttachmentName\":{\"type\":\"string\"},\"attachedNetworkId\":{\"type\":\"string\"},\"ipAllocationMethod\":{\"type\":\"string\"},\"ipv4Address\":{\"type\":\"string\"},\"ipv6Address\":{\"type\":\"string\"},\"defaultGateway\":{\"type\":\"string\"}},\"required\":[\"attachedNetworkId\",\"ipAllocationMethod\"]},\"networkAttachments\":{\"type\":\"array\",\"items\":{\"type\":\"object\",\"properties\":{\"networkAttachmentName\":{\"type\":\"string\"},\"attachedNetworkId\":{\"type\":\"string\"},\"ipAllocationMethod\":{\"type\":\"string\"},\"ipv4Address\":{\"type\":\"string\"},\"ipv6Address\":{\"type\":\"string\"},\"defaultGateway\":{\"type\":\"string\"}},\"required\":[\"attachedNetworkId\",\"ipAllocationMethod\"]}},\"storageProfile\":{\"type\":\"object\",\"properties\":{\"osDisk\":{\"type\":\"object\",\"properties\":{\"createOption\":{\"type\":\"string\"},\"deleteOption\":{\"type\":\"string\"},\"diskSizeGB\":{\"type\":\"integer\"}},\"required\":[\"diskSizeGB\"]}},\"required\":[\"osDisk\"]},\"sshPublicKeys\":{\"type\":\"array\",\"items\":{\"type\":\"object\",\"properties\":{\"keyData\":{\"type\":\"string\"}},\"required\":[\"keyData\"]}},\"userData\":{\"type\":\"string\"},\"adminUsername\":{\"type\":\"string\"},\"bootMethod\":{\"type\":\"string\",\"default\":\"UEFI\",\"enum\":[\"UEFI\",\"BIOS\"]},\"isolateEmulatorThread\":{\"type\":\"string\"},\"virtioInterface\":{\"type\":\"string\"},\"placementHints\":{\"type\":\"array\",\"items\":{\"type\":\"object\",\"properties\":{\"hintType\":{\"type\":\"string\",\"enum\":[\"Affinity\",\"AntiAffinity\"]},\"resourceId\":{\"type\":\"string\"},\"schedulingExecution\":{\"type\":\"string\",\"enum\":[\"Soft\",\"Hard\"]},\"scope\":{\"type\":\"string\"}},\"required\":[\"hintType\",\"schedulingExecution\",\"resourceId\",\"scope\"]}}}",
///         description: "test NFDV for AzureCore",
///         networkFunctionTemplate: {
///             networkFunctionApplications: [
///                 {
///                     artifactProfile: {
///                         artifactStore: {
///                             id: "/subscriptions/subid/resourceGroups/rg/providers/microsoft.hybridnetwork/publishers/TestPublisher/artifactStores/TestArtifactStore",
///                         },
///                         vhdArtifactProfile: {
///                             vhdName: "test-image",
///                             vhdVersion: "1-0-0",
///                         },
///                     },
///                     artifactType: "VhdImageFile",
///                     dependsOnProfile: {
///                         installDependsOn: [],
///                         uninstallDependsOn: [],
///                         updateDependsOn: [],
///                     },
///                     deployParametersMappingRuleProfile: {
///                         applicationEnablement: azure_native.hybridnetwork.ApplicationEnablement.Unknown,
///                         vhdImageMappingRuleProfile: {
///                             userConfiguration: "",
///                         },
///                     },
///                     name: "testImageRole",
///                 },
///                 {
///                     artifactProfile: {
///                         artifactStore: {
///                             id: "/subscriptions/subid/resourceGroups/rg/providers/microsoft.hybridnetwork/publishers/TestPublisher/artifactStores/TestArtifactStore",
///                         },
///                         templateArtifactProfile: {
///                             templateName: "test-template",
///                             templateVersion: "1.0.0",
///                         },
///                     },
///                     artifactType: "ArmTemplate",
///                     dependsOnProfile: {
///                         installDependsOn: ["testImageRole"],
///                         uninstallDependsOn: ["testImageRole"],
///                         updateDependsOn: ["testImageRole"],
///                     },
///                     deployParametersMappingRuleProfile: {
///                         applicationEnablement: azure_native.hybridnetwork.ApplicationEnablement.Unknown,
///                         templateMappingRuleProfile: {
///                             templateParameters: "{\"virtualMachineName\":\"{deployParameters.virtualMachineName}\",\"cpuCores\":\"{deployParameters.cpuCores}\",\"memorySizeGB\":\"{deployParameters.memorySizeGB}\",\"cloudServicesNetworkAttachment\":\"{deployParameters.cloudServicesNetworkAttachment}\",\"networkAttachments\":\"{deployParameters.networkAttachments}\",\"sshPublicKeys\":\"{deployParameters.sshPublicKeys}\",\"storageProfile\":\"{deployParameters.storageProfile}\",\"isolateEmulatorThread\":\"{deployParameters.isolateEmulatorThread}\",\"virtioInterface\":\"{deployParameters.virtioInterface}\",\"userData\":\"{deployParameters.userData}\",\"adminUsername\":\"{deployParameters.adminUsername}\",\"bootMethod\":\"{deployParameters.bootMethod}\",\"placementHints\":\"{deployParameters.placementHints}\"}",
///                         },
///                     },
///                     name: "testTemplateRole",
///                 },
///             ],
///             nfviType: "AzureCore",
///         },
///         networkFunctionType: "VirtualNetworkFunction",
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
/// network_function_definition_version = azure_native.hybridnetwork.NetworkFunctionDefinitionVersion("networkFunctionDefinitionVersion",
///     location="eastus",
///     network_function_definition_group_name="TestNetworkFunctionDefinitionGroupName",
///     network_function_definition_version_name="1.0.0",
///     properties={
///         "deploy_parameters": "{\"virtualMachineName\":{\"type\":\"string\"},\"cpuCores\":{\"type\":\"int\"},\"memorySizeGB\":{\"type\":\"int\"},\"cloudServicesNetworkAttachment\":{\"type\":\"object\",\"properties\":{\"networkAttachmentName\":{\"type\":\"string\"},\"attachedNetworkId\":{\"type\":\"string\"},\"ipAllocationMethod\":{\"type\":\"string\"},\"ipv4Address\":{\"type\":\"string\"},\"ipv6Address\":{\"type\":\"string\"},\"defaultGateway\":{\"type\":\"string\"}},\"required\":[\"attachedNetworkId\",\"ipAllocationMethod\"]},\"networkAttachments\":{\"type\":\"array\",\"items\":{\"type\":\"object\",\"properties\":{\"networkAttachmentName\":{\"type\":\"string\"},\"attachedNetworkId\":{\"type\":\"string\"},\"ipAllocationMethod\":{\"type\":\"string\"},\"ipv4Address\":{\"type\":\"string\"},\"ipv6Address\":{\"type\":\"string\"},\"defaultGateway\":{\"type\":\"string\"}},\"required\":[\"attachedNetworkId\",\"ipAllocationMethod\"]}},\"storageProfile\":{\"type\":\"object\",\"properties\":{\"osDisk\":{\"type\":\"object\",\"properties\":{\"createOption\":{\"type\":\"string\"},\"deleteOption\":{\"type\":\"string\"},\"diskSizeGB\":{\"type\":\"integer\"}},\"required\":[\"diskSizeGB\"]}},\"required\":[\"osDisk\"]},\"sshPublicKeys\":{\"type\":\"array\",\"items\":{\"type\":\"object\",\"properties\":{\"keyData\":{\"type\":\"string\"}},\"required\":[\"keyData\"]}},\"userData\":{\"type\":\"string\"},\"adminUsername\":{\"type\":\"string\"},\"bootMethod\":{\"type\":\"string\",\"default\":\"UEFI\",\"enum\":[\"UEFI\",\"BIOS\"]},\"isolateEmulatorThread\":{\"type\":\"string\"},\"virtioInterface\":{\"type\":\"string\"},\"placementHints\":{\"type\":\"array\",\"items\":{\"type\":\"object\",\"properties\":{\"hintType\":{\"type\":\"string\",\"enum\":[\"Affinity\",\"AntiAffinity\"]},\"resourceId\":{\"type\":\"string\"},\"schedulingExecution\":{\"type\":\"string\",\"enum\":[\"Soft\",\"Hard\"]},\"scope\":{\"type\":\"string\"}},\"required\":[\"hintType\",\"schedulingExecution\",\"resourceId\",\"scope\"]}}}",
///         "description": "test NFDV for AzureCore",
///         "network_function_template": {
///             "network_function_applications": [
///                 {
///                     "artifact_profile": {
///                         "artifact_store": {
///                             "id": "/subscriptions/subid/resourceGroups/rg/providers/microsoft.hybridnetwork/publishers/TestPublisher/artifactStores/TestArtifactStore",
///                         },
///                         "vhd_artifact_profile": {
///                             "vhd_name": "test-image",
///                             "vhd_version": "1-0-0",
///                         },
///                     },
///                     "artifact_type": "VhdImageFile",
///                     "depends_on_profile": {
///                         "install_depends_on": [],
///                         "uninstall_depends_on": [],
///                         "update_depends_on": [],
///                     },
///                     "deploy_parameters_mapping_rule_profile": {
///                         "application_enablement": azure_native.hybridnetwork.ApplicationEnablement.UNKNOWN,
///                         "vhd_image_mapping_rule_profile": {
///                             "user_configuration": "",
///                         },
///                     },
///                     "name": "testImageRole",
///                 },
///                 {
///                     "artifact_profile": {
///                         "artifact_store": {
///                             "id": "/subscriptions/subid/resourceGroups/rg/providers/microsoft.hybridnetwork/publishers/TestPublisher/artifactStores/TestArtifactStore",
///                         },
///                         "template_artifact_profile": {
///                             "template_name": "test-template",
///                             "template_version": "1.0.0",
///                         },
///                     },
///                     "artifact_type": "ArmTemplate",
///                     "depends_on_profile": {
///                         "install_depends_on": ["testImageRole"],
///                         "uninstall_depends_on": ["testImageRole"],
///                         "update_depends_on": ["testImageRole"],
///                     },
///                     "deploy_parameters_mapping_rule_profile": {
///                         "application_enablement": azure_native.hybridnetwork.ApplicationEnablement.UNKNOWN,
///                         "template_mapping_rule_profile": {
///                             "template_parameters": "{\"virtualMachineName\":\"{deployParameters.virtualMachineName}\",\"cpuCores\":\"{deployParameters.cpuCores}\",\"memorySizeGB\":\"{deployParameters.memorySizeGB}\",\"cloudServicesNetworkAttachment\":\"{deployParameters.cloudServicesNetworkAttachment}\",\"networkAttachments\":\"{deployParameters.networkAttachments}\",\"sshPublicKeys\":\"{deployParameters.sshPublicKeys}\",\"storageProfile\":\"{deployParameters.storageProfile}\",\"isolateEmulatorThread\":\"{deployParameters.isolateEmulatorThread}\",\"virtioInterface\":\"{deployParameters.virtioInterface}\",\"userData\":\"{deployParameters.userData}\",\"adminUsername\":\"{deployParameters.adminUsername}\",\"bootMethod\":\"{deployParameters.bootMethod}\",\"placementHints\":\"{deployParameters.placementHints}\"}",
///                         },
///                     },
///                     "name": "testTemplateRole",
///                 },
///             ],
///             "nfvi_type": "AzureCore",
///         },
///         "network_function_type": "VirtualNetworkFunction",
///     },
///     publisher_name="TestPublisher",
///     resource_group_name="rg")
///
/// ```
///
/// ```yaml
/// resources:
///   networkFunctionDefinitionVersion:
///     type: azure-native:hybridnetwork:NetworkFunctionDefinitionVersion
///     properties:
///       location: eastus
///       networkFunctionDefinitionGroupName: TestNetworkFunctionDefinitionGroupName
///       networkFunctionDefinitionVersionName: 1.0.0
///       properties:
///         deployParameters: '{"virtualMachineName":{"type":"string"},"cpuCores":{"type":"int"},"memorySizeGB":{"type":"int"},"cloudServicesNetworkAttachment":{"type":"object","properties":{"networkAttachmentName":{"type":"string"},"attachedNetworkId":{"type":"string"},"ipAllocationMethod":{"type":"string"},"ipv4Address":{"type":"string"},"ipv6Address":{"type":"string"},"defaultGateway":{"type":"string"}},"required":["attachedNetworkId","ipAllocationMethod"]},"networkAttachments":{"type":"array","items":{"type":"object","properties":{"networkAttachmentName":{"type":"string"},"attachedNetworkId":{"type":"string"},"ipAllocationMethod":{"type":"string"},"ipv4Address":{"type":"string"},"ipv6Address":{"type":"string"},"defaultGateway":{"type":"string"}},"required":["attachedNetworkId","ipAllocationMethod"]}},"storageProfile":{"type":"object","properties":{"osDisk":{"type":"object","properties":{"createOption":{"type":"string"},"deleteOption":{"type":"string"},"diskSizeGB":{"type":"integer"}},"required":["diskSizeGB"]}},"required":["osDisk"]},"sshPublicKeys":{"type":"array","items":{"type":"object","properties":{"keyData":{"type":"string"}},"required":["keyData"]}},"userData":{"type":"string"},"adminUsername":{"type":"string"},"bootMethod":{"type":"string","default":"UEFI","enum":["UEFI","BIOS"]},"isolateEmulatorThread":{"type":"string"},"virtioInterface":{"type":"string"},"placementHints":{"type":"array","items":{"type":"object","properties":{"hintType":{"type":"string","enum":["Affinity","AntiAffinity"]},"resourceId":{"type":"string"},"schedulingExecution":{"type":"string","enum":["Soft","Hard"]},"scope":{"type":"string"}},"required":["hintType","schedulingExecution","resourceId","scope"]}}}'
///         description: test NFDV for AzureCore
///         networkFunctionTemplate:
///           networkFunctionApplications:
///             - artifactProfile:
///                 artifactStore:
///                   id: /subscriptions/subid/resourceGroups/rg/providers/microsoft.hybridnetwork/publishers/TestPublisher/artifactStores/TestArtifactStore
///                 vhdArtifactProfile:
///                   vhdName: test-image
///                   vhdVersion: 1-0-0
///               artifactType: VhdImageFile
///               dependsOnProfile:
///                 installDependsOn: []
///                 uninstallDependsOn: []
///                 updateDependsOn: []
///               deployParametersMappingRuleProfile:
///                 applicationEnablement: Unknown
///                 vhdImageMappingRuleProfile:
///                   userConfiguration: ""
///               name: testImageRole
///             - artifactProfile:
///                 artifactStore:
///                   id: /subscriptions/subid/resourceGroups/rg/providers/microsoft.hybridnetwork/publishers/TestPublisher/artifactStores/TestArtifactStore
///                 templateArtifactProfile:
///                   templateName: test-template
///                   templateVersion: 1.0.0
///               artifactType: ArmTemplate
///               dependsOnProfile:
///                 installDependsOn:
///                   - testImageRole
///                 uninstallDependsOn:
///                   - testImageRole
///                 updateDependsOn:
///                   - testImageRole
///               deployParametersMappingRuleProfile:
///                 applicationEnablement: Unknown
///                 templateMappingRuleProfile:
///                   templateParameters: '{"virtualMachineName":"{deployParameters.virtualMachineName}","cpuCores":"{deployParameters.cpuCores}","memorySizeGB":"{deployParameters.memorySizeGB}","cloudServicesNetworkAttachment":"{deployParameters.cloudServicesNetworkAttachment}","networkAttachments":"{deployParameters.networkAttachments}","sshPublicKeys":"{deployParameters.sshPublicKeys}","storageProfile":"{deployParameters.storageProfile}","isolateEmulatorThread":"{deployParameters.isolateEmulatorThread}","virtioInterface":"{deployParameters.virtioInterface}","userData":"{deployParameters.userData}","adminUsername":"{deployParameters.adminUsername}","bootMethod":"{deployParameters.bootMethod}","placementHints":"{deployParameters.placementHints}"}'
///               name: testTemplateRole
///           nfviType: AzureCore
///         networkFunctionType: VirtualNetworkFunction
///       publisherName: TestPublisher
///       resourceGroupName: rg
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update a network function definition version resource for AzureOperatorNexus VNF
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var networkFunctionDefinitionVersion = new AzureNative.HybridNetwork.NetworkFunctionDefinitionVersion("networkFunctionDefinitionVersion", new()
///     {
///         Location = "eastus",
///         NetworkFunctionDefinitionGroupName = "TestNetworkFunctionDefinitionGroupName",
///         NetworkFunctionDefinitionVersionName = "1.0.0",
///         Properties = new AzureNative.HybridNetwork.Inputs.VirtualNetworkFunctionNetworkFunctionDefinitionVersionArgs
///         {
///             DeployParameters = "{\"virtualMachineName\":{\"type\":\"string\"},\"extendedLocationName\":{\"type\":\"string\"},\"cpuCores\":{\"type\":\"int\"},\"memorySizeGB\":{\"type\":\"int\"},\"cloudServicesNetworkAttachment\":{\"type\":\"object\",\"properties\":{\"networkAttachmentName\":{\"type\":\"string\"},\"attachedNetworkId\":{\"type\":\"string\"},\"ipAllocationMethod\":{\"type\":\"string\"},\"ipv4Address\":{\"type\":\"string\"},\"ipv6Address\":{\"type\":\"string\"},\"defaultGateway\":{\"type\":\"string\"}},\"required\":[\"attachedNetworkId\",\"ipAllocationMethod\"]},\"networkAttachments\":{\"type\":\"array\",\"items\":{\"type\":\"object\",\"properties\":{\"networkAttachmentName\":{\"type\":\"string\"},\"attachedNetworkId\":{\"type\":\"string\"},\"ipAllocationMethod\":{\"type\":\"string\"},\"ipv4Address\":{\"type\":\"string\"},\"ipv6Address\":{\"type\":\"string\"},\"defaultGateway\":{\"type\":\"string\"}},\"required\":[\"attachedNetworkId\",\"ipAllocationMethod\"]}},\"storageProfile\":{\"type\":\"object\",\"properties\":{\"osDisk\":{\"type\":\"object\",\"properties\":{\"createOption\":{\"type\":\"string\"},\"deleteOption\":{\"type\":\"string\"},\"diskSizeGB\":{\"type\":\"integer\"}},\"required\":[\"diskSizeGB\"]}},\"required\":[\"osDisk\"]},\"sshPublicKeys\":{\"type\":\"array\",\"items\":{\"type\":\"object\",\"properties\":{\"keyData\":{\"type\":\"string\"}},\"required\":[\"keyData\"]}},\"userData\":{\"type\":\"string\"},\"adminUsername\":{\"type\":\"string\"},\"bootMethod\":{\"type\":\"string\",\"default\":\"UEFI\",\"enum\":[\"UEFI\",\"BIOS\"]},\"isolateEmulatorThread\":{\"type\":\"string\"},\"virtioInterface\":{\"type\":\"string\"},\"placementHints\":{\"type\":\"array\",\"items\":{\"type\":\"object\",\"properties\":{\"hintType\":{\"type\":\"string\",\"enum\":[\"Affinity\",\"AntiAffinity\"]},\"resourceId\":{\"type\":\"string\"},\"schedulingExecution\":{\"type\":\"string\",\"enum\":[\"Soft\",\"Hard\"]},\"scope\":{\"type\":\"string\"}},\"required\":[\"hintType\",\"schedulingExecution\",\"resourceId\",\"scope\"]}}}",
///             Description = "test NFDV for AzureOperatorNexus",
///             NetworkFunctionTemplate = new AzureNative.HybridNetwork.Inputs.AzureOperatorNexusNetworkFunctionTemplateArgs
///             {
///                 NetworkFunctionApplications =
///                 {
///                     new AzureNative.HybridNetwork.Inputs.AzureOperatorNexusNetworkFunctionImageApplicationArgs
///                     {
///                         ArtifactProfile = new AzureNative.HybridNetwork.Inputs.AzureOperatorNexusImageArtifactProfileArgs
///                         {
///                             ArtifactStore = new AzureNative.HybridNetwork.Inputs.ReferencedResourceArgs
///                             {
///                                 Id = "/subscriptions/subid/resourceGroups/rg/providers/microsoft.hybridnetwork/publishers/TestPublisher/artifactStores/TestArtifactStore",
///                             },
///                             ImageArtifactProfile = new AzureNative.HybridNetwork.Inputs.ImageArtifactProfileArgs
///                             {
///                                 ImageName = "test-image",
///                                 ImageVersion = "1.0.0",
///                             },
///                         },
///                         ArtifactType = "ImageFile",
///                         DependsOnProfile = new AzureNative.HybridNetwork.Inputs.DependsOnProfileArgs
///                         {
///                             InstallDependsOn = new() { },
///                             UninstallDependsOn = new() { },
///                             UpdateDependsOn = new() { },
///                         },
///                         DeployParametersMappingRuleProfile = new AzureNative.HybridNetwork.Inputs.AzureOperatorNexusImageDeployMappingRuleProfileArgs
///                         {
///                             ApplicationEnablement = AzureNative.HybridNetwork.ApplicationEnablement.Unknown,
///                             ImageMappingRuleProfile = new AzureNative.HybridNetwork.Inputs.ImageMappingRuleProfileArgs
///                             {
///                                 UserConfiguration = "",
///                             },
///                         },
///                         Name = "testImageRole",
///                     },
///                     new AzureNative.HybridNetwork.Inputs.AzureOperatorNexusNetworkFunctionArmTemplateApplicationArgs
///                     {
///                         ArtifactProfile = new AzureNative.HybridNetwork.Inputs.AzureOperatorNexusArmTemplateArtifactProfileArgs
///                         {
///                             ArtifactStore = new AzureNative.HybridNetwork.Inputs.ReferencedResourceArgs
///                             {
///                                 Id = "/subscriptions/subid/resourceGroups/rg/providers/microsoft.hybridnetwork/publishers/TestPublisher/artifactStores/TestArtifactStore",
///                             },
///                             TemplateArtifactProfile = new AzureNative.HybridNetwork.Inputs.ArmTemplateArtifactProfileArgs
///                             {
///                                 TemplateName = "test-template",
///                                 TemplateVersion = "1.0.0",
///                             },
///                         },
///                         ArtifactType = "ArmTemplate",
///                         DependsOnProfile = new AzureNative.HybridNetwork.Inputs.DependsOnProfileArgs
///                         {
///                             InstallDependsOn = new[]
///                             {
///                                 "testImageRole",
///                             },
///                             UninstallDependsOn = new[]
///                             {
///                                 "testImageRole",
///                             },
///                             UpdateDependsOn = new[]
///                             {
///                                 "testImageRole",
///                             },
///                         },
///                         DeployParametersMappingRuleProfile = new AzureNative.HybridNetwork.Inputs.AzureOperatorNexusArmTemplateDeployMappingRuleProfileArgs
///                         {
///                             ApplicationEnablement = AzureNative.HybridNetwork.ApplicationEnablement.Unknown,
///                             TemplateMappingRuleProfile = new AzureNative.HybridNetwork.Inputs.ArmTemplateMappingRuleProfileArgs
///                             {
///                                 TemplateParameters = "{\"virtualMachineName\":\"{deployParameters.virtualMachineName}\",\"extendedLocationName\":\"{deployParameters.extendedLocationName}\",\"cpuCores\":\"{deployParameters.cpuCores}\",\"memorySizeGB\":\"{deployParameters.memorySizeGB}\",\"cloudServicesNetworkAttachment\":\"{deployParameters.cloudServicesNetworkAttachment}\",\"networkAttachments\":\"{deployParameters.networkAttachments}\",\"sshPublicKeys\":\"{deployParameters.sshPublicKeys}\",\"storageProfile\":\"{deployParameters.storageProfile}\",\"isolateEmulatorThread\":\"{deployParameters.isolateEmulatorThread}\",\"virtioInterface\":\"{deployParameters.virtioInterface}\",\"userData\":\"{deployParameters.userData}\",\"adminUsername\":\"{deployParameters.adminUsername}\",\"bootMethod\":\"{deployParameters.bootMethod}\",\"placementHints\":\"{deployParameters.placementHints}\"}",
///                             },
///                         },
///                         Name = "testTemplateRole",
///                     },
///                 },
///                 NfviType = "AzureOperatorNexus",
///             },
///             NetworkFunctionType = "VirtualNetworkFunction",
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
/// 		_, err := hybridnetwork.NewNetworkFunctionDefinitionVersion(ctx, "networkFunctionDefinitionVersion", &hybridnetwork.NetworkFunctionDefinitionVersionArgs{
/// 			Location:                             pulumi.String("eastus"),
/// 			NetworkFunctionDefinitionGroupName:   pulumi.String("TestNetworkFunctionDefinitionGroupName"),
/// 			NetworkFunctionDefinitionVersionName: pulumi.String("1.0.0"),
/// 			Properties: &hybridnetwork.VirtualNetworkFunctionNetworkFunctionDefinitionVersionArgs{
/// 				DeployParameters: pulumi.String("{\"virtualMachineName\":{\"type\":\"string\"},\"extendedLocationName\":{\"type\":\"string\"},\"cpuCores\":{\"type\":\"int\"},\"memorySizeGB\":{\"type\":\"int\"},\"cloudServicesNetworkAttachment\":{\"type\":\"object\",\"properties\":{\"networkAttachmentName\":{\"type\":\"string\"},\"attachedNetworkId\":{\"type\":\"string\"},\"ipAllocationMethod\":{\"type\":\"string\"},\"ipv4Address\":{\"type\":\"string\"},\"ipv6Address\":{\"type\":\"string\"},\"defaultGateway\":{\"type\":\"string\"}},\"required\":[\"attachedNetworkId\",\"ipAllocationMethod\"]},\"networkAttachments\":{\"type\":\"array\",\"items\":{\"type\":\"object\",\"properties\":{\"networkAttachmentName\":{\"type\":\"string\"},\"attachedNetworkId\":{\"type\":\"string\"},\"ipAllocationMethod\":{\"type\":\"string\"},\"ipv4Address\":{\"type\":\"string\"},\"ipv6Address\":{\"type\":\"string\"},\"defaultGateway\":{\"type\":\"string\"}},\"required\":[\"attachedNetworkId\",\"ipAllocationMethod\"]}},\"storageProfile\":{\"type\":\"object\",\"properties\":{\"osDisk\":{\"type\":\"object\",\"properties\":{\"createOption\":{\"type\":\"string\"},\"deleteOption\":{\"type\":\"string\"},\"diskSizeGB\":{\"type\":\"integer\"}},\"required\":[\"diskSizeGB\"]}},\"required\":[\"osDisk\"]},\"sshPublicKeys\":{\"type\":\"array\",\"items\":{\"type\":\"object\",\"properties\":{\"keyData\":{\"type\":\"string\"}},\"required\":[\"keyData\"]}},\"userData\":{\"type\":\"string\"},\"adminUsername\":{\"type\":\"string\"},\"bootMethod\":{\"type\":\"string\",\"default\":\"UEFI\",\"enum\":[\"UEFI\",\"BIOS\"]},\"isolateEmulatorThread\":{\"type\":\"string\"},\"virtioInterface\":{\"type\":\"string\"},\"placementHints\":{\"type\":\"array\",\"items\":{\"type\":\"object\",\"properties\":{\"hintType\":{\"type\":\"string\",\"enum\":[\"Affinity\",\"AntiAffinity\"]},\"resourceId\":{\"type\":\"string\"},\"schedulingExecution\":{\"type\":\"string\",\"enum\":[\"Soft\",\"Hard\"]},\"scope\":{\"type\":\"string\"}},\"required\":[\"hintType\",\"schedulingExecution\",\"resourceId\",\"scope\"]}}}"),
/// 				Description:      pulumi.String("test NFDV for AzureOperatorNexus"),
/// 				NetworkFunctionTemplate: hybridnetwork.AzureOperatorNexusNetworkFunctionTemplate{
/// 					NetworkFunctionApplications: []interface{}{
/// 						hybridnetwork.AzureOperatorNexusNetworkFunctionImageApplication{
/// 							ArtifactProfile: hybridnetwork.AzureOperatorNexusImageArtifactProfile{
/// 								ArtifactStore: hybridnetwork.ReferencedResource{
/// 									Id: "/subscriptions/subid/resourceGroups/rg/providers/microsoft.hybridnetwork/publishers/TestPublisher/artifactStores/TestArtifactStore",
/// 								},
/// 								ImageArtifactProfile: hybridnetwork.ImageArtifactProfile{
/// 									ImageName:    "test-image",
/// 									ImageVersion: "1.0.0",
/// 								},
/// 							},
/// 							ArtifactType: "ImageFile",
/// 							DependsOnProfile: hybridnetwork.DependsOnProfile{
/// 								InstallDependsOn:   []interface{}{},
/// 								UninstallDependsOn: []interface{}{},
/// 								UpdateDependsOn:    []interface{}{},
/// 							},
/// 							DeployParametersMappingRuleProfile: hybridnetwork.AzureOperatorNexusImageDeployMappingRuleProfile{
/// 								ApplicationEnablement: hybridnetwork.ApplicationEnablementUnknown,
/// 								ImageMappingRuleProfile: hybridnetwork.ImageMappingRuleProfile{
/// 									UserConfiguration: "",
/// 								},
/// 							},
/// 							Name: "testImageRole",
/// 						},
/// 						hybridnetwork.AzureOperatorNexusNetworkFunctionArmTemplateApplication{
/// 							ArtifactProfile: hybridnetwork.AzureOperatorNexusArmTemplateArtifactProfile{
/// 								ArtifactStore: hybridnetwork.ReferencedResource{
/// 									Id: "/subscriptions/subid/resourceGroups/rg/providers/microsoft.hybridnetwork/publishers/TestPublisher/artifactStores/TestArtifactStore",
/// 								},
/// 								TemplateArtifactProfile: hybridnetwork.ArmTemplateArtifactProfile{
/// 									TemplateName:    "test-template",
/// 									TemplateVersion: "1.0.0",
/// 								},
/// 							},
/// 							ArtifactType: "ArmTemplate",
/// 							DependsOnProfile: hybridnetwork.DependsOnProfile{
/// 								InstallDependsOn: []string{
/// 									"testImageRole",
/// 								},
/// 								UninstallDependsOn: []string{
/// 									"testImageRole",
/// 								},
/// 								UpdateDependsOn: []string{
/// 									"testImageRole",
/// 								},
/// 							},
/// 							DeployParametersMappingRuleProfile: hybridnetwork.AzureOperatorNexusArmTemplateDeployMappingRuleProfile{
/// 								ApplicationEnablement: hybridnetwork.ApplicationEnablementUnknown,
/// 								TemplateMappingRuleProfile: hybridnetwork.ArmTemplateMappingRuleProfile{
/// 									TemplateParameters: "{\"virtualMachineName\":\"{deployParameters.virtualMachineName}\",\"extendedLocationName\":\"{deployParameters.extendedLocationName}\",\"cpuCores\":\"{deployParameters.cpuCores}\",\"memorySizeGB\":\"{deployParameters.memorySizeGB}\",\"cloudServicesNetworkAttachment\":\"{deployParameters.cloudServicesNetworkAttachment}\",\"networkAttachments\":\"{deployParameters.networkAttachments}\",\"sshPublicKeys\":\"{deployParameters.sshPublicKeys}\",\"storageProfile\":\"{deployParameters.storageProfile}\",\"isolateEmulatorThread\":\"{deployParameters.isolateEmulatorThread}\",\"virtioInterface\":\"{deployParameters.virtioInterface}\",\"userData\":\"{deployParameters.userData}\",\"adminUsername\":\"{deployParameters.adminUsername}\",\"bootMethod\":\"{deployParameters.bootMethod}\",\"placementHints\":\"{deployParameters.placementHints}\"}",
/// 								},
/// 							},
/// 							Name: "testTemplateRole",
/// 						},
/// 					},
/// 					NfviType: "AzureOperatorNexus",
/// 				},
/// 				NetworkFunctionType: pulumi.String("VirtualNetworkFunction"),
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
/// import com.pulumi.azurenative.hybridnetwork.NetworkFunctionDefinitionVersion;
/// import com.pulumi.azurenative.hybridnetwork.NetworkFunctionDefinitionVersionArgs;
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
///         var networkFunctionDefinitionVersion = new NetworkFunctionDefinitionVersion("networkFunctionDefinitionVersion", NetworkFunctionDefinitionVersionArgs.builder()
///             .location("eastus")
///             .networkFunctionDefinitionGroupName("TestNetworkFunctionDefinitionGroupName")
///             .networkFunctionDefinitionVersionName("1.0.0")
///             .properties(VirtualNetworkFunctionNetworkFunctionDefinitionVersionArgs.builder()
///                 .deployParameters("{\"virtualMachineName\":{\"type\":\"string\"},\"extendedLocationName\":{\"type\":\"string\"},\"cpuCores\":{\"type\":\"int\"},\"memorySizeGB\":{\"type\":\"int\"},\"cloudServicesNetworkAttachment\":{\"type\":\"object\",\"properties\":{\"networkAttachmentName\":{\"type\":\"string\"},\"attachedNetworkId\":{\"type\":\"string\"},\"ipAllocationMethod\":{\"type\":\"string\"},\"ipv4Address\":{\"type\":\"string\"},\"ipv6Address\":{\"type\":\"string\"},\"defaultGateway\":{\"type\":\"string\"}},\"required\":[\"attachedNetworkId\",\"ipAllocationMethod\"]},\"networkAttachments\":{\"type\":\"array\",\"items\":{\"type\":\"object\",\"properties\":{\"networkAttachmentName\":{\"type\":\"string\"},\"attachedNetworkId\":{\"type\":\"string\"},\"ipAllocationMethod\":{\"type\":\"string\"},\"ipv4Address\":{\"type\":\"string\"},\"ipv6Address\":{\"type\":\"string\"},\"defaultGateway\":{\"type\":\"string\"}},\"required\":[\"attachedNetworkId\",\"ipAllocationMethod\"]}},\"storageProfile\":{\"type\":\"object\",\"properties\":{\"osDisk\":{\"type\":\"object\",\"properties\":{\"createOption\":{\"type\":\"string\"},\"deleteOption\":{\"type\":\"string\"},\"diskSizeGB\":{\"type\":\"integer\"}},\"required\":[\"diskSizeGB\"]}},\"required\":[\"osDisk\"]},\"sshPublicKeys\":{\"type\":\"array\",\"items\":{\"type\":\"object\",\"properties\":{\"keyData\":{\"type\":\"string\"}},\"required\":[\"keyData\"]}},\"userData\":{\"type\":\"string\"},\"adminUsername\":{\"type\":\"string\"},\"bootMethod\":{\"type\":\"string\",\"default\":\"UEFI\",\"enum\":[\"UEFI\",\"BIOS\"]},\"isolateEmulatorThread\":{\"type\":\"string\"},\"virtioInterface\":{\"type\":\"string\"},\"placementHints\":{\"type\":\"array\",\"items\":{\"type\":\"object\",\"properties\":{\"hintType\":{\"type\":\"string\",\"enum\":[\"Affinity\",\"AntiAffinity\"]},\"resourceId\":{\"type\":\"string\"},\"schedulingExecution\":{\"type\":\"string\",\"enum\":[\"Soft\",\"Hard\"]},\"scope\":{\"type\":\"string\"}},\"required\":[\"hintType\",\"schedulingExecution\",\"resourceId\",\"scope\"]}}}")
///                 .description("test NFDV for AzureOperatorNexus")
///                 .networkFunctionTemplate(AzureOperatorNexusNetworkFunctionTemplateArgs.builder()
///                     .networkFunctionApplications(%!v(PANIC=Format method: interface conversion: model.Expression is *model.FunctionCallExpression, not *model.ObjectConsExpression))
///                     .nfviType("AzureOperatorNexus")
///                     .build())
///                 .networkFunctionType("VirtualNetworkFunction")
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
/// const networkFunctionDefinitionVersion = new azure_native.hybridnetwork.NetworkFunctionDefinitionVersion("networkFunctionDefinitionVersion", {
///     location: "eastus",
///     networkFunctionDefinitionGroupName: "TestNetworkFunctionDefinitionGroupName",
///     networkFunctionDefinitionVersionName: "1.0.0",
///     properties: {
///         deployParameters: "{\"virtualMachineName\":{\"type\":\"string\"},\"extendedLocationName\":{\"type\":\"string\"},\"cpuCores\":{\"type\":\"int\"},\"memorySizeGB\":{\"type\":\"int\"},\"cloudServicesNetworkAttachment\":{\"type\":\"object\",\"properties\":{\"networkAttachmentName\":{\"type\":\"string\"},\"attachedNetworkId\":{\"type\":\"string\"},\"ipAllocationMethod\":{\"type\":\"string\"},\"ipv4Address\":{\"type\":\"string\"},\"ipv6Address\":{\"type\":\"string\"},\"defaultGateway\":{\"type\":\"string\"}},\"required\":[\"attachedNetworkId\",\"ipAllocationMethod\"]},\"networkAttachments\":{\"type\":\"array\",\"items\":{\"type\":\"object\",\"properties\":{\"networkAttachmentName\":{\"type\":\"string\"},\"attachedNetworkId\":{\"type\":\"string\"},\"ipAllocationMethod\":{\"type\":\"string\"},\"ipv4Address\":{\"type\":\"string\"},\"ipv6Address\":{\"type\":\"string\"},\"defaultGateway\":{\"type\":\"string\"}},\"required\":[\"attachedNetworkId\",\"ipAllocationMethod\"]}},\"storageProfile\":{\"type\":\"object\",\"properties\":{\"osDisk\":{\"type\":\"object\",\"properties\":{\"createOption\":{\"type\":\"string\"},\"deleteOption\":{\"type\":\"string\"},\"diskSizeGB\":{\"type\":\"integer\"}},\"required\":[\"diskSizeGB\"]}},\"required\":[\"osDisk\"]},\"sshPublicKeys\":{\"type\":\"array\",\"items\":{\"type\":\"object\",\"properties\":{\"keyData\":{\"type\":\"string\"}},\"required\":[\"keyData\"]}},\"userData\":{\"type\":\"string\"},\"adminUsername\":{\"type\":\"string\"},\"bootMethod\":{\"type\":\"string\",\"default\":\"UEFI\",\"enum\":[\"UEFI\",\"BIOS\"]},\"isolateEmulatorThread\":{\"type\":\"string\"},\"virtioInterface\":{\"type\":\"string\"},\"placementHints\":{\"type\":\"array\",\"items\":{\"type\":\"object\",\"properties\":{\"hintType\":{\"type\":\"string\",\"enum\":[\"Affinity\",\"AntiAffinity\"]},\"resourceId\":{\"type\":\"string\"},\"schedulingExecution\":{\"type\":\"string\",\"enum\":[\"Soft\",\"Hard\"]},\"scope\":{\"type\":\"string\"}},\"required\":[\"hintType\",\"schedulingExecution\",\"resourceId\",\"scope\"]}}}",
///         description: "test NFDV for AzureOperatorNexus",
///         networkFunctionTemplate: {
///             networkFunctionApplications: [
///                 {
///                     artifactProfile: {
///                         artifactStore: {
///                             id: "/subscriptions/subid/resourceGroups/rg/providers/microsoft.hybridnetwork/publishers/TestPublisher/artifactStores/TestArtifactStore",
///                         },
///                         imageArtifactProfile: {
///                             imageName: "test-image",
///                             imageVersion: "1.0.0",
///                         },
///                     },
///                     artifactType: "ImageFile",
///                     dependsOnProfile: {
///                         installDependsOn: [],
///                         uninstallDependsOn: [],
///                         updateDependsOn: [],
///                     },
///                     deployParametersMappingRuleProfile: {
///                         applicationEnablement: azure_native.hybridnetwork.ApplicationEnablement.Unknown,
///                         imageMappingRuleProfile: {
///                             userConfiguration: "",
///                         },
///                     },
///                     name: "testImageRole",
///                 },
///                 {
///                     artifactProfile: {
///                         artifactStore: {
///                             id: "/subscriptions/subid/resourceGroups/rg/providers/microsoft.hybridnetwork/publishers/TestPublisher/artifactStores/TestArtifactStore",
///                         },
///                         templateArtifactProfile: {
///                             templateName: "test-template",
///                             templateVersion: "1.0.0",
///                         },
///                     },
///                     artifactType: "ArmTemplate",
///                     dependsOnProfile: {
///                         installDependsOn: ["testImageRole"],
///                         uninstallDependsOn: ["testImageRole"],
///                         updateDependsOn: ["testImageRole"],
///                     },
///                     deployParametersMappingRuleProfile: {
///                         applicationEnablement: azure_native.hybridnetwork.ApplicationEnablement.Unknown,
///                         templateMappingRuleProfile: {
///                             templateParameters: "{\"virtualMachineName\":\"{deployParameters.virtualMachineName}\",\"extendedLocationName\":\"{deployParameters.extendedLocationName}\",\"cpuCores\":\"{deployParameters.cpuCores}\",\"memorySizeGB\":\"{deployParameters.memorySizeGB}\",\"cloudServicesNetworkAttachment\":\"{deployParameters.cloudServicesNetworkAttachment}\",\"networkAttachments\":\"{deployParameters.networkAttachments}\",\"sshPublicKeys\":\"{deployParameters.sshPublicKeys}\",\"storageProfile\":\"{deployParameters.storageProfile}\",\"isolateEmulatorThread\":\"{deployParameters.isolateEmulatorThread}\",\"virtioInterface\":\"{deployParameters.virtioInterface}\",\"userData\":\"{deployParameters.userData}\",\"adminUsername\":\"{deployParameters.adminUsername}\",\"bootMethod\":\"{deployParameters.bootMethod}\",\"placementHints\":\"{deployParameters.placementHints}\"}",
///                         },
///                     },
///                     name: "testTemplateRole",
///                 },
///             ],
///             nfviType: "AzureOperatorNexus",
///         },
///         networkFunctionType: "VirtualNetworkFunction",
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
/// network_function_definition_version = azure_native.hybridnetwork.NetworkFunctionDefinitionVersion("networkFunctionDefinitionVersion",
///     location="eastus",
///     network_function_definition_group_name="TestNetworkFunctionDefinitionGroupName",
///     network_function_definition_version_name="1.0.0",
///     properties={
///         "deploy_parameters": "{\"virtualMachineName\":{\"type\":\"string\"},\"extendedLocationName\":{\"type\":\"string\"},\"cpuCores\":{\"type\":\"int\"},\"memorySizeGB\":{\"type\":\"int\"},\"cloudServicesNetworkAttachment\":{\"type\":\"object\",\"properties\":{\"networkAttachmentName\":{\"type\":\"string\"},\"attachedNetworkId\":{\"type\":\"string\"},\"ipAllocationMethod\":{\"type\":\"string\"},\"ipv4Address\":{\"type\":\"string\"},\"ipv6Address\":{\"type\":\"string\"},\"defaultGateway\":{\"type\":\"string\"}},\"required\":[\"attachedNetworkId\",\"ipAllocationMethod\"]},\"networkAttachments\":{\"type\":\"array\",\"items\":{\"type\":\"object\",\"properties\":{\"networkAttachmentName\":{\"type\":\"string\"},\"attachedNetworkId\":{\"type\":\"string\"},\"ipAllocationMethod\":{\"type\":\"string\"},\"ipv4Address\":{\"type\":\"string\"},\"ipv6Address\":{\"type\":\"string\"},\"defaultGateway\":{\"type\":\"string\"}},\"required\":[\"attachedNetworkId\",\"ipAllocationMethod\"]}},\"storageProfile\":{\"type\":\"object\",\"properties\":{\"osDisk\":{\"type\":\"object\",\"properties\":{\"createOption\":{\"type\":\"string\"},\"deleteOption\":{\"type\":\"string\"},\"diskSizeGB\":{\"type\":\"integer\"}},\"required\":[\"diskSizeGB\"]}},\"required\":[\"osDisk\"]},\"sshPublicKeys\":{\"type\":\"array\",\"items\":{\"type\":\"object\",\"properties\":{\"keyData\":{\"type\":\"string\"}},\"required\":[\"keyData\"]}},\"userData\":{\"type\":\"string\"},\"adminUsername\":{\"type\":\"string\"},\"bootMethod\":{\"type\":\"string\",\"default\":\"UEFI\",\"enum\":[\"UEFI\",\"BIOS\"]},\"isolateEmulatorThread\":{\"type\":\"string\"},\"virtioInterface\":{\"type\":\"string\"},\"placementHints\":{\"type\":\"array\",\"items\":{\"type\":\"object\",\"properties\":{\"hintType\":{\"type\":\"string\",\"enum\":[\"Affinity\",\"AntiAffinity\"]},\"resourceId\":{\"type\":\"string\"},\"schedulingExecution\":{\"type\":\"string\",\"enum\":[\"Soft\",\"Hard\"]},\"scope\":{\"type\":\"string\"}},\"required\":[\"hintType\",\"schedulingExecution\",\"resourceId\",\"scope\"]}}}",
///         "description": "test NFDV for AzureOperatorNexus",
///         "network_function_template": {
///             "network_function_applications": [
///                 {
///                     "artifact_profile": {
///                         "artifact_store": {
///                             "id": "/subscriptions/subid/resourceGroups/rg/providers/microsoft.hybridnetwork/publishers/TestPublisher/artifactStores/TestArtifactStore",
///                         },
///                         "image_artifact_profile": {
///                             "image_name": "test-image",
///                             "image_version": "1.0.0",
///                         },
///                     },
///                     "artifact_type": "ImageFile",
///                     "depends_on_profile": {
///                         "install_depends_on": [],
///                         "uninstall_depends_on": [],
///                         "update_depends_on": [],
///                     },
///                     "deploy_parameters_mapping_rule_profile": {
///                         "application_enablement": azure_native.hybridnetwork.ApplicationEnablement.UNKNOWN,
///                         "image_mapping_rule_profile": {
///                             "user_configuration": "",
///                         },
///                     },
///                     "name": "testImageRole",
///                 },
///                 {
///                     "artifact_profile": {
///                         "artifact_store": {
///                             "id": "/subscriptions/subid/resourceGroups/rg/providers/microsoft.hybridnetwork/publishers/TestPublisher/artifactStores/TestArtifactStore",
///                         },
///                         "template_artifact_profile": {
///                             "template_name": "test-template",
///                             "template_version": "1.0.0",
///                         },
///                     },
///                     "artifact_type": "ArmTemplate",
///                     "depends_on_profile": {
///                         "install_depends_on": ["testImageRole"],
///                         "uninstall_depends_on": ["testImageRole"],
///                         "update_depends_on": ["testImageRole"],
///                     },
///                     "deploy_parameters_mapping_rule_profile": {
///                         "application_enablement": azure_native.hybridnetwork.ApplicationEnablement.UNKNOWN,
///                         "template_mapping_rule_profile": {
///                             "template_parameters": "{\"virtualMachineName\":\"{deployParameters.virtualMachineName}\",\"extendedLocationName\":\"{deployParameters.extendedLocationName}\",\"cpuCores\":\"{deployParameters.cpuCores}\",\"memorySizeGB\":\"{deployParameters.memorySizeGB}\",\"cloudServicesNetworkAttachment\":\"{deployParameters.cloudServicesNetworkAttachment}\",\"networkAttachments\":\"{deployParameters.networkAttachments}\",\"sshPublicKeys\":\"{deployParameters.sshPublicKeys}\",\"storageProfile\":\"{deployParameters.storageProfile}\",\"isolateEmulatorThread\":\"{deployParameters.isolateEmulatorThread}\",\"virtioInterface\":\"{deployParameters.virtioInterface}\",\"userData\":\"{deployParameters.userData}\",\"adminUsername\":\"{deployParameters.adminUsername}\",\"bootMethod\":\"{deployParameters.bootMethod}\",\"placementHints\":\"{deployParameters.placementHints}\"}",
///                         },
///                     },
///                     "name": "testTemplateRole",
///                 },
///             ],
///             "nfvi_type": "AzureOperatorNexus",
///         },
///         "network_function_type": "VirtualNetworkFunction",
///     },
///     publisher_name="TestPublisher",
///     resource_group_name="rg")
///
/// ```
///
/// ```yaml
/// resources:
///   networkFunctionDefinitionVersion:
///     type: azure-native:hybridnetwork:NetworkFunctionDefinitionVersion
///     properties:
///       location: eastus
///       networkFunctionDefinitionGroupName: TestNetworkFunctionDefinitionGroupName
///       networkFunctionDefinitionVersionName: 1.0.0
///       properties:
///         deployParameters: '{"virtualMachineName":{"type":"string"},"extendedLocationName":{"type":"string"},"cpuCores":{"type":"int"},"memorySizeGB":{"type":"int"},"cloudServicesNetworkAttachment":{"type":"object","properties":{"networkAttachmentName":{"type":"string"},"attachedNetworkId":{"type":"string"},"ipAllocationMethod":{"type":"string"},"ipv4Address":{"type":"string"},"ipv6Address":{"type":"string"},"defaultGateway":{"type":"string"}},"required":["attachedNetworkId","ipAllocationMethod"]},"networkAttachments":{"type":"array","items":{"type":"object","properties":{"networkAttachmentName":{"type":"string"},"attachedNetworkId":{"type":"string"},"ipAllocationMethod":{"type":"string"},"ipv4Address":{"type":"string"},"ipv6Address":{"type":"string"},"defaultGateway":{"type":"string"}},"required":["attachedNetworkId","ipAllocationMethod"]}},"storageProfile":{"type":"object","properties":{"osDisk":{"type":"object","properties":{"createOption":{"type":"string"},"deleteOption":{"type":"string"},"diskSizeGB":{"type":"integer"}},"required":["diskSizeGB"]}},"required":["osDisk"]},"sshPublicKeys":{"type":"array","items":{"type":"object","properties":{"keyData":{"type":"string"}},"required":["keyData"]}},"userData":{"type":"string"},"adminUsername":{"type":"string"},"bootMethod":{"type":"string","default":"UEFI","enum":["UEFI","BIOS"]},"isolateEmulatorThread":{"type":"string"},"virtioInterface":{"type":"string"},"placementHints":{"type":"array","items":{"type":"object","properties":{"hintType":{"type":"string","enum":["Affinity","AntiAffinity"]},"resourceId":{"type":"string"},"schedulingExecution":{"type":"string","enum":["Soft","Hard"]},"scope":{"type":"string"}},"required":["hintType","schedulingExecution","resourceId","scope"]}}}'
///         description: test NFDV for AzureOperatorNexus
///         networkFunctionTemplate:
///           networkFunctionApplications:
///             - artifactProfile:
///                 artifactStore:
///                   id: /subscriptions/subid/resourceGroups/rg/providers/microsoft.hybridnetwork/publishers/TestPublisher/artifactStores/TestArtifactStore
///                 imageArtifactProfile:
///                   imageName: test-image
///                   imageVersion: 1.0.0
///               artifactType: ImageFile
///               dependsOnProfile:
///                 installDependsOn: []
///                 uninstallDependsOn: []
///                 updateDependsOn: []
///               deployParametersMappingRuleProfile:
///                 applicationEnablement: Unknown
///                 imageMappingRuleProfile:
///                   userConfiguration: ""
///               name: testImageRole
///             - artifactProfile:
///                 artifactStore:
///                   id: /subscriptions/subid/resourceGroups/rg/providers/microsoft.hybridnetwork/publishers/TestPublisher/artifactStores/TestArtifactStore
///                 templateArtifactProfile:
///                   templateName: test-template
///                   templateVersion: 1.0.0
///               artifactType: ArmTemplate
///               dependsOnProfile:
///                 installDependsOn:
///                   - testImageRole
///                 uninstallDependsOn:
///                   - testImageRole
///                 updateDependsOn:
///                   - testImageRole
///               deployParametersMappingRuleProfile:
///                 applicationEnablement: Unknown
///                 templateMappingRuleProfile:
///                   templateParameters: '{"virtualMachineName":"{deployParameters.virtualMachineName}","extendedLocationName":"{deployParameters.extendedLocationName}","cpuCores":"{deployParameters.cpuCores}","memorySizeGB":"{deployParameters.memorySizeGB}","cloudServicesNetworkAttachment":"{deployParameters.cloudServicesNetworkAttachment}","networkAttachments":"{deployParameters.networkAttachments}","sshPublicKeys":"{deployParameters.sshPublicKeys}","storageProfile":"{deployParameters.storageProfile}","isolateEmulatorThread":"{deployParameters.isolateEmulatorThread}","virtioInterface":"{deployParameters.virtioInterface}","userData":"{deployParameters.userData}","adminUsername":"{deployParameters.adminUsername}","bootMethod":"{deployParameters.bootMethod}","placementHints":"{deployParameters.placementHints}"}'
///               name: testTemplateRole
///           nfviType: AzureOperatorNexus
///         networkFunctionType: VirtualNetworkFunction
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
/// $ pulumi import azure-native:hybridnetwork:NetworkFunctionDefinitionVersion TestVersion /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HybridNetwork/publishers/{publisherName}/networkFunctionDefinitionGroups/{networkFunctionDefinitionGroupName}/networkFunctionDefinitionVersions/{networkFunctionDefinitionVersionName}
/// ```
class NetworkFunctionDefinitionVersion extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Network function definition version properties.
  late final pulumi.Output<ContainerizedNetworkFunctionDefinitionVersionResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [NetworkFunctionDefinitionVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkFunctionDefinitionVersion]. {@macro pulumi_hybridnetwork_network_function_definition_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkFunctionDefinitionVersion(
    String name, {
    NetworkFunctionDefinitionVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:hybridnetwork:NetworkFunctionDefinitionVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ContainerizedNetworkFunctionDefinitionVersionResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ContainerizedNetworkFunctionDefinitionVersionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
