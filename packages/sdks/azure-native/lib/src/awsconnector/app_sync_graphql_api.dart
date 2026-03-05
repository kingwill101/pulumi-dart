import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_sync_graphql_api_args.dart';
import 'app_sync_graphql_api_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### AppSyncGraphqlApis_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var appSyncGraphqlApi = new AzureNative.AwsConnector.AppSyncGraphqlApi("appSyncGraphqlApi", new()
///     {
///         Location = "fgdkdvbltlygm",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.AppSyncGraphqlApiPropertiesArgs
///         {
///             Arn = "yozrofizgppbrqqingfk",
///             AwsAccountId = "cbznxz",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsAppSyncGraphqlApiPropertiesArgs
///             {
///                 AdditionalAuthenticationProviders = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.AdditionalAuthenticationProviderArgs
///                     {
///                         AuthenticationType = new AzureNative.AwsConnector.Inputs.AuthenticationTypeEnumValueArgs
///                         {
///                             Value = AzureNative.AwsConnector.AuthenticationType.AMAZON_COGNITO_USER_POOLS,
///                         },
///                         LambdaAuthorizerConfig = new AzureNative.AwsConnector.Inputs.LambdaAuthorizerConfigArgs
///                         {
///                             AuthorizerResultTtlInSeconds = 30,
///                             AuthorizerUri = "hupypfpuanzvftlniinspu",
///                             IdentityValidationExpression = "hspldtc",
///                         },
///                         OpenIDConnectConfig = new AzureNative.AwsConnector.Inputs.OpenIDConnectConfigArgs
///                         {
///                             AuthTTL = 22,
///                             ClientId = "luiqpcaoupuxlkhifmjmssaujivibq",
///                             IatTTL = 12,
///                             Issuer = "gxglhkdfnvrrtsalksedpcukpk",
///                         },
///                         UserPoolConfig = new AzureNative.AwsConnector.Inputs.CognitoUserPoolConfigArgs
///                         {
///                             AppIdClientRegex = "qpfpcfsunn",
///                             AwsRegion = "nmpxe",
///                             UserPoolId = "jelygyotigqdtvomkxwllisaodzpme",
///                         },
///                     },
///                 },
///                 ApiId = "czvdzpkqmu",
///                 ApiType = new AzureNative.AwsConnector.Inputs.GraphQLApiTypeEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.GraphQLApiType.GRAPHQL,
///                 },
///                 Arn = "oasogwqjupaovgjaimqwyvcevu",
///                 AuthenticationType = new AzureNative.AwsConnector.Inputs.AuthenticationTypeEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.AuthenticationType.AMAZON_COGNITO_USER_POOLS,
///                 },
///                 Dns =
///                 {
///                     { "key7870", "hisezyodgicqjjumufmqumigd" },
///                 },
///                 EnhancedMetricsConfig = new AzureNative.AwsConnector.Inputs.EnhancedMetricsConfigArgs
///                 {
///                     DataSourceLevelMetricsBehavior = new AzureNative.AwsConnector.Inputs.DataSourceLevelMetricsBehaviorEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.DataSourceLevelMetricsBehavior.FULL_REQUEST_DATA_SOURCE_METRICS,
///                     },
///                     OperationLevelMetricsConfig = new AzureNative.AwsConnector.Inputs.OperationLevelMetricsConfigEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.OperationLevelMetricsConfig.DISABLED,
///                     },
///                     ResolverLevelMetricsBehavior = new AzureNative.AwsConnector.Inputs.ResolverLevelMetricsBehaviorEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.ResolverLevelMetricsBehavior.FULL_REQUEST_RESOLVER_METRICS,
///                     },
///                 },
///                 IntrospectionConfig = new AzureNative.AwsConnector.Inputs.GraphQLApiIntrospectionConfigEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.GraphQLApiIntrospectionConfig.DISABLED,
///                 },
///                 LambdaAuthorizerConfig = new AzureNative.AwsConnector.Inputs.LambdaAuthorizerConfigArgs
///                 {
///                     AuthorizerResultTtlInSeconds = 30,
///                     AuthorizerUri = "hupypfpuanzvftlniinspu",
///                     IdentityValidationExpression = "hspldtc",
///                 },
///                 LogConfig = new AzureNative.AwsConnector.Inputs.LogConfigArgs
///                 {
///                     CloudWatchLogsRoleArn = "gsfpxvghd",
///                     ExcludeVerboseContent = true,
///                     FieldLogLevel = new AzureNative.AwsConnector.Inputs.FieldLogLevelEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.FieldLogLevel.ALL,
///                     },
///                 },
///                 MergedApiExecutionRoleArn = "ehtdxecdhgxhmtqhpneaqzgdtivz",
///                 Name = "ahvfu",
///                 OpenIDConnectConfig = new AzureNative.AwsConnector.Inputs.OpenIDConnectConfigArgs
///                 {
///                     AuthTTL = 22,
///                     ClientId = "luiqpcaoupuxlkhifmjmssaujivibq",
///                     IatTTL = 12,
///                     Issuer = "gxglhkdfnvrrtsalksedpcukpk",
///                 },
///                 Owner = "pdudimkqozuoczxvlgmj",
///                 OwnerContact = "qkvw",
///                 QueryDepthLimit = 14,
///                 ResolverCountLimit = 15,
///                 Tags =
///                 {
///                     { "key7170", "zsxndmftgxkxmbkaxswugk" },
///                 },
///                 Uris =
///                 {
///                     { "key6507", "kuadtmwcpmobgsxpxkfgfkd" },
///                 },
///                 UserPoolConfig = new AzureNative.AwsConnector.Inputs.UserPoolConfigArgs
///                 {
///                     AppIdClientRegex = "kjfgmmyyzmsywex",
///                     AwsRegion = "knaq",
///                     DefaultAction = new AzureNative.AwsConnector.Inputs.DefaultActionEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.DefaultAction.ALLOW,
///                     },
///                     UserPoolId = "tbbntrreowxutvnasgmcdupsaxoooz",
///                 },
///                 Visibility = new AzureNative.AwsConnector.Inputs.GraphQLApiVisibilityEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.GraphQLApiVisibility.GLOBAL,
///                 },
///                 WafWebAclArn = "fpy",
///                 XrayEnabled = true,
///             },
///             AwsRegion = "ponyxnfudopabngrux",
///             AwsSourceSchema = "hldvwyk",
///             AwsTags =
///             {
///                 { "key8377", "aajkrvqksnrfkuhdmoh" },
///             },
///             PublicCloudConnectorsResourceId = "ljxfphaevwpkqtymdowsbhw",
///             PublicCloudResourceName = "xqnxjggrhseymoklvqpreiucveuev",
///         },
///         ResourceGroupName = "rgappSyncGraphqlApi",
///         Tags =
///         {
///             { "key1836", "msiwfkilmgweevppndbrh" },
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
/// 		_, err := awsconnector.NewAppSyncGraphqlApi(ctx, "appSyncGraphqlApi", &awsconnector.AppSyncGraphqlApiArgs{
/// 			Location: pulumi.String("fgdkdvbltlygm"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.AppSyncGraphqlApiPropertiesArgs{
/// 				Arn:          pulumi.String("yozrofizgppbrqqingfk"),
/// 				AwsAccountId: pulumi.String("cbznxz"),
/// 				AwsProperties: &awsconnector.AwsAppSyncGraphqlApiPropertiesArgs{
/// 					AdditionalAuthenticationProviders: awsconnector.AdditionalAuthenticationProviderArray{
/// 						&awsconnector.AdditionalAuthenticationProviderArgs{
/// 							AuthenticationType: &awsconnector.AuthenticationTypeEnumValueArgs{
/// 								Value: pulumi.String(awsconnector.AuthenticationType_AMAZON_COGNITO_USER_POOLS),
/// 							},
/// 							LambdaAuthorizerConfig: &awsconnector.LambdaAuthorizerConfigArgs{
/// 								AuthorizerResultTtlInSeconds: pulumi.Int(30),
/// 								AuthorizerUri:                pulumi.String("hupypfpuanzvftlniinspu"),
/// 								IdentityValidationExpression: pulumi.String("hspldtc"),
/// 							},
/// 							OpenIDConnectConfig: &awsconnector.OpenIDConnectConfigArgs{
/// 								AuthTTL:  pulumi.Float64(22),
/// 								ClientId: pulumi.String("luiqpcaoupuxlkhifmjmssaujivibq"),
/// 								IatTTL:   pulumi.Float64(12),
/// 								Issuer:   pulumi.String("gxglhkdfnvrrtsalksedpcukpk"),
/// 							},
/// 							UserPoolConfig: &awsconnector.CognitoUserPoolConfigArgs{
/// 								AppIdClientRegex: pulumi.String("qpfpcfsunn"),
/// 								AwsRegion:        pulumi.String("nmpxe"),
/// 								UserPoolId:       pulumi.String("jelygyotigqdtvomkxwllisaodzpme"),
/// 							},
/// 						},
/// 					},
/// 					ApiId: pulumi.String("czvdzpkqmu"),
/// 					ApiType: &awsconnector.GraphQLApiTypeEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.GraphQLApiTypeGRAPHQL),
/// 					},
/// 					Arn: pulumi.String("oasogwqjupaovgjaimqwyvcevu"),
/// 					AuthenticationType: &awsconnector.AuthenticationTypeEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.AuthenticationType_AMAZON_COGNITO_USER_POOLS),
/// 					},
/// 					Dns: pulumi.StringMap{
/// 						"key7870": pulumi.String("hisezyodgicqjjumufmqumigd"),
/// 					},
/// 					EnhancedMetricsConfig: &awsconnector.EnhancedMetricsConfigArgs{
/// 						DataSourceLevelMetricsBehavior: &awsconnector.DataSourceLevelMetricsBehaviorEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.DataSourceLevelMetricsBehavior_FULL_REQUEST_DATA_SOURCE_METRICS),
/// 						},
/// 						OperationLevelMetricsConfig: &awsconnector.OperationLevelMetricsConfigEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.OperationLevelMetricsConfigDISABLED),
/// 						},
/// 						ResolverLevelMetricsBehavior: &awsconnector.ResolverLevelMetricsBehaviorEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.ResolverLevelMetricsBehavior_FULL_REQUEST_RESOLVER_METRICS),
/// 						},
/// 					},
/// 					IntrospectionConfig: &awsconnector.GraphQLApiIntrospectionConfigEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.GraphQLApiIntrospectionConfigDISABLED),
/// 					},
/// 					LambdaAuthorizerConfig: &awsconnector.LambdaAuthorizerConfigArgs{
/// 						AuthorizerResultTtlInSeconds: pulumi.Int(30),
/// 						AuthorizerUri:                pulumi.String("hupypfpuanzvftlniinspu"),
/// 						IdentityValidationExpression: pulumi.String("hspldtc"),
/// 					},
/// 					LogConfig: &awsconnector.LogConfigArgs{
/// 						CloudWatchLogsRoleArn: pulumi.String("gsfpxvghd"),
/// 						ExcludeVerboseContent: pulumi.Bool(true),
/// 						FieldLogLevel: &awsconnector.FieldLogLevelEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.FieldLogLevelALL),
/// 						},
/// 					},
/// 					MergedApiExecutionRoleArn: pulumi.String("ehtdxecdhgxhmtqhpneaqzgdtivz"),
/// 					Name:                      pulumi.String("ahvfu"),
/// 					OpenIDConnectConfig: &awsconnector.OpenIDConnectConfigArgs{
/// 						AuthTTL:  pulumi.Float64(22),
/// 						ClientId: pulumi.String("luiqpcaoupuxlkhifmjmssaujivibq"),
/// 						IatTTL:   pulumi.Float64(12),
/// 						Issuer:   pulumi.String("gxglhkdfnvrrtsalksedpcukpk"),
/// 					},
/// 					Owner:              pulumi.String("pdudimkqozuoczxvlgmj"),
/// 					OwnerContact:       pulumi.String("qkvw"),
/// 					QueryDepthLimit:    pulumi.Int(14),
/// 					ResolverCountLimit: pulumi.Int(15),
/// 					Tags: pulumi.StringMap{
/// 						"key7170": pulumi.String("zsxndmftgxkxmbkaxswugk"),
/// 					},
/// 					Uris: pulumi.StringMap{
/// 						"key6507": pulumi.String("kuadtmwcpmobgsxpxkfgfkd"),
/// 					},
/// 					UserPoolConfig: &awsconnector.UserPoolConfigArgs{
/// 						AppIdClientRegex: pulumi.String("kjfgmmyyzmsywex"),
/// 						AwsRegion:        pulumi.String("knaq"),
/// 						DefaultAction: &awsconnector.DefaultActionEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.DefaultActionALLOW),
/// 						},
/// 						UserPoolId: pulumi.String("tbbntrreowxutvnasgmcdupsaxoooz"),
/// 					},
/// 					Visibility: &awsconnector.GraphQLApiVisibilityEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.GraphQLApiVisibilityGLOBAL),
/// 					},
/// 					WafWebAclArn: pulumi.String("fpy"),
/// 					XrayEnabled:  pulumi.Bool(true),
/// 				},
/// 				AwsRegion:       pulumi.String("ponyxnfudopabngrux"),
/// 				AwsSourceSchema: pulumi.String("hldvwyk"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key8377": pulumi.String("aajkrvqksnrfkuhdmoh"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("ljxfphaevwpkqtymdowsbhw"),
/// 				PublicCloudResourceName:         pulumi.String("xqnxjggrhseymoklvqpreiucveuev"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgappSyncGraphqlApi"),
/// 			Tags: pulumi.StringMap{
/// 				"key1836": pulumi.String("msiwfkilmgweevppndbrh"),
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
/// import com.pulumi.azurenative.awsconnector.AppSyncGraphqlApi;
/// import com.pulumi.azurenative.awsconnector.AppSyncGraphqlApiArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AppSyncGraphqlApiPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsAppSyncGraphqlApiPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.GraphQLApiTypeEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AuthenticationTypeEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.EnhancedMetricsConfigArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.DataSourceLevelMetricsBehaviorEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.OperationLevelMetricsConfigEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ResolverLevelMetricsBehaviorEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.GraphQLApiIntrospectionConfigEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.LambdaAuthorizerConfigArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.LogConfigArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.FieldLogLevelEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.OpenIDConnectConfigArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.UserPoolConfigArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.DefaultActionEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.GraphQLApiVisibilityEnumValueArgs;
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
///         var appSyncGraphqlApi = new AppSyncGraphqlApi("appSyncGraphqlApi", AppSyncGraphqlApiArgs.builder()
///             .location("fgdkdvbltlygm")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(AppSyncGraphqlApiPropertiesArgs.builder()
///                 .arn("yozrofizgppbrqqingfk")
///                 .awsAccountId("cbznxz")
///                 .awsProperties(AwsAppSyncGraphqlApiPropertiesArgs.builder()
///                     .additionalAuthenticationProviders(AdditionalAuthenticationProviderArgs.builder()
///                         .authenticationType(AuthenticationTypeEnumValueArgs.builder()
///                             .value("AMAZON_COGNITO_USER_POOLS")
///                             .build())
///                         .lambdaAuthorizerConfig(LambdaAuthorizerConfigArgs.builder()
///                             .authorizerResultTtlInSeconds(30)
///                             .authorizerUri("hupypfpuanzvftlniinspu")
///                             .identityValidationExpression("hspldtc")
///                             .build())
///                         .openIDConnectConfig(OpenIDConnectConfigArgs.builder()
///                             .authTTL(22.0)
///                             .clientId("luiqpcaoupuxlkhifmjmssaujivibq")
///                             .iatTTL(12.0)
///                             .issuer("gxglhkdfnvrrtsalksedpcukpk")
///                             .build())
///                         .userPoolConfig(CognitoUserPoolConfigArgs.builder()
///                             .appIdClientRegex("qpfpcfsunn")
///                             .awsRegion("nmpxe")
///                             .userPoolId("jelygyotigqdtvomkxwllisaodzpme")
///                             .build())
///                         .build())
///                     .apiId("czvdzpkqmu")
///                     .apiType(GraphQLApiTypeEnumValueArgs.builder()
///                         .value("GRAPHQL")
///                         .build())
///                     .arn("oasogwqjupaovgjaimqwyvcevu")
///                     .authenticationType(AuthenticationTypeEnumValueArgs.builder()
///                         .value("AMAZON_COGNITO_USER_POOLS")
///                         .build())
///                     .dns(Map.of("key7870", "hisezyodgicqjjumufmqumigd"))
///                     .enhancedMetricsConfig(EnhancedMetricsConfigArgs.builder()
///                         .dataSourceLevelMetricsBehavior(DataSourceLevelMetricsBehaviorEnumValueArgs.builder()
///                             .value("FULL_REQUEST_DATA_SOURCE_METRICS")
///                             .build())
///                         .operationLevelMetricsConfig(OperationLevelMetricsConfigEnumValueArgs.builder()
///                             .value("DISABLED")
///                             .build())
///                         .resolverLevelMetricsBehavior(ResolverLevelMetricsBehaviorEnumValueArgs.builder()
///                             .value("FULL_REQUEST_RESOLVER_METRICS")
///                             .build())
///                         .build())
///                     .introspectionConfig(GraphQLApiIntrospectionConfigEnumValueArgs.builder()
///                         .value("DISABLED")
///                         .build())
///                     .lambdaAuthorizerConfig(LambdaAuthorizerConfigArgs.builder()
///                         .authorizerResultTtlInSeconds(30)
///                         .authorizerUri("hupypfpuanzvftlniinspu")
///                         .identityValidationExpression("hspldtc")
///                         .build())
///                     .logConfig(LogConfigArgs.builder()
///                         .cloudWatchLogsRoleArn("gsfpxvghd")
///                         .excludeVerboseContent(true)
///                         .fieldLogLevel(FieldLogLevelEnumValueArgs.builder()
///                             .value("ALL")
///                             .build())
///                         .build())
///                     .mergedApiExecutionRoleArn("ehtdxecdhgxhmtqhpneaqzgdtivz")
///                     .name("ahvfu")
///                     .openIDConnectConfig(OpenIDConnectConfigArgs.builder()
///                         .authTTL(22.0)
///                         .clientId("luiqpcaoupuxlkhifmjmssaujivibq")
///                         .iatTTL(12.0)
///                         .issuer("gxglhkdfnvrrtsalksedpcukpk")
///                         .build())
///                     .owner("pdudimkqozuoczxvlgmj")
///                     .ownerContact("qkvw")
///                     .queryDepthLimit(14)
///                     .resolverCountLimit(15)
///                     .tags(Map.of("key7170", "zsxndmftgxkxmbkaxswugk"))
///                     .uris(Map.of("key6507", "kuadtmwcpmobgsxpxkfgfkd"))
///                     .userPoolConfig(UserPoolConfigArgs.builder()
///                         .appIdClientRegex("kjfgmmyyzmsywex")
///                         .awsRegion("knaq")
///                         .defaultAction(DefaultActionEnumValueArgs.builder()
///                             .value("ALLOW")
///                             .build())
///                         .userPoolId("tbbntrreowxutvnasgmcdupsaxoooz")
///                         .build())
///                     .visibility(GraphQLApiVisibilityEnumValueArgs.builder()
///                         .value("GLOBAL")
///                         .build())
///                     .wafWebAclArn("fpy")
///                     .xrayEnabled(true)
///                     .build())
///                 .awsRegion("ponyxnfudopabngrux")
///                 .awsSourceSchema("hldvwyk")
///                 .awsTags(Map.of("key8377", "aajkrvqksnrfkuhdmoh"))
///                 .publicCloudConnectorsResourceId("ljxfphaevwpkqtymdowsbhw")
///                 .publicCloudResourceName("xqnxjggrhseymoklvqpreiucveuev")
///                 .build())
///             .resourceGroupName("rgappSyncGraphqlApi")
///             .tags(Map.of("key1836", "msiwfkilmgweevppndbrh"))
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
/// const appSyncGraphqlApi = new azure_native.awsconnector.AppSyncGraphqlApi("appSyncGraphqlApi", {
///     location: "fgdkdvbltlygm",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "yozrofizgppbrqqingfk",
///         awsAccountId: "cbznxz",
///         awsProperties: {
///             additionalAuthenticationProviders: [{
///                 authenticationType: {
///                     value: azure_native.awsconnector.AuthenticationType.AMAZON_COGNITO_USER_POOLS,
///                 },
///                 lambdaAuthorizerConfig: {
///                     authorizerResultTtlInSeconds: 30,
///                     authorizerUri: "hupypfpuanzvftlniinspu",
///                     identityValidationExpression: "hspldtc",
///                 },
///                 openIDConnectConfig: {
///                     authTTL: 22,
///                     clientId: "luiqpcaoupuxlkhifmjmssaujivibq",
///                     iatTTL: 12,
///                     issuer: "gxglhkdfnvrrtsalksedpcukpk",
///                 },
///                 userPoolConfig: {
///                     appIdClientRegex: "qpfpcfsunn",
///                     awsRegion: "nmpxe",
///                     userPoolId: "jelygyotigqdtvomkxwllisaodzpme",
///                 },
///             }],
///             apiId: "czvdzpkqmu",
///             apiType: {
///                 value: azure_native.awsconnector.GraphQLApiType.GRAPHQL,
///             },
///             arn: "oasogwqjupaovgjaimqwyvcevu",
///             authenticationType: {
///                 value: azure_native.awsconnector.AuthenticationType.AMAZON_COGNITO_USER_POOLS,
///             },
///             dns: {
///                 key7870: "hisezyodgicqjjumufmqumigd",
///             },
///             enhancedMetricsConfig: {
///                 dataSourceLevelMetricsBehavior: {
///                     value: azure_native.awsconnector.DataSourceLevelMetricsBehavior.FULL_REQUEST_DATA_SOURCE_METRICS,
///                 },
///                 operationLevelMetricsConfig: {
///                     value: azure_native.awsconnector.OperationLevelMetricsConfig.DISABLED,
///                 },
///                 resolverLevelMetricsBehavior: {
///                     value: azure_native.awsconnector.ResolverLevelMetricsBehavior.FULL_REQUEST_RESOLVER_METRICS,
///                 },
///             },
///             introspectionConfig: {
///                 value: azure_native.awsconnector.GraphQLApiIntrospectionConfig.DISABLED,
///             },
///             lambdaAuthorizerConfig: {
///                 authorizerResultTtlInSeconds: 30,
///                 authorizerUri: "hupypfpuanzvftlniinspu",
///                 identityValidationExpression: "hspldtc",
///             },
///             logConfig: {
///                 cloudWatchLogsRoleArn: "gsfpxvghd",
///                 excludeVerboseContent: true,
///                 fieldLogLevel: {
///                     value: azure_native.awsconnector.FieldLogLevel.ALL,
///                 },
///             },
///             mergedApiExecutionRoleArn: "ehtdxecdhgxhmtqhpneaqzgdtivz",
///             name: "ahvfu",
///             openIDConnectConfig: {
///                 authTTL: 22,
///                 clientId: "luiqpcaoupuxlkhifmjmssaujivibq",
///                 iatTTL: 12,
///                 issuer: "gxglhkdfnvrrtsalksedpcukpk",
///             },
///             owner: "pdudimkqozuoczxvlgmj",
///             ownerContact: "qkvw",
///             queryDepthLimit: 14,
///             resolverCountLimit: 15,
///             tags: {
///                 key7170: "zsxndmftgxkxmbkaxswugk",
///             },
///             uris: {
///                 key6507: "kuadtmwcpmobgsxpxkfgfkd",
///             },
///             userPoolConfig: {
///                 appIdClientRegex: "kjfgmmyyzmsywex",
///                 awsRegion: "knaq",
///                 defaultAction: {
///                     value: azure_native.awsconnector.DefaultAction.ALLOW,
///                 },
///                 userPoolId: "tbbntrreowxutvnasgmcdupsaxoooz",
///             },
///             visibility: {
///                 value: azure_native.awsconnector.GraphQLApiVisibility.GLOBAL,
///             },
///             wafWebAclArn: "fpy",
///             xrayEnabled: true,
///         },
///         awsRegion: "ponyxnfudopabngrux",
///         awsSourceSchema: "hldvwyk",
///         awsTags: {
///             key8377: "aajkrvqksnrfkuhdmoh",
///         },
///         publicCloudConnectorsResourceId: "ljxfphaevwpkqtymdowsbhw",
///         publicCloudResourceName: "xqnxjggrhseymoklvqpreiucveuev",
///     },
///     resourceGroupName: "rgappSyncGraphqlApi",
///     tags: {
///         key1836: "msiwfkilmgweevppndbrh",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// app_sync_graphql_api = azure_native.awsconnector.AppSyncGraphqlApi("appSyncGraphqlApi",
///     location="fgdkdvbltlygm",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "yozrofizgppbrqqingfk",
///         "aws_account_id": "cbznxz",
///         "aws_properties": {
///             "additional_authentication_providers": [{
///                 "authentication_type": {
///                     "value": azure_native.awsconnector.AuthenticationType.AMAZO_N_COGNIT_O_USE_R_POOLS,
///                 },
///                 "lambda_authorizer_config": {
///                     "authorizer_result_ttl_in_seconds": 30,
///                     "authorizer_uri": "hupypfpuanzvftlniinspu",
///                     "identity_validation_expression": "hspldtc",
///                 },
///                 "open_id_connect_config": {
///                     "auth_ttl": 22,
///                     "client_id": "luiqpcaoupuxlkhifmjmssaujivibq",
///                     "iat_ttl": 12,
///                     "issuer": "gxglhkdfnvrrtsalksedpcukpk",
///                 },
///                 "user_pool_config": {
///                     "app_id_client_regex": "qpfpcfsunn",
///                     "aws_region": "nmpxe",
///                     "user_pool_id": "jelygyotigqdtvomkxwllisaodzpme",
///                 },
///             }],
///             "api_id": "czvdzpkqmu",
///             "api_type": {
///                 "value": azure_native.awsconnector.GraphQLApiType.GRAPHQL,
///             },
///             "arn": "oasogwqjupaovgjaimqwyvcevu",
///             "authentication_type": {
///                 "value": azure_native.awsconnector.AuthenticationType.AMAZO_N_COGNIT_O_USE_R_POOLS,
///             },
///             "dns": {
///                 "key7870": "hisezyodgicqjjumufmqumigd",
///             },
///             "enhanced_metrics_config": {
///                 "data_source_level_metrics_behavior": {
///                     "value": azure_native.awsconnector.DataSourceLevelMetricsBehavior.FUL_L_REQUES_T_DAT_A_SOURC_E_METRICS,
///                 },
///                 "operation_level_metrics_config": {
///                     "value": azure_native.awsconnector.OperationLevelMetricsConfig.DISABLED,
///                 },
///                 "resolver_level_metrics_behavior": {
///                     "value": azure_native.awsconnector.ResolverLevelMetricsBehavior.FUL_L_REQUES_T_RESOLVE_R_METRICS,
///                 },
///             },
///             "introspection_config": {
///                 "value": azure_native.awsconnector.GraphQLApiIntrospectionConfig.DISABLED,
///             },
///             "lambda_authorizer_config": {
///                 "authorizer_result_ttl_in_seconds": 30,
///                 "authorizer_uri": "hupypfpuanzvftlniinspu",
///                 "identity_validation_expression": "hspldtc",
///             },
///             "log_config": {
///                 "cloud_watch_logs_role_arn": "gsfpxvghd",
///                 "exclude_verbose_content": True,
///                 "field_log_level": {
///                     "value": azure_native.awsconnector.FieldLogLevel.ALL,
///                 },
///             },
///             "merged_api_execution_role_arn": "ehtdxecdhgxhmtqhpneaqzgdtivz",
///             "name": "ahvfu",
///             "open_id_connect_config": {
///                 "auth_ttl": 22,
///                 "client_id": "luiqpcaoupuxlkhifmjmssaujivibq",
///                 "iat_ttl": 12,
///                 "issuer": "gxglhkdfnvrrtsalksedpcukpk",
///             },
///             "owner": "pdudimkqozuoczxvlgmj",
///             "owner_contact": "qkvw",
///             "query_depth_limit": 14,
///             "resolver_count_limit": 15,
///             "tags": {
///                 "key7170": "zsxndmftgxkxmbkaxswugk",
///             },
///             "uris": {
///                 "key6507": "kuadtmwcpmobgsxpxkfgfkd",
///             },
///             "user_pool_config": {
///                 "app_id_client_regex": "kjfgmmyyzmsywex",
///                 "aws_region": "knaq",
///                 "default_action": {
///                     "value": azure_native.awsconnector.DefaultAction.ALLOW,
///                 },
///                 "user_pool_id": "tbbntrreowxutvnasgmcdupsaxoooz",
///             },
///             "visibility": {
///                 "value": azure_native.awsconnector.GraphQLApiVisibility.GLOBAL_,
///             },
///             "waf_web_acl_arn": "fpy",
///             "xray_enabled": True,
///         },
///         "aws_region": "ponyxnfudopabngrux",
///         "aws_source_schema": "hldvwyk",
///         "aws_tags": {
///             "key8377": "aajkrvqksnrfkuhdmoh",
///         },
///         "public_cloud_connectors_resource_id": "ljxfphaevwpkqtymdowsbhw",
///         "public_cloud_resource_name": "xqnxjggrhseymoklvqpreiucveuev",
///     },
///     resource_group_name="rgappSyncGraphqlApi",
///     tags={
///         "key1836": "msiwfkilmgweevppndbrh",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   appSyncGraphqlApi:
///     type: azure-native:awsconnector:AppSyncGraphqlApi
///     properties:
///       location: fgdkdvbltlygm
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: yozrofizgppbrqqingfk
///         awsAccountId: cbznxz
///         awsProperties:
///           additionalAuthenticationProviders:
///             - authenticationType:
///                 value: AMAZON_COGNITO_USER_POOLS
///               lambdaAuthorizerConfig:
///                 authorizerResultTtlInSeconds: 30
///                 authorizerUri: hupypfpuanzvftlniinspu
///                 identityValidationExpression: hspldtc
///               openIDConnectConfig:
///                 authTTL: 22
///                 clientId: luiqpcaoupuxlkhifmjmssaujivibq
///                 iatTTL: 12
///                 issuer: gxglhkdfnvrrtsalksedpcukpk
///               userPoolConfig:
///                 appIdClientRegex: qpfpcfsunn
///                 awsRegion: nmpxe
///                 userPoolId: jelygyotigqdtvomkxwllisaodzpme
///           apiId: czvdzpkqmu
///           apiType:
///             value: GRAPHQL
///           arn: oasogwqjupaovgjaimqwyvcevu
///           authenticationType:
///             value: AMAZON_COGNITO_USER_POOLS
///           dns:
///             key7870: hisezyodgicqjjumufmqumigd
///           enhancedMetricsConfig:
///             dataSourceLevelMetricsBehavior:
///               value: FULL_REQUEST_DATA_SOURCE_METRICS
///             operationLevelMetricsConfig:
///               value: DISABLED
///             resolverLevelMetricsBehavior:
///               value: FULL_REQUEST_RESOLVER_METRICS
///           introspectionConfig:
///             value: DISABLED
///           lambdaAuthorizerConfig:
///             authorizerResultTtlInSeconds: 30
///             authorizerUri: hupypfpuanzvftlniinspu
///             identityValidationExpression: hspldtc
///           logConfig:
///             cloudWatchLogsRoleArn: gsfpxvghd
///             excludeVerboseContent: true
///             fieldLogLevel:
///               value: ALL
///           mergedApiExecutionRoleArn: ehtdxecdhgxhmtqhpneaqzgdtivz
///           name: ahvfu
///           openIDConnectConfig:
///             authTTL: 22
///             clientId: luiqpcaoupuxlkhifmjmssaujivibq
///             iatTTL: 12
///             issuer: gxglhkdfnvrrtsalksedpcukpk
///           owner: pdudimkqozuoczxvlgmj
///           ownerContact: qkvw
///           queryDepthLimit: 14
///           resolverCountLimit: 15
///           tags:
///             key7170: zsxndmftgxkxmbkaxswugk
///           uris:
///             key6507: kuadtmwcpmobgsxpxkfgfkd
///           userPoolConfig:
///             appIdClientRegex: kjfgmmyyzmsywex
///             awsRegion: knaq
///             defaultAction:
///               value: ALLOW
///             userPoolId: tbbntrreowxutvnasgmcdupsaxoooz
///           visibility:
///             value: GLOBAL
///           wafWebAclArn: fpy
///           xrayEnabled: true
///         awsRegion: ponyxnfudopabngrux
///         awsSourceSchema: hldvwyk
///         awsTags:
///           key8377: aajkrvqksnrfkuhdmoh
///         publicCloudConnectorsResourceId: ljxfphaevwpkqtymdowsbhw
///         publicCloudResourceName: xqnxjggrhseymoklvqpreiucveuev
///       resourceGroupName: rgappSyncGraphqlApi
///       tags:
///         key1836: msiwfkilmgweevppndbrh
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
/// $ pulumi import azure-native:awsconnector:AppSyncGraphqlApi gngempvejdbwaftx /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/appSyncGraphqlApis/{name}
/// ```
class AppSyncGraphqlApi extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<AppSyncGraphqlApiPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AppSyncGraphqlApi].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppSyncGraphqlApi]. {@macro pulumi_awsconnector_app_sync_graphql_api_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppSyncGraphqlApi(
    String name, {
    AppSyncGraphqlApiArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:awsconnector:AppSyncGraphqlApi',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AppSyncGraphqlApiPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AppSyncGraphqlApiPropertiesResponse.fromMap(
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
