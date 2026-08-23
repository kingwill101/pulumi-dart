import 'package:pulumi/pulumi.dart' as pulumi;
import 's3_bucket_args.dart';
import 's3_bucket_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### S3Buckets_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var s3Bucket = new AzureNative.AwsConnector.S3Bucket("s3Bucket", new()
///     {
///         Location = "pesmjbocvf",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.S3BucketPropertiesArgs
///         {
///             Arn = "qoufjwcexyvk",
///             AwsAccountId = "rfckvyuni",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsS3BucketPropertiesArgs
///             {
///                 AccelerateConfiguration = new AzureNative.AwsConnector.Inputs.AccelerateConfigurationArgs
///                 {
///                     AccelerationStatus = AzureNative.AwsConnector.AccelerateConfigurationAccelerationStatus.Enabled,
///                 },
///                 AccessControl = AzureNative.AwsConnector.AccessControl.AuthenticatedRead,
///                 AnalyticsConfigurations = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.AnalyticsConfigurationArgs
///                     {
///                         Id = "ioxkjkuclx",
///                         Prefix = "errquicjtmxuidndown",
///                         StorageClassAnalysis = new AzureNative.AwsConnector.Inputs.StorageClassAnalysisArgs
///                         {
///                             DataExport = new AzureNative.AwsConnector.Inputs.DataExportArgs
///                             {
///                                 Destination = new AzureNative.AwsConnector.Inputs.DestinationArgs
///                                 {
///                                     BucketAccountId = "sfgcxqtuacvejulm",
///                                     BucketArn = "iuwuakbkkh",
///                                     Format = AzureNative.AwsConnector.DestinationFormat.CSV,
///                                     Prefix = "bnbqkueiiffpl",
///                                 },
///                                 OutputSchemaVersion = "ojzzqnkekust",
///                             },
///                         },
///                         TagFilters = new[]
///                         {
///                             new AzureNative.AwsConnector.Inputs.TagFilterArgs
///                             {
///                                 Key = "ffmzaifhmkmsljsm",
///                                 Value = "fsby",
///                             },
///                         },
///                     },
///                 },
///                 Arn = "wdn",
///                 BucketEncryption = new AzureNative.AwsConnector.Inputs.BucketEncryptionArgs
///                 {
///                     ServerSideEncryptionConfiguration = new[]
///                     {
///                         new AzureNative.AwsConnector.Inputs.ServerSideEncryptionRuleArgs
///                         {
///                             BucketKeyEnabled = true,
///                             ServerSideEncryptionByDefault = new AzureNative.AwsConnector.Inputs.ServerSideEncryptionByDefaultArgs
///                             {
///                                 KmsMasterKeyID = "mledejya",
///                                 SseAlgorithm = AzureNative.AwsConnector.ServerSideEncryptionByDefaultSSEAlgorithm.AES256,
///                             },
///                         },
///                     },
///                 },
///                 BucketName = "qapantghvzujpa",
///                 CorsConfiguration = new AzureNative.AwsConnector.Inputs.CorsConfigurationArgs
///                 {
///                     CorsRules = new[]
///                     {
///                         new AzureNative.AwsConnector.Inputs.CorsRuleArgs
///                         {
///                             AllowedHeaders = new[]
///                             {
///                                 "zzooekoypz",
///                             },
///                             AllowedMethods = new[]
///                             {
///                                 AzureNative.AwsConnector.CorsRuleAllowedMethods.DELETE,
///                             },
///                             AllowedOrigins = new[]
///                             {
///                                 "tqldxbbws",
///                             },
///                             ExposedHeaders = new[]
///                             {
///                                 "wjlikohhmisfgumcfzrnvg",
///                             },
///                             Id = "zvasxfnbnbpftihvtosdnlmskv",
///                             MaxAge = 9,
///                         },
///                     },
///                 },
///                 DomainName = "vbhotuxputambztq",
///                 DualStackDomainName = "sryuphsbzszrwamvrcsihe",
///                 IntelligentTieringConfigurations = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.IntelligentTieringConfigurationArgs
///                     {
///                         Id = "dbqsgaw",
///                         Prefix = "lhizynvczgfiqwaiyuqpvnd",
///                         Status = AzureNative.AwsConnector.IntelligentTieringConfigurationStatus.Disabled,
///                         TagFilters = new[]
///                         {
///                             new AzureNative.AwsConnector.Inputs.TagFilterArgs
///                             {
///                                 Key = "ffmzaifhmkmsljsm",
///                                 Value = "fsby",
///                             },
///                         },
///                         Tierings = new[]
///                         {
///                             new AzureNative.AwsConnector.Inputs.TieringArgs
///                             {
///                                 AccessTier = AzureNative.AwsConnector.TieringAccessTier.ARCHIVE_ACCESS,
///                                 Days = 6,
///                             },
///                         },
///                     },
///                 },
///                 InventoryConfigurations = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.InventoryConfigurationArgs
///                     {
///                         Destination = new AzureNative.AwsConnector.Inputs.DestinationArgs
///                         {
///                             BucketAccountId = "sfgcxqtuacvejulm",
///                             BucketArn = "iuwuakbkkh",
///                             Format = AzureNative.AwsConnector.DestinationFormat.CSV,
///                             Prefix = "bnbqkueiiffpl",
///                         },
///                         Enabled = true,
///                         Id = "yqyorzlpsfzzycfeqmdgtsstdze",
///                         IncludedObjectVersions = AzureNative.AwsConnector.InventoryConfigurationIncludedObjectVersions.All,
///                         OptionalFields = new[]
///                         {
///                             AzureNative.AwsConnector.InventoryConfigurationOptionalFields.BucketKeyStatus,
///                         },
///                         Prefix = "tuzwyujzrv",
///                         ScheduleFrequency = AzureNative.AwsConnector.InventoryConfigurationScheduleFrequency.Daily,
///                     },
///                 },
///                 LifecycleConfiguration = new AzureNative.AwsConnector.Inputs.LifecycleConfigurationArgs
///                 {
///                     Rules = new[]
///                     {
///                         new AzureNative.AwsConnector.Inputs.RuleArgs
///                         {
///                             AbortIncompleteMultipartUpload = new AzureNative.AwsConnector.Inputs.AbortIncompleteMultipartUploadArgs
///                             {
///                                 DaysAfterInitiation = 20,
///                             },
///                             ExpirationDate = "ruijzosqnherfgwbgzbiwau",
///                             ExpirationInDays = 8,
///                             ExpiredObjectDeleteMarker = true,
///                             Id = "aofbidgki",
///                             NoncurrentVersionExpiration = new AzureNative.AwsConnector.Inputs.NoncurrentVersionExpirationArgs
///                             {
///                                 NewerNoncurrentVersions = 4,
///                                 NoncurrentDays = 17,
///                             },
///                             NoncurrentVersionExpirationInDays = 4,
///                             NoncurrentVersionTransition = new AzureNative.AwsConnector.Inputs.NoncurrentVersionTransitionArgs
///                             {
///                                 NewerNoncurrentVersions = 6,
///                                 StorageClass = AzureNative.AwsConnector.NoncurrentVersionTransitionStorageClass.DEEP_ARCHIVE,
///                                 TransitionInDays = 8,
///                             },
///                             NoncurrentVersionTransitions = new[]
///                             {
///                                 new AzureNative.AwsConnector.Inputs.NoncurrentVersionTransitionArgs
///                                 {
///                                     NewerNoncurrentVersions = 6,
///                                     StorageClass = AzureNative.AwsConnector.NoncurrentVersionTransitionStorageClass.DEEP_ARCHIVE,
///                                     TransitionInDays = 8,
///                                 },
///                             },
///                             ObjectSizeGreaterThan = "hfifjfbqvmtatza",
///                             ObjectSizeLessThan = "ew",
///                             Prefix = "kbsmshvpardhxehfjgszomvekk",
///                             Status = AzureNative.AwsConnector.RuleStatus.Disabled,
///                             TagFilters = new[]
///                             {
///                                 new AzureNative.AwsConnector.Inputs.TagFilterArgs
///                                 {
///                                     Key = "ffmzaifhmkmsljsm",
///                                     Value = "fsby",
///                                 },
///                             },
///                             Transition = new AzureNative.AwsConnector.Inputs.TransitionArgs
///                             {
///                                 StorageClass = AzureNative.AwsConnector.TransitionStorageClass.DEEP_ARCHIVE,
///                                 TransitionDate = "cqdrkqznucygxbnccuvxqbtnm",
///                                 TransitionInDays = 14,
///                             },
///                             Transitions = new[]
///                             {
///                                 new AzureNative.AwsConnector.Inputs.TransitionArgs
///                                 {
///                                     StorageClass = AzureNative.AwsConnector.TransitionStorageClass.DEEP_ARCHIVE,
///                                     TransitionDate = "cqdrkqznucygxbnccuvxqbtnm",
///                                     TransitionInDays = 14,
///                                 },
///                             },
///                         },
///                     },
///                 },
///                 LoggingConfiguration = new AzureNative.AwsConnector.Inputs.LoggingConfigurationArgs
///                 {
///                     DestinationBucketName = "aujj",
///                     LogFilePrefix = "vdmmbfnvymowpvmhbsagekbokzvp",
///                     TargetObjectKeyFormat = new AzureNative.AwsConnector.Inputs.TargetObjectKeyFormatArgs
///                     {
///                         PartitionedPrefix = new AzureNative.AwsConnector.Inputs.PartitionedPrefixArgs
///                         {
///                             PartitionDateSource = AzureNative.AwsConnector.PartitionedPrefixPartitionDateSource.DeliveryTime,
///                         },
///                     },
///                 },
///                 MetricsConfigurations = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.MetricsConfigurationArgs
///                     {
///                         AccessPointArn = "tkhjqpjfplj",
///                         Id = "ggheleujxadbvbjogd",
///                         Prefix = "zg",
///                         TagFilters = new[]
///                         {
///                             new AzureNative.AwsConnector.Inputs.TagFilterArgs
///                             {
///                                 Key = "ffmzaifhmkmsljsm",
///                                 Value = "fsby",
///                             },
///                         },
///                     },
///                 },
///                 NotificationConfiguration = new AzureNative.AwsConnector.Inputs.NotificationConfigurationArgs
///                 {
///                     EventBridgeConfiguration = new AzureNative.AwsConnector.Inputs.EventBridgeConfigurationArgs
///                     {
///                         EventBridgeEnabled = true,
///                     },
///                     LambdaConfigurations = new[]
///                     {
///                         new AzureNative.AwsConnector.Inputs.LambdaConfigurationArgs
///                         {
///                             Event = "zpvewswtoarduycggotzdneptucwix",
///                             Filter = new AzureNative.AwsConnector.Inputs.NotificationFilterArgs
///                             {
///                                 S3Key = new AzureNative.AwsConnector.Inputs.S3KeyFilterArgs
///                                 {
///                                     Rules = new[]
///                                     {
///                                         new AzureNative.AwsConnector.Inputs.FilterRuleArgs
///                                         {
///                                             Name = "ohgjzuamjncbifvbkldogxjuxvhvz",
///                                             Value = "dauvnhzxpkpqutnrl",
///                                         },
///                                     },
///                                 },
///                             },
///                             Function = "zmyzygfaojliiryslfyuyme",
///                         },
///                     },
///                     QueueConfigurations = new[]
///                     {
///                         new AzureNative.AwsConnector.Inputs.QueueConfigurationArgs
///                         {
///                             Event = "qgcdpcvmkvjivvpvmmaeqrictlznb",
///                             Filter = new AzureNative.AwsConnector.Inputs.NotificationFilterArgs
///                             {
///                                 S3Key = new AzureNative.AwsConnector.Inputs.S3KeyFilterArgs
///                                 {
///                                     Rules = new[]
///                                     {
///                                         new AzureNative.AwsConnector.Inputs.FilterRuleArgs
///                                         {
///                                             Name = "ohgjzuamjncbifvbkldogxjuxvhvz",
///                                             Value = "dauvnhzxpkpqutnrl",
///                                         },
///                                     },
///                                 },
///                             },
///                             Queue = "qwlbvlgmwiaegulyybqggopf",
///                         },
///                     },
///                     TopicConfigurations = new[]
///                     {
///                         new AzureNative.AwsConnector.Inputs.TopicConfigurationArgs
///                         {
///                             Event = "kxl",
///                             Filter = new AzureNative.AwsConnector.Inputs.NotificationFilterArgs
///                             {
///                                 S3Key = new AzureNative.AwsConnector.Inputs.S3KeyFilterArgs
///                                 {
///                                     Rules = new[]
///                                     {
///                                         new AzureNative.AwsConnector.Inputs.FilterRuleArgs
///                                         {
///                                             Name = "ohgjzuamjncbifvbkldogxjuxvhvz",
///                                             Value = "dauvnhzxpkpqutnrl",
///                                         },
///                                     },
///                                 },
///                             },
///                             Topic = "cj",
///                         },
///                     },
///                 },
///                 ObjectLockConfiguration = new AzureNative.AwsConnector.Inputs.ObjectLockConfigurationArgs
///                 {
///                     ObjectLockEnabled = "aiocf",
///                     Rule = new AzureNative.AwsConnector.Inputs.ObjectLockRuleArgs
///                     {
///                         DefaultRetention = new AzureNative.AwsConnector.Inputs.DefaultRetentionArgs
///                         {
///                             Days = 22,
///                             Mode = AzureNative.AwsConnector.DefaultRetentionMode.COMPLIANCE,
///                             Years = 11,
///                         },
///                     },
///                 },
///                 ObjectLockEnabled = true,
///                 OwnershipControls = new AzureNative.AwsConnector.Inputs.OwnershipControlsArgs
///                 {
///                     Rules = new[]
///                     {
///                         new AzureNative.AwsConnector.Inputs.OwnershipControlsRuleArgs
///                         {
///                             ObjectOwnership = AzureNative.AwsConnector.OwnershipControlsRuleObjectOwnership.BucketOwnerEnforced,
///                         },
///                     },
///                 },
///                 PublicAccessBlockConfiguration = new AzureNative.AwsConnector.Inputs.PublicAccessBlockConfigurationArgs
///                 {
///                     BlockPublicAcls = true,
///                     BlockPublicPolicy = true,
///                     IgnorePublicAcls = true,
///                     RestrictPublicBuckets = true,
///                 },
///                 RegionalDomainName = "xdbzcoemgixrqq",
///                 ReplicationConfiguration = new AzureNative.AwsConnector.Inputs.ReplicationConfigurationArgs
///                 {
///                     Role = "rqafufwtmuflkqet",
///                     Rules = new[]
///                     {
///                         new AzureNative.AwsConnector.Inputs.ReplicationRuleArgs
///                         {
///                             DeleteMarkerReplication = new AzureNative.AwsConnector.Inputs.DeleteMarkerReplicationArgs
///                             {
///                                 Status = AzureNative.AwsConnector.DeleteMarkerReplicationStatus.Disabled,
///                             },
///                             Destination = new AzureNative.AwsConnector.Inputs.ReplicationDestinationArgs
///                             {
///                                 AccessControlTranslation = new AzureNative.AwsConnector.Inputs.AccessControlTranslationArgs
///                                 {
///                                     Owner = "smyptov",
///                                 },
///                                 Account = "hwqiekzz",
///                                 Bucket = "prjlsmdhkwrputvpdavgn",
///                                 EncryptionConfiguration = new AzureNative.AwsConnector.Inputs.EncryptionConfigurationArgs
///                                 {
///                                     ReplicaKmsKeyID = "uodgudyknqizofykjokpv",
///                                 },
///                                 Metrics = new AzureNative.AwsConnector.Inputs.MetricsArgs
///                                 {
///                                     EventThreshold = new AzureNative.AwsConnector.Inputs.ReplicationTimeValueArgs
///                                     {
///                                         Minutes = 18,
///                                     },
///                                     Status = AzureNative.AwsConnector.MetricsStatus.Disabled,
///                                 },
///                                 ReplicationTime = new AzureNative.AwsConnector.Inputs.ReplicationTimeArgs
///                                 {
///                                     Status = AzureNative.AwsConnector.ReplicationTimeStatus.Disabled,
///                                     Time = new AzureNative.AwsConnector.Inputs.ReplicationTimeValueArgs
///                                     {
///                                         Minutes = 18,
///                                     },
///                                 },
///                                 StorageClass = AzureNative.AwsConnector.ReplicationDestinationStorageClass.DEEP_ARCHIVE,
///                             },
///                             Filter = new AzureNative.AwsConnector.Inputs.ReplicationRuleFilterArgs
///                             {
///                                 And = new AzureNative.AwsConnector.Inputs.ReplicationRuleAndOperatorArgs
///                                 {
///                                     Prefix = "rlralilpznxqfpcseysvvxmfaor",
///                                     TagFilters = new[]
///                                     {
///                                         new AzureNative.AwsConnector.Inputs.TagFilterArgs
///                                         {
///                                             Key = "ffmzaifhmkmsljsm",
///                                             Value = "fsby",
///                                         },
///                                     },
///                                 },
///                                 Prefix = "etzfeufdxmcvjzpvxbjmzikok",
///                                 TagFilter = new AzureNative.AwsConnector.Inputs.TagFilterArgs
///                                 {
///                                     Key = "ffmzaifhmkmsljsm",
///                                     Value = "fsby",
///                                 },
///                             },
///                             Id = "fjcfzahlddm",
///                             Prefix = "agykvphwwnfevfucrxugxejv",
///                             Priority = 20,
///                             SourceSelectionCriteria = new AzureNative.AwsConnector.Inputs.SourceSelectionCriteriaArgs
///                             {
///                                 ReplicaModifications = new AzureNative.AwsConnector.Inputs.ReplicaModificationsArgs
///                                 {
///                                     Status = AzureNative.AwsConnector.ReplicaModificationsStatus.Disabled,
///                                 },
///                                 SseKmsEncryptedObjects = new AzureNative.AwsConnector.Inputs.SseKmsEncryptedObjectsArgs
///                                 {
///                                     Status = AzureNative.AwsConnector.SseKmsEncryptedObjectsStatus.Disabled,
///                                 },
///                             },
///                             Status = AzureNative.AwsConnector.ReplicationRuleStatus.Disabled,
///                         },
///                     },
///                 },
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "dxpeasomkyhulmxegodswwuhn",
///                         Value = "otwjdamxqdydqwujwyfh",
///                     },
///                 },
///                 VersioningConfiguration = new AzureNative.AwsConnector.Inputs.VersioningConfigurationArgs
///                 {
///                     Status = AzureNative.AwsConnector.VersioningConfigurationStatus.Enabled,
///                 },
///                 WebsiteConfiguration = new AzureNative.AwsConnector.Inputs.WebsiteConfigurationArgs
///                 {
///                     ErrorDocument = "zxifnrlbyapkasrrhamdkdsqk",
///                     IndexDocument = "umbhsxlihqldbh",
///                     RedirectAllRequestsTo = new AzureNative.AwsConnector.Inputs.RedirectAllRequestsToArgs
///                     {
///                         HostName = "sxmd",
///                         Protocol = AzureNative.AwsConnector.RedirectAllRequestsToProtocol.Http,
///                     },
///                     RoutingRules = new[]
///                     {
///                         new AzureNative.AwsConnector.Inputs.RoutingRuleArgs
///                         {
///                             RedirectRule = new AzureNative.AwsConnector.Inputs.RedirectRuleArgs
///                             {
///                                 HostName = "odmugwc",
///                                 HttpRedirectCode = "vfvnluyewsuhlybwzwsc",
///                                 Protocol = AzureNative.AwsConnector.RedirectRuleProtocol.Http,
///                                 ReplaceKeyPrefixWith = "khrrcydzrtwzttnlqrlvdqdj",
///                                 ReplaceKeyWith = "axcwbdxqktfrrivec",
///                             },
///                             RoutingRuleCondition = new AzureNative.AwsConnector.Inputs.RoutingRuleConditionArgs
///                             {
///                                 HttpErrorCodeReturnedEquals = "rajjyyktkunsenpficiiq",
///                                 KeyPrefixEquals = "tgzmwymptfxjolynmpwx",
///                             },
///                         },
///                     },
///                 },
///                 WebsiteURL = "vtlwozcgstjkkmgfywinjoreomvw",
///             },
///             AwsRegion = "kckriyydtrwdlelcuztzfeptvcbwj",
///             AwsSourceSchema = "kywnqkadqm",
///             AwsTags =
///             {
///                 { "key1337", "xopsufyohwwvrxsp" },
///             },
///             PublicCloudConnectorsResourceId = "i",
///             PublicCloudResourceName = "fmugqeeykklaccblyqplo",
///         },
///         ResourceGroupName = "rgs3Bucket",
///         Tags =
///         {
///             { "key8605", "s" },
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
/// 		_, err := awsconnector.NewS3Bucket(ctx, "s3Bucket", &awsconnector.S3BucketArgs{
/// 			Location: pulumi.String("pesmjbocvf"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.S3BucketPropertiesArgs{
/// 				Arn:          pulumi.String("qoufjwcexyvk"),
/// 				AwsAccountId: pulumi.String("rfckvyuni"),
/// 				AwsProperties: &awsconnector.AwsS3BucketPropertiesArgs{
/// 					AccelerateConfiguration: &awsconnector.AccelerateConfigurationArgs{
/// 						AccelerationStatus: pulumi.String(awsconnector.AccelerateConfigurationAccelerationStatusEnabled),
/// 					},
/// 					AccessControl: pulumi.String(awsconnector.AccessControlAuthenticatedRead),
/// 					AnalyticsConfigurations: awsconnector.AnalyticsConfigurationArray{
/// 						&awsconnector.AnalyticsConfigurationArgs{
/// 							Id:     pulumi.String("ioxkjkuclx"),
/// 							Prefix: pulumi.String("errquicjtmxuidndown"),
/// 							StorageClassAnalysis: &awsconnector.StorageClassAnalysisArgs{
/// 								DataExport: &awsconnector.DataExportArgs{
/// 									Destination: &awsconnector.DestinationArgs{
/// 										BucketAccountId: pulumi.String("sfgcxqtuacvejulm"),
/// 										BucketArn:       pulumi.String("iuwuakbkkh"),
/// 										Format:          pulumi.String(awsconnector.DestinationFormatCSV),
/// 										Prefix:          pulumi.String("bnbqkueiiffpl"),
/// 									},
/// 									OutputSchemaVersion: pulumi.String("ojzzqnkekust"),
/// 								},
/// 							},
/// 							TagFilters: awsconnector.TagFilterArray{
/// 								&awsconnector.TagFilterArgs{
/// 									Key:   pulumi.String("ffmzaifhmkmsljsm"),
/// 									Value: pulumi.String("fsby"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					Arn: pulumi.String("wdn"),
/// 					BucketEncryption: &awsconnector.BucketEncryptionArgs{
/// 						ServerSideEncryptionConfiguration: awsconnector.ServerSideEncryptionRuleArray{
/// 							&awsconnector.ServerSideEncryptionRuleArgs{
/// 								BucketKeyEnabled: pulumi.Bool(true),
/// 								ServerSideEncryptionByDefault: &awsconnector.ServerSideEncryptionByDefaultArgs{
/// 									KmsMasterKeyID: pulumi.String("mledejya"),
/// 									SseAlgorithm:   pulumi.String(awsconnector.ServerSideEncryptionByDefaultSSEAlgorithmAES256),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					BucketName: pulumi.String("qapantghvzujpa"),
/// 					CorsConfiguration: &awsconnector.CorsConfigurationArgs{
/// 						CorsRules: awsconnector.CorsRuleArray{
/// 							&awsconnector.CorsRuleArgs{
/// 								AllowedHeaders: pulumi.StringArray{
/// 									pulumi.String("zzooekoypz"),
/// 								},
/// 								AllowedMethods: pulumi.StringArray{
/// 									pulumi.String(awsconnector.CorsRuleAllowedMethodsDELETE),
/// 								},
/// 								AllowedOrigins: pulumi.StringArray{
/// 									pulumi.String("tqldxbbws"),
/// 								},
/// 								ExposedHeaders: pulumi.StringArray{
/// 									pulumi.String("wjlikohhmisfgumcfzrnvg"),
/// 								},
/// 								Id:     pulumi.String("zvasxfnbnbpftihvtosdnlmskv"),
/// 								MaxAge: pulumi.Int(9),
/// 							},
/// 						},
/// 					},
/// 					DomainName:          pulumi.String("vbhotuxputambztq"),
/// 					DualStackDomainName: pulumi.String("sryuphsbzszrwamvrcsihe"),
/// 					IntelligentTieringConfigurations: awsconnector.IntelligentTieringConfigurationArray{
/// 						&awsconnector.IntelligentTieringConfigurationArgs{
/// 							Id:     pulumi.String("dbqsgaw"),
/// 							Prefix: pulumi.String("lhizynvczgfiqwaiyuqpvnd"),
/// 							Status: pulumi.String(awsconnector.IntelligentTieringConfigurationStatusDisabled),
/// 							TagFilters: awsconnector.TagFilterArray{
/// 								&awsconnector.TagFilterArgs{
/// 									Key:   pulumi.String("ffmzaifhmkmsljsm"),
/// 									Value: pulumi.String("fsby"),
/// 								},
/// 							},
/// 							Tierings: awsconnector.TieringArray{
/// 								&awsconnector.TieringArgs{
/// 									AccessTier: pulumi.String(awsconnector.TieringAccessTier_ARCHIVE_ACCESS),
/// 									Days:       pulumi.Int(6),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					InventoryConfigurations: awsconnector.InventoryConfigurationArray{
/// 						&awsconnector.InventoryConfigurationArgs{
/// 							Destination: &awsconnector.DestinationArgs{
/// 								BucketAccountId: pulumi.String("sfgcxqtuacvejulm"),
/// 								BucketArn:       pulumi.String("iuwuakbkkh"),
/// 								Format:          pulumi.String(awsconnector.DestinationFormatCSV),
/// 								Prefix:          pulumi.String("bnbqkueiiffpl"),
/// 							},
/// 							Enabled:                pulumi.Bool(true),
/// 							Id:                     pulumi.String("yqyorzlpsfzzycfeqmdgtsstdze"),
/// 							IncludedObjectVersions: pulumi.String(awsconnector.InventoryConfigurationIncludedObjectVersionsAll),
/// 							OptionalFields: pulumi.StringArray{
/// 								pulumi.String(awsconnector.InventoryConfigurationOptionalFieldsBucketKeyStatus),
/// 							},
/// 							Prefix:            pulumi.String("tuzwyujzrv"),
/// 							ScheduleFrequency: pulumi.String(awsconnector.InventoryConfigurationScheduleFrequencyDaily),
/// 						},
/// 					},
/// 					LifecycleConfiguration: &awsconnector.LifecycleConfigurationArgs{
/// 						Rules: awsconnector.RuleArray{
/// 							&awsconnector.RuleArgs{
/// 								AbortIncompleteMultipartUpload: &awsconnector.AbortIncompleteMultipartUploadArgs{
/// 									DaysAfterInitiation: pulumi.Int(20),
/// 								},
/// 								ExpirationDate:            pulumi.String("ruijzosqnherfgwbgzbiwau"),
/// 								ExpirationInDays:          pulumi.Int(8),
/// 								ExpiredObjectDeleteMarker: pulumi.Bool(true),
/// 								Id:                        pulumi.String("aofbidgki"),
/// 								NoncurrentVersionExpiration: &awsconnector.NoncurrentVersionExpirationArgs{
/// 									NewerNoncurrentVersions: pulumi.Int(4),
/// 									NoncurrentDays:          pulumi.Int(17),
/// 								},
/// 								NoncurrentVersionExpirationInDays: pulumi.Int(4),
/// 								NoncurrentVersionTransition: &awsconnector.NoncurrentVersionTransitionArgs{
/// 									NewerNoncurrentVersions: pulumi.Int(6),
/// 									StorageClass:            pulumi.String(awsconnector.NoncurrentVersionTransitionStorageClass_DEEP_ARCHIVE),
/// 									TransitionInDays:        pulumi.Int(8),
/// 								},
/// 								NoncurrentVersionTransitions: awsconnector.NoncurrentVersionTransitionArray{
/// 									&awsconnector.NoncurrentVersionTransitionArgs{
/// 										NewerNoncurrentVersions: pulumi.Int(6),
/// 										StorageClass:            pulumi.String(awsconnector.NoncurrentVersionTransitionStorageClass_DEEP_ARCHIVE),
/// 										TransitionInDays:        pulumi.Int(8),
/// 									},
/// 								},
/// 								ObjectSizeGreaterThan: pulumi.String("hfifjfbqvmtatza"),
/// 								ObjectSizeLessThan:    pulumi.String("ew"),
/// 								Prefix:                pulumi.String("kbsmshvpardhxehfjgszomvekk"),
/// 								Status:                pulumi.String(awsconnector.RuleStatusDisabled),
/// 								TagFilters: awsconnector.TagFilterArray{
/// 									&awsconnector.TagFilterArgs{
/// 										Key:   pulumi.String("ffmzaifhmkmsljsm"),
/// 										Value: pulumi.String("fsby"),
/// 									},
/// 								},
/// 								Transition: &awsconnector.TransitionArgs{
/// 									StorageClass:     pulumi.String(awsconnector.TransitionStorageClass_DEEP_ARCHIVE),
/// 									TransitionDate:   pulumi.String("cqdrkqznucygxbnccuvxqbtnm"),
/// 									TransitionInDays: pulumi.Int(14),
/// 								},
/// 								Transitions: awsconnector.TransitionArray{
/// 									&awsconnector.TransitionArgs{
/// 										StorageClass:     pulumi.String(awsconnector.TransitionStorageClass_DEEP_ARCHIVE),
/// 										TransitionDate:   pulumi.String("cqdrkqznucygxbnccuvxqbtnm"),
/// 										TransitionInDays: pulumi.Int(14),
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 					LoggingConfiguration: &awsconnector.LoggingConfigurationArgs{
/// 						DestinationBucketName: pulumi.String("aujj"),
/// 						LogFilePrefix:         pulumi.String("vdmmbfnvymowpvmhbsagekbokzvp"),
/// 						TargetObjectKeyFormat: &awsconnector.TargetObjectKeyFormatArgs{
/// 							PartitionedPrefix: &awsconnector.PartitionedPrefixArgs{
/// 								PartitionDateSource: pulumi.String(awsconnector.PartitionedPrefixPartitionDateSourceDeliveryTime),
/// 							},
/// 						},
/// 					},
/// 					MetricsConfigurations: awsconnector.MetricsConfigurationArray{
/// 						&awsconnector.MetricsConfigurationArgs{
/// 							AccessPointArn: pulumi.String("tkhjqpjfplj"),
/// 							Id:             pulumi.String("ggheleujxadbvbjogd"),
/// 							Prefix:         pulumi.String("zg"),
/// 							TagFilters: awsconnector.TagFilterArray{
/// 								&awsconnector.TagFilterArgs{
/// 									Key:   pulumi.String("ffmzaifhmkmsljsm"),
/// 									Value: pulumi.String("fsby"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					NotificationConfiguration: &awsconnector.NotificationConfigurationArgs{
/// 						EventBridgeConfiguration: &awsconnector.EventBridgeConfigurationArgs{
/// 							EventBridgeEnabled: pulumi.Bool(true),
/// 						},
/// 						LambdaConfigurations: awsconnector.LambdaConfigurationArray{
/// 							&awsconnector.LambdaConfigurationArgs{
/// 								Event: pulumi.String("zpvewswtoarduycggotzdneptucwix"),
/// 								Filter: &awsconnector.NotificationFilterArgs{
/// 									S3Key: &awsconnector.S3KeyFilterArgs{
/// 										Rules: awsconnector.FilterRuleArray{
/// 											&awsconnector.FilterRuleArgs{
/// 												Name:  pulumi.String("ohgjzuamjncbifvbkldogxjuxvhvz"),
/// 												Value: pulumi.String("dauvnhzxpkpqutnrl"),
/// 											},
/// 										},
/// 									},
/// 								},
/// 								Function: pulumi.String("zmyzygfaojliiryslfyuyme"),
/// 							},
/// 						},
/// 						QueueConfigurations: awsconnector.QueueConfigurationArray{
/// 							&awsconnector.QueueConfigurationArgs{
/// 								Event: pulumi.String("qgcdpcvmkvjivvpvmmaeqrictlznb"),
/// 								Filter: &awsconnector.NotificationFilterArgs{
/// 									S3Key: &awsconnector.S3KeyFilterArgs{
/// 										Rules: awsconnector.FilterRuleArray{
/// 											&awsconnector.FilterRuleArgs{
/// 												Name:  pulumi.String("ohgjzuamjncbifvbkldogxjuxvhvz"),
/// 												Value: pulumi.String("dauvnhzxpkpqutnrl"),
/// 											},
/// 										},
/// 									},
/// 								},
/// 								Queue: pulumi.String("qwlbvlgmwiaegulyybqggopf"),
/// 							},
/// 						},
/// 						TopicConfigurations: awsconnector.TopicConfigurationArray{
/// 							&awsconnector.TopicConfigurationArgs{
/// 								Event: pulumi.String("kxl"),
/// 								Filter: &awsconnector.NotificationFilterArgs{
/// 									S3Key: &awsconnector.S3KeyFilterArgs{
/// 										Rules: awsconnector.FilterRuleArray{
/// 											&awsconnector.FilterRuleArgs{
/// 												Name:  pulumi.String("ohgjzuamjncbifvbkldogxjuxvhvz"),
/// 												Value: pulumi.String("dauvnhzxpkpqutnrl"),
/// 											},
/// 										},
/// 									},
/// 								},
/// 								Topic: pulumi.String("cj"),
/// 							},
/// 						},
/// 					},
/// 					ObjectLockConfiguration: &awsconnector.ObjectLockConfigurationArgs{
/// 						ObjectLockEnabled: pulumi.String("aiocf"),
/// 						Rule: &awsconnector.ObjectLockRuleArgs{
/// 							DefaultRetention: &awsconnector.DefaultRetentionArgs{
/// 								Days:  pulumi.Int(22),
/// 								Mode:  pulumi.String(awsconnector.DefaultRetentionModeCOMPLIANCE),
/// 								Years: pulumi.Int(11),
/// 							},
/// 						},
/// 					},
/// 					ObjectLockEnabled: pulumi.Bool(true),
/// 					OwnershipControls: &awsconnector.OwnershipControlsArgs{
/// 						Rules: awsconnector.OwnershipControlsRuleArray{
/// 							&awsconnector.OwnershipControlsRuleArgs{
/// 								ObjectOwnership: pulumi.String(awsconnector.OwnershipControlsRuleObjectOwnershipBucketOwnerEnforced),
/// 							},
/// 						},
/// 					},
/// 					PublicAccessBlockConfiguration: &awsconnector.PublicAccessBlockConfigurationArgs{
/// 						BlockPublicAcls:       pulumi.Bool(true),
/// 						BlockPublicPolicy:     pulumi.Bool(true),
/// 						IgnorePublicAcls:      pulumi.Bool(true),
/// 						RestrictPublicBuckets: pulumi.Bool(true),
/// 					},
/// 					RegionalDomainName: pulumi.String("xdbzcoemgixrqq"),
/// 					ReplicationConfiguration: &awsconnector.ReplicationConfigurationArgs{
/// 						Role: pulumi.String("rqafufwtmuflkqet"),
/// 						Rules: awsconnector.ReplicationRuleArray{
/// 							&awsconnector.ReplicationRuleArgs{
/// 								DeleteMarkerReplication: &awsconnector.DeleteMarkerReplicationArgs{
/// 									Status: pulumi.String(awsconnector.DeleteMarkerReplicationStatusDisabled),
/// 								},
/// 								Destination: &awsconnector.ReplicationDestinationArgs{
/// 									AccessControlTranslation: &awsconnector.AccessControlTranslationArgs{
/// 										Owner: pulumi.String("smyptov"),
/// 									},
/// 									Account: pulumi.String("hwqiekzz"),
/// 									Bucket:  pulumi.String("prjlsmdhkwrputvpdavgn"),
/// 									EncryptionConfiguration: &awsconnector.EncryptionConfigurationArgs{
/// 										ReplicaKmsKeyID: pulumi.String("uodgudyknqizofykjokpv"),
/// 									},
/// 									Metrics: &awsconnector.MetricsArgs{
/// 										EventThreshold: &awsconnector.ReplicationTimeValueArgs{
/// 											Minutes: pulumi.Int(18),
/// 										},
/// 										Status: pulumi.String(awsconnector.MetricsStatusDisabled),
/// 									},
/// 									ReplicationTime: &awsconnector.ReplicationTimeArgs{
/// 										Status: pulumi.String(awsconnector.ReplicationTimeStatusDisabled),
/// 										Time: &awsconnector.ReplicationTimeValueArgs{
/// 											Minutes: pulumi.Int(18),
/// 										},
/// 									},
/// 									StorageClass: pulumi.String(awsconnector.ReplicationDestinationStorageClass_DEEP_ARCHIVE),
/// 								},
/// 								Filter: &awsconnector.ReplicationRuleFilterArgs{
/// 									And: &awsconnector.ReplicationRuleAndOperatorArgs{
/// 										Prefix: pulumi.String("rlralilpznxqfpcseysvvxmfaor"),
/// 										TagFilters: awsconnector.TagFilterArray{
/// 											&awsconnector.TagFilterArgs{
/// 												Key:   pulumi.String("ffmzaifhmkmsljsm"),
/// 												Value: pulumi.String("fsby"),
/// 											},
/// 										},
/// 									},
/// 									Prefix: pulumi.String("etzfeufdxmcvjzpvxbjmzikok"),
/// 									TagFilter: &awsconnector.TagFilterArgs{
/// 										Key:   pulumi.String("ffmzaifhmkmsljsm"),
/// 										Value: pulumi.String("fsby"),
/// 									},
/// 								},
/// 								Id:       pulumi.String("fjcfzahlddm"),
/// 								Prefix:   pulumi.String("agykvphwwnfevfucrxugxejv"),
/// 								Priority: pulumi.Int(20),
/// 								SourceSelectionCriteria: &awsconnector.SourceSelectionCriteriaArgs{
/// 									ReplicaModifications: &awsconnector.ReplicaModificationsArgs{
/// 										Status: pulumi.String(awsconnector.ReplicaModificationsStatusDisabled),
/// 									},
/// 									SseKmsEncryptedObjects: &awsconnector.SseKmsEncryptedObjectsArgs{
/// 										Status: pulumi.String(awsconnector.SseKmsEncryptedObjectsStatusDisabled),
/// 									},
/// 								},
/// 								Status: pulumi.String(awsconnector.ReplicationRuleStatusDisabled),
/// 							},
/// 						},
/// 					},
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("dxpeasomkyhulmxegodswwuhn"),
/// 							Value: pulumi.String("otwjdamxqdydqwujwyfh"),
/// 						},
/// 					},
/// 					VersioningConfiguration: &awsconnector.VersioningConfigurationArgs{
/// 						Status: pulumi.String(awsconnector.VersioningConfigurationStatusEnabled),
/// 					},
/// 					WebsiteConfiguration: &awsconnector.WebsiteConfigurationArgs{
/// 						ErrorDocument: pulumi.String("zxifnrlbyapkasrrhamdkdsqk"),
/// 						IndexDocument: pulumi.String("umbhsxlihqldbh"),
/// 						RedirectAllRequestsTo: &awsconnector.RedirectAllRequestsToArgs{
/// 							HostName: pulumi.String("sxmd"),
/// 							Protocol: pulumi.String(awsconnector.RedirectAllRequestsToProtocolHttp),
/// 						},
/// 						RoutingRules: awsconnector.RoutingRuleArray{
/// 							&awsconnector.RoutingRuleArgs{
/// 								RedirectRule: &awsconnector.RedirectRuleArgs{
/// 									HostName:             pulumi.String("odmugwc"),
/// 									HttpRedirectCode:     pulumi.String("vfvnluyewsuhlybwzwsc"),
/// 									Protocol:             pulumi.String(awsconnector.RedirectRuleProtocolHttp),
/// 									ReplaceKeyPrefixWith: pulumi.String("khrrcydzrtwzttnlqrlvdqdj"),
/// 									ReplaceKeyWith:       pulumi.String("axcwbdxqktfrrivec"),
/// 								},
/// 								RoutingRuleCondition: &awsconnector.RoutingRuleConditionArgs{
/// 									HttpErrorCodeReturnedEquals: pulumi.String("rajjyyktkunsenpficiiq"),
/// 									KeyPrefixEquals:             pulumi.String("tgzmwymptfxjolynmpwx"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					WebsiteURL: pulumi.String("vtlwozcgstjkkmgfywinjoreomvw"),
/// 				},
/// 				AwsRegion:       pulumi.String("kckriyydtrwdlelcuztzfeptvcbwj"),
/// 				AwsSourceSchema: pulumi.String("kywnqkadqm"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key1337": pulumi.String("xopsufyohwwvrxsp"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("i"),
/// 				PublicCloudResourceName:         pulumi.String("fmugqeeykklaccblyqplo"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgs3Bucket"),
/// 			Tags: pulumi.StringMap{
/// 				"key8605": pulumi.String("s"),
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
/// resource "azure-native_awsconnector_s3bucket" "s3Bucket" {
///   location = "pesmjbocvf"
///   name     = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"
///   properties = {
///     arn            = "qoufjwcexyvk"
///     aws_account_id = "rfckvyuni"
///     aws_properties = {
///       accelerate_configuration = {
///         acceleration_status = "Enabled"
///       }
///       access_control = "AuthenticatedRead"
///       analytics_configurations = [{
///         "id"     = "ioxkjkuclx"
///         "prefix" = "errquicjtmxuidndown"
///         "storageClassAnalysis" = {
///           "dataExport" = {
///             "destination" = {
///               "bucketAccountId" = "sfgcxqtuacvejulm"
///               "bucketArn"       = "iuwuakbkkh"
///               "format"          = "CSV"
///               "prefix"          = "bnbqkueiiffpl"
///             }
///             "outputSchemaVersion" = "ojzzqnkekust"
///           }
///         }
///         "tagFilters" = [{
///           "key"   = "ffmzaifhmkmsljsm"
///           "value" = "fsby"
///         }]
///       }]
///       arn = "wdn"
///       bucket_encryption = {
///         server_side_encryption_configuration = [{
///           "bucketKeyEnabled" = true
///           "serverSideEncryptionByDefault" = {
///             "kmsMasterKeyID" = "mledejya"
///             "sseAlgorithm"   = "AES256"
///           }
///         }]
///       }
///       bucket_name = "qapantghvzujpa"
///       cors_configuration = {
///         cors_rules = [{
///           "allowedHeaders" = ["zzooekoypz"]
///           "allowedMethods" = ["DELETE"]
///           "allowedOrigins" = ["tqldxbbws"]
///           "exposedHeaders" = ["wjlikohhmisfgumcfzrnvg"]
///           "id"             = "zvasxfnbnbpftihvtosdnlmskv"
///           "maxAge"         = 9
///         }]
///       }
///       domain_name            = "vbhotuxputambztq"
///       dual_stack_domain_name = "sryuphsbzszrwamvrcsihe"
///       intelligent_tiering_configurations = [{
///         "id"     = "dbqsgaw"
///         "prefix" = "lhizynvczgfiqwaiyuqpvnd"
///         "status" = "Disabled"
///         "tagFilters" = [{
///           "key"   = "ffmzaifhmkmsljsm"
///           "value" = "fsby"
///         }]
///         "tierings" = [{
///           "accessTier" = "ARCHIVE_ACCESS"
///           "days"       = 6
///         }]
///       }]
///       inventory_configurations = [{
///         "destination" = {
///           "bucketAccountId" = "sfgcxqtuacvejulm"
///           "bucketArn"       = "iuwuakbkkh"
///           "format"          = "CSV"
///           "prefix"          = "bnbqkueiiffpl"
///         }
///         "enabled"                = true
///         "id"                     = "yqyorzlpsfzzycfeqmdgtsstdze"
///         "includedObjectVersions" = "All"
///         "optionalFields"         = ["BucketKeyStatus"]
///         "prefix"                 = "tuzwyujzrv"
///         "scheduleFrequency"      = "Daily"
///       }]
///       lifecycle_configuration = {
///         rules = [{
///           "abortIncompleteMultipartUpload" = {
///             "daysAfterInitiation" = 20
///           }
///           "expirationDate"            = "ruijzosqnherfgwbgzbiwau"
///           "expirationInDays"          = 8
///           "expiredObjectDeleteMarker" = true
///           "id"                        = "aofbidgki"
///           "noncurrentVersionExpiration" = {
///             "newerNoncurrentVersions" = 4
///             "noncurrentDays"          = 17
///           }
///           "noncurrentVersionExpirationInDays" = 4
///           "noncurrentVersionTransition" = {
///             "newerNoncurrentVersions" = 6
///             "storageClass"            = "DEEP_ARCHIVE"
///             "transitionInDays"        = 8
///           }
///           "noncurrentVersionTransitions" = [{
///             "newerNoncurrentVersions" = 6
///             "storageClass"            = "DEEP_ARCHIVE"
///             "transitionInDays"        = 8
///           }]
///           "objectSizeGreaterThan" = "hfifjfbqvmtatza"
///           "objectSizeLessThan"    = "ew"
///           "prefix"                = "kbsmshvpardhxehfjgszomvekk"
///           "status"                = "Disabled"
///           "tagFilters" = [{
///             "key"   = "ffmzaifhmkmsljsm"
///             "value" = "fsby"
///           }]
///           "transition" = {
///             "storageClass"     = "DEEP_ARCHIVE"
///             "transitionDate"   = "cqdrkqznucygxbnccuvxqbtnm"
///             "transitionInDays" = 14
///           }
///           "transitions" = [{
///             "storageClass"     = "DEEP_ARCHIVE"
///             "transitionDate"   = "cqdrkqznucygxbnccuvxqbtnm"
///             "transitionInDays" = 14
///           }]
///         }]
///       }
///       logging_configuration = {
///         destination_bucket_name = "aujj"
///         log_file_prefix         = "vdmmbfnvymowpvmhbsagekbokzvp"
///         target_object_key_format = {
///           partitioned_prefix = {
///             partition_date_source = "DeliveryTime"
///           }
///         }
///       }
///       metrics_configurations = [{
///         "accessPointArn" = "tkhjqpjfplj"
///         "id"             = "ggheleujxadbvbjogd"
///         "prefix"         = "zg"
///         "tagFilters" = [{
///           "key"   = "ffmzaifhmkmsljsm"
///           "value" = "fsby"
///         }]
///       }]
///       notification_configuration = {
///         event_bridge_configuration = {
///           event_bridge_enabled = true
///         }
///         lambda_configurations = [{
///           "event" = "zpvewswtoarduycggotzdneptucwix"
///           "filter" = {
///             "s3Key" = {
///               "rules" = [{
///                 "name"  = "ohgjzuamjncbifvbkldogxjuxvhvz"
///                 "value" = "dauvnhzxpkpqutnrl"
///               }]
///             }
///           }
///           "function" = "zmyzygfaojliiryslfyuyme"
///         }]
///         queue_configurations = [{
///           "event" = "qgcdpcvmkvjivvpvmmaeqrictlznb"
///           "filter" = {
///             "s3Key" = {
///               "rules" = [{
///                 "name"  = "ohgjzuamjncbifvbkldogxjuxvhvz"
///                 "value" = "dauvnhzxpkpqutnrl"
///               }]
///             }
///           }
///           "queue" = "qwlbvlgmwiaegulyybqggopf"
///         }]
///         topic_configurations = [{
///           "event" = "kxl"
///           "filter" = {
///             "s3Key" = {
///               "rules" = [{
///                 "name"  = "ohgjzuamjncbifvbkldogxjuxvhvz"
///                 "value" = "dauvnhzxpkpqutnrl"
///               }]
///             }
///           }
///           "topic" = "cj"
///         }]
///       }
///       object_lock_configuration = {
///         object_lock_enabled = "aiocf"
///         rule = {
///           default_retention = {
///             days  = 22
///             mode  = "COMPLIANCE"
///             years = 11
///           }
///         }
///       }
///       object_lock_enabled = true
///       ownership_controls = {
///         rules = [{
///           "objectOwnership" = "BucketOwnerEnforced"
///         }]
///       }
///       public_access_block_configuration = {
///         block_public_acls       = true
///         block_public_policy     = true
///         ignore_public_acls      = true
///         restrict_public_buckets = true
///       }
///       regional_domain_name = "xdbzcoemgixrqq"
///       replication_configuration = {
///         role = "rqafufwtmuflkqet"
///         rules = [{
///           "deleteMarkerReplication" = {
///             "status" = "Disabled"
///           }
///           "destination" = {
///             "accessControlTranslation" = {
///               "owner" = "smyptov"
///             }
///             "account" = "hwqiekzz"
///             "bucket"  = "prjlsmdhkwrputvpdavgn"
///             "encryptionConfiguration" = {
///               "replicaKmsKeyID" = "uodgudyknqizofykjokpv"
///             }
///             "metrics" = {
///               "eventThreshold" = {
///                 "minutes" = 18
///               }
///               "status" = "Disabled"
///             }
///             "replicationTime" = {
///               "status" = "Disabled"
///               "time" = {
///                 "minutes" = 18
///               }
///             }
///             "storageClass" = "DEEP_ARCHIVE"
///           }
///           "filter" = {
///             "and" = {
///               "prefix" = "rlralilpznxqfpcseysvvxmfaor"
///               "tagFilters" = [{
///                 "key"   = "ffmzaifhmkmsljsm"
///                 "value" = "fsby"
///               }]
///             }
///             "prefix" = "etzfeufdxmcvjzpvxbjmzikok"
///             "tagFilter" = {
///               "key"   = "ffmzaifhmkmsljsm"
///               "value" = "fsby"
///             }
///           }
///           "id"       = "fjcfzahlddm"
///           "prefix"   = "agykvphwwnfevfucrxugxejv"
///           "priority" = 20
///           "sourceSelectionCriteria" = {
///             "replicaModifications" = {
///               "status" = "Disabled"
///             }
///             "sseKmsEncryptedObjects" = {
///               "status" = "Disabled"
///             }
///           }
///           "status" = "Disabled"
///         }]
///       }
///       tags = [{
///         "key"   = "dxpeasomkyhulmxegodswwuhn"
///         "value" = "otwjdamxqdydqwujwyfh"
///       }]
///       versioning_configuration = {
///         status = "Enabled"
///       }
///       website_configuration = {
///         error_document = "zxifnrlbyapkasrrhamdkdsqk"
///         index_document = "umbhsxlihqldbh"
///         redirect_all_requests_to = {
///           host_name = "sxmd"
///           protocol  = "http"
///         }
///         routing_rules = [{
///           "redirectRule" = {
///             "hostName"             = "odmugwc"
///             "httpRedirectCode"     = "vfvnluyewsuhlybwzwsc"
///             "protocol"             = "http"
///             "replaceKeyPrefixWith" = "khrrcydzrtwzttnlqrlvdqdj"
///             "replaceKeyWith"       = "axcwbdxqktfrrivec"
///           }
///           "routingRuleCondition" = {
///             "httpErrorCodeReturnedEquals" = "rajjyyktkunsenpficiiq"
///             "keyPrefixEquals"             = "tgzmwymptfxjolynmpwx"
///           }
///         }]
///       }
///       website_url = "vtlwozcgstjkkmgfywinjoreomvw"
///     }
///     aws_region        = "kckriyydtrwdlelcuztzfeptvcbwj"
///     aws_source_schema = "kywnqkadqm"
///     aws_tags = {
///       "key1337" = "xopsufyohwwvrxsp"
///     }
///     public_cloud_connectors_resource_id = "i"
///     public_cloud_resource_name          = "fmugqeeykklaccblyqplo"
///   }
///   resource_group_name = "rgs3Bucket"
///   tags = {
///     "key8605" = "s"
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
/// import com.pulumi.azurenative.awsconnector.S3Bucket;
/// import com.pulumi.azurenative.awsconnector.S3BucketArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.S3BucketPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsS3BucketPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AccelerateConfigurationArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.BucketEncryptionArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.CorsConfigurationArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.LifecycleConfigurationArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.LoggingConfigurationArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.TargetObjectKeyFormatArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.PartitionedPrefixArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.NotificationConfigurationArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.EventBridgeConfigurationArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ObjectLockConfigurationArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ObjectLockRuleArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.DefaultRetentionArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.OwnershipControlsArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.PublicAccessBlockConfigurationArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ReplicationConfigurationArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.VersioningConfigurationArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.WebsiteConfigurationArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.RedirectAllRequestsToArgs;
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
///         var s3Bucket = new S3Bucket("s3Bucket", S3BucketArgs.builder()
///             .location("pesmjbocvf")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(S3BucketPropertiesArgs.builder()
///                 .arn("qoufjwcexyvk")
///                 .awsAccountId("rfckvyuni")
///                 .awsProperties(AwsS3BucketPropertiesArgs.builder()
///                     .accelerateConfiguration(AccelerateConfigurationArgs.builder()
///                         .accelerationStatus("Enabled")
///                         .build())
///                     .accessControl("AuthenticatedRead")
///                     .analyticsConfigurations(AnalyticsConfigurationArgs.builder()
///                         .id("ioxkjkuclx")
///                         .prefix("errquicjtmxuidndown")
///                         .storageClassAnalysis(StorageClassAnalysisArgs.builder()
///                             .dataExport(DataExportArgs.builder()
///                                 .destination(DestinationArgs.builder()
///                                     .bucketAccountId("sfgcxqtuacvejulm")
///                                     .bucketArn("iuwuakbkkh")
///                                     .format("CSV")
///                                     .prefix("bnbqkueiiffpl")
///                                     .build())
///                                 .outputSchemaVersion("ojzzqnkekust")
///                                 .build())
///                             .build())
///                         .tagFilters(TagFilterArgs.builder()
///                             .key("ffmzaifhmkmsljsm")
///                             .value("fsby")
///                             .build())
///                         .build())
///                     .arn("wdn")
///                     .bucketEncryption(BucketEncryptionArgs.builder()
///                         .serverSideEncryptionConfiguration(ServerSideEncryptionRuleArgs.builder()
///                             .bucketKeyEnabled(true)
///                             .serverSideEncryptionByDefault(ServerSideEncryptionByDefaultArgs.builder()
///                                 .kmsMasterKeyID("mledejya")
///                                 .sseAlgorithm("AES256")
///                                 .build())
///                             .build())
///                         .build())
///                     .bucketName("qapantghvzujpa")
///                     .corsConfiguration(CorsConfigurationArgs.builder()
///                         .corsRules(CorsRuleArgs.builder()
///                             .allowedHeaders("zzooekoypz")
///                             .allowedMethods("DELETE")
///                             .allowedOrigins("tqldxbbws")
///                             .exposedHeaders("wjlikohhmisfgumcfzrnvg")
///                             .id("zvasxfnbnbpftihvtosdnlmskv")
///                             .maxAge(9)
///                             .build())
///                         .build())
///                     .domainName("vbhotuxputambztq")
///                     .dualStackDomainName("sryuphsbzszrwamvrcsihe")
///                     .intelligentTieringConfigurations(IntelligentTieringConfigurationArgs.builder()
///                         .id("dbqsgaw")
///                         .prefix("lhizynvczgfiqwaiyuqpvnd")
///                         .status("Disabled")
///                         .tagFilters(TagFilterArgs.builder()
///                             .key("ffmzaifhmkmsljsm")
///                             .value("fsby")
///                             .build())
///                         .tierings(TieringArgs.builder()
///                             .accessTier("ARCHIVE_ACCESS")
///                             .days(6)
///                             .build())
///                         .build())
///                     .inventoryConfigurations(InventoryConfigurationArgs.builder()
///                         .destination(DestinationArgs.builder()
///                             .bucketAccountId("sfgcxqtuacvejulm")
///                             .bucketArn("iuwuakbkkh")
///                             .format("CSV")
///                             .prefix("bnbqkueiiffpl")
///                             .build())
///                         .enabled(true)
///                         .id("yqyorzlpsfzzycfeqmdgtsstdze")
///                         .includedObjectVersions("All")
///                         .optionalFields("BucketKeyStatus")
///                         .prefix("tuzwyujzrv")
///                         .scheduleFrequency("Daily")
///                         .build())
///                     .lifecycleConfiguration(LifecycleConfigurationArgs.builder()
///                         .rules(RuleArgs.builder()
///                             .abortIncompleteMultipartUpload(AbortIncompleteMultipartUploadArgs.builder()
///                                 .daysAfterInitiation(20)
///                                 .build())
///                             .expirationDate("ruijzosqnherfgwbgzbiwau")
///                             .expirationInDays(8)
///                             .expiredObjectDeleteMarker(true)
///                             .id("aofbidgki")
///                             .noncurrentVersionExpiration(NoncurrentVersionExpirationArgs.builder()
///                                 .newerNoncurrentVersions(4)
///                                 .noncurrentDays(17)
///                                 .build())
///                             .noncurrentVersionExpirationInDays(4)
///                             .noncurrentVersionTransition(NoncurrentVersionTransitionArgs.builder()
///                                 .newerNoncurrentVersions(6)
///                                 .storageClass("DEEP_ARCHIVE")
///                                 .transitionInDays(8)
///                                 .build())
///                             .noncurrentVersionTransitions(NoncurrentVersionTransitionArgs.builder()
///                                 .newerNoncurrentVersions(6)
///                                 .storageClass("DEEP_ARCHIVE")
///                                 .transitionInDays(8)
///                                 .build())
///                             .objectSizeGreaterThan("hfifjfbqvmtatza")
///                             .objectSizeLessThan("ew")
///                             .prefix("kbsmshvpardhxehfjgszomvekk")
///                             .status("Disabled")
///                             .tagFilters(TagFilterArgs.builder()
///                                 .key("ffmzaifhmkmsljsm")
///                                 .value("fsby")
///                                 .build())
///                             .transition(TransitionArgs.builder()
///                                 .storageClass("DEEP_ARCHIVE")
///                                 .transitionDate("cqdrkqznucygxbnccuvxqbtnm")
///                                 .transitionInDays(14)
///                                 .build())
///                             .transitions(TransitionArgs.builder()
///                                 .storageClass("DEEP_ARCHIVE")
///                                 .transitionDate("cqdrkqznucygxbnccuvxqbtnm")
///                                 .transitionInDays(14)
///                                 .build())
///                             .build())
///                         .build())
///                     .loggingConfiguration(LoggingConfigurationArgs.builder()
///                         .destinationBucketName("aujj")
///                         .logFilePrefix("vdmmbfnvymowpvmhbsagekbokzvp")
///                         .targetObjectKeyFormat(TargetObjectKeyFormatArgs.builder()
///                             .partitionedPrefix(PartitionedPrefixArgs.builder()
///                                 .partitionDateSource("DeliveryTime")
///                                 .build())
///                             .build())
///                         .build())
///                     .metricsConfigurations(MetricsConfigurationArgs.builder()
///                         .accessPointArn("tkhjqpjfplj")
///                         .id("ggheleujxadbvbjogd")
///                         .prefix("zg")
///                         .tagFilters(TagFilterArgs.builder()
///                             .key("ffmzaifhmkmsljsm")
///                             .value("fsby")
///                             .build())
///                         .build())
///                     .notificationConfiguration(NotificationConfigurationArgs.builder()
///                         .eventBridgeConfiguration(EventBridgeConfigurationArgs.builder()
///                             .eventBridgeEnabled(true)
///                             .build())
///                         .lambdaConfigurations(LambdaConfigurationArgs.builder()
///                             .event("zpvewswtoarduycggotzdneptucwix")
///                             .filter(NotificationFilterArgs.builder()
///                                 .s3Key(S3KeyFilterArgs.builder()
///                                     .rules(FilterRuleArgs.builder()
///                                         .name("ohgjzuamjncbifvbkldogxjuxvhvz")
///                                         .value("dauvnhzxpkpqutnrl")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .function("zmyzygfaojliiryslfyuyme")
///                             .build())
///                         .queueConfigurations(QueueConfigurationArgs.builder()
///                             .event("qgcdpcvmkvjivvpvmmaeqrictlznb")
///                             .filter(NotificationFilterArgs.builder()
///                                 .s3Key(S3KeyFilterArgs.builder()
///                                     .rules(FilterRuleArgs.builder()
///                                         .name("ohgjzuamjncbifvbkldogxjuxvhvz")
///                                         .value("dauvnhzxpkpqutnrl")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .queue("qwlbvlgmwiaegulyybqggopf")
///                             .build())
///                         .topicConfigurations(TopicConfigurationArgs.builder()
///                             .event("kxl")
///                             .filter(NotificationFilterArgs.builder()
///                                 .s3Key(S3KeyFilterArgs.builder()
///                                     .rules(FilterRuleArgs.builder()
///                                         .name("ohgjzuamjncbifvbkldogxjuxvhvz")
///                                         .value("dauvnhzxpkpqutnrl")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .topic("cj")
///                             .build())
///                         .build())
///                     .objectLockConfiguration(ObjectLockConfigurationArgs.builder()
///                         .objectLockEnabled("aiocf")
///                         .rule(ObjectLockRuleArgs.builder()
///                             .defaultRetention(DefaultRetentionArgs.builder()
///                                 .days(22)
///                                 .mode("COMPLIANCE")
///                                 .years(11)
///                                 .build())
///                             .build())
///                         .build())
///                     .objectLockEnabled(true)
///                     .ownershipControls(OwnershipControlsArgs.builder()
///                         .rules(OwnershipControlsRuleArgs.builder()
///                             .objectOwnership("BucketOwnerEnforced")
///                             .build())
///                         .build())
///                     .publicAccessBlockConfiguration(PublicAccessBlockConfigurationArgs.builder()
///                         .blockPublicAcls(true)
///                         .blockPublicPolicy(true)
///                         .ignorePublicAcls(true)
///                         .restrictPublicBuckets(true)
///                         .build())
///                     .regionalDomainName("xdbzcoemgixrqq")
///                     .replicationConfiguration(ReplicationConfigurationArgs.builder()
///                         .role("rqafufwtmuflkqet")
///                         .rules(ReplicationRuleArgs.builder()
///                             .deleteMarkerReplication(DeleteMarkerReplicationArgs.builder()
///                                 .status("Disabled")
///                                 .build())
///                             .destination(ReplicationDestinationArgs.builder()
///                                 .accessControlTranslation(AccessControlTranslationArgs.builder()
///                                     .owner("smyptov")
///                                     .build())
///                                 .account("hwqiekzz")
///                                 .bucket("prjlsmdhkwrputvpdavgn")
///                                 .encryptionConfiguration(EncryptionConfigurationArgs.builder()
///                                     .replicaKmsKeyID("uodgudyknqizofykjokpv")
///                                     .build())
///                                 .metrics(MetricsArgs.builder()
///                                     .eventThreshold(ReplicationTimeValueArgs.builder()
///                                         .minutes(18)
///                                         .build())
///                                     .status("Disabled")
///                                     .build())
///                                 .replicationTime(ReplicationTimeArgs.builder()
///                                     .status("Disabled")
///                                     .time(ReplicationTimeValueArgs.builder()
///                                         .minutes(18)
///                                         .build())
///                                     .build())
///                                 .storageClass("DEEP_ARCHIVE")
///                                 .build())
///                             .filter(ReplicationRuleFilterArgs.builder()
///                                 .and(ReplicationRuleAndOperatorArgs.builder()
///                                     .prefix("rlralilpznxqfpcseysvvxmfaor")
///                                     .tagFilters(TagFilterArgs.builder()
///                                         .key("ffmzaifhmkmsljsm")
///                                         .value("fsby")
///                                         .build())
///                                     .build())
///                                 .prefix("etzfeufdxmcvjzpvxbjmzikok")
///                                 .tagFilter(TagFilterArgs.builder()
///                                     .key("ffmzaifhmkmsljsm")
///                                     .value("fsby")
///                                     .build())
///                                 .build())
///                             .id("fjcfzahlddm")
///                             .prefix("agykvphwwnfevfucrxugxejv")
///                             .priority(20)
///                             .sourceSelectionCriteria(SourceSelectionCriteriaArgs.builder()
///                                 .replicaModifications(ReplicaModificationsArgs.builder()
///                                     .status("Disabled")
///                                     .build())
///                                 .sseKmsEncryptedObjects(SseKmsEncryptedObjectsArgs.builder()
///                                     .status("Disabled")
///                                     .build())
///                                 .build())
///                             .status("Disabled")
///                             .build())
///                         .build())
///                     .tags(TagArgs.builder()
///                         .key("dxpeasomkyhulmxegodswwuhn")
///                         .value("otwjdamxqdydqwujwyfh")
///                         .build())
///                     .versioningConfiguration(VersioningConfigurationArgs.builder()
///                         .status("Enabled")
///                         .build())
///                     .websiteConfiguration(WebsiteConfigurationArgs.builder()
///                         .errorDocument("zxifnrlbyapkasrrhamdkdsqk")
///                         .indexDocument("umbhsxlihqldbh")
///                         .redirectAllRequestsTo(RedirectAllRequestsToArgs.builder()
///                             .hostName("sxmd")
///                             .protocol("http")
///                             .build())
///                         .routingRules(RoutingRuleArgs.builder()
///                             .redirectRule(RedirectRuleArgs.builder()
///                                 .hostName("odmugwc")
///                                 .httpRedirectCode("vfvnluyewsuhlybwzwsc")
///                                 .protocol("http")
///                                 .replaceKeyPrefixWith("khrrcydzrtwzttnlqrlvdqdj")
///                                 .replaceKeyWith("axcwbdxqktfrrivec")
///                                 .build())
///                             .routingRuleCondition(RoutingRuleConditionArgs.builder()
///                                 .httpErrorCodeReturnedEquals("rajjyyktkunsenpficiiq")
///                                 .keyPrefixEquals("tgzmwymptfxjolynmpwx")
///                                 .build())
///                             .build())
///                         .build())
///                     .websiteURL("vtlwozcgstjkkmgfywinjoreomvw")
///                     .build())
///                 .awsRegion("kckriyydtrwdlelcuztzfeptvcbwj")
///                 .awsSourceSchema("kywnqkadqm")
///                 .awsTags(Map.of("key1337", "xopsufyohwwvrxsp"))
///                 .publicCloudConnectorsResourceId("i")
///                 .publicCloudResourceName("fmugqeeykklaccblyqplo")
///                 .build())
///             .resourceGroupName("rgs3Bucket")
///             .tags(Map.of("key8605", "s"))
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
/// const s3Bucket = new azure_native.awsconnector.S3Bucket("s3Bucket", {
///     location: "pesmjbocvf",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "qoufjwcexyvk",
///         awsAccountId: "rfckvyuni",
///         awsProperties: {
///             accelerateConfiguration: {
///                 accelerationStatus: azure_native.awsconnector.AccelerateConfigurationAccelerationStatus.Enabled,
///             },
///             accessControl: azure_native.awsconnector.AccessControl.AuthenticatedRead,
///             analyticsConfigurations: [{
///                 id: "ioxkjkuclx",
///                 prefix: "errquicjtmxuidndown",
///                 storageClassAnalysis: {
///                     dataExport: {
///                         destination: {
///                             bucketAccountId: "sfgcxqtuacvejulm",
///                             bucketArn: "iuwuakbkkh",
///                             format: azure_native.awsconnector.DestinationFormat.CSV,
///                             prefix: "bnbqkueiiffpl",
///                         },
///                         outputSchemaVersion: "ojzzqnkekust",
///                     },
///                 },
///                 tagFilters: [{
///                     key: "ffmzaifhmkmsljsm",
///                     value: "fsby",
///                 }],
///             }],
///             arn: "wdn",
///             bucketEncryption: {
///                 serverSideEncryptionConfiguration: [{
///                     bucketKeyEnabled: true,
///                     serverSideEncryptionByDefault: {
///                         kmsMasterKeyID: "mledejya",
///                         sseAlgorithm: azure_native.awsconnector.ServerSideEncryptionByDefaultSSEAlgorithm.AES256,
///                     },
///                 }],
///             },
///             bucketName: "qapantghvzujpa",
///             corsConfiguration: {
///                 corsRules: [{
///                     allowedHeaders: ["zzooekoypz"],
///                     allowedMethods: [azure_native.awsconnector.CorsRuleAllowedMethods.DELETE],
///                     allowedOrigins: ["tqldxbbws"],
///                     exposedHeaders: ["wjlikohhmisfgumcfzrnvg"],
///                     id: "zvasxfnbnbpftihvtosdnlmskv",
///                     maxAge: 9,
///                 }],
///             },
///             domainName: "vbhotuxputambztq",
///             dualStackDomainName: "sryuphsbzszrwamvrcsihe",
///             intelligentTieringConfigurations: [{
///                 id: "dbqsgaw",
///                 prefix: "lhizynvczgfiqwaiyuqpvnd",
///                 status: azure_native.awsconnector.IntelligentTieringConfigurationStatus.Disabled,
///                 tagFilters: [{
///                     key: "ffmzaifhmkmsljsm",
///                     value: "fsby",
///                 }],
///                 tierings: [{
///                     accessTier: azure_native.awsconnector.TieringAccessTier.ARCHIVE_ACCESS,
///                     days: 6,
///                 }],
///             }],
///             inventoryConfigurations: [{
///                 destination: {
///                     bucketAccountId: "sfgcxqtuacvejulm",
///                     bucketArn: "iuwuakbkkh",
///                     format: azure_native.awsconnector.DestinationFormat.CSV,
///                     prefix: "bnbqkueiiffpl",
///                 },
///                 enabled: true,
///                 id: "yqyorzlpsfzzycfeqmdgtsstdze",
///                 includedObjectVersions: azure_native.awsconnector.InventoryConfigurationIncludedObjectVersions.All,
///                 optionalFields: [azure_native.awsconnector.InventoryConfigurationOptionalFields.BucketKeyStatus],
///                 prefix: "tuzwyujzrv",
///                 scheduleFrequency: azure_native.awsconnector.InventoryConfigurationScheduleFrequency.Daily,
///             }],
///             lifecycleConfiguration: {
///                 rules: [{
///                     abortIncompleteMultipartUpload: {
///                         daysAfterInitiation: 20,
///                     },
///                     expirationDate: "ruijzosqnherfgwbgzbiwau",
///                     expirationInDays: 8,
///                     expiredObjectDeleteMarker: true,
///                     id: "aofbidgki",
///                     noncurrentVersionExpiration: {
///                         newerNoncurrentVersions: 4,
///                         noncurrentDays: 17,
///                     },
///                     noncurrentVersionExpirationInDays: 4,
///                     noncurrentVersionTransition: {
///                         newerNoncurrentVersions: 6,
///                         storageClass: azure_native.awsconnector.NoncurrentVersionTransitionStorageClass.DEEP_ARCHIVE,
///                         transitionInDays: 8,
///                     },
///                     noncurrentVersionTransitions: [{
///                         newerNoncurrentVersions: 6,
///                         storageClass: azure_native.awsconnector.NoncurrentVersionTransitionStorageClass.DEEP_ARCHIVE,
///                         transitionInDays: 8,
///                     }],
///                     objectSizeGreaterThan: "hfifjfbqvmtatza",
///                     objectSizeLessThan: "ew",
///                     prefix: "kbsmshvpardhxehfjgszomvekk",
///                     status: azure_native.awsconnector.RuleStatus.Disabled,
///                     tagFilters: [{
///                         key: "ffmzaifhmkmsljsm",
///                         value: "fsby",
///                     }],
///                     transition: {
///                         storageClass: azure_native.awsconnector.TransitionStorageClass.DEEP_ARCHIVE,
///                         transitionDate: "cqdrkqznucygxbnccuvxqbtnm",
///                         transitionInDays: 14,
///                     },
///                     transitions: [{
///                         storageClass: azure_native.awsconnector.TransitionStorageClass.DEEP_ARCHIVE,
///                         transitionDate: "cqdrkqznucygxbnccuvxqbtnm",
///                         transitionInDays: 14,
///                     }],
///                 }],
///             },
///             loggingConfiguration: {
///                 destinationBucketName: "aujj",
///                 logFilePrefix: "vdmmbfnvymowpvmhbsagekbokzvp",
///                 targetObjectKeyFormat: {
///                     partitionedPrefix: {
///                         partitionDateSource: azure_native.awsconnector.PartitionedPrefixPartitionDateSource.DeliveryTime,
///                     },
///                 },
///             },
///             metricsConfigurations: [{
///                 accessPointArn: "tkhjqpjfplj",
///                 id: "ggheleujxadbvbjogd",
///                 prefix: "zg",
///                 tagFilters: [{
///                     key: "ffmzaifhmkmsljsm",
///                     value: "fsby",
///                 }],
///             }],
///             notificationConfiguration: {
///                 eventBridgeConfiguration: {
///                     eventBridgeEnabled: true,
///                 },
///                 lambdaConfigurations: [{
///                     event: "zpvewswtoarduycggotzdneptucwix",
///                     filter: {
///                         s3Key: {
///                             rules: [{
///                                 name: "ohgjzuamjncbifvbkldogxjuxvhvz",
///                                 value: "dauvnhzxpkpqutnrl",
///                             }],
///                         },
///                     },
///                     "function": "zmyzygfaojliiryslfyuyme",
///                 }],
///                 queueConfigurations: [{
///                     event: "qgcdpcvmkvjivvpvmmaeqrictlznb",
///                     filter: {
///                         s3Key: {
///                             rules: [{
///                                 name: "ohgjzuamjncbifvbkldogxjuxvhvz",
///                                 value: "dauvnhzxpkpqutnrl",
///                             }],
///                         },
///                     },
///                     queue: "qwlbvlgmwiaegulyybqggopf",
///                 }],
///                 topicConfigurations: [{
///                     event: "kxl",
///                     filter: {
///                         s3Key: {
///                             rules: [{
///                                 name: "ohgjzuamjncbifvbkldogxjuxvhvz",
///                                 value: "dauvnhzxpkpqutnrl",
///                             }],
///                         },
///                     },
///                     topic: "cj",
///                 }],
///             },
///             objectLockConfiguration: {
///                 objectLockEnabled: "aiocf",
///                 rule: {
///                     defaultRetention: {
///                         days: 22,
///                         mode: azure_native.awsconnector.DefaultRetentionMode.COMPLIANCE,
///                         years: 11,
///                     },
///                 },
///             },
///             objectLockEnabled: true,
///             ownershipControls: {
///                 rules: [{
///                     objectOwnership: azure_native.awsconnector.OwnershipControlsRuleObjectOwnership.BucketOwnerEnforced,
///                 }],
///             },
///             publicAccessBlockConfiguration: {
///                 blockPublicAcls: true,
///                 blockPublicPolicy: true,
///                 ignorePublicAcls: true,
///                 restrictPublicBuckets: true,
///             },
///             regionalDomainName: "xdbzcoemgixrqq",
///             replicationConfiguration: {
///                 role: "rqafufwtmuflkqet",
///                 rules: [{
///                     deleteMarkerReplication: {
///                         status: azure_native.awsconnector.DeleteMarkerReplicationStatus.Disabled,
///                     },
///                     destination: {
///                         accessControlTranslation: {
///                             owner: "smyptov",
///                         },
///                         account: "hwqiekzz",
///                         bucket: "prjlsmdhkwrputvpdavgn",
///                         encryptionConfiguration: {
///                             replicaKmsKeyID: "uodgudyknqizofykjokpv",
///                         },
///                         metrics: {
///                             eventThreshold: {
///                                 minutes: 18,
///                             },
///                             status: azure_native.awsconnector.MetricsStatus.Disabled,
///                         },
///                         replicationTime: {
///                             status: azure_native.awsconnector.ReplicationTimeStatus.Disabled,
///                             time: {
///                                 minutes: 18,
///                             },
///                         },
///                         storageClass: azure_native.awsconnector.ReplicationDestinationStorageClass.DEEP_ARCHIVE,
///                     },
///                     filter: {
///                         and: {
///                             prefix: "rlralilpznxqfpcseysvvxmfaor",
///                             tagFilters: [{
///                                 key: "ffmzaifhmkmsljsm",
///                                 value: "fsby",
///                             }],
///                         },
///                         prefix: "etzfeufdxmcvjzpvxbjmzikok",
///                         tagFilter: {
///                             key: "ffmzaifhmkmsljsm",
///                             value: "fsby",
///                         },
///                     },
///                     id: "fjcfzahlddm",
///                     prefix: "agykvphwwnfevfucrxugxejv",
///                     priority: 20,
///                     sourceSelectionCriteria: {
///                         replicaModifications: {
///                             status: azure_native.awsconnector.ReplicaModificationsStatus.Disabled,
///                         },
///                         sseKmsEncryptedObjects: {
///                             status: azure_native.awsconnector.SseKmsEncryptedObjectsStatus.Disabled,
///                         },
///                     },
///                     status: azure_native.awsconnector.ReplicationRuleStatus.Disabled,
///                 }],
///             },
///             tags: [{
///                 key: "dxpeasomkyhulmxegodswwuhn",
///                 value: "otwjdamxqdydqwujwyfh",
///             }],
///             versioningConfiguration: {
///                 status: azure_native.awsconnector.VersioningConfigurationStatus.Enabled,
///             },
///             websiteConfiguration: {
///                 errorDocument: "zxifnrlbyapkasrrhamdkdsqk",
///                 indexDocument: "umbhsxlihqldbh",
///                 redirectAllRequestsTo: {
///                     hostName: "sxmd",
///                     protocol: azure_native.awsconnector.RedirectAllRequestsToProtocol.Http,
///                 },
///                 routingRules: [{
///                     redirectRule: {
///                         hostName: "odmugwc",
///                         httpRedirectCode: "vfvnluyewsuhlybwzwsc",
///                         protocol: azure_native.awsconnector.RedirectRuleProtocol.Http,
///                         replaceKeyPrefixWith: "khrrcydzrtwzttnlqrlvdqdj",
///                         replaceKeyWith: "axcwbdxqktfrrivec",
///                     },
///                     routingRuleCondition: {
///                         httpErrorCodeReturnedEquals: "rajjyyktkunsenpficiiq",
///                         keyPrefixEquals: "tgzmwymptfxjolynmpwx",
///                     },
///                 }],
///             },
///             websiteURL: "vtlwozcgstjkkmgfywinjoreomvw",
///         },
///         awsRegion: "kckriyydtrwdlelcuztzfeptvcbwj",
///         awsSourceSchema: "kywnqkadqm",
///         awsTags: {
///             key1337: "xopsufyohwwvrxsp",
///         },
///         publicCloudConnectorsResourceId: "i",
///         publicCloudResourceName: "fmugqeeykklaccblyqplo",
///     },
///     resourceGroupName: "rgs3Bucket",
///     tags: {
///         key8605: "s",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// s3_bucket = azure_native.awsconnector.S3Bucket("s3Bucket",
///     location="pesmjbocvf",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "qoufjwcexyvk",
///         "aws_account_id": "rfckvyuni",
///         "aws_properties": {
///             "accelerate_configuration": {
///                 "acceleration_status": azure_native.awsconnector.AccelerateConfigurationAccelerationStatus.ENABLED,
///             },
///             "access_control": azure_native.awsconnector.AccessControl.AUTHENTICATED_READ,
///             "analytics_configurations": [{
///                 "id": "ioxkjkuclx",
///                 "prefix": "errquicjtmxuidndown",
///                 "storage_class_analysis": {
///                     "data_export": {
///                         "destination": {
///                             "bucket_account_id": "sfgcxqtuacvejulm",
///                             "bucket_arn": "iuwuakbkkh",
///                             "format": azure_native.awsconnector.DestinationFormat.CSV,
///                             "prefix": "bnbqkueiiffpl",
///                         },
///                         "output_schema_version": "ojzzqnkekust",
///                     },
///                 },
///                 "tag_filters": [{
///                     "key": "ffmzaifhmkmsljsm",
///                     "value": "fsby",
///                 }],
///             }],
///             "arn": "wdn",
///             "bucket_encryption": {
///                 "server_side_encryption_configuration": [{
///                     "bucket_key_enabled": True,
///                     "server_side_encryption_by_default": {
///                         "kms_master_key_id": "mledejya",
///                         "sse_algorithm": azure_native.awsconnector.ServerSideEncryptionByDefaultSSEAlgorithm.AES256,
///                     },
///                 }],
///             },
///             "bucket_name": "qapantghvzujpa",
///             "cors_configuration": {
///                 "cors_rules": [{
///                     "allowed_headers": ["zzooekoypz"],
///                     "allowed_methods": [azure_native.awsconnector.CorsRuleAllowedMethods.DELETE],
///                     "allowed_origins": ["tqldxbbws"],
///                     "exposed_headers": ["wjlikohhmisfgumcfzrnvg"],
///                     "id": "zvasxfnbnbpftihvtosdnlmskv",
///                     "max_age": 9,
///                 }],
///             },
///             "domain_name": "vbhotuxputambztq",
///             "dual_stack_domain_name": "sryuphsbzszrwamvrcsihe",
///             "intelligent_tiering_configurations": [{
///                 "id": "dbqsgaw",
///                 "prefix": "lhizynvczgfiqwaiyuqpvnd",
///                 "status": azure_native.awsconnector.IntelligentTieringConfigurationStatus.DISABLED,
///                 "tag_filters": [{
///                     "key": "ffmzaifhmkmsljsm",
///                     "value": "fsby",
///                 }],
///                 "tierings": [{
///                     "access_tier": azure_native.awsconnector.TieringAccessTier.ARCHIV_E_ACCESS,
///                     "days": 6,
///                 }],
///             }],
///             "inventory_configurations": [{
///                 "destination": {
///                     "bucket_account_id": "sfgcxqtuacvejulm",
///                     "bucket_arn": "iuwuakbkkh",
///                     "format": azure_native.awsconnector.DestinationFormat.CSV,
///                     "prefix": "bnbqkueiiffpl",
///                 },
///                 "enabled": True,
///                 "id": "yqyorzlpsfzzycfeqmdgtsstdze",
///                 "included_object_versions": azure_native.awsconnector.InventoryConfigurationIncludedObjectVersions.ALL,
///                 "optional_fields": [azure_native.awsconnector.InventoryConfigurationOptionalFields.BUCKET_KEY_STATUS],
///                 "prefix": "tuzwyujzrv",
///                 "schedule_frequency": azure_native.awsconnector.InventoryConfigurationScheduleFrequency.DAILY,
///             }],
///             "lifecycle_configuration": {
///                 "rules": [{
///                     "abort_incomplete_multipart_upload": {
///                         "days_after_initiation": 20,
///                     },
///                     "expiration_date": "ruijzosqnherfgwbgzbiwau",
///                     "expiration_in_days": 8,
///                     "expired_object_delete_marker": True,
///                     "id": "aofbidgki",
///                     "noncurrent_version_expiration": {
///                         "newer_noncurrent_versions": 4,
///                         "noncurrent_days": 17,
///                     },
///                     "noncurrent_version_expiration_in_days": 4,
///                     "noncurrent_version_transition": {
///                         "newer_noncurrent_versions": 6,
///                         "storage_class": azure_native.awsconnector.NoncurrentVersionTransitionStorageClass.DEE_P_ARCHIVE,
///                         "transition_in_days": 8,
///                     },
///                     "noncurrent_version_transitions": [{
///                         "newer_noncurrent_versions": 6,
///                         "storage_class": azure_native.awsconnector.NoncurrentVersionTransitionStorageClass.DEE_P_ARCHIVE,
///                         "transition_in_days": 8,
///                     }],
///                     "object_size_greater_than": "hfifjfbqvmtatza",
///                     "object_size_less_than": "ew",
///                     "prefix": "kbsmshvpardhxehfjgszomvekk",
///                     "status": azure_native.awsconnector.RuleStatus.DISABLED,
///                     "tag_filters": [{
///                         "key": "ffmzaifhmkmsljsm",
///                         "value": "fsby",
///                     }],
///                     "transition": {
///                         "storage_class": azure_native.awsconnector.TransitionStorageClass.DEE_P_ARCHIVE,
///                         "transition_date": "cqdrkqznucygxbnccuvxqbtnm",
///                         "transition_in_days": 14,
///                     },
///                     "transitions": [{
///                         "storage_class": azure_native.awsconnector.TransitionStorageClass.DEE_P_ARCHIVE,
///                         "transition_date": "cqdrkqznucygxbnccuvxqbtnm",
///                         "transition_in_days": 14,
///                     }],
///                 }],
///             },
///             "logging_configuration": {
///                 "destination_bucket_name": "aujj",
///                 "log_file_prefix": "vdmmbfnvymowpvmhbsagekbokzvp",
///                 "target_object_key_format": {
///                     "partitioned_prefix": {
///                         "partition_date_source": azure_native.awsconnector.PartitionedPrefixPartitionDateSource.DELIVERY_TIME,
///                     },
///                 },
///             },
///             "metrics_configurations": [{
///                 "access_point_arn": "tkhjqpjfplj",
///                 "id": "ggheleujxadbvbjogd",
///                 "prefix": "zg",
///                 "tag_filters": [{
///                     "key": "ffmzaifhmkmsljsm",
///                     "value": "fsby",
///                 }],
///             }],
///             "notification_configuration": {
///                 "event_bridge_configuration": {
///                     "event_bridge_enabled": True,
///                 },
///                 "lambda_configurations": [{
///                     "event": "zpvewswtoarduycggotzdneptucwix",
///                     "filter": {
///                         "s3_key": {
///                             "rules": [{
///                                 "name": "ohgjzuamjncbifvbkldogxjuxvhvz",
///                                 "value": "dauvnhzxpkpqutnrl",
///                             }],
///                         },
///                     },
///                     "function": "zmyzygfaojliiryslfyuyme",
///                 }],
///                 "queue_configurations": [{
///                     "event": "qgcdpcvmkvjivvpvmmaeqrictlznb",
///                     "filter": {
///                         "s3_key": {
///                             "rules": [{
///                                 "name": "ohgjzuamjncbifvbkldogxjuxvhvz",
///                                 "value": "dauvnhzxpkpqutnrl",
///                             }],
///                         },
///                     },
///                     "queue": "qwlbvlgmwiaegulyybqggopf",
///                 }],
///                 "topic_configurations": [{
///                     "event": "kxl",
///                     "filter": {
///                         "s3_key": {
///                             "rules": [{
///                                 "name": "ohgjzuamjncbifvbkldogxjuxvhvz",
///                                 "value": "dauvnhzxpkpqutnrl",
///                             }],
///                         },
///                     },
///                     "topic": "cj",
///                 }],
///             },
///             "object_lock_configuration": {
///                 "object_lock_enabled": "aiocf",
///                 "rule": {
///                     "default_retention": {
///                         "days": 22,
///                         "mode": azure_native.awsconnector.DefaultRetentionMode.COMPLIANCE,
///                         "years": 11,
///                     },
///                 },
///             },
///             "object_lock_enabled": True,
///             "ownership_controls": {
///                 "rules": [{
///                     "object_ownership": azure_native.awsconnector.OwnershipControlsRuleObjectOwnership.BUCKET_OWNER_ENFORCED,
///                 }],
///             },
///             "public_access_block_configuration": {
///                 "block_public_acls": True,
///                 "block_public_policy": True,
///                 "ignore_public_acls": True,
///                 "restrict_public_buckets": True,
///             },
///             "regional_domain_name": "xdbzcoemgixrqq",
///             "replication_configuration": {
///                 "role": "rqafufwtmuflkqet",
///                 "rules": [{
///                     "delete_marker_replication": {
///                         "status": azure_native.awsconnector.DeleteMarkerReplicationStatus.DISABLED,
///                     },
///                     "destination": {
///                         "access_control_translation": {
///                             "owner": "smyptov",
///                         },
///                         "account": "hwqiekzz",
///                         "bucket": "prjlsmdhkwrputvpdavgn",
///                         "encryption_configuration": {
///                             "replica_kms_key_id": "uodgudyknqizofykjokpv",
///                         },
///                         "metrics": {
///                             "event_threshold": {
///                                 "minutes": 18,
///                             },
///                             "status": azure_native.awsconnector.MetricsStatus.DISABLED,
///                         },
///                         "replication_time": {
///                             "status": azure_native.awsconnector.ReplicationTimeStatus.DISABLED,
///                             "time": {
///                                 "minutes": 18,
///                             },
///                         },
///                         "storage_class": azure_native.awsconnector.ReplicationDestinationStorageClass.DEE_P_ARCHIVE,
///                     },
///                     "filter": {
///                         "and_": {
///                             "prefix": "rlralilpznxqfpcseysvvxmfaor",
///                             "tag_filters": [{
///                                 "key": "ffmzaifhmkmsljsm",
///                                 "value": "fsby",
///                             }],
///                         },
///                         "prefix": "etzfeufdxmcvjzpvxbjmzikok",
///                         "tag_filter": {
///                             "key": "ffmzaifhmkmsljsm",
///                             "value": "fsby",
///                         },
///                     },
///                     "id": "fjcfzahlddm",
///                     "prefix": "agykvphwwnfevfucrxugxejv",
///                     "priority": 20,
///                     "source_selection_criteria": {
///                         "replica_modifications": {
///                             "status": azure_native.awsconnector.ReplicaModificationsStatus.DISABLED,
///                         },
///                         "sse_kms_encrypted_objects": {
///                             "status": azure_native.awsconnector.SseKmsEncryptedObjectsStatus.DISABLED,
///                         },
///                     },
///                     "status": azure_native.awsconnector.ReplicationRuleStatus.DISABLED,
///                 }],
///             },
///             "tags": [{
///                 "key": "dxpeasomkyhulmxegodswwuhn",
///                 "value": "otwjdamxqdydqwujwyfh",
///             }],
///             "versioning_configuration": {
///                 "status": azure_native.awsconnector.VersioningConfigurationStatus.ENABLED,
///             },
///             "website_configuration": {
///                 "error_document": "zxifnrlbyapkasrrhamdkdsqk",
///                 "index_document": "umbhsxlihqldbh",
///                 "redirect_all_requests_to": {
///                     "host_name": "sxmd",
///                     "protocol": azure_native.awsconnector.RedirectAllRequestsToProtocol.HTTP,
///                 },
///                 "routing_rules": [{
///                     "redirect_rule": {
///                         "host_name": "odmugwc",
///                         "http_redirect_code": "vfvnluyewsuhlybwzwsc",
///                         "protocol": azure_native.awsconnector.RedirectRuleProtocol.HTTP,
///                         "replace_key_prefix_with": "khrrcydzrtwzttnlqrlvdqdj",
///                         "replace_key_with": "axcwbdxqktfrrivec",
///                     },
///                     "routing_rule_condition": {
///                         "http_error_code_returned_equals": "rajjyyktkunsenpficiiq",
///                         "key_prefix_equals": "tgzmwymptfxjolynmpwx",
///                     },
///                 }],
///             },
///             "website_url": "vtlwozcgstjkkmgfywinjoreomvw",
///         },
///         "aws_region": "kckriyydtrwdlelcuztzfeptvcbwj",
///         "aws_source_schema": "kywnqkadqm",
///         "aws_tags": {
///             "key1337": "xopsufyohwwvrxsp",
///         },
///         "public_cloud_connectors_resource_id": "i",
///         "public_cloud_resource_name": "fmugqeeykklaccblyqplo",
///     },
///     resource_group_name="rgs3Bucket",
///     tags={
///         "key8605": "s",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   s3Bucket:
///     type: azure-native:awsconnector:S3Bucket
///     properties:
///       location: pesmjbocvf
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: qoufjwcexyvk
///         awsAccountId: rfckvyuni
///         awsProperties:
///           accelerateConfiguration:
///             accelerationStatus: Enabled
///           accessControl: AuthenticatedRead
///           analyticsConfigurations:
///             - id: ioxkjkuclx
///               prefix: errquicjtmxuidndown
///               storageClassAnalysis:
///                 dataExport:
///                   destination:
///                     bucketAccountId: sfgcxqtuacvejulm
///                     bucketArn: iuwuakbkkh
///                     format: CSV
///                     prefix: bnbqkueiiffpl
///                   outputSchemaVersion: ojzzqnkekust
///               tagFilters:
///                 - key: ffmzaifhmkmsljsm
///                   value: fsby
///           arn: wdn
///           bucketEncryption:
///             serverSideEncryptionConfiguration:
///               - bucketKeyEnabled: true
///                 serverSideEncryptionByDefault:
///                   kmsMasterKeyID: mledejya
///                   sseAlgorithm: AES256
///           bucketName: qapantghvzujpa
///           corsConfiguration:
///             corsRules:
///               - allowedHeaders:
///                   - zzooekoypz
///                 allowedMethods:
///                   - DELETE
///                 allowedOrigins:
///                   - tqldxbbws
///                 exposedHeaders:
///                   - wjlikohhmisfgumcfzrnvg
///                 id: zvasxfnbnbpftihvtosdnlmskv
///                 maxAge: 9
///           domainName: vbhotuxputambztq
///           dualStackDomainName: sryuphsbzszrwamvrcsihe
///           intelligentTieringConfigurations:
///             - id: dbqsgaw
///               prefix: lhizynvczgfiqwaiyuqpvnd
///               status: Disabled
///               tagFilters:
///                 - key: ffmzaifhmkmsljsm
///                   value: fsby
///               tierings:
///                 - accessTier: ARCHIVE_ACCESS
///                   days: 6
///           inventoryConfigurations:
///             - destination:
///                 bucketAccountId: sfgcxqtuacvejulm
///                 bucketArn: iuwuakbkkh
///                 format: CSV
///                 prefix: bnbqkueiiffpl
///               enabled: true
///               id: yqyorzlpsfzzycfeqmdgtsstdze
///               includedObjectVersions: All
///               optionalFields:
///                 - BucketKeyStatus
///               prefix: tuzwyujzrv
///               scheduleFrequency: Daily
///           lifecycleConfiguration:
///             rules:
///               - abortIncompleteMultipartUpload:
///                   daysAfterInitiation: 20
///                 expirationDate: ruijzosqnherfgwbgzbiwau
///                 expirationInDays: 8
///                 expiredObjectDeleteMarker: true
///                 id: aofbidgki
///                 noncurrentVersionExpiration:
///                   newerNoncurrentVersions: 4
///                   noncurrentDays: 17
///                 noncurrentVersionExpirationInDays: 4
///                 noncurrentVersionTransition:
///                   newerNoncurrentVersions: 6
///                   storageClass: DEEP_ARCHIVE
///                   transitionInDays: 8
///                 noncurrentVersionTransitions:
///                   - newerNoncurrentVersions: 6
///                     storageClass: DEEP_ARCHIVE
///                     transitionInDays: 8
///                 objectSizeGreaterThan: hfifjfbqvmtatza
///                 objectSizeLessThan: ew
///                 prefix: kbsmshvpardhxehfjgszomvekk
///                 status: Disabled
///                 tagFilters:
///                   - key: ffmzaifhmkmsljsm
///                     value: fsby
///                 transition:
///                   storageClass: DEEP_ARCHIVE
///                   transitionDate: cqdrkqznucygxbnccuvxqbtnm
///                   transitionInDays: 14
///                 transitions:
///                   - storageClass: DEEP_ARCHIVE
///                     transitionDate: cqdrkqznucygxbnccuvxqbtnm
///                     transitionInDays: 14
///           loggingConfiguration:
///             destinationBucketName: aujj
///             logFilePrefix: vdmmbfnvymowpvmhbsagekbokzvp
///             targetObjectKeyFormat:
///               partitionedPrefix:
///                 partitionDateSource: DeliveryTime
///           metricsConfigurations:
///             - accessPointArn: tkhjqpjfplj
///               id: ggheleujxadbvbjogd
///               prefix: zg
///               tagFilters:
///                 - key: ffmzaifhmkmsljsm
///                   value: fsby
///           notificationConfiguration:
///             eventBridgeConfiguration:
///               eventBridgeEnabled: true
///             lambdaConfigurations:
///               - event: zpvewswtoarduycggotzdneptucwix
///                 filter:
///                   s3Key:
///                     rules:
///                       - name: ohgjzuamjncbifvbkldogxjuxvhvz
///                         value: dauvnhzxpkpqutnrl
///                 function: zmyzygfaojliiryslfyuyme
///             queueConfigurations:
///               - event: qgcdpcvmkvjivvpvmmaeqrictlznb
///                 filter:
///                   s3Key:
///                     rules:
///                       - name: ohgjzuamjncbifvbkldogxjuxvhvz
///                         value: dauvnhzxpkpqutnrl
///                 queue: qwlbvlgmwiaegulyybqggopf
///             topicConfigurations:
///               - event: kxl
///                 filter:
///                   s3Key:
///                     rules:
///                       - name: ohgjzuamjncbifvbkldogxjuxvhvz
///                         value: dauvnhzxpkpqutnrl
///                 topic: cj
///           objectLockConfiguration:
///             objectLockEnabled: aiocf
///             rule:
///               defaultRetention:
///                 days: 22
///                 mode: COMPLIANCE
///                 years: 11
///           objectLockEnabled: true
///           ownershipControls:
///             rules:
///               - objectOwnership: BucketOwnerEnforced
///           publicAccessBlockConfiguration:
///             blockPublicAcls: true
///             blockPublicPolicy: true
///             ignorePublicAcls: true
///             restrictPublicBuckets: true
///           regionalDomainName: xdbzcoemgixrqq
///           replicationConfiguration:
///             role: rqafufwtmuflkqet
///             rules:
///               - deleteMarkerReplication:
///                   status: Disabled
///                 destination:
///                   accessControlTranslation:
///                     owner: smyptov
///                   account: hwqiekzz
///                   bucket: prjlsmdhkwrputvpdavgn
///                   encryptionConfiguration:
///                     replicaKmsKeyID: uodgudyknqizofykjokpv
///                   metrics:
///                     eventThreshold:
///                       minutes: 18
///                     status: Disabled
///                   replicationTime:
///                     status: Disabled
///                     time:
///                       minutes: 18
///                   storageClass: DEEP_ARCHIVE
///                 filter:
///                   and:
///                     prefix: rlralilpznxqfpcseysvvxmfaor
///                     tagFilters:
///                       - key: ffmzaifhmkmsljsm
///                         value: fsby
///                   prefix: etzfeufdxmcvjzpvxbjmzikok
///                   tagFilter:
///                     key: ffmzaifhmkmsljsm
///                     value: fsby
///                 id: fjcfzahlddm
///                 prefix: agykvphwwnfevfucrxugxejv
///                 priority: 20
///                 sourceSelectionCriteria:
///                   replicaModifications:
///                     status: Disabled
///                   sseKmsEncryptedObjects:
///                     status: Disabled
///                 status: Disabled
///           tags:
///             - key: dxpeasomkyhulmxegodswwuhn
///               value: otwjdamxqdydqwujwyfh
///           versioningConfiguration:
///             status: Enabled
///           websiteConfiguration:
///             errorDocument: zxifnrlbyapkasrrhamdkdsqk
///             indexDocument: umbhsxlihqldbh
///             redirectAllRequestsTo:
///               hostName: sxmd
///               protocol: http
///             routingRules:
///               - redirectRule:
///                   hostName: odmugwc
///                   httpRedirectCode: vfvnluyewsuhlybwzwsc
///                   protocol: http
///                   replaceKeyPrefixWith: khrrcydzrtwzttnlqrlvdqdj
///                   replaceKeyWith: axcwbdxqktfrrivec
///                 routingRuleCondition:
///                   httpErrorCodeReturnedEquals: rajjyyktkunsenpficiiq
///                   keyPrefixEquals: tgzmwymptfxjolynmpwx
///           websiteURL: vtlwozcgstjkkmgfywinjoreomvw
///         awsRegion: kckriyydtrwdlelcuztzfeptvcbwj
///         awsSourceSchema: kywnqkadqm
///         awsTags:
///           key1337: xopsufyohwwvrxsp
///         publicCloudConnectorsResourceId: i
///         publicCloudResourceName: fmugqeeykklaccblyqplo
///       resourceGroupName: rgs3Bucket
///       tags:
///         key8605: s
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
/// $ pulumi import azure-native:awsconnector:S3Bucket xbupettah /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/s3Buckets/{name}
/// ```
class S3Bucket extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<S3BucketPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [S3Bucket].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [S3Bucket]. {@macro pulumi_awsconnector_s3_bucket_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  S3Bucket(
    String name, {
    S3BucketArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:S3Bucket',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<S3BucketPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return S3BucketPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
