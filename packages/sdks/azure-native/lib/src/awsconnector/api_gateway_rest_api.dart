import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_gateway_rest_api_args.dart';
import 'api_gateway_rest_api_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiGatewayRestApis_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var apiGatewayRestApi = new AzureNative.AwsConnector.ApiGatewayRestApi("apiGatewayRestApi", new()
///     {
///         Location = "lvqczthlir",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.ApiGatewayRestApiPropertiesArgs
///         {
///             Arn = "mjkvrfpgenxbfozh",
///             AwsAccountId = "qjcvyhdegwhvzsiuqjwnvdqs",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsApiGatewayRestApiPropertiesArgs
///             {
///                 ApiKeySourceType = "f",
///                 BinaryMediaTypes = new[]
///                 {
///                     "ahebgkheozatj",
///                 },
///                 Body = null,
///                 BodyS3Location = new AzureNative.AwsConnector.Inputs.S3LocationArgs
///                 {
///                     Bucket = "oyosqpl",
///                     ETag = "uuzlkbqlua",
///                     Key = "nsks",
///                     Version = "lxbmxdrsftqwazmgxlokuvf",
///                 },
///                 CloneFrom = "boxfqilij",
///                 Description = "ngqhnoniiohuwofr",
///                 DisableExecuteApiEndpoint = true,
///                 EndpointConfiguration = new AzureNative.AwsConnector.Inputs.EndpointConfigurationArgs
///                 {
///                     Types = new[]
///                     {
///                         "dfhdcsvbasfadeuneaz",
///                     },
///                     VpcEndpointIds = new[]
///                     {
///                         "evzbafcpdpklwppge",
///                     },
///                 },
///                 FailOnWarnings = true,
///                 MinimumCompressionSize = 11,
///                 Mode = "odjmjlcgkmskasrasoegyxnuqr",
///                 Name = "ioyxag",
///                 Parameters =
///                 {
///                     { "key9886", "kwxjcmpsfptfkdeajrzqt" },
///                 },
///                 Policy = "jefpbspvgtinulqfyjxuxcunzkpgvw",
///                 RestApiId = "hlyfcdcgknhbjezdxgbg",
///                 RootResourceId = "jfmgp",
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "zvkbvzxmbhtugr",
///                         Value = "uozcrgrc",
///                     },
///                 },
///             },
///             AwsRegion = "bzj",
///             AwsSourceSchema = "oagqktjiz",
///             AwsTags =
///             {
///                 { "key5478", "g" },
///             },
///             PublicCloudConnectorsResourceId = "diszsfnljduoshvzzgcyypsjnxs",
///             PublicCloudResourceName = "tvtpphxonsvnvtmccbpcsvvvslbxxc",
///         },
///         ResourceGroupName = "rgapiGatewayRestApi",
///         Tags =
///         {
///             { "key4163", "gqwufsfmbcznfkcfnjsejmna" },
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
/// 		_, err := awsconnector.NewApiGatewayRestApi(ctx, "apiGatewayRestApi", &awsconnector.ApiGatewayRestApiArgs{
/// 			Location: pulumi.String("lvqczthlir"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.ApiGatewayRestApiPropertiesArgs{
/// 				Arn:          pulumi.String("mjkvrfpgenxbfozh"),
/// 				AwsAccountId: pulumi.String("qjcvyhdegwhvzsiuqjwnvdqs"),
/// 				AwsProperties: &awsconnector.AwsApiGatewayRestApiPropertiesArgs{
/// 					ApiKeySourceType: pulumi.String("f"),
/// 					BinaryMediaTypes: pulumi.StringArray{
/// 						pulumi.String("ahebgkheozatj"),
/// 					},
/// 					Body: pulumi.Any(map[string]interface{}{}),
/// 					BodyS3Location: &awsconnector.S3LocationArgs{
/// 						Bucket:  pulumi.String("oyosqpl"),
/// 						ETag:    pulumi.String("uuzlkbqlua"),
/// 						Key:     pulumi.String("nsks"),
/// 						Version: pulumi.String("lxbmxdrsftqwazmgxlokuvf"),
/// 					},
/// 					CloneFrom:                 pulumi.String("boxfqilij"),
/// 					Description:               pulumi.String("ngqhnoniiohuwofr"),
/// 					DisableExecuteApiEndpoint: pulumi.Bool(true),
/// 					EndpointConfiguration: &awsconnector.EndpointConfigurationArgs{
/// 						Types: pulumi.StringArray{
/// 							pulumi.String("dfhdcsvbasfadeuneaz"),
/// 						},
/// 						VpcEndpointIds: pulumi.StringArray{
/// 							pulumi.String("evzbafcpdpklwppge"),
/// 						},
/// 					},
/// 					FailOnWarnings:         pulumi.Bool(true),
/// 					MinimumCompressionSize: pulumi.Int(11),
/// 					Mode:                   pulumi.String("odjmjlcgkmskasrasoegyxnuqr"),
/// 					Name:                   pulumi.String("ioyxag"),
/// 					Parameters: pulumi.StringMap{
/// 						"key9886": pulumi.String("kwxjcmpsfptfkdeajrzqt"),
/// 					},
/// 					Policy:         pulumi.String("jefpbspvgtinulqfyjxuxcunzkpgvw"),
/// 					RestApiId:      pulumi.String("hlyfcdcgknhbjezdxgbg"),
/// 					RootResourceId: pulumi.String("jfmgp"),
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("zvkbvzxmbhtugr"),
/// 							Value: pulumi.String("uozcrgrc"),
/// 						},
/// 					},
/// 				},
/// 				AwsRegion:       pulumi.String("bzj"),
/// 				AwsSourceSchema: pulumi.String("oagqktjiz"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key5478": pulumi.String("g"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("diszsfnljduoshvzzgcyypsjnxs"),
/// 				PublicCloudResourceName:         pulumi.String("tvtpphxonsvnvtmccbpcsvvvslbxxc"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgapiGatewayRestApi"),
/// 			Tags: pulumi.StringMap{
/// 				"key4163": pulumi.String("gqwufsfmbcznfkcfnjsejmna"),
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
/// resource "azure-native_awsconnector_apigatewayrestapi" "apiGatewayRestApi" {
///   location = "lvqczthlir"
///   name     = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"
///   properties = {
///     arn            = "mjkvrfpgenxbfozh"
///     aws_account_id = "qjcvyhdegwhvzsiuqjwnvdqs"
///     aws_properties = {
///       api_key_source_type = "f"
///       binary_media_types  = ["ahebgkheozatj"]
///       body                = {}
///       body_s3_location = {
///         bucket  = "oyosqpl"
///         e_tag   = "uuzlkbqlua"
///         key     = "nsks"
///         version = "lxbmxdrsftqwazmgxlokuvf"
///       }
///       clone_from                   = "boxfqilij"
///       description                  = "ngqhnoniiohuwofr"
///       disable_execute_api_endpoint = true
///       endpoint_configuration = {
///         types            = ["dfhdcsvbasfadeuneaz"]
///         vpc_endpoint_ids = ["evzbafcpdpklwppge"]
///       }
///       fail_on_warnings         = true
///       minimum_compression_size = 11
///       mode                     = "odjmjlcgkmskasrasoegyxnuqr"
///       name                     = "ioyxag"
///       parameters = {
///         "key9886" = "kwxjcmpsfptfkdeajrzqt"
///       }
///       policy           = "jefpbspvgtinulqfyjxuxcunzkpgvw"
///       rest_api_id      = "hlyfcdcgknhbjezdxgbg"
///       root_resource_id = "jfmgp"
///       tags = [{
///         "key"   = "zvkbvzxmbhtugr"
///         "value" = "uozcrgrc"
///       }]
///     }
///     aws_region        = "bzj"
///     aws_source_schema = "oagqktjiz"
///     aws_tags = {
///       "key5478" = "g"
///     }
///     public_cloud_connectors_resource_id = "diszsfnljduoshvzzgcyypsjnxs"
///     public_cloud_resource_name          = "tvtpphxonsvnvtmccbpcsvvvslbxxc"
///   }
///   resource_group_name = "rgapiGatewayRestApi"
///   tags = {
///     "key4163" = "gqwufsfmbcznfkcfnjsejmna"
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
/// import com.pulumi.azurenative.awsconnector.ApiGatewayRestApi;
/// import com.pulumi.azurenative.awsconnector.ApiGatewayRestApiArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ApiGatewayRestApiPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsApiGatewayRestApiPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.S3LocationArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.EndpointConfigurationArgs;
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
///         var apiGatewayRestApi = new ApiGatewayRestApi("apiGatewayRestApi", ApiGatewayRestApiArgs.builder()
///             .location("lvqczthlir")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(ApiGatewayRestApiPropertiesArgs.builder()
///                 .arn("mjkvrfpgenxbfozh")
///                 .awsAccountId("qjcvyhdegwhvzsiuqjwnvdqs")
///                 .awsProperties(AwsApiGatewayRestApiPropertiesArgs.builder()
///                     .apiKeySourceType("f")
///                     .binaryMediaTypes("ahebgkheozatj")
///                     .body(Map.ofEntries(
///                     ))
///                     .bodyS3Location(S3LocationArgs.builder()
///                         .bucket("oyosqpl")
///                         .eTag("uuzlkbqlua")
///                         .key("nsks")
///                         .version("lxbmxdrsftqwazmgxlokuvf")
///                         .build())
///                     .cloneFrom("boxfqilij")
///                     .description("ngqhnoniiohuwofr")
///                     .disableExecuteApiEndpoint(true)
///                     .endpointConfiguration(EndpointConfigurationArgs.builder()
///                         .types("dfhdcsvbasfadeuneaz")
///                         .vpcEndpointIds("evzbafcpdpklwppge")
///                         .build())
///                     .failOnWarnings(true)
///                     .minimumCompressionSize(11)
///                     .mode("odjmjlcgkmskasrasoegyxnuqr")
///                     .name("ioyxag")
///                     .parameters(Map.of("key9886", "kwxjcmpsfptfkdeajrzqt"))
///                     .policy("jefpbspvgtinulqfyjxuxcunzkpgvw")
///                     .restApiId("hlyfcdcgknhbjezdxgbg")
///                     .rootResourceId("jfmgp")
///                     .tags(TagArgs.builder()
///                         .key("zvkbvzxmbhtugr")
///                         .value("uozcrgrc")
///                         .build())
///                     .build())
///                 .awsRegion("bzj")
///                 .awsSourceSchema("oagqktjiz")
///                 .awsTags(Map.of("key5478", "g"))
///                 .publicCloudConnectorsResourceId("diszsfnljduoshvzzgcyypsjnxs")
///                 .publicCloudResourceName("tvtpphxonsvnvtmccbpcsvvvslbxxc")
///                 .build())
///             .resourceGroupName("rgapiGatewayRestApi")
///             .tags(Map.of("key4163", "gqwufsfmbcznfkcfnjsejmna"))
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
/// const apiGatewayRestApi = new azure_native.awsconnector.ApiGatewayRestApi("apiGatewayRestApi", {
///     location: "lvqczthlir",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "mjkvrfpgenxbfozh",
///         awsAccountId: "qjcvyhdegwhvzsiuqjwnvdqs",
///         awsProperties: {
///             apiKeySourceType: "f",
///             binaryMediaTypes: ["ahebgkheozatj"],
///             body: {},
///             bodyS3Location: {
///                 bucket: "oyosqpl",
///                 eTag: "uuzlkbqlua",
///                 key: "nsks",
///                 version: "lxbmxdrsftqwazmgxlokuvf",
///             },
///             cloneFrom: "boxfqilij",
///             description: "ngqhnoniiohuwofr",
///             disableExecuteApiEndpoint: true,
///             endpointConfiguration: {
///                 types: ["dfhdcsvbasfadeuneaz"],
///                 vpcEndpointIds: ["evzbafcpdpklwppge"],
///             },
///             failOnWarnings: true,
///             minimumCompressionSize: 11,
///             mode: "odjmjlcgkmskasrasoegyxnuqr",
///             name: "ioyxag",
///             parameters: {
///                 key9886: "kwxjcmpsfptfkdeajrzqt",
///             },
///             policy: "jefpbspvgtinulqfyjxuxcunzkpgvw",
///             restApiId: "hlyfcdcgknhbjezdxgbg",
///             rootResourceId: "jfmgp",
///             tags: [{
///                 key: "zvkbvzxmbhtugr",
///                 value: "uozcrgrc",
///             }],
///         },
///         awsRegion: "bzj",
///         awsSourceSchema: "oagqktjiz",
///         awsTags: {
///             key5478: "g",
///         },
///         publicCloudConnectorsResourceId: "diszsfnljduoshvzzgcyypsjnxs",
///         publicCloudResourceName: "tvtpphxonsvnvtmccbpcsvvvslbxxc",
///     },
///     resourceGroupName: "rgapiGatewayRestApi",
///     tags: {
///         key4163: "gqwufsfmbcznfkcfnjsejmna",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// api_gateway_rest_api = azure_native.awsconnector.ApiGatewayRestApi("apiGatewayRestApi",
///     location="lvqczthlir",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "mjkvrfpgenxbfozh",
///         "aws_account_id": "qjcvyhdegwhvzsiuqjwnvdqs",
///         "aws_properties": {
///             "api_key_source_type": "f",
///             "binary_media_types": ["ahebgkheozatj"],
///             "body": {},
///             "body_s3_location": {
///                 "bucket": "oyosqpl",
///                 "e_tag": "uuzlkbqlua",
///                 "key": "nsks",
///                 "version": "lxbmxdrsftqwazmgxlokuvf",
///             },
///             "clone_from": "boxfqilij",
///             "description": "ngqhnoniiohuwofr",
///             "disable_execute_api_endpoint": True,
///             "endpoint_configuration": {
///                 "types": ["dfhdcsvbasfadeuneaz"],
///                 "vpc_endpoint_ids": ["evzbafcpdpklwppge"],
///             },
///             "fail_on_warnings": True,
///             "minimum_compression_size": 11,
///             "mode": "odjmjlcgkmskasrasoegyxnuqr",
///             "name": "ioyxag",
///             "parameters": {
///                 "key9886": "kwxjcmpsfptfkdeajrzqt",
///             },
///             "policy": "jefpbspvgtinulqfyjxuxcunzkpgvw",
///             "rest_api_id": "hlyfcdcgknhbjezdxgbg",
///             "root_resource_id": "jfmgp",
///             "tags": [{
///                 "key": "zvkbvzxmbhtugr",
///                 "value": "uozcrgrc",
///             }],
///         },
///         "aws_region": "bzj",
///         "aws_source_schema": "oagqktjiz",
///         "aws_tags": {
///             "key5478": "g",
///         },
///         "public_cloud_connectors_resource_id": "diszsfnljduoshvzzgcyypsjnxs",
///         "public_cloud_resource_name": "tvtpphxonsvnvtmccbpcsvvvslbxxc",
///     },
///     resource_group_name="rgapiGatewayRestApi",
///     tags={
///         "key4163": "gqwufsfmbcznfkcfnjsejmna",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   apiGatewayRestApi:
///     type: azure-native:awsconnector:ApiGatewayRestApi
///     properties:
///       location: lvqczthlir
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: mjkvrfpgenxbfozh
///         awsAccountId: qjcvyhdegwhvzsiuqjwnvdqs
///         awsProperties:
///           apiKeySourceType: f
///           binaryMediaTypes:
///             - ahebgkheozatj
///           body: {}
///           bodyS3Location:
///             bucket: oyosqpl
///             eTag: uuzlkbqlua
///             key: nsks
///             version: lxbmxdrsftqwazmgxlokuvf
///           cloneFrom: boxfqilij
///           description: ngqhnoniiohuwofr
///           disableExecuteApiEndpoint: true
///           endpointConfiguration:
///             types:
///               - dfhdcsvbasfadeuneaz
///             vpcEndpointIds:
///               - evzbafcpdpklwppge
///           failOnWarnings: true
///           minimumCompressionSize: 11
///           mode: odjmjlcgkmskasrasoegyxnuqr
///           name: ioyxag
///           parameters:
///             key9886: kwxjcmpsfptfkdeajrzqt
///           policy: jefpbspvgtinulqfyjxuxcunzkpgvw
///           restApiId: hlyfcdcgknhbjezdxgbg
///           rootResourceId: jfmgp
///           tags:
///             - key: zvkbvzxmbhtugr
///               value: uozcrgrc
///         awsRegion: bzj
///         awsSourceSchema: oagqktjiz
///         awsTags:
///           key5478: g
///         publicCloudConnectorsResourceId: diszsfnljduoshvzzgcyypsjnxs
///         publicCloudResourceName: tvtpphxonsvnvtmccbpcsvvvslbxxc
///       resourceGroupName: rgapiGatewayRestApi
///       tags:
///         key4163: gqwufsfmbcznfkcfnjsejmna
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
/// $ pulumi import azure-native:awsconnector:ApiGatewayRestApi fkngxaddvxbddxbt /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/apiGatewayRestApis/{name}
/// ```
class ApiGatewayRestApi extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<ApiGatewayRestApiPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ApiGatewayRestApi].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiGatewayRestApi]. {@macro pulumi_awsconnector_api_gateway_rest_api_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiGatewayRestApi(
    String name, {
    ApiGatewayRestApiArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:ApiGatewayRestApi',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ApiGatewayRestApiPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiGatewayRestApiPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ApiGatewayRestApi] resource.
  ApiGatewayRestApi.reference(String urn)
    : super(
        'azure-native:awsconnector:ApiGatewayRestApi',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ApiGatewayRestApiPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiGatewayRestApiPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
