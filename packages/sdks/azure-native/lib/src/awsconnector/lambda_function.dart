import 'package:pulumi/pulumi.dart' as pulumi;
import 'lambda_function_args.dart';
import 'lambda_function_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### LambdaFunctions_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var lambdaFunction = new AzureNative.AwsConnector.LambdaFunction("lambdaFunction", new()
///     {
///         Location = "pipiphijlvjolohsfpmym",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.LambdaFunctionPropertiesArgs
///         {
///             Arn = "wksjbkhocigdctupfiheutlmloir",
///             AwsAccountId = "jhircduhthqiztp",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsLambdaFunctionPropertiesArgs
///             {
///                 Architectures = new[]
///                 {
///                     AzureNative.AwsConnector.Architectures.Arm64,
///                 },
///                 Arn = "stgpeog",
///                 Code = new AzureNative.AwsConnector.Inputs.CodeArgs
///                 {
///                     ImageUri = "mumnivivaclgokdozsqygicoz",
///                     S3Bucket = "iqxcjanbelhti",
///                     S3Key = "c",
///                     S3ObjectVersion = "ixwkaazvqllwohxjwjtivxy",
///                     ZipFile = "cashtgbjnebsmmyijmbuerim",
///                 },
///                 CodeSigningConfigArn = "qutlevvo",
///                 DeadLetterConfig = new AzureNative.AwsConnector.Inputs.DeadLetterConfigArgs
///                 {
///                     TargetArn = "yfmmazkodblnhgalpsnx",
///                 },
///                 Description = "yvdoxaozwjzszqnt",
///                 Environment = new AzureNative.AwsConnector.Inputs.EnvironmentArgs
///                 {
///                     Variables =
///                     {
///                         { "key999", "knzbtalbwzajrfxietghzjqrewh" },
///                     },
///                 },
///                 EphemeralStorage = new AzureNative.AwsConnector.Inputs.EphemeralStorageArgs
///                 {
///                     Size = 21,
///                 },
///                 FileSystemConfigs = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.FileSystemConfigArgs
///                     {
///                         Arn = "lgaajhamrjhiw",
///                         LocalMountPath = "ctjvtoy",
///                     },
///                 },
///                 FunctionName = "fkv",
///                 Handler = "penuepcuxqvyjozfpxcxkujpeiib",
///                 ImageConfig = new AzureNative.AwsConnector.Inputs.ImageConfigArgs
///                 {
///                     Command = new[]
///                     {
///                         "ypqwmituqujgxriqqe",
///                     },
///                     EntryPoint = new[]
///                     {
///                         "vfnpuvvmmxttsaolsfocwhrhvaycbd",
///                     },
///                     WorkingDirectory = "gnpkvohajxgtqcweloswwofgev",
///                 },
///                 KmsKeyArn = "nheruevkdkuk",
///                 Layers = new[]
///                 {
///                     "bwczxgdagr",
///                 },
///                 LoggingConfig = new AzureNative.AwsConnector.Inputs.LoggingConfigArgs
///                 {
///                     ApplicationLogLevel = AzureNative.AwsConnector.LoggingConfigApplicationLogLevel.DEBUG,
///                     LogFormat = AzureNative.AwsConnector.LoggingConfigLogFormat.JSON,
///                     LogGroup = "zrsmuig",
///                     SystemLogLevel = AzureNative.AwsConnector.LoggingConfigSystemLogLevel.DEBUG,
///                 },
///                 MemorySize = 21,
///                 PackageType = AzureNative.AwsConnector.PackageType.Image,
///                 ReservedConcurrentExecutions = 28,
///                 Role = "tuoem",
///                 Runtime = "srxhlxqifkewuflrxzjauzdqqkoatl",
///                 RuntimeManagementConfig = new AzureNative.AwsConnector.Inputs.RuntimeManagementConfigArgs
///                 {
///                     RuntimeVersionArn = "lqpuhdoaicnpryovplogsolsacxbk",
///                     UpdateRuntimeOn = AzureNative.AwsConnector.RuntimeManagementConfigUpdateRuntimeOn.Auto,
///                 },
///                 SnapStart = new AzureNative.AwsConnector.Inputs.SnapStartArgs
///                 {
///                     ApplyOn = AzureNative.AwsConnector.SnapStartApplyOn.None,
///                 },
///                 SnapStartResponse = new AzureNative.AwsConnector.Inputs.SnapStartResponseArgs
///                 {
///                     ApplyOn = AzureNative.AwsConnector.SnapStartResponseApplyOn.None,
///                     OptimizationStatus = AzureNative.AwsConnector.SnapStartResponseOptimizationStatus.Off,
///                 },
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "hweqw",
///                         Value = "qctpnmjttccpi",
///                     },
///                 },
///                 Timeout = 28,
///                 TracingConfig = new AzureNative.AwsConnector.Inputs.TracingConfigArgs
///                 {
///                     Mode = AzureNative.AwsConnector.TracingConfigMode.Active,
///                 },
///                 VpcConfig = new AzureNative.AwsConnector.Inputs.VpcConfigArgs
///                 {
///                     Ipv6AllowedForDualStack = true,
///                     SecurityGroupIds = new[]
///                     {
///                         "ovxbygrfhfhno",
///                     },
///                     SubnetIds = new[]
///                     {
///                         "inqatpkusunkgccviubzkijhrgslec",
///                     },
///                 },
///             },
///             AwsRegion = "nat",
///             AwsSourceSchema = "joyfyjrulh",
///             AwsTags =
///             {
///                 { "key4553", "qdudhyzvebfiewg" },
///             },
///             PublicCloudConnectorsResourceId = "izvoucedmqtsihfjz",
///             PublicCloudResourceName = "odptbducplnqaqoeleidffnyqfcipg",
///         },
///         ResourceGroupName = "rglambdaFunction",
///         Tags =
///         {
///             { "key9520", "pnmk" },
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
/// 		_, err := awsconnector.NewLambdaFunction(ctx, "lambdaFunction", &awsconnector.LambdaFunctionArgs{
/// 			Location: pulumi.String("pipiphijlvjolohsfpmym"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.LambdaFunctionPropertiesArgs{
/// 				Arn:          pulumi.String("wksjbkhocigdctupfiheutlmloir"),
/// 				AwsAccountId: pulumi.String("jhircduhthqiztp"),
/// 				AwsProperties: &awsconnector.AwsLambdaFunctionPropertiesArgs{
/// 					Architectures: pulumi.StringArray{
/// 						pulumi.String(awsconnector.ArchitecturesArm64),
/// 					},
/// 					Arn: pulumi.String("stgpeog"),
/// 					Code: &awsconnector.CodeArgs{
/// 						ImageUri:        pulumi.String("mumnivivaclgokdozsqygicoz"),
/// 						S3Bucket:        pulumi.String("iqxcjanbelhti"),
/// 						S3Key:           pulumi.String("c"),
/// 						S3ObjectVersion: pulumi.String("ixwkaazvqllwohxjwjtivxy"),
/// 						ZipFile:         pulumi.String("cashtgbjnebsmmyijmbuerim"),
/// 					},
/// 					CodeSigningConfigArn: pulumi.String("qutlevvo"),
/// 					DeadLetterConfig: &awsconnector.DeadLetterConfigArgs{
/// 						TargetArn: pulumi.String("yfmmazkodblnhgalpsnx"),
/// 					},
/// 					Description: pulumi.String("yvdoxaozwjzszqnt"),
/// 					Environment: &awsconnector.EnvironmentArgs{
/// 						Variables: pulumi.StringMap{
/// 							"key999": pulumi.String("knzbtalbwzajrfxietghzjqrewh"),
/// 						},
/// 					},
/// 					EphemeralStorage: &awsconnector.EphemeralStorageArgs{
/// 						Size: pulumi.Int(21),
/// 					},
/// 					FileSystemConfigs: awsconnector.FileSystemConfigArray{
/// 						&awsconnector.FileSystemConfigArgs{
/// 							Arn:            pulumi.String("lgaajhamrjhiw"),
/// 							LocalMountPath: pulumi.String("ctjvtoy"),
/// 						},
/// 					},
/// 					FunctionName: pulumi.String("fkv"),
/// 					Handler:      pulumi.String("penuepcuxqvyjozfpxcxkujpeiib"),
/// 					ImageConfig: &awsconnector.ImageConfigArgs{
/// 						Command: pulumi.StringArray{
/// 							pulumi.String("ypqwmituqujgxriqqe"),
/// 						},
/// 						EntryPoint: pulumi.StringArray{
/// 							pulumi.String("vfnpuvvmmxttsaolsfocwhrhvaycbd"),
/// 						},
/// 						WorkingDirectory: pulumi.String("gnpkvohajxgtqcweloswwofgev"),
/// 					},
/// 					KmsKeyArn: pulumi.String("nheruevkdkuk"),
/// 					Layers: pulumi.StringArray{
/// 						pulumi.String("bwczxgdagr"),
/// 					},
/// 					LoggingConfig: &awsconnector.LoggingConfigArgs{
/// 						ApplicationLogLevel: pulumi.String(awsconnector.LoggingConfigApplicationLogLevelDEBUG),
/// 						LogFormat:           pulumi.String(awsconnector.LoggingConfigLogFormatJSON),
/// 						LogGroup:            pulumi.String("zrsmuig"),
/// 						SystemLogLevel:      pulumi.String(awsconnector.LoggingConfigSystemLogLevelDEBUG),
/// 					},
/// 					MemorySize:                   pulumi.Int(21),
/// 					PackageType:                  pulumi.String(awsconnector.PackageTypeImage),
/// 					ReservedConcurrentExecutions: pulumi.Int(28),
/// 					Role:                         pulumi.String("tuoem"),
/// 					Runtime:                      pulumi.String("srxhlxqifkewuflrxzjauzdqqkoatl"),
/// 					RuntimeManagementConfig: &awsconnector.RuntimeManagementConfigArgs{
/// 						RuntimeVersionArn: pulumi.String("lqpuhdoaicnpryovplogsolsacxbk"),
/// 						UpdateRuntimeOn:   pulumi.String(awsconnector.RuntimeManagementConfigUpdateRuntimeOnAuto),
/// 					},
/// 					SnapStart: &awsconnector.SnapStartArgs{
/// 						ApplyOn: pulumi.String(awsconnector.SnapStartApplyOnNone),
/// 					},
/// 					SnapStartResponse: &awsconnector.SnapStartResponseArgs{
/// 						ApplyOn:            pulumi.String(awsconnector.SnapStartResponseApplyOnNone),
/// 						OptimizationStatus: pulumi.String(awsconnector.SnapStartResponseOptimizationStatusOff),
/// 					},
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("hweqw"),
/// 							Value: pulumi.String("qctpnmjttccpi"),
/// 						},
/// 					},
/// 					Timeout: pulumi.Int(28),
/// 					TracingConfig: &awsconnector.TracingConfigArgs{
/// 						Mode: pulumi.String(awsconnector.TracingConfigModeActive),
/// 					},
/// 					VpcConfig: &awsconnector.VpcConfigArgs{
/// 						Ipv6AllowedForDualStack: pulumi.Bool(true),
/// 						SecurityGroupIds: pulumi.StringArray{
/// 							pulumi.String("ovxbygrfhfhno"),
/// 						},
/// 						SubnetIds: pulumi.StringArray{
/// 							pulumi.String("inqatpkusunkgccviubzkijhrgslec"),
/// 						},
/// 					},
/// 				},
/// 				AwsRegion:       pulumi.String("nat"),
/// 				AwsSourceSchema: pulumi.String("joyfyjrulh"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key4553": pulumi.String("qdudhyzvebfiewg"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("izvoucedmqtsihfjz"),
/// 				PublicCloudResourceName:         pulumi.String("odptbducplnqaqoeleidffnyqfcipg"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rglambdaFunction"),
/// 			Tags: pulumi.StringMap{
/// 				"key9520": pulumi.String("pnmk"),
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
/// resource "azure-native_awsconnector_lambdafunction" "lambdaFunction" {
///   location = "pipiphijlvjolohsfpmym"
///   name     = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"
///   properties = {
///     arn            = "wksjbkhocigdctupfiheutlmloir"
///     aws_account_id = "jhircduhthqiztp"
///     aws_properties = {
///       architectures = ["arm64"]
///       arn           = "stgpeog"
///       code = {
///         image_uri         = "mumnivivaclgokdozsqygicoz"
///         s3_bucket         = "iqxcjanbelhti"
///         s3_key            = "c"
///         s3_object_version = "ixwkaazvqllwohxjwjtivxy"
///         zip_file          = "cashtgbjnebsmmyijmbuerim"
///       }
///       code_signing_config_arn = "qutlevvo"
///       dead_letter_config = {
///         target_arn = "yfmmazkodblnhgalpsnx"
///       }
///       description = "yvdoxaozwjzszqnt"
///       environment = {
///         variables = {
///           "key999" = "knzbtalbwzajrfxietghzjqrewh"
///         }
///       }
///       ephemeral_storage = {
///         size = 21
///       }
///       file_system_configs = [{
///         "arn"            = "lgaajhamrjhiw"
///         "localMountPath" = "ctjvtoy"
///       }]
///       function_name = "fkv"
///       handler       = "penuepcuxqvyjozfpxcxkujpeiib"
///       image_config = {
///         command           = ["ypqwmituqujgxriqqe"]
///         entry_point       = ["vfnpuvvmmxttsaolsfocwhrhvaycbd"]
///         working_directory = "gnpkvohajxgtqcweloswwofgev"
///       }
///       kms_key_arn = "nheruevkdkuk"
///       layers      = ["bwczxgdagr"]
///       logging_config = {
///         application_log_level = "DEBUG"
///         log_format            = "JSON"
///         log_group             = "zrsmuig"
///         system_log_level      = "DEBUG"
///       }
///       memory_size                    = 21
///       package_type                   = "Image"
///       reserved_concurrent_executions = 28
///       role                           = "tuoem"
///       runtime                        = "srxhlxqifkewuflrxzjauzdqqkoatl"
///       runtime_management_config = {
///         runtime_version_arn = "lqpuhdoaicnpryovplogsolsacxbk"
///         update_runtime_on   = "Auto"
///       }
///       snap_start = {
///         apply_on = "None"
///       }
///       snap_start_response = {
///         apply_on            = "None"
///         optimization_status = "Off"
///       }
///       tags = [{
///         "key"   = "hweqw"
///         "value" = "qctpnmjttccpi"
///       }]
///       timeout = 28
///       tracing_config = {
///         mode = "Active"
///       }
///       vpc_config = {
///         ipv6_allowed_for_dual_stack = true
///         security_group_ids          = ["ovxbygrfhfhno"]
///         subnet_ids                  = ["inqatpkusunkgccviubzkijhrgslec"]
///       }
///     }
///     aws_region        = "nat"
///     aws_source_schema = "joyfyjrulh"
///     aws_tags = {
///       "key4553" = "qdudhyzvebfiewg"
///     }
///     public_cloud_connectors_resource_id = "izvoucedmqtsihfjz"
///     public_cloud_resource_name          = "odptbducplnqaqoeleidffnyqfcipg"
///   }
///   resource_group_name = "rglambdaFunction"
///   tags = {
///     "key9520" = "pnmk"
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
/// import com.pulumi.azurenative.awsconnector.LambdaFunction;
/// import com.pulumi.azurenative.awsconnector.LambdaFunctionArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.LambdaFunctionPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsLambdaFunctionPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.CodeArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.DeadLetterConfigArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.EnvironmentArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.EphemeralStorageArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ImageConfigArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.LoggingConfigArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.RuntimeManagementConfigArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.SnapStartArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.SnapStartResponseArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.TracingConfigArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.VpcConfigArgs;
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
///         var lambdaFunction = new LambdaFunction("lambdaFunction", LambdaFunctionArgs.builder()
///             .location("pipiphijlvjolohsfpmym")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(LambdaFunctionPropertiesArgs.builder()
///                 .arn("wksjbkhocigdctupfiheutlmloir")
///                 .awsAccountId("jhircduhthqiztp")
///                 .awsProperties(AwsLambdaFunctionPropertiesArgs.builder()
///                     .architectures("arm64")
///                     .arn("stgpeog")
///                     .code(CodeArgs.builder()
///                         .imageUri("mumnivivaclgokdozsqygicoz")
///                         .s3Bucket("iqxcjanbelhti")
///                         .s3Key("c")
///                         .s3ObjectVersion("ixwkaazvqllwohxjwjtivxy")
///                         .zipFile("cashtgbjnebsmmyijmbuerim")
///                         .build())
///                     .codeSigningConfigArn("qutlevvo")
///                     .deadLetterConfig(DeadLetterConfigArgs.builder()
///                         .targetArn("yfmmazkodblnhgalpsnx")
///                         .build())
///                     .description("yvdoxaozwjzszqnt")
///                     .environment(EnvironmentArgs.builder()
///                         .variables(Map.of("key999", "knzbtalbwzajrfxietghzjqrewh"))
///                         .build())
///                     .ephemeralStorage(EphemeralStorageArgs.builder()
///                         .size(21)
///                         .build())
///                     .fileSystemConfigs(FileSystemConfigArgs.builder()
///                         .arn("lgaajhamrjhiw")
///                         .localMountPath("ctjvtoy")
///                         .build())
///                     .functionName("fkv")
///                     .handler("penuepcuxqvyjozfpxcxkujpeiib")
///                     .imageConfig(ImageConfigArgs.builder()
///                         .command("ypqwmituqujgxriqqe")
///                         .entryPoint("vfnpuvvmmxttsaolsfocwhrhvaycbd")
///                         .workingDirectory("gnpkvohajxgtqcweloswwofgev")
///                         .build())
///                     .kmsKeyArn("nheruevkdkuk")
///                     .layers("bwczxgdagr")
///                     .loggingConfig(LoggingConfigArgs.builder()
///                         .applicationLogLevel("DEBUG")
///                         .logFormat("JSON")
///                         .logGroup("zrsmuig")
///                         .systemLogLevel("DEBUG")
///                         .build())
///                     .memorySize(21)
///                     .packageType("Image")
///                     .reservedConcurrentExecutions(28)
///                     .role("tuoem")
///                     .runtime("srxhlxqifkewuflrxzjauzdqqkoatl")
///                     .runtimeManagementConfig(RuntimeManagementConfigArgs.builder()
///                         .runtimeVersionArn("lqpuhdoaicnpryovplogsolsacxbk")
///                         .updateRuntimeOn("Auto")
///                         .build())
///                     .snapStart(SnapStartArgs.builder()
///                         .applyOn("None")
///                         .build())
///                     .snapStartResponse(SnapStartResponseArgs.builder()
///                         .applyOn("None")
///                         .optimizationStatus("Off")
///                         .build())
///                     .tags(TagArgs.builder()
///                         .key("hweqw")
///                         .value("qctpnmjttccpi")
///                         .build())
///                     .timeout(28)
///                     .tracingConfig(TracingConfigArgs.builder()
///                         .mode("Active")
///                         .build())
///                     .vpcConfig(VpcConfigArgs.builder()
///                         .ipv6AllowedForDualStack(true)
///                         .securityGroupIds("ovxbygrfhfhno")
///                         .subnetIds("inqatpkusunkgccviubzkijhrgslec")
///                         .build())
///                     .build())
///                 .awsRegion("nat")
///                 .awsSourceSchema("joyfyjrulh")
///                 .awsTags(Map.of("key4553", "qdudhyzvebfiewg"))
///                 .publicCloudConnectorsResourceId("izvoucedmqtsihfjz")
///                 .publicCloudResourceName("odptbducplnqaqoeleidffnyqfcipg")
///                 .build())
///             .resourceGroupName("rglambdaFunction")
///             .tags(Map.of("key9520", "pnmk"))
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
/// const lambdaFunction = new azure_native.awsconnector.LambdaFunction("lambdaFunction", {
///     location: "pipiphijlvjolohsfpmym",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "wksjbkhocigdctupfiheutlmloir",
///         awsAccountId: "jhircduhthqiztp",
///         awsProperties: {
///             architectures: [azure_native.awsconnector.Architectures.Arm64],
///             arn: "stgpeog",
///             code: {
///                 imageUri: "mumnivivaclgokdozsqygicoz",
///                 s3Bucket: "iqxcjanbelhti",
///                 s3Key: "c",
///                 s3ObjectVersion: "ixwkaazvqllwohxjwjtivxy",
///                 zipFile: "cashtgbjnebsmmyijmbuerim",
///             },
///             codeSigningConfigArn: "qutlevvo",
///             deadLetterConfig: {
///                 targetArn: "yfmmazkodblnhgalpsnx",
///             },
///             description: "yvdoxaozwjzszqnt",
///             environment: {
///                 variables: {
///                     key999: "knzbtalbwzajrfxietghzjqrewh",
///                 },
///             },
///             ephemeralStorage: {
///                 size: 21,
///             },
///             fileSystemConfigs: [{
///                 arn: "lgaajhamrjhiw",
///                 localMountPath: "ctjvtoy",
///             }],
///             functionName: "fkv",
///             handler: "penuepcuxqvyjozfpxcxkujpeiib",
///             imageConfig: {
///                 command: ["ypqwmituqujgxriqqe"],
///                 entryPoint: ["vfnpuvvmmxttsaolsfocwhrhvaycbd"],
///                 workingDirectory: "gnpkvohajxgtqcweloswwofgev",
///             },
///             kmsKeyArn: "nheruevkdkuk",
///             layers: ["bwczxgdagr"],
///             loggingConfig: {
///                 applicationLogLevel: azure_native.awsconnector.LoggingConfigApplicationLogLevel.DEBUG,
///                 logFormat: azure_native.awsconnector.LoggingConfigLogFormat.JSON,
///                 logGroup: "zrsmuig",
///                 systemLogLevel: azure_native.awsconnector.LoggingConfigSystemLogLevel.DEBUG,
///             },
///             memorySize: 21,
///             packageType: azure_native.awsconnector.PackageType.Image,
///             reservedConcurrentExecutions: 28,
///             role: "tuoem",
///             runtime: "srxhlxqifkewuflrxzjauzdqqkoatl",
///             runtimeManagementConfig: {
///                 runtimeVersionArn: "lqpuhdoaicnpryovplogsolsacxbk",
///                 updateRuntimeOn: azure_native.awsconnector.RuntimeManagementConfigUpdateRuntimeOn.Auto,
///             },
///             snapStart: {
///                 applyOn: azure_native.awsconnector.SnapStartApplyOn.None,
///             },
///             snapStartResponse: {
///                 applyOn: azure_native.awsconnector.SnapStartResponseApplyOn.None,
///                 optimizationStatus: azure_native.awsconnector.SnapStartResponseOptimizationStatus.Off,
///             },
///             tags: [{
///                 key: "hweqw",
///                 value: "qctpnmjttccpi",
///             }],
///             timeout: 28,
///             tracingConfig: {
///                 mode: azure_native.awsconnector.TracingConfigMode.Active,
///             },
///             vpcConfig: {
///                 ipv6AllowedForDualStack: true,
///                 securityGroupIds: ["ovxbygrfhfhno"],
///                 subnetIds: ["inqatpkusunkgccviubzkijhrgslec"],
///             },
///         },
///         awsRegion: "nat",
///         awsSourceSchema: "joyfyjrulh",
///         awsTags: {
///             key4553: "qdudhyzvebfiewg",
///         },
///         publicCloudConnectorsResourceId: "izvoucedmqtsihfjz",
///         publicCloudResourceName: "odptbducplnqaqoeleidffnyqfcipg",
///     },
///     resourceGroupName: "rglambdaFunction",
///     tags: {
///         key9520: "pnmk",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// lambda_function = azure_native.awsconnector.LambdaFunction("lambdaFunction",
///     location="pipiphijlvjolohsfpmym",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "wksjbkhocigdctupfiheutlmloir",
///         "aws_account_id": "jhircduhthqiztp",
///         "aws_properties": {
///             "architectures": [azure_native.awsconnector.Architectures.ARM64],
///             "arn": "stgpeog",
///             "code": {
///                 "image_uri": "mumnivivaclgokdozsqygicoz",
///                 "s3_bucket": "iqxcjanbelhti",
///                 "s3_key": "c",
///                 "s3_object_version": "ixwkaazvqllwohxjwjtivxy",
///                 "zip_file": "cashtgbjnebsmmyijmbuerim",
///             },
///             "code_signing_config_arn": "qutlevvo",
///             "dead_letter_config": {
///                 "target_arn": "yfmmazkodblnhgalpsnx",
///             },
///             "description": "yvdoxaozwjzszqnt",
///             "environment": {
///                 "variables": {
///                     "key999": "knzbtalbwzajrfxietghzjqrewh",
///                 },
///             },
///             "ephemeral_storage": {
///                 "size": 21,
///             },
///             "file_system_configs": [{
///                 "arn": "lgaajhamrjhiw",
///                 "local_mount_path": "ctjvtoy",
///             }],
///             "function_name": "fkv",
///             "handler": "penuepcuxqvyjozfpxcxkujpeiib",
///             "image_config": {
///                 "command": ["ypqwmituqujgxriqqe"],
///                 "entry_point": ["vfnpuvvmmxttsaolsfocwhrhvaycbd"],
///                 "working_directory": "gnpkvohajxgtqcweloswwofgev",
///             },
///             "kms_key_arn": "nheruevkdkuk",
///             "layers": ["bwczxgdagr"],
///             "logging_config": {
///                 "application_log_level": azure_native.awsconnector.LoggingConfigApplicationLogLevel.DEBUG,
///                 "log_format": azure_native.awsconnector.LoggingConfigLogFormat.JSON,
///                 "log_group": "zrsmuig",
///                 "system_log_level": azure_native.awsconnector.LoggingConfigSystemLogLevel.DEBUG,
///             },
///             "memory_size": 21,
///             "package_type": azure_native.awsconnector.PackageType.IMAGE,
///             "reserved_concurrent_executions": 28,
///             "role": "tuoem",
///             "runtime": "srxhlxqifkewuflrxzjauzdqqkoatl",
///             "runtime_management_config": {
///                 "runtime_version_arn": "lqpuhdoaicnpryovplogsolsacxbk",
///                 "update_runtime_on": azure_native.awsconnector.RuntimeManagementConfigUpdateRuntimeOn.AUTO,
///             },
///             "snap_start": {
///                 "apply_on": azure_native.awsconnector.SnapStartApplyOn.NONE,
///             },
///             "snap_start_response": {
///                 "apply_on": azure_native.awsconnector.SnapStartResponseApplyOn.NONE,
///                 "optimization_status": azure_native.awsconnector.SnapStartResponseOptimizationStatus.OFF,
///             },
///             "tags": [{
///                 "key": "hweqw",
///                 "value": "qctpnmjttccpi",
///             }],
///             "timeout": 28,
///             "tracing_config": {
///                 "mode": azure_native.awsconnector.TracingConfigMode.ACTIVE,
///             },
///             "vpc_config": {
///                 "ipv6_allowed_for_dual_stack": True,
///                 "security_group_ids": ["ovxbygrfhfhno"],
///                 "subnet_ids": ["inqatpkusunkgccviubzkijhrgslec"],
///             },
///         },
///         "aws_region": "nat",
///         "aws_source_schema": "joyfyjrulh",
///         "aws_tags": {
///             "key4553": "qdudhyzvebfiewg",
///         },
///         "public_cloud_connectors_resource_id": "izvoucedmqtsihfjz",
///         "public_cloud_resource_name": "odptbducplnqaqoeleidffnyqfcipg",
///     },
///     resource_group_name="rglambdaFunction",
///     tags={
///         "key9520": "pnmk",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   lambdaFunction:
///     type: azure-native:awsconnector:LambdaFunction
///     properties:
///       location: pipiphijlvjolohsfpmym
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: wksjbkhocigdctupfiheutlmloir
///         awsAccountId: jhircduhthqiztp
///         awsProperties:
///           architectures:
///             - arm64
///           arn: stgpeog
///           code:
///             imageUri: mumnivivaclgokdozsqygicoz
///             s3Bucket: iqxcjanbelhti
///             s3Key: c
///             s3ObjectVersion: ixwkaazvqllwohxjwjtivxy
///             zipFile: cashtgbjnebsmmyijmbuerim
///           codeSigningConfigArn: qutlevvo
///           deadLetterConfig:
///             targetArn: yfmmazkodblnhgalpsnx
///           description: yvdoxaozwjzszqnt
///           environment:
///             variables:
///               key999: knzbtalbwzajrfxietghzjqrewh
///           ephemeralStorage:
///             size: 21
///           fileSystemConfigs:
///             - arn: lgaajhamrjhiw
///               localMountPath: ctjvtoy
///           functionName: fkv
///           handler: penuepcuxqvyjozfpxcxkujpeiib
///           imageConfig:
///             command:
///               - ypqwmituqujgxriqqe
///             entryPoint:
///               - vfnpuvvmmxttsaolsfocwhrhvaycbd
///             workingDirectory: gnpkvohajxgtqcweloswwofgev
///           kmsKeyArn: nheruevkdkuk
///           layers:
///             - bwczxgdagr
///           loggingConfig:
///             applicationLogLevel: DEBUG
///             logFormat: JSON
///             logGroup: zrsmuig
///             systemLogLevel: DEBUG
///           memorySize: 21
///           packageType: Image
///           reservedConcurrentExecutions: 28
///           role: tuoem
///           runtime: srxhlxqifkewuflrxzjauzdqqkoatl
///           runtimeManagementConfig:
///             runtimeVersionArn: lqpuhdoaicnpryovplogsolsacxbk
///             updateRuntimeOn: Auto
///           snapStart:
///             applyOn: None
///           snapStartResponse:
///             applyOn: None
///             optimizationStatus: Off
///           tags:
///             - key: hweqw
///               value: qctpnmjttccpi
///           timeout: 28
///           tracingConfig:
///             mode: Active
///           vpcConfig:
///             ipv6AllowedForDualStack: true
///             securityGroupIds:
///               - ovxbygrfhfhno
///             subnetIds:
///               - inqatpkusunkgccviubzkijhrgslec
///         awsRegion: nat
///         awsSourceSchema: joyfyjrulh
///         awsTags:
///           key4553: qdudhyzvebfiewg
///         publicCloudConnectorsResourceId: izvoucedmqtsihfjz
///         publicCloudResourceName: odptbducplnqaqoeleidffnyqfcipg
///       resourceGroupName: rglambdaFunction
///       tags:
///         key9520: pnmk
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
/// $ pulumi import azure-native:awsconnector:LambdaFunction qdak /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/lambdaFunctions/{name}
/// ```
class LambdaFunction extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<LambdaFunctionPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [LambdaFunction].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LambdaFunction]. {@macro pulumi_awsconnector_lambda_function_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LambdaFunction(
    String name, {
    LambdaFunctionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:LambdaFunction',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<LambdaFunctionPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LambdaFunctionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [LambdaFunction] resource.
  LambdaFunction.reference(String urn)
    : super(
        'azure-native:awsconnector:LambdaFunction',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<LambdaFunctionPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LambdaFunctionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
