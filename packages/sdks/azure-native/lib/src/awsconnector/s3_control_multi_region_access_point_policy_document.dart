import 'package:pulumi/pulumi.dart' as pulumi;
import 's3_control_multi_region_access_point_policy_document_args.dart';
import 's3_control_multi_region_access_point_policy_document_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### S3ControlMultiRegionAccessPointPolicyDocuments_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var s3ControlMultiRegionAccessPointPolicyDocument = new AzureNative.AwsConnector.S3ControlMultiRegionAccessPointPolicyDocument("s3ControlMultiRegionAccessPointPolicyDocument", new()
///     {
///         Location = "mfqwu",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.S3ControlMultiRegionAccessPointPolicyDocumentPropertiesArgs
///         {
///             Arn = "ugqgpzuzhxnknuancpvpckccl",
///             AwsAccountId = "wotmizsy",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsS3ControlMultiRegionAccessPointPolicyDocumentPropertiesArgs
///             {
///                 Established = new AzureNative.AwsConnector.Inputs.EstablishedMultiRegionAccessPointPolicyArgs
///                 {
///                     Policy = "amcyzzkmwbyuxnbqop",
///                 },
///                 Proposed = new AzureNative.AwsConnector.Inputs.ProposedMultiRegionAccessPointPolicyArgs
///                 {
///                     Policy = "lbmaqmlw",
///                 },
///             },
///             AwsRegion = "pshllexnortomzvgcjnsxeoo",
///             AwsSourceSchema = "qntzhuq",
///             AwsTags =
///             {
///                 { "key788", "kirikwibjuyrwctwbefmn" },
///             },
///             PublicCloudConnectorsResourceId = "yyfwlodyfhgbzyfgsl",
///             PublicCloudResourceName = "ks",
///         },
///         ResourceGroupName = "rgs3ControlMultiRegionAccessPointPolicyDocument",
///         Tags =
///         {
///             { "key9846", "qdjukprfk" },
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
/// 		_, err := awsconnector.NewS3ControlMultiRegionAccessPointPolicyDocument(ctx, "s3ControlMultiRegionAccessPointPolicyDocument", &awsconnector.S3ControlMultiRegionAccessPointPolicyDocumentArgs{
/// 			Location: pulumi.String("mfqwu"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.S3ControlMultiRegionAccessPointPolicyDocumentPropertiesArgs{
/// 				Arn:          pulumi.String("ugqgpzuzhxnknuancpvpckccl"),
/// 				AwsAccountId: pulumi.String("wotmizsy"),
/// 				AwsProperties: &awsconnector.AwsS3ControlMultiRegionAccessPointPolicyDocumentPropertiesArgs{
/// 					Established: &awsconnector.EstablishedMultiRegionAccessPointPolicyArgs{
/// 						Policy: pulumi.String("amcyzzkmwbyuxnbqop"),
/// 					},
/// 					Proposed: &awsconnector.ProposedMultiRegionAccessPointPolicyArgs{
/// 						Policy: pulumi.String("lbmaqmlw"),
/// 					},
/// 				},
/// 				AwsRegion:       pulumi.String("pshllexnortomzvgcjnsxeoo"),
/// 				AwsSourceSchema: pulumi.String("qntzhuq"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key788": pulumi.String("kirikwibjuyrwctwbefmn"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("yyfwlodyfhgbzyfgsl"),
/// 				PublicCloudResourceName:         pulumi.String("ks"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgs3ControlMultiRegionAccessPointPolicyDocument"),
/// 			Tags: pulumi.StringMap{
/// 				"key9846": pulumi.String("qdjukprfk"),
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
/// resource "azure-native_awsconnector_s3controlmultiregionaccesspointpolicydocument" "s3ControlMultiRegionAccessPointPolicyDocument" {
///   location = "mfqwu"
///   name     = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"
///   properties = {
///     arn            = "ugqgpzuzhxnknuancpvpckccl"
///     aws_account_id = "wotmizsy"
///     aws_properties = {
///       established = {
///         policy = "amcyzzkmwbyuxnbqop"
///       }
///       proposed = {
///         policy = "lbmaqmlw"
///       }
///     }
///     aws_region        = "pshllexnortomzvgcjnsxeoo"
///     aws_source_schema = "qntzhuq"
///     aws_tags = {
///       "key788" = "kirikwibjuyrwctwbefmn"
///     }
///     public_cloud_connectors_resource_id = "yyfwlodyfhgbzyfgsl"
///     public_cloud_resource_name          = "ks"
///   }
///   resource_group_name = "rgs3ControlMultiRegionAccessPointPolicyDocument"
///   tags = {
///     "key9846" = "qdjukprfk"
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
/// import com.pulumi.azurenative.awsconnector.S3ControlMultiRegionAccessPointPolicyDocument;
/// import com.pulumi.azurenative.awsconnector.S3ControlMultiRegionAccessPointPolicyDocumentArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.S3ControlMultiRegionAccessPointPolicyDocumentPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsS3ControlMultiRegionAccessPointPolicyDocumentPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.EstablishedMultiRegionAccessPointPolicyArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ProposedMultiRegionAccessPointPolicyArgs;
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
///         var s3ControlMultiRegionAccessPointPolicyDocument = new S3ControlMultiRegionAccessPointPolicyDocument("s3ControlMultiRegionAccessPointPolicyDocument", S3ControlMultiRegionAccessPointPolicyDocumentArgs.builder()
///             .location("mfqwu")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(S3ControlMultiRegionAccessPointPolicyDocumentPropertiesArgs.builder()
///                 .arn("ugqgpzuzhxnknuancpvpckccl")
///                 .awsAccountId("wotmizsy")
///                 .awsProperties(AwsS3ControlMultiRegionAccessPointPolicyDocumentPropertiesArgs.builder()
///                     .established(EstablishedMultiRegionAccessPointPolicyArgs.builder()
///                         .policy("amcyzzkmwbyuxnbqop")
///                         .build())
///                     .proposed(ProposedMultiRegionAccessPointPolicyArgs.builder()
///                         .policy("lbmaqmlw")
///                         .build())
///                     .build())
///                 .awsRegion("pshllexnortomzvgcjnsxeoo")
///                 .awsSourceSchema("qntzhuq")
///                 .awsTags(Map.of("key788", "kirikwibjuyrwctwbefmn"))
///                 .publicCloudConnectorsResourceId("yyfwlodyfhgbzyfgsl")
///                 .publicCloudResourceName("ks")
///                 .build())
///             .resourceGroupName("rgs3ControlMultiRegionAccessPointPolicyDocument")
///             .tags(Map.of("key9846", "qdjukprfk"))
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
/// const s3ControlMultiRegionAccessPointPolicyDocument = new azure_native.awsconnector.S3ControlMultiRegionAccessPointPolicyDocument("s3ControlMultiRegionAccessPointPolicyDocument", {
///     location: "mfqwu",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "ugqgpzuzhxnknuancpvpckccl",
///         awsAccountId: "wotmizsy",
///         awsProperties: {
///             established: {
///                 policy: "amcyzzkmwbyuxnbqop",
///             },
///             proposed: {
///                 policy: "lbmaqmlw",
///             },
///         },
///         awsRegion: "pshllexnortomzvgcjnsxeoo",
///         awsSourceSchema: "qntzhuq",
///         awsTags: {
///             key788: "kirikwibjuyrwctwbefmn",
///         },
///         publicCloudConnectorsResourceId: "yyfwlodyfhgbzyfgsl",
///         publicCloudResourceName: "ks",
///     },
///     resourceGroupName: "rgs3ControlMultiRegionAccessPointPolicyDocument",
///     tags: {
///         key9846: "qdjukprfk",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// s3_control_multi_region_access_point_policy_document = azure_native.awsconnector.S3ControlMultiRegionAccessPointPolicyDocument("s3ControlMultiRegionAccessPointPolicyDocument",
///     location="mfqwu",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "ugqgpzuzhxnknuancpvpckccl",
///         "aws_account_id": "wotmizsy",
///         "aws_properties": {
///             "established": {
///                 "policy": "amcyzzkmwbyuxnbqop",
///             },
///             "proposed": {
///                 "policy": "lbmaqmlw",
///             },
///         },
///         "aws_region": "pshllexnortomzvgcjnsxeoo",
///         "aws_source_schema": "qntzhuq",
///         "aws_tags": {
///             "key788": "kirikwibjuyrwctwbefmn",
///         },
///         "public_cloud_connectors_resource_id": "yyfwlodyfhgbzyfgsl",
///         "public_cloud_resource_name": "ks",
///     },
///     resource_group_name="rgs3ControlMultiRegionAccessPointPolicyDocument",
///     tags={
///         "key9846": "qdjukprfk",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   s3ControlMultiRegionAccessPointPolicyDocument:
///     type: azure-native:awsconnector:S3ControlMultiRegionAccessPointPolicyDocument
///     properties:
///       location: mfqwu
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: ugqgpzuzhxnknuancpvpckccl
///         awsAccountId: wotmizsy
///         awsProperties:
///           established:
///             policy: amcyzzkmwbyuxnbqop
///           proposed:
///             policy: lbmaqmlw
///         awsRegion: pshllexnortomzvgcjnsxeoo
///         awsSourceSchema: qntzhuq
///         awsTags:
///           key788: kirikwibjuyrwctwbefmn
///         publicCloudConnectorsResourceId: yyfwlodyfhgbzyfgsl
///         publicCloudResourceName: ks
///       resourceGroupName: rgs3ControlMultiRegionAccessPointPolicyDocument
///       tags:
///         key9846: qdjukprfk
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
/// $ pulumi import azure-native:awsconnector:S3ControlMultiRegionAccessPointPolicyDocument kmf /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/s3ControlMultiRegionAccessPointPolicyDocuments/{name}
/// ```
class S3ControlMultiRegionAccessPointPolicyDocument extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<S3ControlMultiRegionAccessPointPolicyDocumentPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [S3ControlMultiRegionAccessPointPolicyDocument].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [S3ControlMultiRegionAccessPointPolicyDocument]. {@macro pulumi_awsconnector_s3_control_multi_region_access_point_policy_document_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  S3ControlMultiRegionAccessPointPolicyDocument(
    String name, {
    S3ControlMultiRegionAccessPointPolicyDocumentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:S3ControlMultiRegionAccessPointPolicyDocument',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<S3ControlMultiRegionAccessPointPolicyDocumentPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return S3ControlMultiRegionAccessPointPolicyDocumentPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
