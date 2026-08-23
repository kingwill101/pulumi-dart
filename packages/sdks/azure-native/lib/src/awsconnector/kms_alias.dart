import 'package:pulumi/pulumi.dart' as pulumi;
import 'kms_alias_args.dart';
import 'kms_alias_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### KmsAliases_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var kmsAlias = new AzureNative.AwsConnector.KmsAlias("kmsAlias", new()
///     {
///         Location = "zsrefx",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.KmsAliasPropertiesArgs
///         {
///             Arn = "seecdsob",
///             AwsAccountId = "mi",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsKmsAliasPropertiesArgs
///             {
///                 AliasName = "qpqfyfsgzbqqqwohdqogpksketglb",
///                 TargetKeyId = "fgiefgtmhdrvw",
///             },
///             AwsRegion = "zofqccwhxvtaeqhhtqwmruhcjkro",
///             AwsSourceSchema = "iwkqjxnfjutfnhhocco",
///             AwsTags =
///             {
///                 { "key6582", "wejhqyokgch" },
///             },
///             PublicCloudConnectorsResourceId = "n",
///             PublicCloudResourceName = "qrdvkbofzddttwvcfunr",
///         },
///         ResourceGroupName = "rgkmsAlias",
///         Tags =
///         {
///             { "key1437", "lfgpfgxqkrvrlhnpwtzafonw" },
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
/// 		_, err := awsconnector.NewKmsAlias(ctx, "kmsAlias", &awsconnector.KmsAliasArgs{
/// 			Location: pulumi.String("zsrefx"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.KmsAliasPropertiesArgs{
/// 				Arn:          pulumi.String("seecdsob"),
/// 				AwsAccountId: pulumi.String("mi"),
/// 				AwsProperties: &awsconnector.AwsKmsAliasPropertiesArgs{
/// 					AliasName:   pulumi.String("qpqfyfsgzbqqqwohdqogpksketglb"),
/// 					TargetKeyId: pulumi.String("fgiefgtmhdrvw"),
/// 				},
/// 				AwsRegion:       pulumi.String("zofqccwhxvtaeqhhtqwmruhcjkro"),
/// 				AwsSourceSchema: pulumi.String("iwkqjxnfjutfnhhocco"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key6582": pulumi.String("wejhqyokgch"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("n"),
/// 				PublicCloudResourceName:         pulumi.String("qrdvkbofzddttwvcfunr"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgkmsAlias"),
/// 			Tags: pulumi.StringMap{
/// 				"key1437": pulumi.String("lfgpfgxqkrvrlhnpwtzafonw"),
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
/// resource "azure-native_awsconnector_kmsalias" "kmsAlias" {
///   location = "zsrefx"
///   name     = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"
///   properties = {
///     arn            = "seecdsob"
///     aws_account_id = "mi"
///     aws_properties = {
///       alias_name    = "qpqfyfsgzbqqqwohdqogpksketglb"
///       target_key_id = "fgiefgtmhdrvw"
///     }
///     aws_region        = "zofqccwhxvtaeqhhtqwmruhcjkro"
///     aws_source_schema = "iwkqjxnfjutfnhhocco"
///     aws_tags = {
///       "key6582" = "wejhqyokgch"
///     }
///     public_cloud_connectors_resource_id = "n"
///     public_cloud_resource_name          = "qrdvkbofzddttwvcfunr"
///   }
///   resource_group_name = "rgkmsAlias"
///   tags = {
///     "key1437" = "lfgpfgxqkrvrlhnpwtzafonw"
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
/// import com.pulumi.azurenative.awsconnector.KmsAlias;
/// import com.pulumi.azurenative.awsconnector.KmsAliasArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.KmsAliasPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsKmsAliasPropertiesArgs;
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
///         var kmsAlias = new KmsAlias("kmsAlias", KmsAliasArgs.builder()
///             .location("zsrefx")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(KmsAliasPropertiesArgs.builder()
///                 .arn("seecdsob")
///                 .awsAccountId("mi")
///                 .awsProperties(AwsKmsAliasPropertiesArgs.builder()
///                     .aliasName("qpqfyfsgzbqqqwohdqogpksketglb")
///                     .targetKeyId("fgiefgtmhdrvw")
///                     .build())
///                 .awsRegion("zofqccwhxvtaeqhhtqwmruhcjkro")
///                 .awsSourceSchema("iwkqjxnfjutfnhhocco")
///                 .awsTags(Map.of("key6582", "wejhqyokgch"))
///                 .publicCloudConnectorsResourceId("n")
///                 .publicCloudResourceName("qrdvkbofzddttwvcfunr")
///                 .build())
///             .resourceGroupName("rgkmsAlias")
///             .tags(Map.of("key1437", "lfgpfgxqkrvrlhnpwtzafonw"))
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
/// const kmsAlias = new azure_native.awsconnector.KmsAlias("kmsAlias", {
///     location: "zsrefx",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "seecdsob",
///         awsAccountId: "mi",
///         awsProperties: {
///             aliasName: "qpqfyfsgzbqqqwohdqogpksketglb",
///             targetKeyId: "fgiefgtmhdrvw",
///         },
///         awsRegion: "zofqccwhxvtaeqhhtqwmruhcjkro",
///         awsSourceSchema: "iwkqjxnfjutfnhhocco",
///         awsTags: {
///             key6582: "wejhqyokgch",
///         },
///         publicCloudConnectorsResourceId: "n",
///         publicCloudResourceName: "qrdvkbofzddttwvcfunr",
///     },
///     resourceGroupName: "rgkmsAlias",
///     tags: {
///         key1437: "lfgpfgxqkrvrlhnpwtzafonw",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// kms_alias = azure_native.awsconnector.KmsAlias("kmsAlias",
///     location="zsrefx",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "seecdsob",
///         "aws_account_id": "mi",
///         "aws_properties": {
///             "alias_name": "qpqfyfsgzbqqqwohdqogpksketglb",
///             "target_key_id": "fgiefgtmhdrvw",
///         },
///         "aws_region": "zofqccwhxvtaeqhhtqwmruhcjkro",
///         "aws_source_schema": "iwkqjxnfjutfnhhocco",
///         "aws_tags": {
///             "key6582": "wejhqyokgch",
///         },
///         "public_cloud_connectors_resource_id": "n",
///         "public_cloud_resource_name": "qrdvkbofzddttwvcfunr",
///     },
///     resource_group_name="rgkmsAlias",
///     tags={
///         "key1437": "lfgpfgxqkrvrlhnpwtzafonw",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   kmsAlias:
///     type: azure-native:awsconnector:KmsAlias
///     properties:
///       location: zsrefx
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: seecdsob
///         awsAccountId: mi
///         awsProperties:
///           aliasName: qpqfyfsgzbqqqwohdqogpksketglb
///           targetKeyId: fgiefgtmhdrvw
///         awsRegion: zofqccwhxvtaeqhhtqwmruhcjkro
///         awsSourceSchema: iwkqjxnfjutfnhhocco
///         awsTags:
///           key6582: wejhqyokgch
///         publicCloudConnectorsResourceId: n
///         publicCloudResourceName: qrdvkbofzddttwvcfunr
///       resourceGroupName: rgkmsAlias
///       tags:
///         key1437: lfgpfgxqkrvrlhnpwtzafonw
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
/// $ pulumi import azure-native:awsconnector:KmsAlias runvybddwo /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/kmsAliases/{name}
/// ```
class KmsAlias extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<KmsAliasPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [KmsAlias].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KmsAlias]. {@macro pulumi_awsconnector_kms_alias_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KmsAlias(
    String name, {
    KmsAliasArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:KmsAlias',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<KmsAliasPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KmsAliasPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
