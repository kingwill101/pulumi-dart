import 'package:pulumi/pulumi.dart' as pulumi;
import 's3_bucket_policy_args.dart';
import 's3_bucket_policy_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### S3BucketPolicies_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var s3BucketPolicy = new AzureNative.AwsConnector.S3BucketPolicy("s3BucketPolicy", new()
///     {
///         Location = "hsbqwwdspecsoigxusdbqgilaa",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.S3BucketPolicyPropertiesArgs
///         {
///             Arn = "ebpwjamccadznftkixikeutdjacadm",
///             AwsAccountId = "czyyfhht",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsS3BucketPolicyPropertiesArgs
///             {
///                 Policy = "fifgvjoxnidoedtzm",
///             },
///             AwsRegion = "mlepmxnkxjgtrqhtbaaoxuaj",
///             AwsSourceSchema = "wdyfvmrsshlyadt",
///             AwsTags =
///             {
///                 { "key5637", "ympfubnqykwth" },
///             },
///             PublicCloudConnectorsResourceId = "n",
///             PublicCloudResourceName = "suksqtvhtayjy",
///         },
///         ResourceGroupName = "rgs3BucketPolicy",
///         Tags =
///         {
///             { "key9799", "kihjvhsun" },
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
/// 		_, err := awsconnector.NewS3BucketPolicy(ctx, "s3BucketPolicy", &awsconnector.S3BucketPolicyArgs{
/// 			Location: pulumi.String("hsbqwwdspecsoigxusdbqgilaa"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.S3BucketPolicyPropertiesArgs{
/// 				Arn:          pulumi.String("ebpwjamccadznftkixikeutdjacadm"),
/// 				AwsAccountId: pulumi.String("czyyfhht"),
/// 				AwsProperties: &awsconnector.AwsS3BucketPolicyPropertiesArgs{
/// 					Policy: pulumi.String("fifgvjoxnidoedtzm"),
/// 				},
/// 				AwsRegion:       pulumi.String("mlepmxnkxjgtrqhtbaaoxuaj"),
/// 				AwsSourceSchema: pulumi.String("wdyfvmrsshlyadt"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key5637": pulumi.String("ympfubnqykwth"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("n"),
/// 				PublicCloudResourceName:         pulumi.String("suksqtvhtayjy"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgs3BucketPolicy"),
/// 			Tags: pulumi.StringMap{
/// 				"key9799": pulumi.String("kihjvhsun"),
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
/// import com.pulumi.azurenative.awsconnector.S3BucketPolicy;
/// import com.pulumi.azurenative.awsconnector.S3BucketPolicyArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.S3BucketPolicyPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsS3BucketPolicyPropertiesArgs;
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
///         var s3BucketPolicy = new S3BucketPolicy("s3BucketPolicy", S3BucketPolicyArgs.builder()
///             .location("hsbqwwdspecsoigxusdbqgilaa")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(S3BucketPolicyPropertiesArgs.builder()
///                 .arn("ebpwjamccadznftkixikeutdjacadm")
///                 .awsAccountId("czyyfhht")
///                 .awsProperties(AwsS3BucketPolicyPropertiesArgs.builder()
///                     .policy("fifgvjoxnidoedtzm")
///                     .build())
///                 .awsRegion("mlepmxnkxjgtrqhtbaaoxuaj")
///                 .awsSourceSchema("wdyfvmrsshlyadt")
///                 .awsTags(Map.of("key5637", "ympfubnqykwth"))
///                 .publicCloudConnectorsResourceId("n")
///                 .publicCloudResourceName("suksqtvhtayjy")
///                 .build())
///             .resourceGroupName("rgs3BucketPolicy")
///             .tags(Map.of("key9799", "kihjvhsun"))
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
/// const s3BucketPolicy = new azure_native.awsconnector.S3BucketPolicy("s3BucketPolicy", {
///     location: "hsbqwwdspecsoigxusdbqgilaa",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "ebpwjamccadznftkixikeutdjacadm",
///         awsAccountId: "czyyfhht",
///         awsProperties: {
///             policy: "fifgvjoxnidoedtzm",
///         },
///         awsRegion: "mlepmxnkxjgtrqhtbaaoxuaj",
///         awsSourceSchema: "wdyfvmrsshlyadt",
///         awsTags: {
///             key5637: "ympfubnqykwth",
///         },
///         publicCloudConnectorsResourceId: "n",
///         publicCloudResourceName: "suksqtvhtayjy",
///     },
///     resourceGroupName: "rgs3BucketPolicy",
///     tags: {
///         key9799: "kihjvhsun",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// s3_bucket_policy = azure_native.awsconnector.S3BucketPolicy("s3BucketPolicy",
///     location="hsbqwwdspecsoigxusdbqgilaa",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "ebpwjamccadznftkixikeutdjacadm",
///         "aws_account_id": "czyyfhht",
///         "aws_properties": {
///             "policy": "fifgvjoxnidoedtzm",
///         },
///         "aws_region": "mlepmxnkxjgtrqhtbaaoxuaj",
///         "aws_source_schema": "wdyfvmrsshlyadt",
///         "aws_tags": {
///             "key5637": "ympfubnqykwth",
///         },
///         "public_cloud_connectors_resource_id": "n",
///         "public_cloud_resource_name": "suksqtvhtayjy",
///     },
///     resource_group_name="rgs3BucketPolicy",
///     tags={
///         "key9799": "kihjvhsun",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   s3BucketPolicy:
///     type: azure-native:awsconnector:S3BucketPolicy
///     properties:
///       location: hsbqwwdspecsoigxusdbqgilaa
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: ebpwjamccadznftkixikeutdjacadm
///         awsAccountId: czyyfhht
///         awsProperties:
///           policy: fifgvjoxnidoedtzm
///         awsRegion: mlepmxnkxjgtrqhtbaaoxuaj
///         awsSourceSchema: wdyfvmrsshlyadt
///         awsTags:
///           key5637: ympfubnqykwth
///         publicCloudConnectorsResourceId: n
///         publicCloudResourceName: suksqtvhtayjy
///       resourceGroupName: rgs3BucketPolicy
///       tags:
///         key9799: kihjvhsun
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
/// $ pulumi import azure-native:awsconnector:S3BucketPolicy dbjztqfpgz /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/s3BucketPolicies/{name}
/// ```
class S3BucketPolicy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<S3BucketPolicyPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [S3BucketPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [S3BucketPolicy]. {@macro pulumi_awsconnector_s3_bucket_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  S3BucketPolicy(
    String name, {
    S3BucketPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:S3BucketPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<S3BucketPolicyPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return S3BucketPolicyPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
