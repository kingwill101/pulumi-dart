import 'package:pulumi/pulumi.dart' as pulumi;
import 'kms_key_args.dart';
import 'kms_key_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### KmsKeys_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var kmsKey = new AzureNative.AwsConnector.KmsKey("kmsKey", new()
///     {
///         Location = "qozbasr",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.KmsKeyPropertiesArgs
///         {
///             Arn = "qszqxzva",
///             AwsAccountId = "rvkcvpmljvwdryvsugsuc",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsKmsKeyPropertiesArgs
///             {
///                 Arn = "qglsfyxssylnrh",
///                 BypassPolicyLockoutSafetyCheck = true,
///                 Description = "mjtmquqbhnvjw",
///                 EnableKeyRotation = true,
///                 Enabled = true,
///                 KeyId = "hgwon",
///                 KeyPolicy = null,
///                 KeySpec = AzureNative.AwsConnector.KeySpec.ECC_NIST_P256,
///                 KeyUsage = AzureNative.AwsConnector.KeyUsage.ENCRYPT_DECRYPT,
///                 MultiRegion = true,
///                 Origin = AzureNative.AwsConnector.Origin.AWS_KMS,
///                 PendingWindowInDays = 7,
///                 RotationPeriodInDays = 4,
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "eprsfobey",
///                         Value = "lcaeaqxughlzgzhbbi",
///                     },
///                 },
///             },
///             AwsRegion = "hvyzzutginnqrhgkyyripyqhqkofm",
///             AwsSourceSchema = "cvatoa",
///             AwsTags =
///             {
///                 { "key8656", "ctsbcnfhcvojqkiouaoyaetkdt" },
///             },
///             PublicCloudConnectorsResourceId = "tsbeayhnreovxnkbtbrvnuielziq",
///             PublicCloudResourceName = "edkcxntzxplnpl",
///         },
///         ResourceGroupName = "rgkmsKey",
///         Tags =
///         {
///             { "key3909", "dxto" },
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
/// 		_, err := awsconnector.NewKmsKey(ctx, "kmsKey", &awsconnector.KmsKeyArgs{
/// 			Location: pulumi.String("qozbasr"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.KmsKeyPropertiesArgs{
/// 				Arn:          pulumi.String("qszqxzva"),
/// 				AwsAccountId: pulumi.String("rvkcvpmljvwdryvsugsuc"),
/// 				AwsProperties: &awsconnector.AwsKmsKeyPropertiesArgs{
/// 					Arn:                            pulumi.String("qglsfyxssylnrh"),
/// 					BypassPolicyLockoutSafetyCheck: pulumi.Bool(true),
/// 					Description:                    pulumi.String("mjtmquqbhnvjw"),
/// 					EnableKeyRotation:              pulumi.Bool(true),
/// 					Enabled:                        pulumi.Bool(true),
/// 					KeyId:                          pulumi.String("hgwon"),
/// 					KeyPolicy:                      pulumi.Any(map[string]interface{}{}),
/// 					KeySpec:                        pulumi.String(awsconnector.KeySpec_ECC_NIST_P256),
/// 					KeyUsage:                       pulumi.String(awsconnector.KeyUsage_ENCRYPT_DECRYPT),
/// 					MultiRegion:                    pulumi.Bool(true),
/// 					Origin:                         pulumi.String(awsconnector.Origin_AWS_KMS),
/// 					PendingWindowInDays:            pulumi.Int(7),
/// 					RotationPeriodInDays:           pulumi.Int(4),
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("eprsfobey"),
/// 							Value: pulumi.String("lcaeaqxughlzgzhbbi"),
/// 						},
/// 					},
/// 				},
/// 				AwsRegion:       pulumi.String("hvyzzutginnqrhgkyyripyqhqkofm"),
/// 				AwsSourceSchema: pulumi.String("cvatoa"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key8656": pulumi.String("ctsbcnfhcvojqkiouaoyaetkdt"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("tsbeayhnreovxnkbtbrvnuielziq"),
/// 				PublicCloudResourceName:         pulumi.String("edkcxntzxplnpl"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgkmsKey"),
/// 			Tags: pulumi.StringMap{
/// 				"key3909": pulumi.String("dxto"),
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
/// resource "azure-native_awsconnector_kmskey" "kmsKey" {
///   location = "qozbasr"
///   name     = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"
///   properties = {
///     arn            = "qszqxzva"
///     aws_account_id = "rvkcvpmljvwdryvsugsuc"
///     aws_properties = {
///       arn                                = "qglsfyxssylnrh"
///       bypass_policy_lockout_safety_check = true
///       description                        = "mjtmquqbhnvjw"
///       enable_key_rotation                = true
///       enabled                            = true
///       key_id                             = "hgwon"
///       key_policy                         = {}
///       key_spec                           = "ECC_NIST_P256"
///       key_usage                          = "ENCRYPT_DECRYPT"
///       multi_region                       = true
///       origin                             = "AWS_KMS"
///       pending_window_in_days             = 7
///       rotation_period_in_days            = 4
///       tags = [{
///         "key"   = "eprsfobey"
///         "value" = "lcaeaqxughlzgzhbbi"
///       }]
///     }
///     aws_region        = "hvyzzutginnqrhgkyyripyqhqkofm"
///     aws_source_schema = "cvatoa"
///     aws_tags = {
///       "key8656" = "ctsbcnfhcvojqkiouaoyaetkdt"
///     }
///     public_cloud_connectors_resource_id = "tsbeayhnreovxnkbtbrvnuielziq"
///     public_cloud_resource_name          = "edkcxntzxplnpl"
///   }
///   resource_group_name = "rgkmsKey"
///   tags = {
///     "key3909" = "dxto"
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
/// import com.pulumi.azurenative.awsconnector.KmsKey;
/// import com.pulumi.azurenative.awsconnector.KmsKeyArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.KmsKeyPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsKmsKeyPropertiesArgs;
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
///         var kmsKey = new KmsKey("kmsKey", KmsKeyArgs.builder()
///             .location("qozbasr")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(KmsKeyPropertiesArgs.builder()
///                 .arn("qszqxzva")
///                 .awsAccountId("rvkcvpmljvwdryvsugsuc")
///                 .awsProperties(AwsKmsKeyPropertiesArgs.builder()
///                     .arn("qglsfyxssylnrh")
///                     .bypassPolicyLockoutSafetyCheck(true)
///                     .description("mjtmquqbhnvjw")
///                     .enableKeyRotation(true)
///                     .enabled(true)
///                     .keyId("hgwon")
///                     .keyPolicy(Map.ofEntries(
///                     ))
///                     .keySpec("ECC_NIST_P256")
///                     .keyUsage("ENCRYPT_DECRYPT")
///                     .multiRegion(true)
///                     .origin("AWS_KMS")
///                     .pendingWindowInDays(7)
///                     .rotationPeriodInDays(4)
///                     .tags(TagArgs.builder()
///                         .key("eprsfobey")
///                         .value("lcaeaqxughlzgzhbbi")
///                         .build())
///                     .build())
///                 .awsRegion("hvyzzutginnqrhgkyyripyqhqkofm")
///                 .awsSourceSchema("cvatoa")
///                 .awsTags(Map.of("key8656", "ctsbcnfhcvojqkiouaoyaetkdt"))
///                 .publicCloudConnectorsResourceId("tsbeayhnreovxnkbtbrvnuielziq")
///                 .publicCloudResourceName("edkcxntzxplnpl")
///                 .build())
///             .resourceGroupName("rgkmsKey")
///             .tags(Map.of("key3909", "dxto"))
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
/// const kmsKey = new azure_native.awsconnector.KmsKey("kmsKey", {
///     location: "qozbasr",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "qszqxzva",
///         awsAccountId: "rvkcvpmljvwdryvsugsuc",
///         awsProperties: {
///             arn: "qglsfyxssylnrh",
///             bypassPolicyLockoutSafetyCheck: true,
///             description: "mjtmquqbhnvjw",
///             enableKeyRotation: true,
///             enabled: true,
///             keyId: "hgwon",
///             keyPolicy: {},
///             keySpec: azure_native.awsconnector.KeySpec.ECC_NIST_P256,
///             keyUsage: azure_native.awsconnector.KeyUsage.ENCRYPT_DECRYPT,
///             multiRegion: true,
///             origin: azure_native.awsconnector.Origin.AWS_KMS,
///             pendingWindowInDays: 7,
///             rotationPeriodInDays: 4,
///             tags: [{
///                 key: "eprsfobey",
///                 value: "lcaeaqxughlzgzhbbi",
///             }],
///         },
///         awsRegion: "hvyzzutginnqrhgkyyripyqhqkofm",
///         awsSourceSchema: "cvatoa",
///         awsTags: {
///             key8656: "ctsbcnfhcvojqkiouaoyaetkdt",
///         },
///         publicCloudConnectorsResourceId: "tsbeayhnreovxnkbtbrvnuielziq",
///         publicCloudResourceName: "edkcxntzxplnpl",
///     },
///     resourceGroupName: "rgkmsKey",
///     tags: {
///         key3909: "dxto",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// kms_key = azure_native.awsconnector.KmsKey("kmsKey",
///     location="qozbasr",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "qszqxzva",
///         "aws_account_id": "rvkcvpmljvwdryvsugsuc",
///         "aws_properties": {
///             "arn": "qglsfyxssylnrh",
///             "bypass_policy_lockout_safety_check": True,
///             "description": "mjtmquqbhnvjw",
///             "enable_key_rotation": True,
///             "enabled": True,
///             "key_id": "hgwon",
///             "key_policy": {},
///             "key_spec": azure_native.awsconnector.KeySpec.EC_C_NIS_T_P256,
///             "key_usage": azure_native.awsconnector.KeyUsage.ENCRYP_T_DECRYPT,
///             "multi_region": True,
///             "origin": azure_native.awsconnector.Origin.AW_S_KMS,
///             "pending_window_in_days": 7,
///             "rotation_period_in_days": 4,
///             "tags": [{
///                 "key": "eprsfobey",
///                 "value": "lcaeaqxughlzgzhbbi",
///             }],
///         },
///         "aws_region": "hvyzzutginnqrhgkyyripyqhqkofm",
///         "aws_source_schema": "cvatoa",
///         "aws_tags": {
///             "key8656": "ctsbcnfhcvojqkiouaoyaetkdt",
///         },
///         "public_cloud_connectors_resource_id": "tsbeayhnreovxnkbtbrvnuielziq",
///         "public_cloud_resource_name": "edkcxntzxplnpl",
///     },
///     resource_group_name="rgkmsKey",
///     tags={
///         "key3909": "dxto",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   kmsKey:
///     type: azure-native:awsconnector:KmsKey
///     properties:
///       location: qozbasr
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: qszqxzva
///         awsAccountId: rvkcvpmljvwdryvsugsuc
///         awsProperties:
///           arn: qglsfyxssylnrh
///           bypassPolicyLockoutSafetyCheck: true
///           description: mjtmquqbhnvjw
///           enableKeyRotation: true
///           enabled: true
///           keyId: hgwon
///           keyPolicy: {}
///           keySpec: ECC_NIST_P256
///           keyUsage: ENCRYPT_DECRYPT
///           multiRegion: true
///           origin: AWS_KMS
///           pendingWindowInDays: 7
///           rotationPeriodInDays: 4
///           tags:
///             - key: eprsfobey
///               value: lcaeaqxughlzgzhbbi
///         awsRegion: hvyzzutginnqrhgkyyripyqhqkofm
///         awsSourceSchema: cvatoa
///         awsTags:
///           key8656: ctsbcnfhcvojqkiouaoyaetkdt
///         publicCloudConnectorsResourceId: tsbeayhnreovxnkbtbrvnuielziq
///         publicCloudResourceName: edkcxntzxplnpl
///       resourceGroupName: rgkmsKey
///       tags:
///         key3909: dxto
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
/// $ pulumi import azure-native:awsconnector:KmsKey dfo /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/kmsKeys/{name}
/// ```
class KmsKey extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<KmsKeyPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [KmsKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KmsKey]. {@macro pulumi_awsconnector_kms_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KmsKey(
    String name, {
    KmsKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:KmsKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<KmsKeyPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KmsKeyPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [KmsKey] resource.
  KmsKey.reference(String urn)
    : super(
        'azure-native:awsconnector:KmsKey',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<KmsKeyPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KmsKeyPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
