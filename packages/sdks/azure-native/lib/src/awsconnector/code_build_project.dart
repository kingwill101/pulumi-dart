import 'package:pulumi/pulumi.dart' as pulumi;
import 'code_build_project_args.dart';
import 'code_build_project_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CodeBuildProjects_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var codeBuildProject = new AzureNative.AwsConnector.CodeBuildProject("codeBuildProject", new()
///     {
///         Location = "fpjpnhlms",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.CodeBuildProjectPropertiesArgs
///         {
///             Arn = "ae",
///             AwsAccountId = "caiac",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsCodeBuildProjectPropertiesArgs
///             {
///                 Arn = "wwhfeljvmnwnqcgxusgnvoq",
///                 Artifacts = new AzureNative.AwsConnector.Inputs.ProjectArtifactsArgs
///                 {
///                     ArtifactIdentifier = "hcfdqzwleorpe",
///                     BucketOwnerAccess = new AzureNative.AwsConnector.Inputs.BucketOwnerAccessEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.BucketOwnerAccess.FULL,
///                     },
///                     EncryptionDisabled = true,
///                     Location = "zvhsfl",
///                     Name = "dsqyinskfvabyktgjbszny",
///                     NamespaceType = new AzureNative.AwsConnector.Inputs.ArtifactNamespaceEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.ArtifactNamespace.BUILD_ID,
///                     },
///                     OverrideArtifactName = true,
///                     Packaging = new AzureNative.AwsConnector.Inputs.ArtifactPackagingEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.ArtifactPackaging.NONE,
///                     },
///                     Path = "zbsfhzkoet",
///                     Type = new AzureNative.AwsConnector.Inputs.ArtifactsTypeEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.ArtifactsType.CODEPIPELINE,
///                     },
///                 },
///                 Badge = new AzureNative.AwsConnector.Inputs.ProjectBadgeArgs
///                 {
///                     BadgeEnabled = true,
///                     BadgeRequestUrl = "ulpdsdbgtwm",
///                 },
///                 BuildBatchConfig = new AzureNative.AwsConnector.Inputs.ProjectBuildBatchConfigArgs
///                 {
///                     BatchReportMode = new AzureNative.AwsConnector.Inputs.BatchReportModeTypeEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.BatchReportModeType.REPORT_AGGREGATED_BATCH,
///                     },
///                     CombineArtifacts = true,
///                     Restrictions = new AzureNative.AwsConnector.Inputs.BatchRestrictionsArgs
///                     {
///                         ComputeTypesAllowed = new[]
///                         {
///                             "ievoltoldfrhkpv",
///                         },
///                         MaximumBuildsAllowed = 15,
///                     },
///                     ServiceRole = "lceqjutffrykpuzjxvijbzpames",
///                     TimeoutInMins = 3,
///                 },
///                 Cache = new AzureNative.AwsConnector.Inputs.ProjectCacheArgs
///                 {
///                     Location = "wgmqyjzlxsazecszvdkfr",
///                     Modes = new[]
///                     {
///                         AzureNative.AwsConnector.CacheMode.LOCAL_CUSTOM_CACHE,
///                     },
///                     Type = new AzureNative.AwsConnector.Inputs.CacheTypeEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.CacheType.LOCAL,
///                     },
///                 },
///                 ConcurrentBuildLimit = 19,
///                 Created = "2024-10-08T03:48:48.570Z",
///                 Description = "adnfxoh",
///                 EncryptionKey = "upseoicsvrwjjachlewnltupswc",
///                 Environment = new AzureNative.AwsConnector.Inputs.ProjectEnvironmentArgs
///                 {
///                     Certificate = "olzbdlydjqzkzlflzxcdjjjv",
///                     ComputeType = new AzureNative.AwsConnector.Inputs.ComputeTypeEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.ComputeType.BUILD_GENERAL1_2XLARGE,
///                     },
///                     EnvironmentVariables = new[]
///                     {
///                         new AzureNative.AwsConnector.Inputs.EnvironmentVariableArgs
///                         {
///                             Name = "bmzlnmjzuxrxeemxfutykrlvemt",
///                             Type = new AzureNative.AwsConnector.Inputs.EnvironmentVariableTypeEnumValueArgs
///                             {
///                                 Value = AzureNative.AwsConnector.EnvironmentVariableType.PARAMETER_STORE,
///                             },
///                             Value = "eakfsmirkkwnizotyqqgmgjthn",
///                         },
///                     },
///                     Fleet = new AzureNative.AwsConnector.Inputs.ProjectFleetArgs
///                     {
///                         FleetArn = "brslcsjgupcpeistg",
///                     },
///                     Image = "kkmioknmuhxurahmnjg",
///                     ImagePullCredentialsType = new AzureNative.AwsConnector.Inputs.ImagePullCredentialsTypeEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.ImagePullCredentialsType.CODEBUILD,
///                     },
///                     PrivilegedMode = true,
///                     RegistryCredential = new AzureNative.AwsConnector.Inputs.RegistryCredentialArgs
///                     {
///                         Credential = "rpnzfjdjuamclquyzquwicenfpefx",
///                         CredentialProvider = new AzureNative.AwsConnector.Inputs.CredentialProviderTypeEnumValueArgs
///                         {
///                             Value = AzureNative.AwsConnector.CredentialProviderType.SECRETS_MANAGER,
///                         },
///                     },
///                     Type = new AzureNative.AwsConnector.Inputs.EnvironmentTypeEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.EnvironmentType.ARM_CONTAINER,
///                     },
///                 },
///                 FileSystemLocations = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.ProjectFileSystemLocationArgs
///                     {
///                         Identifier = "tdquc",
///                         Location = "yeaotrzuhjtdtbfrlpvmlmaoqyioin",
///                         MountOptions = "tocdlorjekugjotphpxuyebjj",
///                         MountPoint = "fctmorvlmplsmeqvmavw",
///                         Type = new AzureNative.AwsConnector.Inputs.FileSystemTypeEnumValueArgs
///                         {
///                             Value = AzureNative.AwsConnector.FileSystemType.EFS,
///                         },
///                     },
///                 },
///                 LastModified = "2024-10-08T03:48:48.571Z",
///                 LogsConfig = new AzureNative.AwsConnector.Inputs.LogsConfigArgs
///                 {
///                     CloudWatchLogs = new AzureNative.AwsConnector.Inputs.CloudWatchLogsConfigArgs
///                     {
///                         GroupName = "t",
///                         Status = new AzureNative.AwsConnector.Inputs.LogsConfigStatusTypeEnumValueArgs
///                         {
///                             Value = AzureNative.AwsConnector.LogsConfigStatusType.DISABLED,
///                         },
///                         StreamName = "rrqzbaaicbiblat",
///                     },
///                     S3Logs = new AzureNative.AwsConnector.Inputs.S3LogsConfigArgs
///                     {
///                         BucketOwnerAccess = new AzureNative.AwsConnector.Inputs.BucketOwnerAccessEnumValueArgs
///                         {
///                             Value = AzureNative.AwsConnector.BucketOwnerAccess.FULL,
///                         },
///                         EncryptionDisabled = true,
///                         Location = "zuepwokmlymlvsvzjawzxe",
///                         Status = new AzureNative.AwsConnector.Inputs.LogsConfigStatusTypeEnumValueArgs
///                         {
///                             Value = AzureNative.AwsConnector.LogsConfigStatusType.DISABLED,
///                         },
///                     },
///                 },
///                 Name = "budzhvktdvhxxy",
///                 ProjectVisibility = new AzureNative.AwsConnector.Inputs.ProjectVisibilityTypeEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.ProjectVisibilityType.PRIVATE,
///                 },
///                 PublicProjectAlias = "vstmzamjxtasdipcehcuwvfef",
///                 QueuedTimeoutInMinutes = 30,
///                 ResourceAccessRole = "st",
///                 SecondaryArtifacts = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.ProjectArtifactsArgs
///                     {
///                         ArtifactIdentifier = "hcfdqzwleorpe",
///                         BucketOwnerAccess = new AzureNative.AwsConnector.Inputs.BucketOwnerAccessEnumValueArgs
///                         {
///                             Value = AzureNative.AwsConnector.BucketOwnerAccess.FULL,
///                         },
///                         EncryptionDisabled = true,
///                         Location = "zvhsfl",
///                         Name = "dsqyinskfvabyktgjbszny",
///                         NamespaceType = new AzureNative.AwsConnector.Inputs.ArtifactNamespaceEnumValueArgs
///                         {
///                             Value = AzureNative.AwsConnector.ArtifactNamespace.BUILD_ID,
///                         },
///                         OverrideArtifactName = true,
///                         Packaging = new AzureNative.AwsConnector.Inputs.ArtifactPackagingEnumValueArgs
///                         {
///                             Value = AzureNative.AwsConnector.ArtifactPackaging.NONE,
///                         },
///                         Path = "zbsfhzkoet",
///                         Type = new AzureNative.AwsConnector.Inputs.ArtifactsTypeEnumValueArgs
///                         {
///                             Value = AzureNative.AwsConnector.ArtifactsType.CODEPIPELINE,
///                         },
///                     },
///                 },
///                 SecondarySourceVersions = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.ProjectSourceVersionArgs
///                     {
///                         SourceIdentifier = "kiyezlaophakaslamcsxpkzggoj",
///                         SourceVersion = "zy",
///                     },
///                 },
///                 SecondarySources = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.ProjectSourceArgs
///                     {
///                         Auth = new AzureNative.AwsConnector.Inputs.SourceAuthArgs
///                         {
///                             Resource = "oyfwquyzyjklbxlyjyddpmhmjgsgk",
///                             Type = new AzureNative.AwsConnector.Inputs.SourceAuthTypeEnumValueArgs
///                             {
///                                 Value = AzureNative.AwsConnector.SourceAuthType.CODECONNECTIONS,
///                             },
///                         },
///                         BuildStatusConfig = new AzureNative.AwsConnector.Inputs.BuildStatusConfigArgs
///                         {
///                             Context = "zoghbponrxfhugrjzdheibkada",
///                             TargetUrl = "ooonrchy",
///                         },
///                         Buildspec = "xxcoigvstisdhlfkfiblrgqhbtoqd",
///                         GitCloneDepth = 9,
///                         GitSubmodulesConfig = new AzureNative.AwsConnector.Inputs.GitSubmodulesConfigArgs
///                         {
///                             FetchSubmodules = true,
///                         },
///                         InsecureSsl = true,
///                         Location = "owijjqkiwwegfcrynqcypho",
///                         ReportBuildStatus = true,
///                         SourceIdentifier = "lnhelescdeif",
///                         Type = new AzureNative.AwsConnector.Inputs.SourceTypeEnumValueArgs
///                         {
///                             Value = "BITBUCKET",
///                         },
///                     },
///                 },
///                 ServiceRole = "pydzdifzkz",
///                 Source = new AzureNative.AwsConnector.Inputs.ProjectSourceArgs
///                 {
///                     Auth = new AzureNative.AwsConnector.Inputs.SourceAuthArgs
///                     {
///                         Resource = "oyfwquyzyjklbxlyjyddpmhmjgsgk",
///                         Type = new AzureNative.AwsConnector.Inputs.SourceAuthTypeEnumValueArgs
///                         {
///                             Value = AzureNative.AwsConnector.SourceAuthType.CODECONNECTIONS,
///                         },
///                     },
///                     BuildStatusConfig = new AzureNative.AwsConnector.Inputs.BuildStatusConfigArgs
///                     {
///                         Context = "zoghbponrxfhugrjzdheibkada",
///                         TargetUrl = "ooonrchy",
///                     },
///                     Buildspec = "xxcoigvstisdhlfkfiblrgqhbtoqd",
///                     GitCloneDepth = 9,
///                     GitSubmodulesConfig = new AzureNative.AwsConnector.Inputs.GitSubmodulesConfigArgs
///                     {
///                         FetchSubmodules = true,
///                     },
///                     InsecureSsl = true,
///                     Location = "owijjqkiwwegfcrynqcypho",
///                     ReportBuildStatus = true,
///                     SourceIdentifier = "lnhelescdeif",
///                     Type = new AzureNative.AwsConnector.Inputs.SourceTypeEnumValueArgs
///                     {
///                         Value = "BITBUCKET",
///                     },
///                 },
///                 SourceVersion = "idpngofzedxghp",
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "jcnahvslmrynzn",
///                         Value = "iqwximmqwgsjlwdgv",
///                     },
///                 },
///                 TimeoutInMinutes = 7,
///                 VpcConfig = new AzureNative.AwsConnector.Inputs.VpcConfigArgs
///                 {
///                     SecurityGroupIds = new[]
///                     {
///                         "gcsqntkatjbigzj",
///                     },
///                 },
///                 Webhook = new AzureNative.AwsConnector.Inputs.WebhookArgs
///                 {
///                     BranchFilter = "fpfnqs",
///                     BuildType = new AzureNative.AwsConnector.Inputs.WebhookBuildTypeEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.WebhookBuildType.BUILD,
///                     },
///                     FilterGroups = new[]
///                     {
///                         new AzureNative.AwsConnector.Inputs.FilterGroupArgs
///                         {
///                             WebhookFilter = new AzureNative.AwsConnector.Inputs.WebhookFilterArgs
///                             {
///                                 ExcludeMatchedPattern = true,
///                                 Pattern = "ozqghxeblvksllu",
///                                 Type = new AzureNative.AwsConnector.Inputs.WebhookFilterTypeEnumValueArgs
///                                 {
///                                     Value = AzureNative.AwsConnector.WebhookFilterType.ACTOR_ACCOUNT_ID,
///                                 },
///                             },
///                         },
///                     },
///                     LastModifiedSecret = "2024-10-08T03:48:48.574Z",
///                     PayloadUrl = "wzalmmzopccsfbgwhxjneakxazu",
///                     Secret = "mvic",
///                     Url = "lwkywiwhmmdrirvajnxo",
///                 },
///             },
///             AwsRegion = "rakioiwqsjhpjqekyjft",
///             AwsSourceSchema = "ujnztglujzqehsvvd",
///             AwsTags =
///             {
///                 { "key9822", "ryzmieviyiycjaaenwj" },
///             },
///             PublicCloudConnectorsResourceId = "azzcclgcodhtl",
///             PublicCloudResourceName = "tzylnhhjwtzngucgrkvklav",
///         },
///         ResourceGroupName = "rgcodeBuildProject",
///         Tags =
///         {
///             { "key4761", "sranhogw" },
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
/// 		_, err := awsconnector.NewCodeBuildProject(ctx, "codeBuildProject", &awsconnector.CodeBuildProjectArgs{
/// 			Location: pulumi.String("fpjpnhlms"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.CodeBuildProjectPropertiesArgs{
/// 				Arn:          pulumi.String("ae"),
/// 				AwsAccountId: pulumi.String("caiac"),
/// 				AwsProperties: &awsconnector.AwsCodeBuildProjectPropertiesArgs{
/// 					Arn: pulumi.String("wwhfeljvmnwnqcgxusgnvoq"),
/// 					Artifacts: &awsconnector.ProjectArtifactsArgs{
/// 						ArtifactIdentifier: pulumi.String("hcfdqzwleorpe"),
/// 						BucketOwnerAccess: &awsconnector.BucketOwnerAccessEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.BucketOwnerAccessFULL),
/// 						},
/// 						EncryptionDisabled: pulumi.Bool(true),
/// 						Location:           pulumi.String("zvhsfl"),
/// 						Name:               pulumi.String("dsqyinskfvabyktgjbszny"),
/// 						NamespaceType: &awsconnector.ArtifactNamespaceEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.ArtifactNamespace_BUILD_ID),
/// 						},
/// 						OverrideArtifactName: pulumi.Bool(true),
/// 						Packaging: &awsconnector.ArtifactPackagingEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.ArtifactPackagingNONE),
/// 						},
/// 						Path: pulumi.String("zbsfhzkoet"),
/// 						Type: &awsconnector.ArtifactsTypeEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.ArtifactsTypeCODEPIPELINE),
/// 						},
/// 					},
/// 					Badge: &awsconnector.ProjectBadgeArgs{
/// 						BadgeEnabled:    pulumi.Bool(true),
/// 						BadgeRequestUrl: pulumi.String("ulpdsdbgtwm"),
/// 					},
/// 					BuildBatchConfig: &awsconnector.ProjectBuildBatchConfigArgs{
/// 						BatchReportMode: &awsconnector.BatchReportModeTypeEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.BatchReportModeType_REPORT_AGGREGATED_BATCH),
/// 						},
/// 						CombineArtifacts: pulumi.Bool(true),
/// 						Restrictions: &awsconnector.BatchRestrictionsArgs{
/// 							ComputeTypesAllowed: pulumi.StringArray{
/// 								pulumi.String("ievoltoldfrhkpv"),
/// 							},
/// 							MaximumBuildsAllowed: pulumi.Int(15),
/// 						},
/// 						ServiceRole:   pulumi.String("lceqjutffrykpuzjxvijbzpames"),
/// 						TimeoutInMins: pulumi.Int(3),
/// 					},
/// 					Cache: &awsconnector.ProjectCacheArgs{
/// 						Location: pulumi.String("wgmqyjzlxsazecszvdkfr"),
/// 						Modes: pulumi.StringArray{
/// 							pulumi.String(awsconnector.CacheMode_LOCAL_CUSTOM_CACHE),
/// 						},
/// 						Type: &awsconnector.CacheTypeEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.CacheTypeLOCAL),
/// 						},
/// 					},
/// 					ConcurrentBuildLimit: pulumi.Int(19),
/// 					Created:              pulumi.String("2024-10-08T03:48:48.570Z"),
/// 					Description:          pulumi.String("adnfxoh"),
/// 					EncryptionKey:        pulumi.String("upseoicsvrwjjachlewnltupswc"),
/// 					Environment: &awsconnector.ProjectEnvironmentArgs{
/// 						Certificate: pulumi.String("olzbdlydjqzkzlflzxcdjjjv"),
/// 						ComputeType: &awsconnector.ComputeTypeEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.ComputeType_BUILD_GENERAL1_2XLARGE),
/// 						},
/// 						EnvironmentVariables: awsconnector.EnvironmentVariableArray{
/// 							&awsconnector.EnvironmentVariableArgs{
/// 								Name: pulumi.String("bmzlnmjzuxrxeemxfutykrlvemt"),
/// 								Type: &awsconnector.EnvironmentVariableTypeEnumValueArgs{
/// 									Value: pulumi.String(awsconnector.EnvironmentVariableType_PARAMETER_STORE),
/// 								},
/// 								Value: pulumi.String("eakfsmirkkwnizotyqqgmgjthn"),
/// 							},
/// 						},
/// 						Fleet: &awsconnector.ProjectFleetArgs{
/// 							FleetArn: pulumi.String("brslcsjgupcpeistg"),
/// 						},
/// 						Image: pulumi.String("kkmioknmuhxurahmnjg"),
/// 						ImagePullCredentialsType: &awsconnector.ImagePullCredentialsTypeEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.ImagePullCredentialsTypeCODEBUILD),
/// 						},
/// 						PrivilegedMode: pulumi.Bool(true),
/// 						RegistryCredential: &awsconnector.RegistryCredentialArgs{
/// 							Credential: pulumi.String("rpnzfjdjuamclquyzquwicenfpefx"),
/// 							CredentialProvider: &awsconnector.CredentialProviderTypeEnumValueArgs{
/// 								Value: pulumi.String(awsconnector.CredentialProviderType_SECRETS_MANAGER),
/// 							},
/// 						},
/// 						Type: &awsconnector.EnvironmentTypeEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.EnvironmentType_ARM_CONTAINER),
/// 						},
/// 					},
/// 					FileSystemLocations: awsconnector.ProjectFileSystemLocationArray{
/// 						&awsconnector.ProjectFileSystemLocationArgs{
/// 							Identifier:   pulumi.String("tdquc"),
/// 							Location:     pulumi.String("yeaotrzuhjtdtbfrlpvmlmaoqyioin"),
/// 							MountOptions: pulumi.String("tocdlorjekugjotphpxuyebjj"),
/// 							MountPoint:   pulumi.String("fctmorvlmplsmeqvmavw"),
/// 							Type: &awsconnector.FileSystemTypeEnumValueArgs{
/// 								Value: pulumi.String(awsconnector.FileSystemTypeEFS),
/// 							},
/// 						},
/// 					},
/// 					LastModified: pulumi.String("2024-10-08T03:48:48.571Z"),
/// 					LogsConfig: &awsconnector.LogsConfigArgs{
/// 						CloudWatchLogs: &awsconnector.CloudWatchLogsConfigArgs{
/// 							GroupName: pulumi.String("t"),
/// 							Status: &awsconnector.LogsConfigStatusTypeEnumValueArgs{
/// 								Value: pulumi.String(awsconnector.LogsConfigStatusTypeDISABLED),
/// 							},
/// 							StreamName: pulumi.String("rrqzbaaicbiblat"),
/// 						},
/// 						S3Logs: &awsconnector.S3LogsConfigArgs{
/// 							BucketOwnerAccess: &awsconnector.BucketOwnerAccessEnumValueArgs{
/// 								Value: pulumi.String(awsconnector.BucketOwnerAccessFULL),
/// 							},
/// 							EncryptionDisabled: pulumi.Bool(true),
/// 							Location:           pulumi.String("zuepwokmlymlvsvzjawzxe"),
/// 							Status: &awsconnector.LogsConfigStatusTypeEnumValueArgs{
/// 								Value: pulumi.String(awsconnector.LogsConfigStatusTypeDISABLED),
/// 							},
/// 						},
/// 					},
/// 					Name: pulumi.String("budzhvktdvhxxy"),
/// 					ProjectVisibility: &awsconnector.ProjectVisibilityTypeEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.ProjectVisibilityTypePRIVATE),
/// 					},
/// 					PublicProjectAlias:     pulumi.String("vstmzamjxtasdipcehcuwvfef"),
/// 					QueuedTimeoutInMinutes: pulumi.Int(30),
/// 					ResourceAccessRole:     pulumi.String("st"),
/// 					SecondaryArtifacts: awsconnector.ProjectArtifactsArray{
/// 						&awsconnector.ProjectArtifactsArgs{
/// 							ArtifactIdentifier: pulumi.String("hcfdqzwleorpe"),
/// 							BucketOwnerAccess: &awsconnector.BucketOwnerAccessEnumValueArgs{
/// 								Value: pulumi.String(awsconnector.BucketOwnerAccessFULL),
/// 							},
/// 							EncryptionDisabled: pulumi.Bool(true),
/// 							Location:           pulumi.String("zvhsfl"),
/// 							Name:               pulumi.String("dsqyinskfvabyktgjbszny"),
/// 							NamespaceType: &awsconnector.ArtifactNamespaceEnumValueArgs{
/// 								Value: pulumi.String(awsconnector.ArtifactNamespace_BUILD_ID),
/// 							},
/// 							OverrideArtifactName: pulumi.Bool(true),
/// 							Packaging: &awsconnector.ArtifactPackagingEnumValueArgs{
/// 								Value: pulumi.String(awsconnector.ArtifactPackagingNONE),
/// 							},
/// 							Path: pulumi.String("zbsfhzkoet"),
/// 							Type: &awsconnector.ArtifactsTypeEnumValueArgs{
/// 								Value: pulumi.String(awsconnector.ArtifactsTypeCODEPIPELINE),
/// 							},
/// 						},
/// 					},
/// 					SecondarySourceVersions: awsconnector.ProjectSourceVersionArray{
/// 						&awsconnector.ProjectSourceVersionArgs{
/// 							SourceIdentifier: pulumi.String("kiyezlaophakaslamcsxpkzggoj"),
/// 							SourceVersion:    pulumi.String("zy"),
/// 						},
/// 					},
/// 					SecondarySources: awsconnector.ProjectSourceArray{
/// 						&awsconnector.ProjectSourceArgs{
/// 							Auth: &awsconnector.SourceAuthArgs{
/// 								Resource: pulumi.String("oyfwquyzyjklbxlyjyddpmhmjgsgk"),
/// 								Type: &awsconnector.SourceAuthTypeEnumValueArgs{
/// 									Value: pulumi.String(awsconnector.SourceAuthTypeCODECONNECTIONS),
/// 								},
/// 							},
/// 							BuildStatusConfig: &awsconnector.BuildStatusConfigArgs{
/// 								Context:   pulumi.String("zoghbponrxfhugrjzdheibkada"),
/// 								TargetUrl: pulumi.String("ooonrchy"),
/// 							},
/// 							Buildspec:     pulumi.String("xxcoigvstisdhlfkfiblrgqhbtoqd"),
/// 							GitCloneDepth: pulumi.Int(9),
/// 							GitSubmodulesConfig: &awsconnector.GitSubmodulesConfigArgs{
/// 								FetchSubmodules: pulumi.Bool(true),
/// 							},
/// 							InsecureSsl:       pulumi.Bool(true),
/// 							Location:          pulumi.String("owijjqkiwwegfcrynqcypho"),
/// 							ReportBuildStatus: pulumi.Bool(true),
/// 							SourceIdentifier:  pulumi.String("lnhelescdeif"),
/// 							Type: &awsconnector.SourceTypeEnumValueArgs{
/// 								Value: pulumi.String("BITBUCKET"),
/// 							},
/// 						},
/// 					},
/// 					ServiceRole: pulumi.String("pydzdifzkz"),
/// 					Source: &awsconnector.ProjectSourceArgs{
/// 						Auth: &awsconnector.SourceAuthArgs{
/// 							Resource: pulumi.String("oyfwquyzyjklbxlyjyddpmhmjgsgk"),
/// 							Type: &awsconnector.SourceAuthTypeEnumValueArgs{
/// 								Value: pulumi.String(awsconnector.SourceAuthTypeCODECONNECTIONS),
/// 							},
/// 						},
/// 						BuildStatusConfig: &awsconnector.BuildStatusConfigArgs{
/// 							Context:   pulumi.String("zoghbponrxfhugrjzdheibkada"),
/// 							TargetUrl: pulumi.String("ooonrchy"),
/// 						},
/// 						Buildspec:     pulumi.String("xxcoigvstisdhlfkfiblrgqhbtoqd"),
/// 						GitCloneDepth: pulumi.Int(9),
/// 						GitSubmodulesConfig: &awsconnector.GitSubmodulesConfigArgs{
/// 							FetchSubmodules: pulumi.Bool(true),
/// 						},
/// 						InsecureSsl:       pulumi.Bool(true),
/// 						Location:          pulumi.String("owijjqkiwwegfcrynqcypho"),
/// 						ReportBuildStatus: pulumi.Bool(true),
/// 						SourceIdentifier:  pulumi.String("lnhelescdeif"),
/// 						Type: &awsconnector.SourceTypeEnumValueArgs{
/// 							Value: pulumi.String("BITBUCKET"),
/// 						},
/// 					},
/// 					SourceVersion: pulumi.String("idpngofzedxghp"),
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("jcnahvslmrynzn"),
/// 							Value: pulumi.String("iqwximmqwgsjlwdgv"),
/// 						},
/// 					},
/// 					TimeoutInMinutes: pulumi.Int(7),
/// 					VpcConfig: &awsconnector.VpcConfigArgs{
/// 						SecurityGroupIds: pulumi.StringArray{
/// 							pulumi.String("gcsqntkatjbigzj"),
/// 						},
/// 					},
/// 					Webhook: &awsconnector.WebhookArgs{
/// 						BranchFilter: pulumi.String("fpfnqs"),
/// 						BuildType: &awsconnector.WebhookBuildTypeEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.WebhookBuildTypeBUILD),
/// 						},
/// 						FilterGroups: awsconnector.FilterGroupArray{
/// 							&awsconnector.FilterGroupArgs{
/// 								WebhookFilter: &awsconnector.WebhookFilterArgs{
/// 									ExcludeMatchedPattern: pulumi.Bool(true),
/// 									Pattern:               pulumi.String("ozqghxeblvksllu"),
/// 									Type: &awsconnector.WebhookFilterTypeEnumValueArgs{
/// 										Value: pulumi.String(awsconnector.WebhookFilterType_ACTOR_ACCOUNT_ID),
/// 									},
/// 								},
/// 							},
/// 						},
/// 						LastModifiedSecret: pulumi.String("2024-10-08T03:48:48.574Z"),
/// 						PayloadUrl:         pulumi.String("wzalmmzopccsfbgwhxjneakxazu"),
/// 						Secret:             pulumi.String("mvic"),
/// 						Url:                pulumi.String("lwkywiwhmmdrirvajnxo"),
/// 					},
/// 				},
/// 				AwsRegion:       pulumi.String("rakioiwqsjhpjqekyjft"),
/// 				AwsSourceSchema: pulumi.String("ujnztglujzqehsvvd"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key9822": pulumi.String("ryzmieviyiycjaaenwj"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("azzcclgcodhtl"),
/// 				PublicCloudResourceName:         pulumi.String("tzylnhhjwtzngucgrkvklav"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgcodeBuildProject"),
/// 			Tags: pulumi.StringMap{
/// 				"key4761": pulumi.String("sranhogw"),
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
/// import com.pulumi.azurenative.awsconnector.CodeBuildProject;
/// import com.pulumi.azurenative.awsconnector.CodeBuildProjectArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.CodeBuildProjectPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsCodeBuildProjectPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ProjectArtifactsArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.BucketOwnerAccessEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ArtifactNamespaceEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ArtifactPackagingEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ArtifactsTypeEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ProjectBadgeArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ProjectBuildBatchConfigArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.BatchReportModeTypeEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.BatchRestrictionsArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ProjectCacheArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.CacheTypeEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ProjectEnvironmentArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ComputeTypeEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ProjectFleetArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ImagePullCredentialsTypeEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.RegistryCredentialArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.CredentialProviderTypeEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.EnvironmentTypeEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.LogsConfigArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.CloudWatchLogsConfigArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.LogsConfigStatusTypeEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.S3LogsConfigArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ProjectVisibilityTypeEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ProjectSourceArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.SourceAuthArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.SourceAuthTypeEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.BuildStatusConfigArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.GitSubmodulesConfigArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.SourceTypeEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.VpcConfigArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.WebhookArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.WebhookBuildTypeEnumValueArgs;
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
///         var codeBuildProject = new CodeBuildProject("codeBuildProject", CodeBuildProjectArgs.builder()
///             .location("fpjpnhlms")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(CodeBuildProjectPropertiesArgs.builder()
///                 .arn("ae")
///                 .awsAccountId("caiac")
///                 .awsProperties(AwsCodeBuildProjectPropertiesArgs.builder()
///                     .arn("wwhfeljvmnwnqcgxusgnvoq")
///                     .artifacts(ProjectArtifactsArgs.builder()
///                         .artifactIdentifier("hcfdqzwleorpe")
///                         .bucketOwnerAccess(BucketOwnerAccessEnumValueArgs.builder()
///                             .value("FULL")
///                             .build())
///                         .encryptionDisabled(true)
///                         .location("zvhsfl")
///                         .name("dsqyinskfvabyktgjbszny")
///                         .namespaceType(ArtifactNamespaceEnumValueArgs.builder()
///                             .value("BUILD_ID")
///                             .build())
///                         .overrideArtifactName(true)
///                         .packaging(ArtifactPackagingEnumValueArgs.builder()
///                             .value("NONE")
///                             .build())
///                         .path("zbsfhzkoet")
///                         .type(ArtifactsTypeEnumValueArgs.builder()
///                             .value("CODEPIPELINE")
///                             .build())
///                         .build())
///                     .badge(ProjectBadgeArgs.builder()
///                         .badgeEnabled(true)
///                         .badgeRequestUrl("ulpdsdbgtwm")
///                         .build())
///                     .buildBatchConfig(ProjectBuildBatchConfigArgs.builder()
///                         .batchReportMode(BatchReportModeTypeEnumValueArgs.builder()
///                             .value("REPORT_AGGREGATED_BATCH")
///                             .build())
///                         .combineArtifacts(true)
///                         .restrictions(BatchRestrictionsArgs.builder()
///                             .computeTypesAllowed("ievoltoldfrhkpv")
///                             .maximumBuildsAllowed(15)
///                             .build())
///                         .serviceRole("lceqjutffrykpuzjxvijbzpames")
///                         .timeoutInMins(3)
///                         .build())
///                     .cache(ProjectCacheArgs.builder()
///                         .location("wgmqyjzlxsazecszvdkfr")
///                         .modes("LOCAL_CUSTOM_CACHE")
///                         .type(CacheTypeEnumValueArgs.builder()
///                             .value("LOCAL")
///                             .build())
///                         .build())
///                     .concurrentBuildLimit(19)
///                     .created("2024-10-08T03:48:48.570Z")
///                     .description("adnfxoh")
///                     .encryptionKey("upseoicsvrwjjachlewnltupswc")
///                     .environment(ProjectEnvironmentArgs.builder()
///                         .certificate("olzbdlydjqzkzlflzxcdjjjv")
///                         .computeType(ComputeTypeEnumValueArgs.builder()
///                             .value("BUILD_GENERAL1_2XLARGE")
///                             .build())
///                         .environmentVariables(EnvironmentVariableArgs.builder()
///                             .name("bmzlnmjzuxrxeemxfutykrlvemt")
///                             .type(EnvironmentVariableTypeEnumValueArgs.builder()
///                                 .value("PARAMETER_STORE")
///                                 .build())
///                             .value("eakfsmirkkwnizotyqqgmgjthn")
///                             .build())
///                         .fleet(ProjectFleetArgs.builder()
///                             .fleetArn("brslcsjgupcpeistg")
///                             .build())
///                         .image("kkmioknmuhxurahmnjg")
///                         .imagePullCredentialsType(ImagePullCredentialsTypeEnumValueArgs.builder()
///                             .value("CODEBUILD")
///                             .build())
///                         .privilegedMode(true)
///                         .registryCredential(RegistryCredentialArgs.builder()
///                             .credential("rpnzfjdjuamclquyzquwicenfpefx")
///                             .credentialProvider(CredentialProviderTypeEnumValueArgs.builder()
///                                 .value("SECRETS_MANAGER")
///                                 .build())
///                             .build())
///                         .type(EnvironmentTypeEnumValueArgs.builder()
///                             .value("ARM_CONTAINER")
///                             .build())
///                         .build())
///                     .fileSystemLocations(ProjectFileSystemLocationArgs.builder()
///                         .identifier("tdquc")
///                         .location("yeaotrzuhjtdtbfrlpvmlmaoqyioin")
///                         .mountOptions("tocdlorjekugjotphpxuyebjj")
///                         .mountPoint("fctmorvlmplsmeqvmavw")
///                         .type(FileSystemTypeEnumValueArgs.builder()
///                             .value("EFS")
///                             .build())
///                         .build())
///                     .lastModified("2024-10-08T03:48:48.571Z")
///                     .logsConfig(LogsConfigArgs.builder()
///                         .cloudWatchLogs(CloudWatchLogsConfigArgs.builder()
///                             .groupName("t")
///                             .status(LogsConfigStatusTypeEnumValueArgs.builder()
///                                 .value("DISABLED")
///                                 .build())
///                             .streamName("rrqzbaaicbiblat")
///                             .build())
///                         .s3Logs(S3LogsConfigArgs.builder()
///                             .bucketOwnerAccess(BucketOwnerAccessEnumValueArgs.builder()
///                                 .value("FULL")
///                                 .build())
///                             .encryptionDisabled(true)
///                             .location("zuepwokmlymlvsvzjawzxe")
///                             .status(LogsConfigStatusTypeEnumValueArgs.builder()
///                                 .value("DISABLED")
///                                 .build())
///                             .build())
///                         .build())
///                     .name("budzhvktdvhxxy")
///                     .projectVisibility(ProjectVisibilityTypeEnumValueArgs.builder()
///                         .value("PRIVATE")
///                         .build())
///                     .publicProjectAlias("vstmzamjxtasdipcehcuwvfef")
///                     .queuedTimeoutInMinutes(30)
///                     .resourceAccessRole("st")
///                     .secondaryArtifacts(ProjectArtifactsArgs.builder()
///                         .artifactIdentifier("hcfdqzwleorpe")
///                         .bucketOwnerAccess(BucketOwnerAccessEnumValueArgs.builder()
///                             .value("FULL")
///                             .build())
///                         .encryptionDisabled(true)
///                         .location("zvhsfl")
///                         .name("dsqyinskfvabyktgjbszny")
///                         .namespaceType(ArtifactNamespaceEnumValueArgs.builder()
///                             .value("BUILD_ID")
///                             .build())
///                         .overrideArtifactName(true)
///                         .packaging(ArtifactPackagingEnumValueArgs.builder()
///                             .value("NONE")
///                             .build())
///                         .path("zbsfhzkoet")
///                         .type(ArtifactsTypeEnumValueArgs.builder()
///                             .value("CODEPIPELINE")
///                             .build())
///                         .build())
///                     .secondarySourceVersions(ProjectSourceVersionArgs.builder()
///                         .sourceIdentifier("kiyezlaophakaslamcsxpkzggoj")
///                         .sourceVersion("zy")
///                         .build())
///                     .secondarySources(ProjectSourceArgs.builder()
///                         .auth(SourceAuthArgs.builder()
///                             .resource("oyfwquyzyjklbxlyjyddpmhmjgsgk")
///                             .type(SourceAuthTypeEnumValueArgs.builder()
///                                 .value("CODECONNECTIONS")
///                                 .build())
///                             .build())
///                         .buildStatusConfig(BuildStatusConfigArgs.builder()
///                             .context("zoghbponrxfhugrjzdheibkada")
///                             .targetUrl("ooonrchy")
///                             .build())
///                         .buildspec("xxcoigvstisdhlfkfiblrgqhbtoqd")
///                         .gitCloneDepth(9)
///                         .gitSubmodulesConfig(GitSubmodulesConfigArgs.builder()
///                             .fetchSubmodules(true)
///                             .build())
///                         .insecureSsl(true)
///                         .location("owijjqkiwwegfcrynqcypho")
///                         .reportBuildStatus(true)
///                         .sourceIdentifier("lnhelescdeif")
///                         .type(SourceTypeEnumValueArgs.builder()
///                             .value("BITBUCKET")
///                             .build())
///                         .build())
///                     .serviceRole("pydzdifzkz")
///                     .source(ProjectSourceArgs.builder()
///                         .auth(SourceAuthArgs.builder()
///                             .resource("oyfwquyzyjklbxlyjyddpmhmjgsgk")
///                             .type(SourceAuthTypeEnumValueArgs.builder()
///                                 .value("CODECONNECTIONS")
///                                 .build())
///                             .build())
///                         .buildStatusConfig(BuildStatusConfigArgs.builder()
///                             .context("zoghbponrxfhugrjzdheibkada")
///                             .targetUrl("ooonrchy")
///                             .build())
///                         .buildspec("xxcoigvstisdhlfkfiblrgqhbtoqd")
///                         .gitCloneDepth(9)
///                         .gitSubmodulesConfig(GitSubmodulesConfigArgs.builder()
///                             .fetchSubmodules(true)
///                             .build())
///                         .insecureSsl(true)
///                         .location("owijjqkiwwegfcrynqcypho")
///                         .reportBuildStatus(true)
///                         .sourceIdentifier("lnhelescdeif")
///                         .type(SourceTypeEnumValueArgs.builder()
///                             .value("BITBUCKET")
///                             .build())
///                         .build())
///                     .sourceVersion("idpngofzedxghp")
///                     .tags(TagArgs.builder()
///                         .key("jcnahvslmrynzn")
///                         .value("iqwximmqwgsjlwdgv")
///                         .build())
///                     .timeoutInMinutes(7)
///                     .vpcConfig(VpcConfigArgs.builder()
///                         .securityGroupIds("gcsqntkatjbigzj")
///                         .build())
///                     .webhook(WebhookArgs.builder()
///                         .branchFilter("fpfnqs")
///                         .buildType(WebhookBuildTypeEnumValueArgs.builder()
///                             .value("BUILD")
///                             .build())
///                         .filterGroups(FilterGroupArgs.builder()
///                             .webhookFilter(WebhookFilterArgs.builder()
///                                 .excludeMatchedPattern(true)
///                                 .pattern("ozqghxeblvksllu")
///                                 .type(WebhookFilterTypeEnumValueArgs.builder()
///                                     .value("ACTOR_ACCOUNT_ID")
///                                     .build())
///                                 .build())
///                             .build())
///                         .lastModifiedSecret("2024-10-08T03:48:48.574Z")
///                         .payloadUrl("wzalmmzopccsfbgwhxjneakxazu")
///                         .secret("mvic")
///                         .url("lwkywiwhmmdrirvajnxo")
///                         .build())
///                     .build())
///                 .awsRegion("rakioiwqsjhpjqekyjft")
///                 .awsSourceSchema("ujnztglujzqehsvvd")
///                 .awsTags(Map.of("key9822", "ryzmieviyiycjaaenwj"))
///                 .publicCloudConnectorsResourceId("azzcclgcodhtl")
///                 .publicCloudResourceName("tzylnhhjwtzngucgrkvklav")
///                 .build())
///             .resourceGroupName("rgcodeBuildProject")
///             .tags(Map.of("key4761", "sranhogw"))
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
/// const codeBuildProject = new azure_native.awsconnector.CodeBuildProject("codeBuildProject", {
///     location: "fpjpnhlms",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "ae",
///         awsAccountId: "caiac",
///         awsProperties: {
///             arn: "wwhfeljvmnwnqcgxusgnvoq",
///             artifacts: {
///                 artifactIdentifier: "hcfdqzwleorpe",
///                 bucketOwnerAccess: {
///                     value: azure_native.awsconnector.BucketOwnerAccess.FULL,
///                 },
///                 encryptionDisabled: true,
///                 location: "zvhsfl",
///                 name: "dsqyinskfvabyktgjbszny",
///                 namespaceType: {
///                     value: azure_native.awsconnector.ArtifactNamespace.BUILD_ID,
///                 },
///                 overrideArtifactName: true,
///                 packaging: {
///                     value: azure_native.awsconnector.ArtifactPackaging.NONE,
///                 },
///                 path: "zbsfhzkoet",
///                 type: {
///                     value: azure_native.awsconnector.ArtifactsType.CODEPIPELINE,
///                 },
///             },
///             badge: {
///                 badgeEnabled: true,
///                 badgeRequestUrl: "ulpdsdbgtwm",
///             },
///             buildBatchConfig: {
///                 batchReportMode: {
///                     value: azure_native.awsconnector.BatchReportModeType.REPORT_AGGREGATED_BATCH,
///                 },
///                 combineArtifacts: true,
///                 restrictions: {
///                     computeTypesAllowed: ["ievoltoldfrhkpv"],
///                     maximumBuildsAllowed: 15,
///                 },
///                 serviceRole: "lceqjutffrykpuzjxvijbzpames",
///                 timeoutInMins: 3,
///             },
///             cache: {
///                 location: "wgmqyjzlxsazecszvdkfr",
///                 modes: [azure_native.awsconnector.CacheMode.LOCAL_CUSTOM_CACHE],
///                 type: {
///                     value: azure_native.awsconnector.CacheType.LOCAL,
///                 },
///             },
///             concurrentBuildLimit: 19,
///             created: "2024-10-08T03:48:48.570Z",
///             description: "adnfxoh",
///             encryptionKey: "upseoicsvrwjjachlewnltupswc",
///             environment: {
///                 certificate: "olzbdlydjqzkzlflzxcdjjjv",
///                 computeType: {
///                     value: azure_native.awsconnector.ComputeType.BUILD_GENERAL1_2XLARGE,
///                 },
///                 environmentVariables: [{
///                     name: "bmzlnmjzuxrxeemxfutykrlvemt",
///                     type: {
///                         value: azure_native.awsconnector.EnvironmentVariableType.PARAMETER_STORE,
///                     },
///                     value: "eakfsmirkkwnizotyqqgmgjthn",
///                 }],
///                 fleet: {
///                     fleetArn: "brslcsjgupcpeistg",
///                 },
///                 image: "kkmioknmuhxurahmnjg",
///                 imagePullCredentialsType: {
///                     value: azure_native.awsconnector.ImagePullCredentialsType.CODEBUILD,
///                 },
///                 privilegedMode: true,
///                 registryCredential: {
///                     credential: "rpnzfjdjuamclquyzquwicenfpefx",
///                     credentialProvider: {
///                         value: azure_native.awsconnector.CredentialProviderType.SECRETS_MANAGER,
///                     },
///                 },
///                 type: {
///                     value: azure_native.awsconnector.EnvironmentType.ARM_CONTAINER,
///                 },
///             },
///             fileSystemLocations: [{
///                 identifier: "tdquc",
///                 location: "yeaotrzuhjtdtbfrlpvmlmaoqyioin",
///                 mountOptions: "tocdlorjekugjotphpxuyebjj",
///                 mountPoint: "fctmorvlmplsmeqvmavw",
///                 type: {
///                     value: azure_native.awsconnector.FileSystemType.EFS,
///                 },
///             }],
///             lastModified: "2024-10-08T03:48:48.571Z",
///             logsConfig: {
///                 cloudWatchLogs: {
///                     groupName: "t",
///                     status: {
///                         value: azure_native.awsconnector.LogsConfigStatusType.DISABLED,
///                     },
///                     streamName: "rrqzbaaicbiblat",
///                 },
///                 s3Logs: {
///                     bucketOwnerAccess: {
///                         value: azure_native.awsconnector.BucketOwnerAccess.FULL,
///                     },
///                     encryptionDisabled: true,
///                     location: "zuepwokmlymlvsvzjawzxe",
///                     status: {
///                         value: azure_native.awsconnector.LogsConfigStatusType.DISABLED,
///                     },
///                 },
///             },
///             name: "budzhvktdvhxxy",
///             projectVisibility: {
///                 value: azure_native.awsconnector.ProjectVisibilityType.PRIVATE,
///             },
///             publicProjectAlias: "vstmzamjxtasdipcehcuwvfef",
///             queuedTimeoutInMinutes: 30,
///             resourceAccessRole: "st",
///             secondaryArtifacts: [{
///                 artifactIdentifier: "hcfdqzwleorpe",
///                 bucketOwnerAccess: {
///                     value: azure_native.awsconnector.BucketOwnerAccess.FULL,
///                 },
///                 encryptionDisabled: true,
///                 location: "zvhsfl",
///                 name: "dsqyinskfvabyktgjbszny",
///                 namespaceType: {
///                     value: azure_native.awsconnector.ArtifactNamespace.BUILD_ID,
///                 },
///                 overrideArtifactName: true,
///                 packaging: {
///                     value: azure_native.awsconnector.ArtifactPackaging.NONE,
///                 },
///                 path: "zbsfhzkoet",
///                 type: {
///                     value: azure_native.awsconnector.ArtifactsType.CODEPIPELINE,
///                 },
///             }],
///             secondarySourceVersions: [{
///                 sourceIdentifier: "kiyezlaophakaslamcsxpkzggoj",
///                 sourceVersion: "zy",
///             }],
///             secondarySources: [{
///                 auth: {
///                     resource: "oyfwquyzyjklbxlyjyddpmhmjgsgk",
///                     type: {
///                         value: azure_native.awsconnector.SourceAuthType.CODECONNECTIONS,
///                     },
///                 },
///                 buildStatusConfig: {
///                     context: "zoghbponrxfhugrjzdheibkada",
///                     targetUrl: "ooonrchy",
///                 },
///                 buildspec: "xxcoigvstisdhlfkfiblrgqhbtoqd",
///                 gitCloneDepth: 9,
///                 gitSubmodulesConfig: {
///                     fetchSubmodules: true,
///                 },
///                 insecureSsl: true,
///                 location: "owijjqkiwwegfcrynqcypho",
///                 reportBuildStatus: true,
///                 sourceIdentifier: "lnhelescdeif",
///                 type: {
///                     value: "BITBUCKET",
///                 },
///             }],
///             serviceRole: "pydzdifzkz",
///             source: {
///                 auth: {
///                     resource: "oyfwquyzyjklbxlyjyddpmhmjgsgk",
///                     type: {
///                         value: azure_native.awsconnector.SourceAuthType.CODECONNECTIONS,
///                     },
///                 },
///                 buildStatusConfig: {
///                     context: "zoghbponrxfhugrjzdheibkada",
///                     targetUrl: "ooonrchy",
///                 },
///                 buildspec: "xxcoigvstisdhlfkfiblrgqhbtoqd",
///                 gitCloneDepth: 9,
///                 gitSubmodulesConfig: {
///                     fetchSubmodules: true,
///                 },
///                 insecureSsl: true,
///                 location: "owijjqkiwwegfcrynqcypho",
///                 reportBuildStatus: true,
///                 sourceIdentifier: "lnhelescdeif",
///                 type: {
///                     value: "BITBUCKET",
///                 },
///             },
///             sourceVersion: "idpngofzedxghp",
///             tags: [{
///                 key: "jcnahvslmrynzn",
///                 value: "iqwximmqwgsjlwdgv",
///             }],
///             timeoutInMinutes: 7,
///             vpcConfig: {
///                 securityGroupIds: ["gcsqntkatjbigzj"],
///             },
///             webhook: {
///                 branchFilter: "fpfnqs",
///                 buildType: {
///                     value: azure_native.awsconnector.WebhookBuildType.BUILD,
///                 },
///                 filterGroups: [{
///                     webhookFilter: {
///                         excludeMatchedPattern: true,
///                         pattern: "ozqghxeblvksllu",
///                         type: {
///                             value: azure_native.awsconnector.WebhookFilterType.ACTOR_ACCOUNT_ID,
///                         },
///                     },
///                 }],
///                 lastModifiedSecret: "2024-10-08T03:48:48.574Z",
///                 payloadUrl: "wzalmmzopccsfbgwhxjneakxazu",
///                 secret: "mvic",
///                 url: "lwkywiwhmmdrirvajnxo",
///             },
///         },
///         awsRegion: "rakioiwqsjhpjqekyjft",
///         awsSourceSchema: "ujnztglujzqehsvvd",
///         awsTags: {
///             key9822: "ryzmieviyiycjaaenwj",
///         },
///         publicCloudConnectorsResourceId: "azzcclgcodhtl",
///         publicCloudResourceName: "tzylnhhjwtzngucgrkvklav",
///     },
///     resourceGroupName: "rgcodeBuildProject",
///     tags: {
///         key4761: "sranhogw",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// code_build_project = azure_native.awsconnector.CodeBuildProject("codeBuildProject",
///     location="fpjpnhlms",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "ae",
///         "aws_account_id": "caiac",
///         "aws_properties": {
///             "arn": "wwhfeljvmnwnqcgxusgnvoq",
///             "artifacts": {
///                 "artifact_identifier": "hcfdqzwleorpe",
///                 "bucket_owner_access": {
///                     "value": azure_native.awsconnector.BucketOwnerAccess.FULL,
///                 },
///                 "encryption_disabled": True,
///                 "location": "zvhsfl",
///                 "name": "dsqyinskfvabyktgjbszny",
///                 "namespace_type": {
///                     "value": azure_native.awsconnector.ArtifactNamespace.BUIL_D_ID,
///                 },
///                 "override_artifact_name": True,
///                 "packaging": {
///                     "value": azure_native.awsconnector.ArtifactPackaging.NONE,
///                 },
///                 "path": "zbsfhzkoet",
///                 "type": {
///                     "value": azure_native.awsconnector.ArtifactsType.CODEPIPELINE,
///                 },
///             },
///             "badge": {
///                 "badge_enabled": True,
///                 "badge_request_url": "ulpdsdbgtwm",
///             },
///             "build_batch_config": {
///                 "batch_report_mode": {
///                     "value": azure_native.awsconnector.BatchReportModeType.REPOR_T_AGGREGATE_D_BATCH,
///                 },
///                 "combine_artifacts": True,
///                 "restrictions": {
///                     "compute_types_allowed": ["ievoltoldfrhkpv"],
///                     "maximum_builds_allowed": 15,
///                 },
///                 "service_role": "lceqjutffrykpuzjxvijbzpames",
///                 "timeout_in_mins": 3,
///             },
///             "cache": {
///                 "location": "wgmqyjzlxsazecszvdkfr",
///                 "modes": [azure_native.awsconnector.CacheMode.LOCA_L_CUSTO_M_CACHE],
///                 "type": {
///                     "value": azure_native.awsconnector.CacheType.LOCAL,
///                 },
///             },
///             "concurrent_build_limit": 19,
///             "created": "2024-10-08T03:48:48.570Z",
///             "description": "adnfxoh",
///             "encryption_key": "upseoicsvrwjjachlewnltupswc",
///             "environment": {
///                 "certificate": "olzbdlydjqzkzlflzxcdjjjv",
///                 "compute_type": {
///                     "value": azure_native.awsconnector.ComputeType.BUIL_D_GENERAL1_2_XLARGE,
///                 },
///                 "environment_variables": [{
///                     "name": "bmzlnmjzuxrxeemxfutykrlvemt",
///                     "type": {
///                         "value": azure_native.awsconnector.EnvironmentVariableType.PARAMETE_R_STORE,
///                     },
///                     "value": "eakfsmirkkwnizotyqqgmgjthn",
///                 }],
///                 "fleet": {
///                     "fleet_arn": "brslcsjgupcpeistg",
///                 },
///                 "image": "kkmioknmuhxurahmnjg",
///                 "image_pull_credentials_type": {
///                     "value": azure_native.awsconnector.ImagePullCredentialsType.CODEBUILD,
///                 },
///                 "privileged_mode": True,
///                 "registry_credential": {
///                     "credential": "rpnzfjdjuamclquyzquwicenfpefx",
///                     "credential_provider": {
///                         "value": azure_native.awsconnector.CredentialProviderType.SECRET_S_MANAGER,
///                     },
///                 },
///                 "type": {
///                     "value": azure_native.awsconnector.EnvironmentType.AR_M_CONTAINER,
///                 },
///             },
///             "file_system_locations": [{
///                 "identifier": "tdquc",
///                 "location": "yeaotrzuhjtdtbfrlpvmlmaoqyioin",
///                 "mount_options": "tocdlorjekugjotphpxuyebjj",
///                 "mount_point": "fctmorvlmplsmeqvmavw",
///                 "type": {
///                     "value": azure_native.awsconnector.FileSystemType.EFS,
///                 },
///             }],
///             "last_modified": "2024-10-08T03:48:48.571Z",
///             "logs_config": {
///                 "cloud_watch_logs": {
///                     "group_name": "t",
///                     "status": {
///                         "value": azure_native.awsconnector.LogsConfigStatusType.DISABLED,
///                     },
///                     "stream_name": "rrqzbaaicbiblat",
///                 },
///                 "s3_logs": {
///                     "bucket_owner_access": {
///                         "value": azure_native.awsconnector.BucketOwnerAccess.FULL,
///                     },
///                     "encryption_disabled": True,
///                     "location": "zuepwokmlymlvsvzjawzxe",
///                     "status": {
///                         "value": azure_native.awsconnector.LogsConfigStatusType.DISABLED,
///                     },
///                 },
///             },
///             "name": "budzhvktdvhxxy",
///             "project_visibility": {
///                 "value": azure_native.awsconnector.ProjectVisibilityType.PRIVATE,
///             },
///             "public_project_alias": "vstmzamjxtasdipcehcuwvfef",
///             "queued_timeout_in_minutes": 30,
///             "resource_access_role": "st",
///             "secondary_artifacts": [{
///                 "artifact_identifier": "hcfdqzwleorpe",
///                 "bucket_owner_access": {
///                     "value": azure_native.awsconnector.BucketOwnerAccess.FULL,
///                 },
///                 "encryption_disabled": True,
///                 "location": "zvhsfl",
///                 "name": "dsqyinskfvabyktgjbszny",
///                 "namespace_type": {
///                     "value": azure_native.awsconnector.ArtifactNamespace.BUIL_D_ID,
///                 },
///                 "override_artifact_name": True,
///                 "packaging": {
///                     "value": azure_native.awsconnector.ArtifactPackaging.NONE,
///                 },
///                 "path": "zbsfhzkoet",
///                 "type": {
///                     "value": azure_native.awsconnector.ArtifactsType.CODEPIPELINE,
///                 },
///             }],
///             "secondary_source_versions": [{
///                 "source_identifier": "kiyezlaophakaslamcsxpkzggoj",
///                 "source_version": "zy",
///             }],
///             "secondary_sources": [{
///                 "auth": {
///                     "resource": "oyfwquyzyjklbxlyjyddpmhmjgsgk",
///                     "type": {
///                         "value": azure_native.awsconnector.SourceAuthType.CODECONNECTIONS,
///                     },
///                 },
///                 "build_status_config": {
///                     "context": "zoghbponrxfhugrjzdheibkada",
///                     "target_url": "ooonrchy",
///                 },
///                 "buildspec": "xxcoigvstisdhlfkfiblrgqhbtoqd",
///                 "git_clone_depth": 9,
///                 "git_submodules_config": {
///                     "fetch_submodules": True,
///                 },
///                 "insecure_ssl": True,
///                 "location": "owijjqkiwwegfcrynqcypho",
///                 "report_build_status": True,
///                 "source_identifier": "lnhelescdeif",
///                 "type": {
///                     "value": "BITBUCKET",
///                 },
///             }],
///             "service_role": "pydzdifzkz",
///             "source": {
///                 "auth": {
///                     "resource": "oyfwquyzyjklbxlyjyddpmhmjgsgk",
///                     "type": {
///                         "value": azure_native.awsconnector.SourceAuthType.CODECONNECTIONS,
///                     },
///                 },
///                 "build_status_config": {
///                     "context": "zoghbponrxfhugrjzdheibkada",
///                     "target_url": "ooonrchy",
///                 },
///                 "buildspec": "xxcoigvstisdhlfkfiblrgqhbtoqd",
///                 "git_clone_depth": 9,
///                 "git_submodules_config": {
///                     "fetch_submodules": True,
///                 },
///                 "insecure_ssl": True,
///                 "location": "owijjqkiwwegfcrynqcypho",
///                 "report_build_status": True,
///                 "source_identifier": "lnhelescdeif",
///                 "type": {
///                     "value": "BITBUCKET",
///                 },
///             },
///             "source_version": "idpngofzedxghp",
///             "tags": [{
///                 "key": "jcnahvslmrynzn",
///                 "value": "iqwximmqwgsjlwdgv",
///             }],
///             "timeout_in_minutes": 7,
///             "vpc_config": {
///                 "security_group_ids": ["gcsqntkatjbigzj"],
///             },
///             "webhook": {
///                 "branch_filter": "fpfnqs",
///                 "build_type": {
///                     "value": azure_native.awsconnector.WebhookBuildType.BUILD,
///                 },
///                 "filter_groups": [{
///                     "webhook_filter": {
///                         "exclude_matched_pattern": True,
///                         "pattern": "ozqghxeblvksllu",
///                         "type": {
///                             "value": azure_native.awsconnector.WebhookFilterType.ACTO_R_ACCOUN_T_ID,
///                         },
///                     },
///                 }],
///                 "last_modified_secret": "2024-10-08T03:48:48.574Z",
///                 "payload_url": "wzalmmzopccsfbgwhxjneakxazu",
///                 "secret": "mvic",
///                 "url": "lwkywiwhmmdrirvajnxo",
///             },
///         },
///         "aws_region": "rakioiwqsjhpjqekyjft",
///         "aws_source_schema": "ujnztglujzqehsvvd",
///         "aws_tags": {
///             "key9822": "ryzmieviyiycjaaenwj",
///         },
///         "public_cloud_connectors_resource_id": "azzcclgcodhtl",
///         "public_cloud_resource_name": "tzylnhhjwtzngucgrkvklav",
///     },
///     resource_group_name="rgcodeBuildProject",
///     tags={
///         "key4761": "sranhogw",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   codeBuildProject:
///     type: azure-native:awsconnector:CodeBuildProject
///     properties:
///       location: fpjpnhlms
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: ae
///         awsAccountId: caiac
///         awsProperties:
///           arn: wwhfeljvmnwnqcgxusgnvoq
///           artifacts:
///             artifactIdentifier: hcfdqzwleorpe
///             bucketOwnerAccess:
///               value: FULL
///             encryptionDisabled: true
///             location: zvhsfl
///             name: dsqyinskfvabyktgjbszny
///             namespaceType:
///               value: BUILD_ID
///             overrideArtifactName: true
///             packaging:
///               value: NONE
///             path: zbsfhzkoet
///             type:
///               value: CODEPIPELINE
///           badge:
///             badgeEnabled: true
///             badgeRequestUrl: ulpdsdbgtwm
///           buildBatchConfig:
///             batchReportMode:
///               value: REPORT_AGGREGATED_BATCH
///             combineArtifacts: true
///             restrictions:
///               computeTypesAllowed:
///                 - ievoltoldfrhkpv
///               maximumBuildsAllowed: 15
///             serviceRole: lceqjutffrykpuzjxvijbzpames
///             timeoutInMins: 3
///           cache:
///             location: wgmqyjzlxsazecszvdkfr
///             modes:
///               - LOCAL_CUSTOM_CACHE
///             type:
///               value: LOCAL
///           concurrentBuildLimit: 19
///           created: 2024-10-08T03:48:48.570Z
///           description: adnfxoh
///           encryptionKey: upseoicsvrwjjachlewnltupswc
///           environment:
///             certificate: olzbdlydjqzkzlflzxcdjjjv
///             computeType:
///               value: BUILD_GENERAL1_2XLARGE
///             environmentVariables:
///               - name: bmzlnmjzuxrxeemxfutykrlvemt
///                 type:
///                   value: PARAMETER_STORE
///                 value: eakfsmirkkwnizotyqqgmgjthn
///             fleet:
///               fleetArn: brslcsjgupcpeistg
///             image: kkmioknmuhxurahmnjg
///             imagePullCredentialsType:
///               value: CODEBUILD
///             privilegedMode: true
///             registryCredential:
///               credential: rpnzfjdjuamclquyzquwicenfpefx
///               credentialProvider:
///                 value: SECRETS_MANAGER
///             type:
///               value: ARM_CONTAINER
///           fileSystemLocations:
///             - identifier: tdquc
///               location: yeaotrzuhjtdtbfrlpvmlmaoqyioin
///               mountOptions: tocdlorjekugjotphpxuyebjj
///               mountPoint: fctmorvlmplsmeqvmavw
///               type:
///                 value: EFS
///           lastModified: 2024-10-08T03:48:48.571Z
///           logsConfig:
///             cloudWatchLogs:
///               groupName: t
///               status:
///                 value: DISABLED
///               streamName: rrqzbaaicbiblat
///             s3Logs:
///               bucketOwnerAccess:
///                 value: FULL
///               encryptionDisabled: true
///               location: zuepwokmlymlvsvzjawzxe
///               status:
///                 value: DISABLED
///           name: budzhvktdvhxxy
///           projectVisibility:
///             value: PRIVATE
///           publicProjectAlias: vstmzamjxtasdipcehcuwvfef
///           queuedTimeoutInMinutes: 30
///           resourceAccessRole: st
///           secondaryArtifacts:
///             - artifactIdentifier: hcfdqzwleorpe
///               bucketOwnerAccess:
///                 value: FULL
///               encryptionDisabled: true
///               location: zvhsfl
///               name: dsqyinskfvabyktgjbszny
///               namespaceType:
///                 value: BUILD_ID
///               overrideArtifactName: true
///               packaging:
///                 value: NONE
///               path: zbsfhzkoet
///               type:
///                 value: CODEPIPELINE
///           secondarySourceVersions:
///             - sourceIdentifier: kiyezlaophakaslamcsxpkzggoj
///               sourceVersion: zy
///           secondarySources:
///             - auth:
///                 resource: oyfwquyzyjklbxlyjyddpmhmjgsgk
///                 type:
///                   value: CODECONNECTIONS
///               buildStatusConfig:
///                 context: zoghbponrxfhugrjzdheibkada
///                 targetUrl: ooonrchy
///               buildspec: xxcoigvstisdhlfkfiblrgqhbtoqd
///               gitCloneDepth: 9
///               gitSubmodulesConfig:
///                 fetchSubmodules: true
///               insecureSsl: true
///               location: owijjqkiwwegfcrynqcypho
///               reportBuildStatus: true
///               sourceIdentifier: lnhelescdeif
///               type:
///                 value: BITBUCKET
///           serviceRole: pydzdifzkz
///           source:
///             auth:
///               resource: oyfwquyzyjklbxlyjyddpmhmjgsgk
///               type:
///                 value: CODECONNECTIONS
///             buildStatusConfig:
///               context: zoghbponrxfhugrjzdheibkada
///               targetUrl: ooonrchy
///             buildspec: xxcoigvstisdhlfkfiblrgqhbtoqd
///             gitCloneDepth: 9
///             gitSubmodulesConfig:
///               fetchSubmodules: true
///             insecureSsl: true
///             location: owijjqkiwwegfcrynqcypho
///             reportBuildStatus: true
///             sourceIdentifier: lnhelescdeif
///             type:
///               value: BITBUCKET
///           sourceVersion: idpngofzedxghp
///           tags:
///             - key: jcnahvslmrynzn
///               value: iqwximmqwgsjlwdgv
///           timeoutInMinutes: 7
///           vpcConfig:
///             securityGroupIds:
///               - gcsqntkatjbigzj
///           webhook:
///             branchFilter: fpfnqs
///             buildType:
///               value: BUILD
///             filterGroups:
///               - webhookFilter:
///                   excludeMatchedPattern: true
///                   pattern: ozqghxeblvksllu
///                   type:
///                     value: ACTOR_ACCOUNT_ID
///             lastModifiedSecret: 2024-10-08T03:48:48.574Z
///             payloadUrl: wzalmmzopccsfbgwhxjneakxazu
///             secret: mvic
///             url: lwkywiwhmmdrirvajnxo
///         awsRegion: rakioiwqsjhpjqekyjft
///         awsSourceSchema: ujnztglujzqehsvvd
///         awsTags:
///           key9822: ryzmieviyiycjaaenwj
///         publicCloudConnectorsResourceId: azzcclgcodhtl
///         publicCloudResourceName: tzylnhhjwtzngucgrkvklav
///       resourceGroupName: rgcodeBuildProject
///       tags:
///         key4761: sranhogw
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
/// $ pulumi import azure-native:awsconnector:CodeBuildProject vxycsdfuepsiumuwerkphioygel /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/codeBuildProjects/{name}
/// ```
class CodeBuildProject extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<CodeBuildProjectPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [CodeBuildProject].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CodeBuildProject]. {@macro pulumi_awsconnector_code_build_project_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CodeBuildProject(
    String name, {
    CodeBuildProjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:awsconnector:CodeBuildProject',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<CodeBuildProjectPropertiesResponse>(
      'properties',
    );
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
