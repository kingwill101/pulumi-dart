import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_gateway_stage_args.dart';
import 'api_gateway_stage_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiGatewayStages_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var apiGatewayStage = new AzureNative.AwsConnector.ApiGatewayStage("apiGatewayStage", new()
///     {
///         Location = "ixsfvcwygoceaaydsgkvubn",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.ApiGatewayStagePropertiesArgs
///         {
///             Arn = "aitrzss",
///             AwsAccountId = "umvnhbnjqbgppgipyiuxvyt",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsApiGatewayStagePropertiesArgs
///             {
///                 AccessLogSetting = new AzureNative.AwsConnector.Inputs.AccessLogSettingArgs
///                 {
///                     DestinationArn = "bjnehkhrjvy",
///                     Format = "jyhhqidjew",
///                 },
///                 CacheClusterEnabled = true,
///                 CacheClusterSize = "tqpsxptkwagykhry",
///                 CanarySetting = new AzureNative.AwsConnector.Inputs.CanarySettingArgs
///                 {
///                     DeploymentId = "jgfflpjviovk",
///                     PercentTraffic = 30,
///                     StageVariableOverrides =
///                     {
///                         { "key989", "zalwrlwgjwqn" },
///                     },
///                     UseStageCache = true,
///                 },
///                 ClientCertificateId = "lcqbeactfdarpess",
///                 DeploymentId = "muwatddsfb",
///                 Description = "dmxblpsncciutbbmfihkloqaxuab",
///                 DocumentationVersion = "fltvrg",
///                 MethodSettings = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.MethodSettingArgs
///                     {
///                         CacheDataEncrypted = true,
///                         CacheTtlInSeconds = 15,
///                         CachingEnabled = true,
///                         DataTraceEnabled = true,
///                         HttpMethod = "wojjxwrlnmnertmfkstofcoekjxd",
///                         LoggingLevel = "cezcwkojlmp",
///                         MetricsEnabled = true,
///                         ResourcePath = "fsaykfuxsfvultpnnpjjbak",
///                         ThrottlingBurstLimit = 3,
///                         ThrottlingRateLimit = 28,
///                     },
///                 },
///                 RestApiId = "cycztypxndrdmstjwi",
///                 StageName = "iukgreicaikhlooycykkql",
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "hnoncuskljmyehkhfaytophcz",
///                         Value = "x",
///                     },
///                 },
///                 TracingEnabled = true,
///                 Variables =
///                 {
///                     { "key3007", "vhgivtbzor" },
///                 },
///             },
///             AwsRegion = "qkjxqupbneeuooyrfnblmwlrpmjsiu",
///             AwsSourceSchema = "ttwdzidmknfow",
///             AwsTags =
///             {
///                 { "key1607", "vmmmhuuxrrjul" },
///             },
///             PublicCloudConnectorsResourceId = "mvvltlx",
///             PublicCloudResourceName = "hxgdpqw",
///         },
///         ResourceGroupName = "rgapiGatewayStage",
///         Tags =
///         {
///             { "key72", "pkvum" },
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
/// 		_, err := awsconnector.NewApiGatewayStage(ctx, "apiGatewayStage", &awsconnector.ApiGatewayStageArgs{
/// 			Location: pulumi.String("ixsfvcwygoceaaydsgkvubn"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.ApiGatewayStagePropertiesArgs{
/// 				Arn:          pulumi.String("aitrzss"),
/// 				AwsAccountId: pulumi.String("umvnhbnjqbgppgipyiuxvyt"),
/// 				AwsProperties: &awsconnector.AwsApiGatewayStagePropertiesArgs{
/// 					AccessLogSetting: &awsconnector.AccessLogSettingArgs{
/// 						DestinationArn: pulumi.String("bjnehkhrjvy"),
/// 						Format:         pulumi.String("jyhhqidjew"),
/// 					},
/// 					CacheClusterEnabled: pulumi.Bool(true),
/// 					CacheClusterSize:    pulumi.String("tqpsxptkwagykhry"),
/// 					CanarySetting: &awsconnector.CanarySettingArgs{
/// 						DeploymentId:   pulumi.String("jgfflpjviovk"),
/// 						PercentTraffic: pulumi.Int(30),
/// 						StageVariableOverrides: pulumi.StringMap{
/// 							"key989": pulumi.String("zalwrlwgjwqn"),
/// 						},
/// 						UseStageCache: pulumi.Bool(true),
/// 					},
/// 					ClientCertificateId:  pulumi.String("lcqbeactfdarpess"),
/// 					DeploymentId:         pulumi.String("muwatddsfb"),
/// 					Description:          pulumi.String("dmxblpsncciutbbmfihkloqaxuab"),
/// 					DocumentationVersion: pulumi.String("fltvrg"),
/// 					MethodSettings: awsconnector.MethodSettingArray{
/// 						&awsconnector.MethodSettingArgs{
/// 							CacheDataEncrypted:   pulumi.Bool(true),
/// 							CacheTtlInSeconds:    pulumi.Int(15),
/// 							CachingEnabled:       pulumi.Bool(true),
/// 							DataTraceEnabled:     pulumi.Bool(true),
/// 							HttpMethod:           pulumi.String("wojjxwrlnmnertmfkstofcoekjxd"),
/// 							LoggingLevel:         pulumi.String("cezcwkojlmp"),
/// 							MetricsEnabled:       pulumi.Bool(true),
/// 							ResourcePath:         pulumi.String("fsaykfuxsfvultpnnpjjbak"),
/// 							ThrottlingBurstLimit: pulumi.Int(3),
/// 							ThrottlingRateLimit:  pulumi.Int(28),
/// 						},
/// 					},
/// 					RestApiId: pulumi.String("cycztypxndrdmstjwi"),
/// 					StageName: pulumi.String("iukgreicaikhlooycykkql"),
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("hnoncuskljmyehkhfaytophcz"),
/// 							Value: pulumi.String("x"),
/// 						},
/// 					},
/// 					TracingEnabled: pulumi.Bool(true),
/// 					Variables: pulumi.StringMap{
/// 						"key3007": pulumi.String("vhgivtbzor"),
/// 					},
/// 				},
/// 				AwsRegion:       pulumi.String("qkjxqupbneeuooyrfnblmwlrpmjsiu"),
/// 				AwsSourceSchema: pulumi.String("ttwdzidmknfow"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key1607": pulumi.String("vmmmhuuxrrjul"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("mvvltlx"),
/// 				PublicCloudResourceName:         pulumi.String("hxgdpqw"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgapiGatewayStage"),
/// 			Tags: pulumi.StringMap{
/// 				"key72": pulumi.String("pkvum"),
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
/// import com.pulumi.azurenative.awsconnector.ApiGatewayStage;
/// import com.pulumi.azurenative.awsconnector.ApiGatewayStageArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ApiGatewayStagePropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsApiGatewayStagePropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AccessLogSettingArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.CanarySettingArgs;
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
///         var apiGatewayStage = new ApiGatewayStage("apiGatewayStage", ApiGatewayStageArgs.builder()
///             .location("ixsfvcwygoceaaydsgkvubn")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(ApiGatewayStagePropertiesArgs.builder()
///                 .arn("aitrzss")
///                 .awsAccountId("umvnhbnjqbgppgipyiuxvyt")
///                 .awsProperties(AwsApiGatewayStagePropertiesArgs.builder()
///                     .accessLogSetting(AccessLogSettingArgs.builder()
///                         .destinationArn("bjnehkhrjvy")
///                         .format("jyhhqidjew")
///                         .build())
///                     .cacheClusterEnabled(true)
///                     .cacheClusterSize("tqpsxptkwagykhry")
///                     .canarySetting(CanarySettingArgs.builder()
///                         .deploymentId("jgfflpjviovk")
///                         .percentTraffic(30)
///                         .stageVariableOverrides(Map.of("key989", "zalwrlwgjwqn"))
///                         .useStageCache(true)
///                         .build())
///                     .clientCertificateId("lcqbeactfdarpess")
///                     .deploymentId("muwatddsfb")
///                     .description("dmxblpsncciutbbmfihkloqaxuab")
///                     .documentationVersion("fltvrg")
///                     .methodSettings(MethodSettingArgs.builder()
///                         .cacheDataEncrypted(true)
///                         .cacheTtlInSeconds(15)
///                         .cachingEnabled(true)
///                         .dataTraceEnabled(true)
///                         .httpMethod("wojjxwrlnmnertmfkstofcoekjxd")
///                         .loggingLevel("cezcwkojlmp")
///                         .metricsEnabled(true)
///                         .resourcePath("fsaykfuxsfvultpnnpjjbak")
///                         .throttlingBurstLimit(3)
///                         .throttlingRateLimit(28)
///                         .build())
///                     .restApiId("cycztypxndrdmstjwi")
///                     .stageName("iukgreicaikhlooycykkql")
///                     .tags(TagArgs.builder()
///                         .key("hnoncuskljmyehkhfaytophcz")
///                         .value("x")
///                         .build())
///                     .tracingEnabled(true)
///                     .variables(Map.of("key3007", "vhgivtbzor"))
///                     .build())
///                 .awsRegion("qkjxqupbneeuooyrfnblmwlrpmjsiu")
///                 .awsSourceSchema("ttwdzidmknfow")
///                 .awsTags(Map.of("key1607", "vmmmhuuxrrjul"))
///                 .publicCloudConnectorsResourceId("mvvltlx")
///                 .publicCloudResourceName("hxgdpqw")
///                 .build())
///             .resourceGroupName("rgapiGatewayStage")
///             .tags(Map.of("key72", "pkvum"))
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
/// const apiGatewayStage = new azure_native.awsconnector.ApiGatewayStage("apiGatewayStage", {
///     location: "ixsfvcwygoceaaydsgkvubn",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "aitrzss",
///         awsAccountId: "umvnhbnjqbgppgipyiuxvyt",
///         awsProperties: {
///             accessLogSetting: {
///                 destinationArn: "bjnehkhrjvy",
///                 format: "jyhhqidjew",
///             },
///             cacheClusterEnabled: true,
///             cacheClusterSize: "tqpsxptkwagykhry",
///             canarySetting: {
///                 deploymentId: "jgfflpjviovk",
///                 percentTraffic: 30,
///                 stageVariableOverrides: {
///                     key989: "zalwrlwgjwqn",
///                 },
///                 useStageCache: true,
///             },
///             clientCertificateId: "lcqbeactfdarpess",
///             deploymentId: "muwatddsfb",
///             description: "dmxblpsncciutbbmfihkloqaxuab",
///             documentationVersion: "fltvrg",
///             methodSettings: [{
///                 cacheDataEncrypted: true,
///                 cacheTtlInSeconds: 15,
///                 cachingEnabled: true,
///                 dataTraceEnabled: true,
///                 httpMethod: "wojjxwrlnmnertmfkstofcoekjxd",
///                 loggingLevel: "cezcwkojlmp",
///                 metricsEnabled: true,
///                 resourcePath: "fsaykfuxsfvultpnnpjjbak",
///                 throttlingBurstLimit: 3,
///                 throttlingRateLimit: 28,
///             }],
///             restApiId: "cycztypxndrdmstjwi",
///             stageName: "iukgreicaikhlooycykkql",
///             tags: [{
///                 key: "hnoncuskljmyehkhfaytophcz",
///                 value: "x",
///             }],
///             tracingEnabled: true,
///             variables: {
///                 key3007: "vhgivtbzor",
///             },
///         },
///         awsRegion: "qkjxqupbneeuooyrfnblmwlrpmjsiu",
///         awsSourceSchema: "ttwdzidmknfow",
///         awsTags: {
///             key1607: "vmmmhuuxrrjul",
///         },
///         publicCloudConnectorsResourceId: "mvvltlx",
///         publicCloudResourceName: "hxgdpqw",
///     },
///     resourceGroupName: "rgapiGatewayStage",
///     tags: {
///         key72: "pkvum",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// api_gateway_stage = azure_native.awsconnector.ApiGatewayStage("apiGatewayStage",
///     location="ixsfvcwygoceaaydsgkvubn",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "aitrzss",
///         "aws_account_id": "umvnhbnjqbgppgipyiuxvyt",
///         "aws_properties": {
///             "access_log_setting": {
///                 "destination_arn": "bjnehkhrjvy",
///                 "format": "jyhhqidjew",
///             },
///             "cache_cluster_enabled": True,
///             "cache_cluster_size": "tqpsxptkwagykhry",
///             "canary_setting": {
///                 "deployment_id": "jgfflpjviovk",
///                 "percent_traffic": 30,
///                 "stage_variable_overrides": {
///                     "key989": "zalwrlwgjwqn",
///                 },
///                 "use_stage_cache": True,
///             },
///             "client_certificate_id": "lcqbeactfdarpess",
///             "deployment_id": "muwatddsfb",
///             "description": "dmxblpsncciutbbmfihkloqaxuab",
///             "documentation_version": "fltvrg",
///             "method_settings": [{
///                 "cache_data_encrypted": True,
///                 "cache_ttl_in_seconds": 15,
///                 "caching_enabled": True,
///                 "data_trace_enabled": True,
///                 "http_method": "wojjxwrlnmnertmfkstofcoekjxd",
///                 "logging_level": "cezcwkojlmp",
///                 "metrics_enabled": True,
///                 "resource_path": "fsaykfuxsfvultpnnpjjbak",
///                 "throttling_burst_limit": 3,
///                 "throttling_rate_limit": 28,
///             }],
///             "rest_api_id": "cycztypxndrdmstjwi",
///             "stage_name": "iukgreicaikhlooycykkql",
///             "tags": [{
///                 "key": "hnoncuskljmyehkhfaytophcz",
///                 "value": "x",
///             }],
///             "tracing_enabled": True,
///             "variables": {
///                 "key3007": "vhgivtbzor",
///             },
///         },
///         "aws_region": "qkjxqupbneeuooyrfnblmwlrpmjsiu",
///         "aws_source_schema": "ttwdzidmknfow",
///         "aws_tags": {
///             "key1607": "vmmmhuuxrrjul",
///         },
///         "public_cloud_connectors_resource_id": "mvvltlx",
///         "public_cloud_resource_name": "hxgdpqw",
///     },
///     resource_group_name="rgapiGatewayStage",
///     tags={
///         "key72": "pkvum",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   apiGatewayStage:
///     type: azure-native:awsconnector:ApiGatewayStage
///     properties:
///       location: ixsfvcwygoceaaydsgkvubn
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: aitrzss
///         awsAccountId: umvnhbnjqbgppgipyiuxvyt
///         awsProperties:
///           accessLogSetting:
///             destinationArn: bjnehkhrjvy
///             format: jyhhqidjew
///           cacheClusterEnabled: true
///           cacheClusterSize: tqpsxptkwagykhry
///           canarySetting:
///             deploymentId: jgfflpjviovk
///             percentTraffic: 30
///             stageVariableOverrides:
///               key989: zalwrlwgjwqn
///             useStageCache: true
///           clientCertificateId: lcqbeactfdarpess
///           deploymentId: muwatddsfb
///           description: dmxblpsncciutbbmfihkloqaxuab
///           documentationVersion: fltvrg
///           methodSettings:
///             - cacheDataEncrypted: true
///               cacheTtlInSeconds: 15
///               cachingEnabled: true
///               dataTraceEnabled: true
///               httpMethod: wojjxwrlnmnertmfkstofcoekjxd
///               loggingLevel: cezcwkojlmp
///               metricsEnabled: true
///               resourcePath: fsaykfuxsfvultpnnpjjbak
///               throttlingBurstLimit: 3
///               throttlingRateLimit: 28
///           restApiId: cycztypxndrdmstjwi
///           stageName: iukgreicaikhlooycykkql
///           tags:
///             - key: hnoncuskljmyehkhfaytophcz
///               value: x
///           tracingEnabled: true
///           variables:
///             key3007: vhgivtbzor
///         awsRegion: qkjxqupbneeuooyrfnblmwlrpmjsiu
///         awsSourceSchema: ttwdzidmknfow
///         awsTags:
///           key1607: vmmmhuuxrrjul
///         publicCloudConnectorsResourceId: mvvltlx
///         publicCloudResourceName: hxgdpqw
///       resourceGroupName: rgapiGatewayStage
///       tags:
///         key72: pkvum
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
/// $ pulumi import azure-native:awsconnector:ApiGatewayStage ldforro /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/apiGatewayStages/{name}
/// ```
class ApiGatewayStage extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<ApiGatewayStagePropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ApiGatewayStage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiGatewayStage]. {@macro pulumi_awsconnector_api_gateway_stage_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiGatewayStage(
    String name, {
    ApiGatewayStageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:awsconnector:ApiGatewayStage',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ApiGatewayStagePropertiesResponse>(
      'properties',
    );
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
