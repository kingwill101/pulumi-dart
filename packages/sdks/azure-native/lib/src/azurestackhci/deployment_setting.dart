import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_configuration_response.dart';
import 'deployment_setting_args.dart';
import 'ece_reported_properties_response.dart';
import 'system_data_response.dart';

/// Edge device resource
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2023-08-01-preview.
///
/// Other available API versions: 2023-08-01-preview, 2023-11-01-preview, 2024-01-01, 2024-02-15-preview, 2024-09-01-preview, 2024-12-01-preview, 2025-02-01-preview, 2025-09-15-preview, 2025-10-01, 2025-11-01-preview, 2025-12-01-preview, 2026-02-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Deployment Settings
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var deploymentSetting = new AzureNative.AzureStackHCI.DeploymentSetting("deploymentSetting", new()
///     {
///         ArcNodeResourceIds = new[]
///         {
///             "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/ArcInstance-rg/providers/Microsoft.HybridCompute/machines/Node-1",
///             "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/ArcInstance-rg/providers/Microsoft.HybridCompute/machines/Node-2",
///         },
///         ClusterName = "myCluster",
///         DeploymentConfiguration = new AzureNative.AzureStackHCI.Inputs.DeploymentConfigurationArgs
///         {
///             ScaleUnits = new[]
///             {
///                 new AzureNative.AzureStackHCI.Inputs.ScaleUnitsArgs
///                 {
///                     DeploymentData = new AzureNative.AzureStackHCI.Inputs.DeploymentDataArgs
///                     {
///                         AdouPath = "OU=ms169,DC=ASZ1PLab8,DC=nttest,DC=microsoft,DC=com",
///                         Cluster = new AzureNative.AzureStackHCI.Inputs.DeploymentClusterArgs
///                         {
///                             AzureServiceEndpoint = "core.windows.net",
///                             CloudAccountName = "myasestoragacct",
///                             Name = "testHCICluster",
///                             WitnessPath = "Cloud",
///                             WitnessType = "Cloud",
///                         },
///                         DomainFqdn = "ASZ1PLab8.nttest.microsoft.com",
///                         HostNetwork = new AzureNative.AzureStackHCI.Inputs.HostNetworkArgs
///                         {
///                             EnableStorageAutoIp = false,
///                             Intents = new[]
///                             {
///                                 new AzureNative.AzureStackHCI.Inputs.IntentsArgs
///                                 {
///                                     Adapter = new[]
///                                     {
///                                         "Port2",
///                                     },
///                                     AdapterPropertyOverrides = new AzureNative.AzureStackHCI.Inputs.AdapterPropertyOverridesArgs
///                                     {
///                                         JumboPacket = "1514",
///                                         NetworkDirect = "Enabled",
///                                         NetworkDirectTechnology = "iWARP",
///                                     },
///                                     Name = "Compute_Management",
///                                     OverrideAdapterProperty = false,
///                                     OverrideQosPolicy = false,
///                                     OverrideVirtualSwitchConfiguration = false,
///                                     QosPolicyOverrides = new AzureNative.AzureStackHCI.Inputs.QosPolicyOverridesArgs
///                                     {
///                                         BandwidthPercentageSMB = "50",
///                                         PriorityValue8021ActionCluster = "7",
///                                         PriorityValue8021ActionSMB = "3",
///                                     },
///                                     TrafficType = new[]
///                                     {
///                                         "Compute",
///                                         "Management",
///                                     },
///                                     VirtualSwitchConfigurationOverrides = new AzureNative.AzureStackHCI.Inputs.VirtualSwitchConfigurationOverridesArgs
///                                     {
///                                         EnableIov = "True",
///                                         LoadBalancingAlgorithm = "HyperVPort",
///                                     },
///                                 },
///                             },
///                             StorageConnectivitySwitchless = true,
///                             StorageNetworks = new[]
///                             {
///                                 new AzureNative.AzureStackHCI.Inputs.StorageNetworksArgs
///                                 {
///                                     Name = "Storage1Network",
///                                     NetworkAdapterName = "Port3",
///                                     StorageAdapterIPInfo = new[]
///                                     {
///                                         new AzureNative.AzureStackHCI.Inputs.StorageAdapterIPInfoArgs
///                                         {
///                                             Ipv4Address = "10.57.48.60",
///                                             PhysicalNode = "string",
///                                             SubnetMask = "255.255.248.0",
///                                         },
///                                     },
///                                     VlanId = "5",
///                                 },
///                             },
///                         },
///                         InfrastructureNetwork = new[]
///                         {
///                             new AzureNative.AzureStackHCI.Inputs.InfrastructureNetworkArgs
///                             {
///                                 DnsServers = new[]
///                                 {
///                                     "10.57.50.90",
///                                 },
///                                 Gateway = "255.255.248.0",
///                                 IpPools = new[]
///                                 {
///                                     new AzureNative.AzureStackHCI.Inputs.IpPoolsArgs
///                                     {
///                                         EndingAddress = "10.57.48.66",
///                                         StartingAddress = "10.57.48.60",
///                                     },
///                                 },
///                                 SubnetMask = "255.255.248.0",
///                             },
///                         },
///                         NamingPrefix = "ms169",
///                         Observability = new AzureNative.AzureStackHCI.Inputs.ObservabilityArgs
///                         {
///                             EpisodicDataUpload = true,
///                             EuLocation = false,
///                             StreamingDataClient = true,
///                         },
///                         OptionalServices = new AzureNative.AzureStackHCI.Inputs.OptionalServicesArgs
///                         {
///                             CustomLocation = "customLocationName",
///                         },
///                         PhysicalNodes = new[]
///                         {
///                             new AzureNative.AzureStackHCI.Inputs.PhysicalNodesArgs
///                             {
///                                 Ipv4Address = "10.57.51.224",
///                                 Name = "ms169host",
///                             },
///                             new AzureNative.AzureStackHCI.Inputs.PhysicalNodesArgs
///                             {
///                                 Ipv4Address = "10.57.53.236",
///                                 Name = "ms154host",
///                             },
///                         },
///                         SdnIntegration = new AzureNative.AzureStackHCI.Inputs.SdnIntegrationArgs
///                         {
///                             NetworkController = new AzureNative.AzureStackHCI.Inputs.NetworkControllerArgs
///                             {
///                                 MacAddressPoolStart = "00-0D-3A-1B-C7-21",
///                                 MacAddressPoolStop = "00-0D-3A-1B-C7-29",
///                                 NetworkVirtualizationEnabled = true,
///                             },
///                         },
///                         Secrets = new[]
///                         {
///                             new AzureNative.AzureStackHCI.Inputs.EceDeploymentSecretsArgs
///                             {
///                                 EceSecretName = "BMCAdminUserCred",
///                                 SecretLocation = "https://sclusterkvnirhci35.vault.azure.net/secrets/cluster-34232342-BmcAdminUser-f5bcc1d9-23af-4ae9-aca1-041d0f593a63/9276354aabfc492fa9b2cdbefb54ae4b",
///                                 SecretName = "cluster1-BmcAdminUser-f5bcc1d9-23af-4ae9-aca1-041d0f593a63",
///                             },
///                             new AzureNative.AzureStackHCI.Inputs.EceDeploymentSecretsArgs
///                             {
///                                 EceSecretName = AzureNative.AzureStackHCI.EceSecrets.AzureStackLCMUserCredential,
///                                 SecretLocation = "https://sclusterkvnirhci35.vault.azure.net/secrets/cluster-34232342-AzureStackLCMUserCredential-f5bcc1d9-23af-4ae9-aca1-041d0f593a63/9276354aabfc492fa9b2cdbefb54ae4c",
///                                 SecretName = "cluster2-AzureStackLCMUserCredential-f5bcc1d9-23af-4ae9-aca1-041d0f593a63",
///                             },
///                         },
///                         SecretsLocation = "/subscriptions/db4e2fdb-6d80-4e6e-b7cd-xxxxxxx/resourceGroups/test-rg/providers/Microsoft.KeyVault/vaults/abcd123",
///                         SecuritySettings = new AzureNative.AzureStackHCI.Inputs.DeploymentSecuritySettingsArgs
///                         {
///                             BitlockerBootVolume = true,
///                             BitlockerDataVolumes = true,
///                             CredentialGuardEnforced = false,
///                             DriftControlEnforced = true,
///                             DrtmProtection = true,
///                             HvciProtection = true,
///                             SideChannelMitigationEnforced = true,
///                             SmbClusterEncryption = false,
///                             SmbSigningEnforced = true,
///                             WdacEnforced = true,
///                         },
///                         Storage = new AzureNative.AzureStackHCI.Inputs.StorageArgs
///                         {
///                             ConfigurationMode = "Express",
///                         },
///                     },
///                     SbePartnerInfo = new AzureNative.AzureStackHCI.Inputs.SbePartnerInfoArgs
///                     {
///                         CredentialList = new[]
///                         {
///                             new AzureNative.AzureStackHCI.Inputs.SbeCredentialsArgs
///                             {
///                                 EceSecretName = "DownloadConnectorCred",
///                                 SecretLocation = "https://sclusterkvnirhci35.vault.azure.net/secrets/cluster-34232342-DownloadConnectorCred-f5bcc1d9-23af-4ae9-aca1-041d0f593a63/9276354aabfc492fa9b2cdbefb54ae4b",
///                                 SecretName = "cluster1-DownloadConnectorCred-f5bcc1d9-23af-4ae9-aca1-041d0f593a63",
///                             },
///                         },
///                         PartnerProperties = new[]
///                         {
///                             new AzureNative.AzureStackHCI.Inputs.SbePartnerPropertiesArgs
///                             {
///                                 Name = "EnableBMCIpV6",
///                                 Value = "false",
///                             },
///                             new AzureNative.AzureStackHCI.Inputs.SbePartnerPropertiesArgs
///                             {
///                                 Name = "PhoneHomePort",
///                                 Value = "1653",
///                             },
///                             new AzureNative.AzureStackHCI.Inputs.SbePartnerPropertiesArgs
///                             {
///                                 Name = "BMCSecurityState",
///                                 Value = "HighSecurity",
///                             },
///                         },
///                         SbeDeploymentInfo = new AzureNative.AzureStackHCI.Inputs.SbeDeploymentInfoArgs
///                         {
///                             Family = "Gen5",
///                             Publisher = "Contoso",
///                             SbeManifestCreationDate = "2023-07-25T02:40:33Z",
///                             SbeManifestSource = "default",
///                             Version = "4.0.2309.13",
///                         },
///                     },
///                 },
///             },
///             Version = "string",
///         },
///         DeploymentMode = AzureNative.AzureStackHCI.DeploymentMode.Deploy,
///         DeploymentSettingsName = "default",
///         OperationType = AzureNative.AzureStackHCI.OperationType.ClusterProvisioning,
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
/// 	azurestackhci "github.com/pulumi/pulumi-azure-native-sdk/azurestackhci/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azurestackhci.NewDeploymentSetting(ctx, "deploymentSetting", &azurestackhci.DeploymentSettingArgs{
/// 			ArcNodeResourceIds: pulumi.StringArray{
/// 				pulumi.String("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/ArcInstance-rg/providers/Microsoft.HybridCompute/machines/Node-1"),
/// 				pulumi.String("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/ArcInstance-rg/providers/Microsoft.HybridCompute/machines/Node-2"),
/// 			},
/// 			ClusterName: pulumi.String("myCluster"),
/// 			DeploymentConfiguration: &azurestackhci.DeploymentConfigurationArgs{
/// 				ScaleUnits: azurestackhci.ScaleUnitsArray{
/// 					&azurestackhci.ScaleUnitsArgs{
/// 						DeploymentData: &azurestackhci.DeploymentDataArgs{
/// 							AdouPath: pulumi.String("OU=ms169,DC=ASZ1PLab8,DC=nttest,DC=microsoft,DC=com"),
/// 							Cluster: &azurestackhci.DeploymentClusterArgs{
/// 								AzureServiceEndpoint: pulumi.String("core.windows.net"),
/// 								CloudAccountName:     pulumi.String("myasestoragacct"),
/// 								Name:                 pulumi.String("testHCICluster"),
/// 								WitnessPath:          pulumi.String("Cloud"),
/// 								WitnessType:          pulumi.String("Cloud"),
/// 							},
/// 							DomainFqdn: pulumi.String("ASZ1PLab8.nttest.microsoft.com"),
/// 							HostNetwork: &azurestackhci.HostNetworkArgs{
/// 								EnableStorageAutoIp: pulumi.Bool(false),
/// 								Intents: azurestackhci.IntentsArray{
/// 									&azurestackhci.IntentsArgs{
/// 										Adapter: pulumi.StringArray{
/// 											pulumi.String("Port2"),
/// 										},
/// 										AdapterPropertyOverrides: &azurestackhci.AdapterPropertyOverridesArgs{
/// 											JumboPacket:             pulumi.String("1514"),
/// 											NetworkDirect:           pulumi.String("Enabled"),
/// 											NetworkDirectTechnology: pulumi.String("iWARP"),
/// 										},
/// 										Name:                               pulumi.String("Compute_Management"),
/// 										OverrideAdapterProperty:            pulumi.Bool(false),
/// 										OverrideQosPolicy:                  pulumi.Bool(false),
/// 										OverrideVirtualSwitchConfiguration: pulumi.Bool(false),
/// 										QosPolicyOverrides: &azurestackhci.QosPolicyOverridesArgs{
/// 											BandwidthPercentageSMB:         pulumi.String("50"),
/// 											PriorityValue8021ActionCluster: pulumi.String("7"),
/// 											PriorityValue8021ActionSMB:     pulumi.String("3"),
/// 										},
/// 										TrafficType: pulumi.StringArray{
/// 											pulumi.String("Compute"),
/// 											pulumi.String("Management"),
/// 										},
/// 										VirtualSwitchConfigurationOverrides: &azurestackhci.VirtualSwitchConfigurationOverridesArgs{
/// 											EnableIov:              pulumi.String("True"),
/// 											LoadBalancingAlgorithm: pulumi.String("HyperVPort"),
/// 										},
/// 									},
/// 								},
/// 								StorageConnectivitySwitchless: pulumi.Bool(true),
/// 								StorageNetworks: azurestackhci.StorageNetworksArray{
/// 									&azurestackhci.StorageNetworksArgs{
/// 										Name:               pulumi.String("Storage1Network"),
/// 										NetworkAdapterName: pulumi.String("Port3"),
/// 										StorageAdapterIPInfo: azurestackhci.StorageAdapterIPInfoArray{
/// 											&azurestackhci.StorageAdapterIPInfoArgs{
/// 												Ipv4Address:  pulumi.String("10.57.48.60"),
/// 												PhysicalNode: pulumi.String("string"),
/// 												SubnetMask:   pulumi.String("255.255.248.0"),
/// 											},
/// 										},
/// 										VlanId: pulumi.String("5"),
/// 									},
/// 								},
/// 							},
/// 							InfrastructureNetwork: azurestackhci.InfrastructureNetworkArray{
/// 								&azurestackhci.InfrastructureNetworkArgs{
/// 									DnsServers: pulumi.StringArray{
/// 										pulumi.String("10.57.50.90"),
/// 									},
/// 									Gateway: pulumi.String("255.255.248.0"),
/// 									IpPools: azurestackhci.IpPoolsArray{
/// 										&azurestackhci.IpPoolsArgs{
/// 											EndingAddress:   pulumi.String("10.57.48.66"),
/// 											StartingAddress: pulumi.String("10.57.48.60"),
/// 										},
/// 									},
/// 									SubnetMask: pulumi.String("255.255.248.0"),
/// 								},
/// 							},
/// 							NamingPrefix: pulumi.String("ms169"),
/// 							Observability: &azurestackhci.ObservabilityArgs{
/// 								EpisodicDataUpload:  pulumi.Bool(true),
/// 								EuLocation:          pulumi.Bool(false),
/// 								StreamingDataClient: pulumi.Bool(true),
/// 							},
/// 							OptionalServices: &azurestackhci.OptionalServicesArgs{
/// 								CustomLocation: pulumi.String("customLocationName"),
/// 							},
/// 							PhysicalNodes: azurestackhci.PhysicalNodesArray{
/// 								&azurestackhci.PhysicalNodesArgs{
/// 									Ipv4Address: pulumi.String("10.57.51.224"),
/// 									Name:        pulumi.String("ms169host"),
/// 								},
/// 								&azurestackhci.PhysicalNodesArgs{
/// 									Ipv4Address: pulumi.String("10.57.53.236"),
/// 									Name:        pulumi.String("ms154host"),
/// 								},
/// 							},
/// 							SdnIntegration: &azurestackhci.SdnIntegrationArgs{
/// 								NetworkController: &azurestackhci.NetworkControllerArgs{
/// 									MacAddressPoolStart:          pulumi.String("00-0D-3A-1B-C7-21"),
/// 									MacAddressPoolStop:           pulumi.String("00-0D-3A-1B-C7-29"),
/// 									NetworkVirtualizationEnabled: pulumi.Bool(true),
/// 								},
/// 							},
/// 							Secrets: azurestackhci.EceDeploymentSecretsArray{
/// 								&azurestackhci.EceDeploymentSecretsArgs{
/// 									EceSecretName:  pulumi.String("BMCAdminUserCred"),
/// 									SecretLocation: pulumi.String("https://sclusterkvnirhci35.vault.azure.net/secrets/cluster-34232342-BmcAdminUser-f5bcc1d9-23af-4ae9-aca1-041d0f593a63/9276354aabfc492fa9b2cdbefb54ae4b"),
/// 									SecretName:     pulumi.String("cluster1-BmcAdminUser-f5bcc1d9-23af-4ae9-aca1-041d0f593a63"),
/// 								},
/// 								&azurestackhci.EceDeploymentSecretsArgs{
/// 									EceSecretName:  pulumi.String(azurestackhci.EceSecretsAzureStackLCMUserCredential),
/// 									SecretLocation: pulumi.String("https://sclusterkvnirhci35.vault.azure.net/secrets/cluster-34232342-AzureStackLCMUserCredential-f5bcc1d9-23af-4ae9-aca1-041d0f593a63/9276354aabfc492fa9b2cdbefb54ae4c"),
/// 									SecretName:     pulumi.String("cluster2-AzureStackLCMUserCredential-f5bcc1d9-23af-4ae9-aca1-041d0f593a63"),
/// 								},
/// 							},
/// 							SecretsLocation: pulumi.String("/subscriptions/db4e2fdb-6d80-4e6e-b7cd-xxxxxxx/resourceGroups/test-rg/providers/Microsoft.KeyVault/vaults/abcd123"),
/// 							SecuritySettings: &azurestackhci.DeploymentSecuritySettingsArgs{
/// 								BitlockerBootVolume:           pulumi.Bool(true),
/// 								BitlockerDataVolumes:          pulumi.Bool(true),
/// 								CredentialGuardEnforced:       pulumi.Bool(false),
/// 								DriftControlEnforced:          pulumi.Bool(true),
/// 								DrtmProtection:                pulumi.Bool(true),
/// 								HvciProtection:                pulumi.Bool(true),
/// 								SideChannelMitigationEnforced: pulumi.Bool(true),
/// 								SmbClusterEncryption:          pulumi.Bool(false),
/// 								SmbSigningEnforced:            pulumi.Bool(true),
/// 								WdacEnforced:                  pulumi.Bool(true),
/// 							},
/// 							Storage: &azurestackhci.StorageArgs{
/// 								ConfigurationMode: pulumi.String("Express"),
/// 							},
/// 						},
/// 						SbePartnerInfo: &azurestackhci.SbePartnerInfoArgs{
/// 							CredentialList: azurestackhci.SbeCredentialsArray{
/// 								&azurestackhci.SbeCredentialsArgs{
/// 									EceSecretName:  pulumi.String("DownloadConnectorCred"),
/// 									SecretLocation: pulumi.String("https://sclusterkvnirhci35.vault.azure.net/secrets/cluster-34232342-DownloadConnectorCred-f5bcc1d9-23af-4ae9-aca1-041d0f593a63/9276354aabfc492fa9b2cdbefb54ae4b"),
/// 									SecretName:     pulumi.String("cluster1-DownloadConnectorCred-f5bcc1d9-23af-4ae9-aca1-041d0f593a63"),
/// 								},
/// 							},
/// 							PartnerProperties: azurestackhci.SbePartnerPropertiesArray{
/// 								&azurestackhci.SbePartnerPropertiesArgs{
/// 									Name:  pulumi.String("EnableBMCIpV6"),
/// 									Value: pulumi.String("false"),
/// 								},
/// 								&azurestackhci.SbePartnerPropertiesArgs{
/// 									Name:  pulumi.String("PhoneHomePort"),
/// 									Value: pulumi.String("1653"),
/// 								},
/// 								&azurestackhci.SbePartnerPropertiesArgs{
/// 									Name:  pulumi.String("BMCSecurityState"),
/// 									Value: pulumi.String("HighSecurity"),
/// 								},
/// 							},
/// 							SbeDeploymentInfo: &azurestackhci.SbeDeploymentInfoArgs{
/// 								Family:                  pulumi.String("Gen5"),
/// 								Publisher:               pulumi.String("Contoso"),
/// 								SbeManifestCreationDate: pulumi.String("2023-07-25T02:40:33Z"),
/// 								SbeManifestSource:       pulumi.String("default"),
/// 								Version:                 pulumi.String("4.0.2309.13"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				Version: pulumi.String("string"),
/// 			},
/// 			DeploymentMode:         pulumi.String(azurestackhci.DeploymentModeDeploy),
/// 			DeploymentSettingsName: pulumi.String("default"),
/// 			OperationType:          pulumi.String(azurestackhci.OperationTypeClusterProvisioning),
/// 			ResourceGroupName:      pulumi.String("test-rg"),
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
/// import com.pulumi.azurenative.azurestackhci.DeploymentSetting;
/// import com.pulumi.azurenative.azurestackhci.DeploymentSettingArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.DeploymentConfigurationArgs;
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
///         var deploymentSetting = new DeploymentSetting("deploymentSetting", DeploymentSettingArgs.builder()
///             .arcNodeResourceIds(
///                 "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/ArcInstance-rg/providers/Microsoft.HybridCompute/machines/Node-1",
///                 "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/ArcInstance-rg/providers/Microsoft.HybridCompute/machines/Node-2")
///             .clusterName("myCluster")
///             .deploymentConfiguration(DeploymentConfigurationArgs.builder()
///                 .scaleUnits(ScaleUnitsArgs.builder()
///                     .deploymentData(DeploymentDataArgs.builder()
///                         .adouPath("OU=ms169,DC=ASZ1PLab8,DC=nttest,DC=microsoft,DC=com")
///                         .cluster(DeploymentClusterArgs.builder()
///                             .azureServiceEndpoint("core.windows.net")
///                             .cloudAccountName("myasestoragacct")
///                             .name("testHCICluster")
///                             .witnessPath("Cloud")
///                             .witnessType("Cloud")
///                             .build())
///                         .domainFqdn("ASZ1PLab8.nttest.microsoft.com")
///                         .hostNetwork(HostNetworkArgs.builder()
///                             .enableStorageAutoIp(false)
///                             .intents(IntentsArgs.builder()
///                                 .adapter("Port2")
///                                 .adapterPropertyOverrides(AdapterPropertyOverridesArgs.builder()
///                                     .jumboPacket("1514")
///                                     .networkDirect("Enabled")
///                                     .networkDirectTechnology("iWARP")
///                                     .build())
///                                 .name("Compute_Management")
///                                 .overrideAdapterProperty(false)
///                                 .overrideQosPolicy(false)
///                                 .overrideVirtualSwitchConfiguration(false)
///                                 .qosPolicyOverrides(QosPolicyOverridesArgs.builder()
///                                     .bandwidthPercentageSMB("50")
///                                     .priorityValue8021ActionCluster("7")
///                                     .priorityValue8021ActionSMB("3")
///                                     .build())
///                                 .trafficType(
///                                     "Compute",
///                                     "Management")
///                                 .virtualSwitchConfigurationOverrides(VirtualSwitchConfigurationOverridesArgs.builder()
///                                     .enableIov("True")
///                                     .loadBalancingAlgorithm("HyperVPort")
///                                     .build())
///                                 .build())
///                             .storageConnectivitySwitchless(true)
///                             .storageNetworks(StorageNetworksArgs.builder()
///                                 .name("Storage1Network")
///                                 .networkAdapterName("Port3")
///                                 .storageAdapterIPInfo(StorageAdapterIPInfoArgs.builder()
///                                     .ipv4Address("10.57.48.60")
///                                     .physicalNode("string")
///                                     .subnetMask("255.255.248.0")
///                                     .build())
///                                 .vlanId("5")
///                                 .build())
///                             .build())
///                         .infrastructureNetwork(InfrastructureNetworkArgs.builder()
///                             .dnsServers("10.57.50.90")
///                             .gateway("255.255.248.0")
///                             .ipPools(IpPoolsArgs.builder()
///                                 .endingAddress("10.57.48.66")
///                                 .startingAddress("10.57.48.60")
///                                 .build())
///                             .subnetMask("255.255.248.0")
///                             .build())
///                         .namingPrefix("ms169")
///                         .observability(ObservabilityArgs.builder()
///                             .episodicDataUpload(true)
///                             .euLocation(false)
///                             .streamingDataClient(true)
///                             .build())
///                         .optionalServices(OptionalServicesArgs.builder()
///                             .customLocation("customLocationName")
///                             .build())
///                         .physicalNodes(
///                             PhysicalNodesArgs.builder()
///                                 .ipv4Address("10.57.51.224")
///                                 .name("ms169host")
///                                 .build(),
///                             PhysicalNodesArgs.builder()
///                                 .ipv4Address("10.57.53.236")
///                                 .name("ms154host")
///                                 .build())
///                         .sdnIntegration(SdnIntegrationArgs.builder()
///                             .networkController(NetworkControllerArgs.builder()
///                                 .macAddressPoolStart("00-0D-3A-1B-C7-21")
///                                 .macAddressPoolStop("00-0D-3A-1B-C7-29")
///                                 .networkVirtualizationEnabled(true)
///                                 .build())
///                             .build())
///                         .secrets(
///                             EceDeploymentSecretsArgs.builder()
///                                 .eceSecretName("BMCAdminUserCred")
///                                 .secretLocation("https://sclusterkvnirhci35.vault.azure.net/secrets/cluster-34232342-BmcAdminUser-f5bcc1d9-23af-4ae9-aca1-041d0f593a63/9276354aabfc492fa9b2cdbefb54ae4b")
///                                 .secretName("cluster1-BmcAdminUser-f5bcc1d9-23af-4ae9-aca1-041d0f593a63")
///                                 .build(),
///                             EceDeploymentSecretsArgs.builder()
///                                 .eceSecretName("AzureStackLCMUserCredential")
///                                 .secretLocation("https://sclusterkvnirhci35.vault.azure.net/secrets/cluster-34232342-AzureStackLCMUserCredential-f5bcc1d9-23af-4ae9-aca1-041d0f593a63/9276354aabfc492fa9b2cdbefb54ae4c")
///                                 .secretName("cluster2-AzureStackLCMUserCredential-f5bcc1d9-23af-4ae9-aca1-041d0f593a63")
///                                 .build())
///                         .secretsLocation("/subscriptions/db4e2fdb-6d80-4e6e-b7cd-xxxxxxx/resourceGroups/test-rg/providers/Microsoft.KeyVault/vaults/abcd123")
///                         .securitySettings(DeploymentSecuritySettingsArgs.builder()
///                             .bitlockerBootVolume(true)
///                             .bitlockerDataVolumes(true)
///                             .credentialGuardEnforced(false)
///                             .driftControlEnforced(true)
///                             .drtmProtection(true)
///                             .hvciProtection(true)
///                             .sideChannelMitigationEnforced(true)
///                             .smbClusterEncryption(false)
///                             .smbSigningEnforced(true)
///                             .wdacEnforced(true)
///                             .build())
///                         .storage(StorageArgs.builder()
///                             .configurationMode("Express")
///                             .build())
///                         .build())
///                     .sbePartnerInfo(SbePartnerInfoArgs.builder()
///                         .credentialList(SbeCredentialsArgs.builder()
///                             .eceSecretName("DownloadConnectorCred")
///                             .secretLocation("https://sclusterkvnirhci35.vault.azure.net/secrets/cluster-34232342-DownloadConnectorCred-f5bcc1d9-23af-4ae9-aca1-041d0f593a63/9276354aabfc492fa9b2cdbefb54ae4b")
///                             .secretName("cluster1-DownloadConnectorCred-f5bcc1d9-23af-4ae9-aca1-041d0f593a63")
///                             .build())
///                         .partnerProperties(
///                             SbePartnerPropertiesArgs.builder()
///                                 .name("EnableBMCIpV6")
///                                 .value("false")
///                                 .build(),
///                             SbePartnerPropertiesArgs.builder()
///                                 .name("PhoneHomePort")
///                                 .value("1653")
///                                 .build(),
///                             SbePartnerPropertiesArgs.builder()
///                                 .name("BMCSecurityState")
///                                 .value("HighSecurity")
///                                 .build())
///                         .sbeDeploymentInfo(SbeDeploymentInfoArgs.builder()
///                             .family("Gen5")
///                             .publisher("Contoso")
///                             .sbeManifestCreationDate("2023-07-25T02:40:33Z")
///                             .sbeManifestSource("default")
///                             .version("4.0.2309.13")
///                             .build())
///                         .build())
///                     .build())
///                 .version("string")
///                 .build())
///             .deploymentMode("Deploy")
///             .deploymentSettingsName("default")
///             .operationType("ClusterProvisioning")
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
/// const deploymentSetting = new azure_native.azurestackhci.DeploymentSetting("deploymentSetting", {
///     arcNodeResourceIds: [
///         "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/ArcInstance-rg/providers/Microsoft.HybridCompute/machines/Node-1",
///         "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/ArcInstance-rg/providers/Microsoft.HybridCompute/machines/Node-2",
///     ],
///     clusterName: "myCluster",
///     deploymentConfiguration: {
///         scaleUnits: [{
///             deploymentData: {
///                 adouPath: "OU=ms169,DC=ASZ1PLab8,DC=nttest,DC=microsoft,DC=com",
///                 cluster: {
///                     azureServiceEndpoint: "core.windows.net",
///                     cloudAccountName: "myasestoragacct",
///                     name: "testHCICluster",
///                     witnessPath: "Cloud",
///                     witnessType: "Cloud",
///                 },
///                 domainFqdn: "ASZ1PLab8.nttest.microsoft.com",
///                 hostNetwork: {
///                     enableStorageAutoIp: false,
///                     intents: [{
///                         adapter: ["Port2"],
///                         adapterPropertyOverrides: {
///                             jumboPacket: "1514",
///                             networkDirect: "Enabled",
///                             networkDirectTechnology: "iWARP",
///                         },
///                         name: "Compute_Management",
///                         overrideAdapterProperty: false,
///                         overrideQosPolicy: false,
///                         overrideVirtualSwitchConfiguration: false,
///                         qosPolicyOverrides: {
///                             bandwidthPercentageSMB: "50",
///                             priorityValue8021ActionCluster: "7",
///                             priorityValue8021ActionSMB: "3",
///                         },
///                         trafficType: [
///                             "Compute",
///                             "Management",
///                         ],
///                         virtualSwitchConfigurationOverrides: {
///                             enableIov: "True",
///                             loadBalancingAlgorithm: "HyperVPort",
///                         },
///                     }],
///                     storageConnectivitySwitchless: true,
///                     storageNetworks: [{
///                         name: "Storage1Network",
///                         networkAdapterName: "Port3",
///                         storageAdapterIPInfo: [{
///                             ipv4Address: "10.57.48.60",
///                             physicalNode: "string",
///                             subnetMask: "255.255.248.0",
///                         }],
///                         vlanId: "5",
///                     }],
///                 },
///                 infrastructureNetwork: [{
///                     dnsServers: ["10.57.50.90"],
///                     gateway: "255.255.248.0",
///                     ipPools: [{
///                         endingAddress: "10.57.48.66",
///                         startingAddress: "10.57.48.60",
///                     }],
///                     subnetMask: "255.255.248.0",
///                 }],
///                 namingPrefix: "ms169",
///                 observability: {
///                     episodicDataUpload: true,
///                     euLocation: false,
///                     streamingDataClient: true,
///                 },
///                 optionalServices: {
///                     customLocation: "customLocationName",
///                 },
///                 physicalNodes: [
///                     {
///                         ipv4Address: "10.57.51.224",
///                         name: "ms169host",
///                     },
///                     {
///                         ipv4Address: "10.57.53.236",
///                         name: "ms154host",
///                     },
///                 ],
///                 sdnIntegration: {
///                     networkController: {
///                         macAddressPoolStart: "00-0D-3A-1B-C7-21",
///                         macAddressPoolStop: "00-0D-3A-1B-C7-29",
///                         networkVirtualizationEnabled: true,
///                     },
///                 },
///                 secrets: [
///                     {
///                         eceSecretName: "BMCAdminUserCred",
///                         secretLocation: "https://sclusterkvnirhci35.vault.azure.net/secrets/cluster-34232342-BmcAdminUser-f5bcc1d9-23af-4ae9-aca1-041d0f593a63/9276354aabfc492fa9b2cdbefb54ae4b",
///                         secretName: "cluster1-BmcAdminUser-f5bcc1d9-23af-4ae9-aca1-041d0f593a63",
///                     },
///                     {
///                         eceSecretName: azure_native.azurestackhci.EceSecrets.AzureStackLCMUserCredential,
///                         secretLocation: "https://sclusterkvnirhci35.vault.azure.net/secrets/cluster-34232342-AzureStackLCMUserCredential-f5bcc1d9-23af-4ae9-aca1-041d0f593a63/9276354aabfc492fa9b2cdbefb54ae4c",
///                         secretName: "cluster2-AzureStackLCMUserCredential-f5bcc1d9-23af-4ae9-aca1-041d0f593a63",
///                     },
///                 ],
///                 secretsLocation: "/subscriptions/db4e2fdb-6d80-4e6e-b7cd-xxxxxxx/resourceGroups/test-rg/providers/Microsoft.KeyVault/vaults/abcd123",
///                 securitySettings: {
///                     bitlockerBootVolume: true,
///                     bitlockerDataVolumes: true,
///                     credentialGuardEnforced: false,
///                     driftControlEnforced: true,
///                     drtmProtection: true,
///                     hvciProtection: true,
///                     sideChannelMitigationEnforced: true,
///                     smbClusterEncryption: false,
///                     smbSigningEnforced: true,
///                     wdacEnforced: true,
///                 },
///                 storage: {
///                     configurationMode: "Express",
///                 },
///             },
///             sbePartnerInfo: {
///                 credentialList: [{
///                     eceSecretName: "DownloadConnectorCred",
///                     secretLocation: "https://sclusterkvnirhci35.vault.azure.net/secrets/cluster-34232342-DownloadConnectorCred-f5bcc1d9-23af-4ae9-aca1-041d0f593a63/9276354aabfc492fa9b2cdbefb54ae4b",
///                     secretName: "cluster1-DownloadConnectorCred-f5bcc1d9-23af-4ae9-aca1-041d0f593a63",
///                 }],
///                 partnerProperties: [
///                     {
///                         name: "EnableBMCIpV6",
///                         value: "false",
///                     },
///                     {
///                         name: "PhoneHomePort",
///                         value: "1653",
///                     },
///                     {
///                         name: "BMCSecurityState",
///                         value: "HighSecurity",
///                     },
///                 ],
///                 sbeDeploymentInfo: {
///                     family: "Gen5",
///                     publisher: "Contoso",
///                     sbeManifestCreationDate: "2023-07-25T02:40:33Z",
///                     sbeManifestSource: "default",
///                     version: "4.0.2309.13",
///                 },
///             },
///         }],
///         version: "string",
///     },
///     deploymentMode: azure_native.azurestackhci.DeploymentMode.Deploy,
///     deploymentSettingsName: "default",
///     operationType: azure_native.azurestackhci.OperationType.ClusterProvisioning,
///     resourceGroupName: "test-rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// deployment_setting = azure_native.azurestackhci.DeploymentSetting("deploymentSetting",
///     arc_node_resource_ids=[
///         "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/ArcInstance-rg/providers/Microsoft.HybridCompute/machines/Node-1",
///         "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/ArcInstance-rg/providers/Microsoft.HybridCompute/machines/Node-2",
///     ],
///     cluster_name="myCluster",
///     deployment_configuration={
///         "scale_units": [{
///             "deployment_data": {
///                 "adou_path": "OU=ms169,DC=ASZ1PLab8,DC=nttest,DC=microsoft,DC=com",
///                 "cluster": {
///                     "azure_service_endpoint": "core.windows.net",
///                     "cloud_account_name": "myasestoragacct",
///                     "name": "testHCICluster",
///                     "witness_path": "Cloud",
///                     "witness_type": "Cloud",
///                 },
///                 "domain_fqdn": "ASZ1PLab8.nttest.microsoft.com",
///                 "host_network": {
///                     "enable_storage_auto_ip": False,
///                     "intents": [{
///                         "adapter": ["Port2"],
///                         "adapter_property_overrides": {
///                             "jumbo_packet": "1514",
///                             "network_direct": "Enabled",
///                             "network_direct_technology": "iWARP",
///                         },
///                         "name": "Compute_Management",
///                         "override_adapter_property": False,
///                         "override_qos_policy": False,
///                         "override_virtual_switch_configuration": False,
///                         "qos_policy_overrides": {
///                             "bandwidth_percentage_smb": "50",
///                             "priority_value8021_action_cluster": "7",
///                             "priority_value8021_action_smb": "3",
///                         },
///                         "traffic_type": [
///                             "Compute",
///                             "Management",
///                         ],
///                         "virtual_switch_configuration_overrides": {
///                             "enable_iov": "True",
///                             "load_balancing_algorithm": "HyperVPort",
///                         },
///                     }],
///                     "storage_connectivity_switchless": True,
///                     "storage_networks": [{
///                         "name": "Storage1Network",
///                         "network_adapter_name": "Port3",
///                         "storage_adapter_ip_info": [{
///                             "ipv4_address": "10.57.48.60",
///                             "physical_node": "string",
///                             "subnet_mask": "255.255.248.0",
///                         }],
///                         "vlan_id": "5",
///                     }],
///                 },
///                 "infrastructure_network": [{
///                     "dns_servers": ["10.57.50.90"],
///                     "gateway": "255.255.248.0",
///                     "ip_pools": [{
///                         "ending_address": "10.57.48.66",
///                         "starting_address": "10.57.48.60",
///                     }],
///                     "subnet_mask": "255.255.248.0",
///                 }],
///                 "naming_prefix": "ms169",
///                 "observability": {
///                     "episodic_data_upload": True,
///                     "eu_location": False,
///                     "streaming_data_client": True,
///                 },
///                 "optional_services": {
///                     "custom_location": "customLocationName",
///                 },
///                 "physical_nodes": [
///                     {
///                         "ipv4_address": "10.57.51.224",
///                         "name": "ms169host",
///                     },
///                     {
///                         "ipv4_address": "10.57.53.236",
///                         "name": "ms154host",
///                     },
///                 ],
///                 "sdn_integration": {
///                     "network_controller": {
///                         "mac_address_pool_start": "00-0D-3A-1B-C7-21",
///                         "mac_address_pool_stop": "00-0D-3A-1B-C7-29",
///                         "network_virtualization_enabled": True,
///                     },
///                 },
///                 "secrets": [
///                     {
///                         "ece_secret_name": "BMCAdminUserCred",
///                         "secret_location": "https://sclusterkvnirhci35.vault.azure.net/secrets/cluster-34232342-BmcAdminUser-f5bcc1d9-23af-4ae9-aca1-041d0f593a63/9276354aabfc492fa9b2cdbefb54ae4b",
///                         "secret_name": "cluster1-BmcAdminUser-f5bcc1d9-23af-4ae9-aca1-041d0f593a63",
///                     },
///                     {
///                         "ece_secret_name": azure_native.azurestackhci.EceSecrets.AZURE_STACK_LCMUSER_CREDENTIAL,
///                         "secret_location": "https://sclusterkvnirhci35.vault.azure.net/secrets/cluster-34232342-AzureStackLCMUserCredential-f5bcc1d9-23af-4ae9-aca1-041d0f593a63/9276354aabfc492fa9b2cdbefb54ae4c",
///                         "secret_name": "cluster2-AzureStackLCMUserCredential-f5bcc1d9-23af-4ae9-aca1-041d0f593a63",
///                     },
///                 ],
///                 "secrets_location": "/subscriptions/db4e2fdb-6d80-4e6e-b7cd-xxxxxxx/resourceGroups/test-rg/providers/Microsoft.KeyVault/vaults/abcd123",
///                 "security_settings": {
///                     "bitlocker_boot_volume": True,
///                     "bitlocker_data_volumes": True,
///                     "credential_guard_enforced": False,
///                     "drift_control_enforced": True,
///                     "drtm_protection": True,
///                     "hvci_protection": True,
///                     "side_channel_mitigation_enforced": True,
///                     "smb_cluster_encryption": False,
///                     "smb_signing_enforced": True,
///                     "wdac_enforced": True,
///                 },
///                 "storage": {
///                     "configuration_mode": "Express",
///                 },
///             },
///             "sbe_partner_info": {
///                 "credential_list": [{
///                     "ece_secret_name": "DownloadConnectorCred",
///                     "secret_location": "https://sclusterkvnirhci35.vault.azure.net/secrets/cluster-34232342-DownloadConnectorCred-f5bcc1d9-23af-4ae9-aca1-041d0f593a63/9276354aabfc492fa9b2cdbefb54ae4b",
///                     "secret_name": "cluster1-DownloadConnectorCred-f5bcc1d9-23af-4ae9-aca1-041d0f593a63",
///                 }],
///                 "partner_properties": [
///                     {
///                         "name": "EnableBMCIpV6",
///                         "value": "false",
///                     },
///                     {
///                         "name": "PhoneHomePort",
///                         "value": "1653",
///                     },
///                     {
///                         "name": "BMCSecurityState",
///                         "value": "HighSecurity",
///                     },
///                 ],
///                 "sbe_deployment_info": {
///                     "family": "Gen5",
///                     "publisher": "Contoso",
///                     "sbe_manifest_creation_date": "2023-07-25T02:40:33Z",
///                     "sbe_manifest_source": "default",
///                     "version": "4.0.2309.13",
///                 },
///             },
///         }],
///         "version": "string",
///     },
///     deployment_mode=azure_native.azurestackhci.DeploymentMode.DEPLOY,
///     deployment_settings_name="default",
///     operation_type=azure_native.azurestackhci.OperationType.CLUSTER_PROVISIONING,
///     resource_group_name="test-rg")
///
/// ```
///
/// ```yaml
/// resources:
///   deploymentSetting:
///     type: azure-native:azurestackhci:DeploymentSetting
///     properties:
///       arcNodeResourceIds:
///         - /subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/ArcInstance-rg/providers/Microsoft.HybridCompute/machines/Node-1
///         - /subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/ArcInstance-rg/providers/Microsoft.HybridCompute/machines/Node-2
///       clusterName: myCluster
///       deploymentConfiguration:
///         scaleUnits:
///           - deploymentData:
///               adouPath: OU=ms169,DC=ASZ1PLab8,DC=nttest,DC=microsoft,DC=com
///               cluster:
///                 azureServiceEndpoint: core.windows.net
///                 cloudAccountName: myasestoragacct
///                 name: testHCICluster
///                 witnessPath: Cloud
///                 witnessType: Cloud
///               domainFqdn: ASZ1PLab8.nttest.microsoft.com
///               hostNetwork:
///                 enableStorageAutoIp: false
///                 intents:
///                   - adapter:
///                       - Port2
///                     adapterPropertyOverrides:
///                       jumboPacket: '1514'
///                       networkDirect: Enabled
///                       networkDirectTechnology: iWARP
///                     name: Compute_Management
///                     overrideAdapterProperty: false
///                     overrideQosPolicy: false
///                     overrideVirtualSwitchConfiguration: false
///                     qosPolicyOverrides:
///                       bandwidthPercentageSMB: '50'
///                       priorityValue8021ActionCluster: '7'
///                       priorityValue8021ActionSMB: '3'
///                     trafficType:
///                       - Compute
///                       - Management
///                     virtualSwitchConfigurationOverrides:
///                       enableIov: True
///                       loadBalancingAlgorithm: HyperVPort
///                 storageConnectivitySwitchless: true
///                 storageNetworks:
///                   - name: Storage1Network
///                     networkAdapterName: Port3
///                     storageAdapterIPInfo:
///                       - ipv4Address: 10.57.48.60
///                         physicalNode: string
///                         subnetMask: 255.255.248.0
///                     vlanId: '5'
///               infrastructureNetwork:
///                 - dnsServers:
///                     - 10.57.50.90
///                   gateway: 255.255.248.0
///                   ipPools:
///                     - endingAddress: 10.57.48.66
///                       startingAddress: 10.57.48.60
///                   subnetMask: 255.255.248.0
///               namingPrefix: ms169
///               observability:
///                 episodicDataUpload: true
///                 euLocation: false
///                 streamingDataClient: true
///               optionalServices:
///                 customLocation: customLocationName
///               physicalNodes:
///                 - ipv4Address: 10.57.51.224
///                   name: ms169host
///                 - ipv4Address: 10.57.53.236
///                   name: ms154host
///               sdnIntegration:
///                 networkController:
///                   macAddressPoolStart: 00-0D-3A-1B-C7-21
///                   macAddressPoolStop: 00-0D-3A-1B-C7-29
///                   networkVirtualizationEnabled: true
///               secrets:
///                 - eceSecretName: BMCAdminUserCred
///                   secretLocation: https://sclusterkvnirhci35.vault.azure.net/secrets/cluster-34232342-BmcAdminUser-f5bcc1d9-23af-4ae9-aca1-041d0f593a63/9276354aabfc492fa9b2cdbefb54ae4b
///                   secretName: cluster1-BmcAdminUser-f5bcc1d9-23af-4ae9-aca1-041d0f593a63
///                 - eceSecretName: AzureStackLCMUserCredential
///                   secretLocation: https://sclusterkvnirhci35.vault.azure.net/secrets/cluster-34232342-AzureStackLCMUserCredential-f5bcc1d9-23af-4ae9-aca1-041d0f593a63/9276354aabfc492fa9b2cdbefb54ae4c
///                   secretName: cluster2-AzureStackLCMUserCredential-f5bcc1d9-23af-4ae9-aca1-041d0f593a63
///               secretsLocation: /subscriptions/db4e2fdb-6d80-4e6e-b7cd-xxxxxxx/resourceGroups/test-rg/providers/Microsoft.KeyVault/vaults/abcd123
///               securitySettings:
///                 bitlockerBootVolume: true
///                 bitlockerDataVolumes: true
///                 credentialGuardEnforced: false
///                 driftControlEnforced: true
///                 drtmProtection: true
///                 hvciProtection: true
///                 sideChannelMitigationEnforced: true
///                 smbClusterEncryption: false
///                 smbSigningEnforced: true
///                 wdacEnforced: true
///               storage:
///                 configurationMode: Express
///             sbePartnerInfo:
///               credentialList:
///                 - eceSecretName: DownloadConnectorCred
///                   secretLocation: https://sclusterkvnirhci35.vault.azure.net/secrets/cluster-34232342-DownloadConnectorCred-f5bcc1d9-23af-4ae9-aca1-041d0f593a63/9276354aabfc492fa9b2cdbefb54ae4b
///                   secretName: cluster1-DownloadConnectorCred-f5bcc1d9-23af-4ae9-aca1-041d0f593a63
///               partnerProperties:
///                 - name: EnableBMCIpV6
///                   value: 'false'
///                 - name: PhoneHomePort
///                   value: '1653'
///                 - name: BMCSecurityState
///                   value: HighSecurity
///               sbeDeploymentInfo:
///                 family: Gen5
///                 publisher: Contoso
///                 sbeManifestCreationDate: 2023-07-25T02:40:33Z
///                 sbeManifestSource: default
///                 version: 4.0.2309.13
///         version: string
///       deploymentMode: Deploy
///       deploymentSettingsName: default
///       operationType: ClusterProvisioning
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
/// $ pulumi import azure-native:azurestackhci:DeploymentSetting default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureStackHCI/clusters/{clusterName}/deploymentSettings/{deploymentSettingsName}
/// ```
class DeploymentSetting extends pulumi.CustomResource {
  /// Azure resource ids of Arc machines to be part of cluster.
  late final pulumi.Output<List<String>> arcNodeResourceIds;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Scale units will contains list of deployment data
  late final pulumi.Output<DeploymentConfigurationResponse> deploymentConfiguration;
  /// The deployment mode for cluster deployment.
  late final pulumi.Output<String> deploymentMode;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The intended operation for a cluster.
  late final pulumi.Output<String?> operationType;
  /// DeploymentSetting provisioning state
  late final pulumi.Output<String> provisioningState;
  /// Deployment Status reported from cluster.
  late final pulumi.Output<EceReportedPropertiesResponse> reportedProperties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DeploymentSetting].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeploymentSetting]. {@macro pulumi_azurestackhci_deployment_setting_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeploymentSetting(
    String name, {
    DeploymentSettingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azurestackhci:DeploymentSetting',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arcNodeResourceIds = registerOutput<List<String>>('arcNodeResourceIds');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    deploymentConfiguration = registerOutput<DeploymentConfigurationResponse>('deploymentConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeploymentConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deploymentMode = registerOutput<String>('deploymentMode');
    this.name = registerOutput<String>('name');
    operationType = registerOutput<String?>('operationType');
    provisioningState = registerOutput<String>('provisioningState');
    reportedProperties = registerOutput<EceReportedPropertiesResponse>('reportedProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EceReportedPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
