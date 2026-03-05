import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_search_domain_status_args.dart';
import 'open_search_domain_status_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### OpenSearchDomainStatuses_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var openSearchDomainStatus = new AzureNative.AwsConnector.OpenSearchDomainStatus("openSearchDomainStatus", new()
///     {
///         Location = "cjnfjucekzuxbrhfzskptnxmy",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.OpenSearchDomainStatusPropertiesArgs
///         {
///             Arn = "xxoyruemlfezddeqgvpfvbvqrmmhzk",
///             AwsAccountId = "l",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsOpenSearchDomainStatusPropertiesArgs
///             {
///                 AccessPolicies = "zmizapetmvhfuhnuevg",
///                 AdvancedOptions =
///                 {
///                     { "key5855", "vqbdzcigjhn" },
///                 },
///                 AdvancedSecurityOptions = new AzureNative.AwsConnector.Inputs.AdvancedSecurityOptionsArgs
///                 {
///                     AnonymousAuthDisableDate = "2024-10-08T03:49:18.317Z",
///                     AnonymousAuthEnabled = true,
///                     Enabled = true,
///                     InternalUserDatabaseEnabled = true,
///                     SamlOptions = new AzureNative.AwsConnector.Inputs.SAMLOptionsOutputArgs
///                     {
///                         Enabled = true,
///                         Idp = new AzureNative.AwsConnector.Inputs.SAMLIdpArgs
///                         {
///                             EntityId = "ujb",
///                             MetadataContent = "ncvlnvyvuwdkmspvvynhbjwzzerkl",
///                         },
///                         RolesKey = "pphcuihmcksjghguam",
///                         SessionTimeoutMinutes = 22,
///                         SubjectKey = "pnnavlixxrzg",
///                     },
///                 },
///                 Arn = "svblrdkqxeghxc",
///                 AutoTuneOptions = new AzureNative.AwsConnector.Inputs.AutoTuneOptionsOutputArgs
///                 {
///                     ErrorMessage = "gdouqrr",
///                     State = new AzureNative.AwsConnector.Inputs.AutoTuneStateEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.AutoTuneState.DISABLED,
///                     },
///                     UseOffPeakWindow = true,
///                 },
///                 ChangeProgressDetails = new AzureNative.AwsConnector.Inputs.ChangeProgressDetailsArgs
///                 {
///                     ChangeId = "acuqzpomrpdxccssgsjtftt",
///                     ConfigChangeStatus = new AzureNative.AwsConnector.Inputs.ConfigChangeStatusEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.ConfigChangeStatus.ApplyingChanges,
///                     },
///                     InitiatedBy = new AzureNative.AwsConnector.Inputs.InitiatedByEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.InitiatedBy.CUSTOMER,
///                     },
///                     LastUpdatedTime = "2024-10-08T03:49:18.319Z",
///                     Message = "netweglaakukislhan",
///                     StartTime = "2024-10-08T03:49:18.319Z",
///                 },
///                 ClusterConfig = new AzureNative.AwsConnector.Inputs.ClusterConfigArgs
///                 {
///                     ColdStorageOptions = new AzureNative.AwsConnector.Inputs.ColdStorageOptionsArgs
///                     {
///                         Enabled = true,
///                     },
///                     DedicatedMasterCount = 15,
///                     DedicatedMasterEnabled = true,
///                     DedicatedMasterType = new AzureNative.AwsConnector.Inputs.OpenSearchPartitionInstanceTypeEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.OpenSearchPartitionInstanceType.C42xlargeSearch,
///                     },
///                     InstanceCount = 6,
///                     InstanceType = new AzureNative.AwsConnector.Inputs.OpenSearchPartitionInstanceTypeEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.OpenSearchPartitionInstanceType.C42xlargeSearch,
///                     },
///                     MultiAZWithStandbyEnabled = true,
///                     WarmCount = 29,
///                     WarmEnabled = true,
///                     WarmType = new AzureNative.AwsConnector.Inputs.OpenSearchWarmPartitionInstanceTypeEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.OpenSearchWarmPartitionInstanceType.Ultrawarm1LargeSearch,
///                     },
///                     ZoneAwarenessConfig = new AzureNative.AwsConnector.Inputs.ZoneAwarenessConfigArgs
///                     {
///                         AvailabilityZoneCount = 20,
///                     },
///                     ZoneAwarenessEnabled = true,
///                 },
///                 CognitoOptions = new AzureNative.AwsConnector.Inputs.CognitoOptionsArgs
///                 {
///                     Enabled = true,
///                     IdentityPoolId = "dcpqrbpnpihpqvibpysnhi",
///                     RoleArn = "wdpsbg",
///                     UserPoolId = "oeiqtnpxt",
///                 },
///                 Created = true,
///                 Deleted = true,
///                 DomainEndpointOptions = new AzureNative.AwsConnector.Inputs.DomainEndpointOptionsArgs
///                 {
///                     CustomEndpoint = "pkalvbtpzxwdwtzlhet",
///                     CustomEndpointCertificateArn = "bmcnynq",
///                     CustomEndpointEnabled = true,
///                     EnforceHTTPS = true,
///                     TlsSecurityPolicy = new AzureNative.AwsConnector.Inputs.TLSSecurityPolicyEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.TLSSecurityPolicy.PolicyMinTLS10201907,
///                     },
///                 },
///                 DomainId = "vdvjabmtsxndtepulmirzlkxjc",
///                 DomainName = "zmweyexy",
///                 DomainProcessingStatus = new AzureNative.AwsConnector.Inputs.DomainProcessingStatusTypeEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.DomainProcessingStatusType.Active,
///                 },
///                 EbsOptions = new AzureNative.AwsConnector.Inputs.EBSOptionsArgs
///                 {
///                     EbsEnabled = true,
///                     Iops = 1,
///                     Throughput = 6,
///                     VolumeSize = 16,
///                     VolumeType = new AzureNative.AwsConnector.Inputs.VolumeTypeEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.VolumeType.Gp2,
///                     },
///                 },
///                 EncryptionAtRestOptions = new AzureNative.AwsConnector.Inputs.EncryptionAtRestOptionsArgs
///                 {
///                     Enabled = true,
///                     KmsKeyId = "vfmtoghzhlyifmzgt",
///                 },
///                 Endpoint = "y",
///                 EndpointV2 = "lnmdhcvptzovtjrggoqef",
///                 Endpoints =
///                 {
///                     { "key7016", "mnbnwxhmvteoxgmcif" },
///                 },
///                 EngineVersion = "nafwkgnvpagjlvctspjtgg",
///                 IpAddressType = new AzureNative.AwsConnector.Inputs.IPAddressTypeEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.IPAddressType.Dualstack,
///                 },
///                 LogPublishingOptions =
///                 {
///                     { "key1257", new AzureNative.AwsConnector.Inputs.LogPublishingOptionArgs
///                     {
///                         CloudWatchLogsLogGroupArn = "yflaoiiuhbxlodpwh",
///                         Enabled = true,
///                     } },
///                 },
///                 ModifyingProperties = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.ModifyingPropertiesArgs
///                     {
///                         ActiveValue = "igvntcixfgeammklivfvtjjxfka",
///                         Name = "wbfqxsudlhdpidezy",
///                         PendingValue = "n",
///                         ValueType = new AzureNative.AwsConnector.Inputs.PropertyValueTypeEnumValueArgs
///                         {
///                             Value = AzureNative.AwsConnector.PropertyValueType.PLAIN_TEXT,
///                         },
///                     },
///                 },
///                 NodeToNodeEncryptionOptions = new AzureNative.AwsConnector.Inputs.NodeToNodeEncryptionOptionsArgs
///                 {
///                     Enabled = true,
///                 },
///                 OffPeakWindowOptions = new AzureNative.AwsConnector.Inputs.OffPeakWindowOptionsArgs
///                 {
///                     Enabled = true,
///                     OffPeakWindow = new AzureNative.AwsConnector.Inputs.OffPeakWindowArgs
///                     {
///                         WindowStartTime = new AzureNative.AwsConnector.Inputs.WindowStartTimeArgs
///                         {
///                             Hours = 19,
///                             Minutes = 7,
///                         },
///                     },
///                 },
///                 Processing = true,
///                 ServiceSoftwareOptions = new AzureNative.AwsConnector.Inputs.ServiceSoftwareOptionsArgs
///                 {
///                     AutomatedUpdateDate = "2024-10-08T03:49:18.320Z",
///                     Cancellable = true,
///                     CurrentVersion = "ugdoxim",
///                     Description = "moodysfsdplowtykjopgnlgeodxt",
///                     NewVersion = "awqdkyicwktzdn",
///                     OptionalDeployment = true,
///                     UpdateAvailable = true,
///                     UpdateStatus = new AzureNative.AwsConnector.Inputs.DeploymentStatusEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.DeploymentStatus.COMPLETED,
///                     },
///                 },
///                 SnapshotOptions = new AzureNative.AwsConnector.Inputs.SnapshotOptionsArgs
///                 {
///                     AutomatedSnapshotStartHour = 9,
///                 },
///                 SoftwareUpdateOptions = new AzureNative.AwsConnector.Inputs.SoftwareUpdateOptionsArgs
///                 {
///                     AutoSoftwareUpdateEnabled = true,
///                 },
///                 UpgradeProcessing = true,
///                 VpcOptions = new AzureNative.AwsConnector.Inputs.VPCDerivedInfoArgs
///                 {
///                     AvailabilityZones = new[]
///                     {
///                         "laxoeorkeojjhcnoji",
///                     },
///                     SecurityGroupIds = new[]
///                     {
///                         "ap",
///                     },
///                     SubnetIds = new[]
///                     {
///                         "oric",
///                     },
///                     VpcId = "jffbtwxjojtqphtd",
///                 },
///             },
///             AwsRegion = "mpszpnxbznm",
///             AwsSourceSchema = "qrkamtxqjfb",
///             AwsTags =
///             {
///                 { "key5895", "bosxipjwti" },
///             },
///             PublicCloudConnectorsResourceId = "g",
///             PublicCloudResourceName = "sntfjznnaylmvehihglcoyqpcyacz",
///         },
///         ResourceGroupName = "rgopenSearchDomainStatus",
///         Tags =
///         {
///             { "key9493", "seimlf" },
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
/// 	awsconnector "github.com/pulumi/pulumi-azure-native-sdk/awsconnector/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := awsconnector.NewOpenSearchDomainStatus(ctx, "openSearchDomainStatus", &awsconnector.OpenSearchDomainStatusArgs{
/// 			Location: pulumi.String("cjnfjucekzuxbrhfzskptnxmy"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.OpenSearchDomainStatusPropertiesArgs{
/// 				Arn:          pulumi.String("xxoyruemlfezddeqgvpfvbvqrmmhzk"),
/// 				AwsAccountId: pulumi.String("l"),
/// 				AwsProperties: &awsconnector.AwsOpenSearchDomainStatusPropertiesArgs{
/// 					AccessPolicies: pulumi.String("zmizapetmvhfuhnuevg"),
/// 					AdvancedOptions: pulumi.StringMap{
/// 						"key5855": pulumi.String("vqbdzcigjhn"),
/// 					},
/// 					AdvancedSecurityOptions: &awsconnector.AdvancedSecurityOptionsArgs{
/// 						AnonymousAuthDisableDate:    pulumi.String("2024-10-08T03:49:18.317Z"),
/// 						AnonymousAuthEnabled:        pulumi.Bool(true),
/// 						Enabled:                     pulumi.Bool(true),
/// 						InternalUserDatabaseEnabled: pulumi.Bool(true),
/// 						SamlOptions: awsconnector.SAMLOptionsOutputArgs{
/// 							Enabled: pulumi.Bool(true),
/// 							Idp: &awsconnector.SAMLIdpArgs{
/// 								EntityId:        pulumi.String("ujb"),
/// 								MetadataContent: pulumi.String("ncvlnvyvuwdkmspvvynhbjwzzerkl"),
/// 							},
/// 							RolesKey:              pulumi.String("pphcuihmcksjghguam"),
/// 							SessionTimeoutMinutes: pulumi.Int(22),
/// 							SubjectKey:            pulumi.String("pnnavlixxrzg"),
/// 						},
/// 					},
/// 					Arn: pulumi.String("svblrdkqxeghxc"),
/// 					AutoTuneOptions: awsconnector.AutoTuneOptionsOutputArgs{
/// 						ErrorMessage: pulumi.String("gdouqrr"),
/// 						State: &awsconnector.AutoTuneStateEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.AutoTuneStateDISABLED),
/// 						},
/// 						UseOffPeakWindow: pulumi.Bool(true),
/// 					},
/// 					ChangeProgressDetails: &awsconnector.ChangeProgressDetailsArgs{
/// 						ChangeId: pulumi.String("acuqzpomrpdxccssgsjtftt"),
/// 						ConfigChangeStatus: &awsconnector.ConfigChangeStatusEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.ConfigChangeStatusApplyingChanges),
/// 						},
/// 						InitiatedBy: &awsconnector.InitiatedByEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.InitiatedByCUSTOMER),
/// 						},
/// 						LastUpdatedTime: pulumi.String("2024-10-08T03:49:18.319Z"),
/// 						Message:         pulumi.String("netweglaakukislhan"),
/// 						StartTime:       pulumi.String("2024-10-08T03:49:18.319Z"),
/// 					},
/// 					ClusterConfig: &awsconnector.ClusterConfigArgs{
/// 						ColdStorageOptions: &awsconnector.ColdStorageOptionsArgs{
/// 							Enabled: pulumi.Bool(true),
/// 						},
/// 						DedicatedMasterCount:   pulumi.Int(15),
/// 						DedicatedMasterEnabled: pulumi.Bool(true),
/// 						DedicatedMasterType: &awsconnector.OpenSearchPartitionInstanceTypeEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.OpenSearchPartitionInstanceTypeC42xlargeSearch),
/// 						},
/// 						InstanceCount: pulumi.Int(6),
/// 						InstanceType: &awsconnector.OpenSearchPartitionInstanceTypeEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.OpenSearchPartitionInstanceTypeC42xlargeSearch),
/// 						},
/// 						MultiAZWithStandbyEnabled: pulumi.Bool(true),
/// 						WarmCount:                 pulumi.Int(29),
/// 						WarmEnabled:               pulumi.Bool(true),
/// 						WarmType: &awsconnector.OpenSearchWarmPartitionInstanceTypeEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.OpenSearchWarmPartitionInstanceTypeUltrawarm1LargeSearch),
/// 						},
/// 						ZoneAwarenessConfig: &awsconnector.ZoneAwarenessConfigArgs{
/// 							AvailabilityZoneCount: pulumi.Int(20),
/// 						},
/// 						ZoneAwarenessEnabled: pulumi.Bool(true),
/// 					},
/// 					CognitoOptions: &awsconnector.CognitoOptionsArgs{
/// 						Enabled:        pulumi.Bool(true),
/// 						IdentityPoolId: pulumi.String("dcpqrbpnpihpqvibpysnhi"),
/// 						RoleArn:        pulumi.String("wdpsbg"),
/// 						UserPoolId:     pulumi.String("oeiqtnpxt"),
/// 					},
/// 					Created: pulumi.Bool(true),
/// 					Deleted: pulumi.Bool(true),
/// 					DomainEndpointOptions: &awsconnector.DomainEndpointOptionsArgs{
/// 						CustomEndpoint:               pulumi.String("pkalvbtpzxwdwtzlhet"),
/// 						CustomEndpointCertificateArn: pulumi.String("bmcnynq"),
/// 						CustomEndpointEnabled:        pulumi.Bool(true),
/// 						EnforceHTTPS:                 pulumi.Bool(true),
/// 						TlsSecurityPolicy: &awsconnector.TLSSecurityPolicyEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.TLSSecurityPolicyPolicyMinTLS10201907),
/// 						},
/// 					},
/// 					DomainId:   pulumi.String("vdvjabmtsxndtepulmirzlkxjc"),
/// 					DomainName: pulumi.String("zmweyexy"),
/// 					DomainProcessingStatus: &awsconnector.DomainProcessingStatusTypeEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.DomainProcessingStatusTypeActive),
/// 					},
/// 					EbsOptions: &awsconnector.EBSOptionsArgs{
/// 						EbsEnabled: pulumi.Bool(true),
/// 						Iops:       pulumi.Int(1),
/// 						Throughput: pulumi.Int(6),
/// 						VolumeSize: pulumi.Int(16),
/// 						VolumeType: &awsconnector.VolumeTypeEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.VolumeTypeGp2),
/// 						},
/// 					},
/// 					EncryptionAtRestOptions: &awsconnector.EncryptionAtRestOptionsArgs{
/// 						Enabled:  pulumi.Bool(true),
/// 						KmsKeyId: pulumi.String("vfmtoghzhlyifmzgt"),
/// 					},
/// 					Endpoint:   pulumi.String("y"),
/// 					EndpointV2: pulumi.String("lnmdhcvptzovtjrggoqef"),
/// 					Endpoints: pulumi.StringMap{
/// 						"key7016": pulumi.String("mnbnwxhmvteoxgmcif"),
/// 					},
/// 					EngineVersion: pulumi.String("nafwkgnvpagjlvctspjtgg"),
/// 					IpAddressType: &awsconnector.IPAddressTypeEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.IPAddressTypeDualstack),
/// 					},
/// 					LogPublishingOptions: awsconnector.LogPublishingOptionMap{
/// 						"key1257": &awsconnector.LogPublishingOptionArgs{
/// 							CloudWatchLogsLogGroupArn: pulumi.String("yflaoiiuhbxlodpwh"),
/// 							Enabled:                   pulumi.Bool(true),
/// 						},
/// 					},
/// 					ModifyingProperties: awsconnector.ModifyingPropertiesArray{
/// 						&awsconnector.ModifyingPropertiesArgs{
/// 							ActiveValue:  pulumi.String("igvntcixfgeammklivfvtjjxfka"),
/// 							Name:         pulumi.String("wbfqxsudlhdpidezy"),
/// 							PendingValue: pulumi.String("n"),
/// 							ValueType: &awsconnector.PropertyValueTypeEnumValueArgs{
/// 								Value: pulumi.String(awsconnector.PropertyValueType_PLAIN_TEXT),
/// 							},
/// 						},
/// 					},
/// 					NodeToNodeEncryptionOptions: &awsconnector.NodeToNodeEncryptionOptionsArgs{
/// 						Enabled: pulumi.Bool(true),
/// 					},
/// 					OffPeakWindowOptions: &awsconnector.OffPeakWindowOptionsArgs{
/// 						Enabled: pulumi.Bool(true),
/// 						OffPeakWindow: &awsconnector.OffPeakWindowArgs{
/// 							WindowStartTime: &awsconnector.WindowStartTimeArgs{
/// 								Hours:   pulumi.Float64(19),
/// 								Minutes: pulumi.Float64(7),
/// 							},
/// 						},
/// 					},
/// 					Processing: pulumi.Bool(true),
/// 					ServiceSoftwareOptions: &awsconnector.ServiceSoftwareOptionsArgs{
/// 						AutomatedUpdateDate: pulumi.String("2024-10-08T03:49:18.320Z"),
/// 						Cancellable:         pulumi.Bool(true),
/// 						CurrentVersion:      pulumi.String("ugdoxim"),
/// 						Description:         pulumi.String("moodysfsdplowtykjopgnlgeodxt"),
/// 						NewVersion:          pulumi.String("awqdkyicwktzdn"),
/// 						OptionalDeployment:  pulumi.Bool(true),
/// 						UpdateAvailable:     pulumi.Bool(true),
/// 						UpdateStatus: &awsconnector.DeploymentStatusEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.DeploymentStatusCOMPLETED),
/// 						},
/// 					},
/// 					SnapshotOptions: &awsconnector.SnapshotOptionsArgs{
/// 						AutomatedSnapshotStartHour: pulumi.Int(9),
/// 					},
/// 					SoftwareUpdateOptions: &awsconnector.SoftwareUpdateOptionsArgs{
/// 						AutoSoftwareUpdateEnabled: pulumi.Bool(true),
/// 					},
/// 					UpgradeProcessing: pulumi.Bool(true),
/// 					VpcOptions: &awsconnector.VPCDerivedInfoArgs{
/// 						AvailabilityZones: pulumi.StringArray{
/// 							pulumi.String("laxoeorkeojjhcnoji"),
/// 						},
/// 						SecurityGroupIds: pulumi.StringArray{
/// 							pulumi.String("ap"),
/// 						},
/// 						SubnetIds: pulumi.StringArray{
/// 							pulumi.String("oric"),
/// 						},
/// 						VpcId: pulumi.String("jffbtwxjojtqphtd"),
/// 					},
/// 				},
/// 				AwsRegion:       pulumi.String("mpszpnxbznm"),
/// 				AwsSourceSchema: pulumi.String("qrkamtxqjfb"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key5895": pulumi.String("bosxipjwti"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("g"),
/// 				PublicCloudResourceName:         pulumi.String("sntfjznnaylmvehihglcoyqpcyacz"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgopenSearchDomainStatus"),
/// 			Tags: pulumi.StringMap{
/// 				"key9493": pulumi.String("seimlf"),
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
/// import com.pulumi.azurenative.awsconnector.OpenSearchDomainStatus;
/// import com.pulumi.azurenative.awsconnector.OpenSearchDomainStatusArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.OpenSearchDomainStatusPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsOpenSearchDomainStatusPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AdvancedSecurityOptionsArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.SAMLOptionsOutputArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.SAMLIdpArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AutoTuneOptionsOutputArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AutoTuneStateEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ChangeProgressDetailsArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ConfigChangeStatusEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.InitiatedByEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ClusterConfigArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ColdStorageOptionsArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.OpenSearchPartitionInstanceTypeEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.OpenSearchWarmPartitionInstanceTypeEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ZoneAwarenessConfigArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.CognitoOptionsArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.DomainEndpointOptionsArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.TLSSecurityPolicyEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.DomainProcessingStatusTypeEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.EBSOptionsArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.VolumeTypeEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.EncryptionAtRestOptionsArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.IPAddressTypeEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.NodeToNodeEncryptionOptionsArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.OffPeakWindowOptionsArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.OffPeakWindowArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.WindowStartTimeArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ServiceSoftwareOptionsArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.DeploymentStatusEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.SnapshotOptionsArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.SoftwareUpdateOptionsArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.VPCDerivedInfoArgs;
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
///         var openSearchDomainStatus = new OpenSearchDomainStatus("openSearchDomainStatus", OpenSearchDomainStatusArgs.builder()
///             .location("cjnfjucekzuxbrhfzskptnxmy")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(OpenSearchDomainStatusPropertiesArgs.builder()
///                 .arn("xxoyruemlfezddeqgvpfvbvqrmmhzk")
///                 .awsAccountId("l")
///                 .awsProperties(AwsOpenSearchDomainStatusPropertiesArgs.builder()
///                     .accessPolicies("zmizapetmvhfuhnuevg")
///                     .advancedOptions(Map.of("key5855", "vqbdzcigjhn"))
///                     .advancedSecurityOptions(AdvancedSecurityOptionsArgs.builder()
///                         .anonymousAuthDisableDate("2024-10-08T03:49:18.317Z")
///                         .anonymousAuthEnabled(true)
///                         .enabled(true)
///                         .internalUserDatabaseEnabled(true)
///                         .samlOptions(SAMLOptionsOutputArgs.builder()
///                             .enabled(true)
///                             .idp(SAMLIdpArgs.builder()
///                                 .entityId("ujb")
///                                 .metadataContent("ncvlnvyvuwdkmspvvynhbjwzzerkl")
///                                 .build())
///                             .rolesKey("pphcuihmcksjghguam")
///                             .sessionTimeoutMinutes(22)
///                             .subjectKey("pnnavlixxrzg")
///                             .build())
///                         .build())
///                     .arn("svblrdkqxeghxc")
///                     .autoTuneOptions(AutoTuneOptionsOutputArgs.builder()
///                         .errorMessage("gdouqrr")
///                         .state(AutoTuneStateEnumValueArgs.builder()
///                             .value("DISABLED")
///                             .build())
///                         .useOffPeakWindow(true)
///                         .build())
///                     .changeProgressDetails(ChangeProgressDetailsArgs.builder()
///                         .changeId("acuqzpomrpdxccssgsjtftt")
///                         .configChangeStatus(ConfigChangeStatusEnumValueArgs.builder()
///                             .value("ApplyingChanges")
///                             .build())
///                         .initiatedBy(InitiatedByEnumValueArgs.builder()
///                             .value("CUSTOMER")
///                             .build())
///                         .lastUpdatedTime("2024-10-08T03:49:18.319Z")
///                         .message("netweglaakukislhan")
///                         .startTime("2024-10-08T03:49:18.319Z")
///                         .build())
///                     .clusterConfig(ClusterConfigArgs.builder()
///                         .coldStorageOptions(ColdStorageOptionsArgs.builder()
///                             .enabled(true)
///                             .build())
///                         .dedicatedMasterCount(15)
///                         .dedicatedMasterEnabled(true)
///                         .dedicatedMasterType(OpenSearchPartitionInstanceTypeEnumValueArgs.builder()
///                             .value("c4.2xlarge.search")
///                             .build())
///                         .instanceCount(6)
///                         .instanceType(OpenSearchPartitionInstanceTypeEnumValueArgs.builder()
///                             .value("c4.2xlarge.search")
///                             .build())
///                         .multiAZWithStandbyEnabled(true)
///                         .warmCount(29)
///                         .warmEnabled(true)
///                         .warmType(OpenSearchWarmPartitionInstanceTypeEnumValueArgs.builder()
///                             .value("ultrawarm1.large.search")
///                             .build())
///                         .zoneAwarenessConfig(ZoneAwarenessConfigArgs.builder()
///                             .availabilityZoneCount(20)
///                             .build())
///                         .zoneAwarenessEnabled(true)
///                         .build())
///                     .cognitoOptions(CognitoOptionsArgs.builder()
///                         .enabled(true)
///                         .identityPoolId("dcpqrbpnpihpqvibpysnhi")
///                         .roleArn("wdpsbg")
///                         .userPoolId("oeiqtnpxt")
///                         .build())
///                     .created(true)
///                     .deleted(true)
///                     .domainEndpointOptions(DomainEndpointOptionsArgs.builder()
///                         .customEndpoint("pkalvbtpzxwdwtzlhet")
///                         .customEndpointCertificateArn("bmcnynq")
///                         .customEndpointEnabled(true)
///                         .enforceHTTPS(true)
///                         .tlsSecurityPolicy(TLSSecurityPolicyEnumValueArgs.builder()
///                             .value("Policy-Min-TLS-1-0-2019-07")
///                             .build())
///                         .build())
///                     .domainId("vdvjabmtsxndtepulmirzlkxjc")
///                     .domainName("zmweyexy")
///                     .domainProcessingStatus(DomainProcessingStatusTypeEnumValueArgs.builder()
///                         .value("Active")
///                         .build())
///                     .ebsOptions(EBSOptionsArgs.builder()
///                         .ebsEnabled(true)
///                         .iops(1)
///                         .throughput(6)
///                         .volumeSize(16)
///                         .volumeType(VolumeTypeEnumValueArgs.builder()
///                             .value("gp2")
///                             .build())
///                         .build())
///                     .encryptionAtRestOptions(EncryptionAtRestOptionsArgs.builder()
///                         .enabled(true)
///                         .kmsKeyId("vfmtoghzhlyifmzgt")
///                         .build())
///                     .endpoint("y")
///                     .endpointV2("lnmdhcvptzovtjrggoqef")
///                     .endpoints(Map.of("key7016", "mnbnwxhmvteoxgmcif"))
///                     .engineVersion("nafwkgnvpagjlvctspjtgg")
///                     .ipAddressType(IPAddressTypeEnumValueArgs.builder()
///                         .value("dualstack")
///                         .build())
///                     .logPublishingOptions(Map.of("key1257", LogPublishingOptionArgs.builder()
///                         .cloudWatchLogsLogGroupArn("yflaoiiuhbxlodpwh")
///                         .enabled(true)
///                         .build()))
///                     .modifyingProperties(ModifyingPropertiesArgs.builder()
///                         .activeValue("igvntcixfgeammklivfvtjjxfka")
///                         .name("wbfqxsudlhdpidezy")
///                         .pendingValue("n")
///                         .valueType(PropertyValueTypeEnumValueArgs.builder()
///                             .value("PLAIN_TEXT")
///                             .build())
///                         .build())
///                     .nodeToNodeEncryptionOptions(NodeToNodeEncryptionOptionsArgs.builder()
///                         .enabled(true)
///                         .build())
///                     .offPeakWindowOptions(OffPeakWindowOptionsArgs.builder()
///                         .enabled(true)
///                         .offPeakWindow(OffPeakWindowArgs.builder()
///                             .windowStartTime(WindowStartTimeArgs.builder()
///                                 .hours(19.0)
///                                 .minutes(7.0)
///                                 .build())
///                             .build())
///                         .build())
///                     .processing(true)
///                     .serviceSoftwareOptions(ServiceSoftwareOptionsArgs.builder()
///                         .automatedUpdateDate("2024-10-08T03:49:18.320Z")
///                         .cancellable(true)
///                         .currentVersion("ugdoxim")
///                         .description("moodysfsdplowtykjopgnlgeodxt")
///                         .newVersion("awqdkyicwktzdn")
///                         .optionalDeployment(true)
///                         .updateAvailable(true)
///                         .updateStatus(DeploymentStatusEnumValueArgs.builder()
///                             .value("COMPLETED")
///                             .build())
///                         .build())
///                     .snapshotOptions(SnapshotOptionsArgs.builder()
///                         .automatedSnapshotStartHour(9)
///                         .build())
///                     .softwareUpdateOptions(SoftwareUpdateOptionsArgs.builder()
///                         .autoSoftwareUpdateEnabled(true)
///                         .build())
///                     .upgradeProcessing(true)
///                     .vpcOptions(VPCDerivedInfoArgs.builder()
///                         .availabilityZones("laxoeorkeojjhcnoji")
///                         .securityGroupIds("ap")
///                         .subnetIds("oric")
///                         .vpcId("jffbtwxjojtqphtd")
///                         .build())
///                     .build())
///                 .awsRegion("mpszpnxbznm")
///                 .awsSourceSchema("qrkamtxqjfb")
///                 .awsTags(Map.of("key5895", "bosxipjwti"))
///                 .publicCloudConnectorsResourceId("g")
///                 .publicCloudResourceName("sntfjznnaylmvehihglcoyqpcyacz")
///                 .build())
///             .resourceGroupName("rgopenSearchDomainStatus")
///             .tags(Map.of("key9493", "seimlf"))
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
/// const openSearchDomainStatus = new azure_native.awsconnector.OpenSearchDomainStatus("openSearchDomainStatus", {
///     location: "cjnfjucekzuxbrhfzskptnxmy",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "xxoyruemlfezddeqgvpfvbvqrmmhzk",
///         awsAccountId: "l",
///         awsProperties: {
///             accessPolicies: "zmizapetmvhfuhnuevg",
///             advancedOptions: {
///                 key5855: "vqbdzcigjhn",
///             },
///             advancedSecurityOptions: {
///                 anonymousAuthDisableDate: "2024-10-08T03:49:18.317Z",
///                 anonymousAuthEnabled: true,
///                 enabled: true,
///                 internalUserDatabaseEnabled: true,
///                 samlOptions: {
///                     enabled: true,
///                     idp: {
///                         entityId: "ujb",
///                         metadataContent: "ncvlnvyvuwdkmspvvynhbjwzzerkl",
///                     },
///                     rolesKey: "pphcuihmcksjghguam",
///                     sessionTimeoutMinutes: 22,
///                     subjectKey: "pnnavlixxrzg",
///                 },
///             },
///             arn: "svblrdkqxeghxc",
///             autoTuneOptions: {
///                 errorMessage: "gdouqrr",
///                 state: {
///                     value: azure_native.awsconnector.AutoTuneState.DISABLED,
///                 },
///                 useOffPeakWindow: true,
///             },
///             changeProgressDetails: {
///                 changeId: "acuqzpomrpdxccssgsjtftt",
///                 configChangeStatus: {
///                     value: azure_native.awsconnector.ConfigChangeStatus.ApplyingChanges,
///                 },
///                 initiatedBy: {
///                     value: azure_native.awsconnector.InitiatedBy.CUSTOMER,
///                 },
///                 lastUpdatedTime: "2024-10-08T03:49:18.319Z",
///                 message: "netweglaakukislhan",
///                 startTime: "2024-10-08T03:49:18.319Z",
///             },
///             clusterConfig: {
///                 coldStorageOptions: {
///                     enabled: true,
///                 },
///                 dedicatedMasterCount: 15,
///                 dedicatedMasterEnabled: true,
///                 dedicatedMasterType: {
///                     value: azure_native.awsconnector.OpenSearchPartitionInstanceType.C42xlargeSearch,
///                 },
///                 instanceCount: 6,
///                 instanceType: {
///                     value: azure_native.awsconnector.OpenSearchPartitionInstanceType.C42xlargeSearch,
///                 },
///                 multiAZWithStandbyEnabled: true,
///                 warmCount: 29,
///                 warmEnabled: true,
///                 warmType: {
///                     value: azure_native.awsconnector.OpenSearchWarmPartitionInstanceType.Ultrawarm1LargeSearch,
///                 },
///                 zoneAwarenessConfig: {
///                     availabilityZoneCount: 20,
///                 },
///                 zoneAwarenessEnabled: true,
///             },
///             cognitoOptions: {
///                 enabled: true,
///                 identityPoolId: "dcpqrbpnpihpqvibpysnhi",
///                 roleArn: "wdpsbg",
///                 userPoolId: "oeiqtnpxt",
///             },
///             created: true,
///             deleted: true,
///             domainEndpointOptions: {
///                 customEndpoint: "pkalvbtpzxwdwtzlhet",
///                 customEndpointCertificateArn: "bmcnynq",
///                 customEndpointEnabled: true,
///                 enforceHTTPS: true,
///                 tlsSecurityPolicy: {
///                     value: azure_native.awsconnector.TLSSecurityPolicy.PolicyMinTLS10201907,
///                 },
///             },
///             domainId: "vdvjabmtsxndtepulmirzlkxjc",
///             domainName: "zmweyexy",
///             domainProcessingStatus: {
///                 value: azure_native.awsconnector.DomainProcessingStatusType.Active,
///             },
///             ebsOptions: {
///                 ebsEnabled: true,
///                 iops: 1,
///                 throughput: 6,
///                 volumeSize: 16,
///                 volumeType: {
///                     value: azure_native.awsconnector.VolumeType.Gp2,
///                 },
///             },
///             encryptionAtRestOptions: {
///                 enabled: true,
///                 kmsKeyId: "vfmtoghzhlyifmzgt",
///             },
///             endpoint: "y",
///             endpointV2: "lnmdhcvptzovtjrggoqef",
///             endpoints: {
///                 key7016: "mnbnwxhmvteoxgmcif",
///             },
///             engineVersion: "nafwkgnvpagjlvctspjtgg",
///             ipAddressType: {
///                 value: azure_native.awsconnector.IPAddressType.Dualstack,
///             },
///             logPublishingOptions: {
///                 key1257: {
///                     cloudWatchLogsLogGroupArn: "yflaoiiuhbxlodpwh",
///                     enabled: true,
///                 },
///             },
///             modifyingProperties: [{
///                 activeValue: "igvntcixfgeammklivfvtjjxfka",
///                 name: "wbfqxsudlhdpidezy",
///                 pendingValue: "n",
///                 valueType: {
///                     value: azure_native.awsconnector.PropertyValueType.PLAIN_TEXT,
///                 },
///             }],
///             nodeToNodeEncryptionOptions: {
///                 enabled: true,
///             },
///             offPeakWindowOptions: {
///                 enabled: true,
///                 offPeakWindow: {
///                     windowStartTime: {
///                         hours: 19,
///                         minutes: 7,
///                     },
///                 },
///             },
///             processing: true,
///             serviceSoftwareOptions: {
///                 automatedUpdateDate: "2024-10-08T03:49:18.320Z",
///                 cancellable: true,
///                 currentVersion: "ugdoxim",
///                 description: "moodysfsdplowtykjopgnlgeodxt",
///                 newVersion: "awqdkyicwktzdn",
///                 optionalDeployment: true,
///                 updateAvailable: true,
///                 updateStatus: {
///                     value: azure_native.awsconnector.DeploymentStatus.COMPLETED,
///                 },
///             },
///             snapshotOptions: {
///                 automatedSnapshotStartHour: 9,
///             },
///             softwareUpdateOptions: {
///                 autoSoftwareUpdateEnabled: true,
///             },
///             upgradeProcessing: true,
///             vpcOptions: {
///                 availabilityZones: ["laxoeorkeojjhcnoji"],
///                 securityGroupIds: ["ap"],
///                 subnetIds: ["oric"],
///                 vpcId: "jffbtwxjojtqphtd",
///             },
///         },
///         awsRegion: "mpszpnxbznm",
///         awsSourceSchema: "qrkamtxqjfb",
///         awsTags: {
///             key5895: "bosxipjwti",
///         },
///         publicCloudConnectorsResourceId: "g",
///         publicCloudResourceName: "sntfjznnaylmvehihglcoyqpcyacz",
///     },
///     resourceGroupName: "rgopenSearchDomainStatus",
///     tags: {
///         key9493: "seimlf",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// open_search_domain_status = azure_native.awsconnector.OpenSearchDomainStatus("openSearchDomainStatus",
///     location="cjnfjucekzuxbrhfzskptnxmy",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "xxoyruemlfezddeqgvpfvbvqrmmhzk",
///         "aws_account_id": "l",
///         "aws_properties": {
///             "access_policies": "zmizapetmvhfuhnuevg",
///             "advanced_options": {
///                 "key5855": "vqbdzcigjhn",
///             },
///             "advanced_security_options": {
///                 "anonymous_auth_disable_date": "2024-10-08T03:49:18.317Z",
///                 "anonymous_auth_enabled": True,
///                 "enabled": True,
///                 "internal_user_database_enabled": True,
///                 "saml_options": {
///                     "enabled": True,
///                     "idp": {
///                         "entity_id": "ujb",
///                         "metadata_content": "ncvlnvyvuwdkmspvvynhbjwzzerkl",
///                     },
///                     "roles_key": "pphcuihmcksjghguam",
///                     "session_timeout_minutes": 22,
///                     "subject_key": "pnnavlixxrzg",
///                 },
///             },
///             "arn": "svblrdkqxeghxc",
///             "auto_tune_options": {
///                 "error_message": "gdouqrr",
///                 "state": {
///                     "value": azure_native.awsconnector.AutoTuneState.DISABLED,
///                 },
///                 "use_off_peak_window": True,
///             },
///             "change_progress_details": {
///                 "change_id": "acuqzpomrpdxccssgsjtftt",
///                 "config_change_status": {
///                     "value": azure_native.awsconnector.ConfigChangeStatus.APPLYING_CHANGES,
///                 },
///                 "initiated_by": {
///                     "value": azure_native.awsconnector.InitiatedBy.CUSTOMER,
///                 },
///                 "last_updated_time": "2024-10-08T03:49:18.319Z",
///                 "message": "netweglaakukislhan",
///                 "start_time": "2024-10-08T03:49:18.319Z",
///             },
///             "cluster_config": {
///                 "cold_storage_options": {
///                     "enabled": True,
///                 },
///                 "dedicated_master_count": 15,
///                 "dedicated_master_enabled": True,
///                 "dedicated_master_type": {
///                     "value": azure_native.awsconnector.OpenSearchPartitionInstanceType.C42XLARGE_SEARCH,
///                 },
///                 "instance_count": 6,
///                 "instance_type": {
///                     "value": azure_native.awsconnector.OpenSearchPartitionInstanceType.C42XLARGE_SEARCH,
///                 },
///                 "multi_az_with_standby_enabled": True,
///                 "warm_count": 29,
///                 "warm_enabled": True,
///                 "warm_type": {
///                     "value": azure_native.awsconnector.OpenSearchWarmPartitionInstanceType.ULTRAWARM1_LARGE_SEARCH,
///                 },
///                 "zone_awareness_config": {
///                     "availability_zone_count": 20,
///                 },
///                 "zone_awareness_enabled": True,
///             },
///             "cognito_options": {
///                 "enabled": True,
///                 "identity_pool_id": "dcpqrbpnpihpqvibpysnhi",
///                 "role_arn": "wdpsbg",
///                 "user_pool_id": "oeiqtnpxt",
///             },
///             "created": True,
///             "deleted": True,
///             "domain_endpoint_options": {
///                 "custom_endpoint": "pkalvbtpzxwdwtzlhet",
///                 "custom_endpoint_certificate_arn": "bmcnynq",
///                 "custom_endpoint_enabled": True,
///                 "enforce_https": True,
///                 "tls_security_policy": {
///                     "value": azure_native.awsconnector.TLSSecurityPolicy.POLICY_MIN_TLS10201907,
///                 },
///             },
///             "domain_id": "vdvjabmtsxndtepulmirzlkxjc",
///             "domain_name": "zmweyexy",
///             "domain_processing_status": {
///                 "value": azure_native.awsconnector.DomainProcessingStatusType.ACTIVE,
///             },
///             "ebs_options": {
///                 "ebs_enabled": True,
///                 "iops": 1,
///                 "throughput": 6,
///                 "volume_size": 16,
///                 "volume_type": {
///                     "value": azure_native.awsconnector.VolumeType.GP2,
///                 },
///             },
///             "encryption_at_rest_options": {
///                 "enabled": True,
///                 "kms_key_id": "vfmtoghzhlyifmzgt",
///             },
///             "endpoint": "y",
///             "endpoint_v2": "lnmdhcvptzovtjrggoqef",
///             "endpoints": {
///                 "key7016": "mnbnwxhmvteoxgmcif",
///             },
///             "engine_version": "nafwkgnvpagjlvctspjtgg",
///             "ip_address_type": {
///                 "value": azure_native.awsconnector.IPAddressType.DUALSTACK,
///             },
///             "log_publishing_options": {
///                 "key1257": {
///                     "cloud_watch_logs_log_group_arn": "yflaoiiuhbxlodpwh",
///                     "enabled": True,
///                 },
///             },
///             "modifying_properties": [{
///                 "active_value": "igvntcixfgeammklivfvtjjxfka",
///                 "name": "wbfqxsudlhdpidezy",
///                 "pending_value": "n",
///                 "value_type": {
///                     "value": azure_native.awsconnector.PropertyValueType.PLAI_N_TEXT,
///                 },
///             }],
///             "node_to_node_encryption_options": {
///                 "enabled": True,
///             },
///             "off_peak_window_options": {
///                 "enabled": True,
///                 "off_peak_window": {
///                     "window_start_time": {
///                         "hours": 19,
///                         "minutes": 7,
///                     },
///                 },
///             },
///             "processing": True,
///             "service_software_options": {
///                 "automated_update_date": "2024-10-08T03:49:18.320Z",
///                 "cancellable": True,
///                 "current_version": "ugdoxim",
///                 "description": "moodysfsdplowtykjopgnlgeodxt",
///                 "new_version": "awqdkyicwktzdn",
///                 "optional_deployment": True,
///                 "update_available": True,
///                 "update_status": {
///                     "value": azure_native.awsconnector.DeploymentStatus.COMPLETED,
///                 },
///             },
///             "snapshot_options": {
///                 "automated_snapshot_start_hour": 9,
///             },
///             "software_update_options": {
///                 "auto_software_update_enabled": True,
///             },
///             "upgrade_processing": True,
///             "vpc_options": {
///                 "availability_zones": ["laxoeorkeojjhcnoji"],
///                 "security_group_ids": ["ap"],
///                 "subnet_ids": ["oric"],
///                 "vpc_id": "jffbtwxjojtqphtd",
///             },
///         },
///         "aws_region": "mpszpnxbznm",
///         "aws_source_schema": "qrkamtxqjfb",
///         "aws_tags": {
///             "key5895": "bosxipjwti",
///         },
///         "public_cloud_connectors_resource_id": "g",
///         "public_cloud_resource_name": "sntfjznnaylmvehihglcoyqpcyacz",
///     },
///     resource_group_name="rgopenSearchDomainStatus",
///     tags={
///         "key9493": "seimlf",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   openSearchDomainStatus:
///     type: azure-native:awsconnector:OpenSearchDomainStatus
///     properties:
///       location: cjnfjucekzuxbrhfzskptnxmy
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: xxoyruemlfezddeqgvpfvbvqrmmhzk
///         awsAccountId: l
///         awsProperties:
///           accessPolicies: zmizapetmvhfuhnuevg
///           advancedOptions:
///             key5855: vqbdzcigjhn
///           advancedSecurityOptions:
///             anonymousAuthDisableDate: 2024-10-08T03:49:18.317Z
///             anonymousAuthEnabled: true
///             enabled: true
///             internalUserDatabaseEnabled: true
///             samlOptions:
///               enabled: true
///               idp:
///                 entityId: ujb
///                 metadataContent: ncvlnvyvuwdkmspvvynhbjwzzerkl
///               rolesKey: pphcuihmcksjghguam
///               sessionTimeoutMinutes: 22
///               subjectKey: pnnavlixxrzg
///           arn: svblrdkqxeghxc
///           autoTuneOptions:
///             errorMessage: gdouqrr
///             state:
///               value: DISABLED
///             useOffPeakWindow: true
///           changeProgressDetails:
///             changeId: acuqzpomrpdxccssgsjtftt
///             configChangeStatus:
///               value: ApplyingChanges
///             initiatedBy:
///               value: CUSTOMER
///             lastUpdatedTime: 2024-10-08T03:49:18.319Z
///             message: netweglaakukislhan
///             startTime: 2024-10-08T03:49:18.319Z
///           clusterConfig:
///             coldStorageOptions:
///               enabled: true
///             dedicatedMasterCount: 15
///             dedicatedMasterEnabled: true
///             dedicatedMasterType:
///               value: c4.2xlarge.search
///             instanceCount: 6
///             instanceType:
///               value: c4.2xlarge.search
///             multiAZWithStandbyEnabled: true
///             warmCount: 29
///             warmEnabled: true
///             warmType:
///               value: ultrawarm1.large.search
///             zoneAwarenessConfig:
///               availabilityZoneCount: 20
///             zoneAwarenessEnabled: true
///           cognitoOptions:
///             enabled: true
///             identityPoolId: dcpqrbpnpihpqvibpysnhi
///             roleArn: wdpsbg
///             userPoolId: oeiqtnpxt
///           created: true
///           deleted: true
///           domainEndpointOptions:
///             customEndpoint: pkalvbtpzxwdwtzlhet
///             customEndpointCertificateArn: bmcnynq
///             customEndpointEnabled: true
///             enforceHTTPS: true
///             tlsSecurityPolicy:
///               value: Policy-Min-TLS-1-0-2019-07
///           domainId: vdvjabmtsxndtepulmirzlkxjc
///           domainName: zmweyexy
///           domainProcessingStatus:
///             value: Active
///           ebsOptions:
///             ebsEnabled: true
///             iops: 1
///             throughput: 6
///             volumeSize: 16
///             volumeType:
///               value: gp2
///           encryptionAtRestOptions:
///             enabled: true
///             kmsKeyId: vfmtoghzhlyifmzgt
///           endpoint: y
///           endpointV2: lnmdhcvptzovtjrggoqef
///           endpoints:
///             key7016: mnbnwxhmvteoxgmcif
///           engineVersion: nafwkgnvpagjlvctspjtgg
///           ipAddressType:
///             value: dualstack
///           logPublishingOptions:
///             key1257:
///               cloudWatchLogsLogGroupArn: yflaoiiuhbxlodpwh
///               enabled: true
///           modifyingProperties:
///             - activeValue: igvntcixfgeammklivfvtjjxfka
///               name: wbfqxsudlhdpidezy
///               pendingValue: n
///               valueType:
///                 value: PLAIN_TEXT
///           nodeToNodeEncryptionOptions:
///             enabled: true
///           offPeakWindowOptions:
///             enabled: true
///             offPeakWindow:
///               windowStartTime:
///                 hours: 19
///                 minutes: 7
///           processing: true
///           serviceSoftwareOptions:
///             automatedUpdateDate: 2024-10-08T03:49:18.320Z
///             cancellable: true
///             currentVersion: ugdoxim
///             description: moodysfsdplowtykjopgnlgeodxt
///             newVersion: awqdkyicwktzdn
///             optionalDeployment: true
///             updateAvailable: true
///             updateStatus:
///               value: COMPLETED
///           snapshotOptions:
///             automatedSnapshotStartHour: 9
///           softwareUpdateOptions:
///             autoSoftwareUpdateEnabled: true
///           upgradeProcessing: true
///           vpcOptions:
///             availabilityZones:
///               - laxoeorkeojjhcnoji
///             securityGroupIds:
///               - ap
///             subnetIds:
///               - oric
///             vpcId: jffbtwxjojtqphtd
///         awsRegion: mpszpnxbznm
///         awsSourceSchema: qrkamtxqjfb
///         awsTags:
///           key5895: bosxipjwti
///         publicCloudConnectorsResourceId: g
///         publicCloudResourceName: sntfjznnaylmvehihglcoyqpcyacz
///       resourceGroupName: rgopenSearchDomainStatus
///       tags:
///         key9493: seimlf
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
/// $ pulumi import azure-native:awsconnector:OpenSearchDomainStatus yuwkzpllpffeycwynrymxayw /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/openSearchDomainStatuses/{name}
/// ```
class OpenSearchDomainStatus extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<OpenSearchDomainStatusPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [OpenSearchDomainStatus].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OpenSearchDomainStatus]. {@macro pulumi_awsconnector_open_search_domain_status_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OpenSearchDomainStatus(
    String name, {
    OpenSearchDomainStatusArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:awsconnector:OpenSearchDomainStatus',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<OpenSearchDomainStatusPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return OpenSearchDomainStatusPropertiesResponse.fromMap(
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
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
