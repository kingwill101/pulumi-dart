import 'package:pulumi/pulumi.dart' as pulumi;
import 'secrets_manager_secret_args.dart';
import 'secrets_manager_secret_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SecretsManagerSecrets_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var secretsManagerSecret = new AzureNative.AwsConnector.SecretsManagerSecret("secretsManagerSecret", new()
///     {
///         Location = "balqdxuifwdmtcinyxjit",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.SecretsManagerSecretPropertiesArgs
///         {
///             Arn = "qxrdtehsmibehk",
///             AwsAccountId = "wtxdsgybisrqopffdhreyacjrysd",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsSecretsManagerSecretPropertiesArgs
///             {
///                 Description = "esljjbmcrcqe",
///                 GenerateSecretString = new AzureNative.AwsConnector.Inputs.GenerateSecretStringArgs
///                 {
///                     ExcludeCharacters = "hsixzpgawn",
///                     ExcludeLowercase = true,
///                     ExcludeNumbers = true,
///                     ExcludePunctuation = true,
///                     ExcludeUppercase = true,
///                     GenerateStringKey = "dxyswggnusnewllmvmoskwswk",
///                     IncludeSpace = true,
///                     PasswordLength = 17,
///                     RequireEachIncludedType = true,
///                     SecretStringTemplate = "qgspiepreoyooekaprlglfjbvittue",
///                 },
///                 Id = "vpnzmovjfbrltixnsgeml",
///                 KmsKeyId = "vunob",
///                 Name = "jqmtr",
///                 ReplicaRegions = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.ReplicaRegionArgs
///                     {
///                         KmsKeyId = "bkyubkuxwbasjkguqm",
///                         Region = "m",
///                     },
///                 },
///                 SecretString = "sbroa",
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "ybodkythhxmehguhlrmodxhcduf",
///                         Value = "wrci",
///                     },
///                 },
///             },
///             AwsRegion = "mw",
///             AwsSourceSchema = "whhfrjfzgejfasbcycqe",
///             AwsTags =
///             {
///                 { "key4141", "jdlhnhoxtob" },
///             },
///             PublicCloudConnectorsResourceId = "osnofxgmgmrsc",
///             PublicCloudResourceName = "wj",
///         },
///         ResourceGroupName = "rgsecretsManagerSecret",
///         Tags =
///         {
///             { "key1461", "aqew" },
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
/// 		_, err := awsconnector.NewSecretsManagerSecret(ctx, "secretsManagerSecret", &awsconnector.SecretsManagerSecretArgs{
/// 			Location: pulumi.String("balqdxuifwdmtcinyxjit"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.SecretsManagerSecretPropertiesArgs{
/// 				Arn:          pulumi.String("qxrdtehsmibehk"),
/// 				AwsAccountId: pulumi.String("wtxdsgybisrqopffdhreyacjrysd"),
/// 				AwsProperties: &awsconnector.AwsSecretsManagerSecretPropertiesArgs{
/// 					Description: pulumi.String("esljjbmcrcqe"),
/// 					GenerateSecretString: &awsconnector.GenerateSecretStringArgs{
/// 						ExcludeCharacters:       pulumi.String("hsixzpgawn"),
/// 						ExcludeLowercase:        pulumi.Bool(true),
/// 						ExcludeNumbers:          pulumi.Bool(true),
/// 						ExcludePunctuation:      pulumi.Bool(true),
/// 						ExcludeUppercase:        pulumi.Bool(true),
/// 						GenerateStringKey:       pulumi.String("dxyswggnusnewllmvmoskwswk"),
/// 						IncludeSpace:            pulumi.Bool(true),
/// 						PasswordLength:          pulumi.Int(17),
/// 						RequireEachIncludedType: pulumi.Bool(true),
/// 						SecretStringTemplate:    pulumi.String("qgspiepreoyooekaprlglfjbvittue"),
/// 					},
/// 					Id:       pulumi.String("vpnzmovjfbrltixnsgeml"),
/// 					KmsKeyId: pulumi.String("vunob"),
/// 					Name:     pulumi.String("jqmtr"),
/// 					ReplicaRegions: awsconnector.ReplicaRegionArray{
/// 						&awsconnector.ReplicaRegionArgs{
/// 							KmsKeyId: pulumi.String("bkyubkuxwbasjkguqm"),
/// 							Region:   pulumi.String("m"),
/// 						},
/// 					},
/// 					SecretString: pulumi.String("sbroa"),
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("ybodkythhxmehguhlrmodxhcduf"),
/// 							Value: pulumi.String("wrci"),
/// 						},
/// 					},
/// 				},
/// 				AwsRegion:       pulumi.String("mw"),
/// 				AwsSourceSchema: pulumi.String("whhfrjfzgejfasbcycqe"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key4141": pulumi.String("jdlhnhoxtob"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("osnofxgmgmrsc"),
/// 				PublicCloudResourceName:         pulumi.String("wj"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgsecretsManagerSecret"),
/// 			Tags: pulumi.StringMap{
/// 				"key1461": pulumi.String("aqew"),
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
/// import com.pulumi.azurenative.awsconnector.SecretsManagerSecret;
/// import com.pulumi.azurenative.awsconnector.SecretsManagerSecretArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.SecretsManagerSecretPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsSecretsManagerSecretPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.GenerateSecretStringArgs;
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
///         var secretsManagerSecret = new SecretsManagerSecret("secretsManagerSecret", SecretsManagerSecretArgs.builder()
///             .location("balqdxuifwdmtcinyxjit")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(SecretsManagerSecretPropertiesArgs.builder()
///                 .arn("qxrdtehsmibehk")
///                 .awsAccountId("wtxdsgybisrqopffdhreyacjrysd")
///                 .awsProperties(AwsSecretsManagerSecretPropertiesArgs.builder()
///                     .description("esljjbmcrcqe")
///                     .generateSecretString(GenerateSecretStringArgs.builder()
///                         .excludeCharacters("hsixzpgawn")
///                         .excludeLowercase(true)
///                         .excludeNumbers(true)
///                         .excludePunctuation(true)
///                         .excludeUppercase(true)
///                         .generateStringKey("dxyswggnusnewllmvmoskwswk")
///                         .includeSpace(true)
///                         .passwordLength(17)
///                         .requireEachIncludedType(true)
///                         .secretStringTemplate("qgspiepreoyooekaprlglfjbvittue")
///                         .build())
///                     .id("vpnzmovjfbrltixnsgeml")
///                     .kmsKeyId("vunob")
///                     .name("jqmtr")
///                     .replicaRegions(ReplicaRegionArgs.builder()
///                         .kmsKeyId("bkyubkuxwbasjkguqm")
///                         .region("m")
///                         .build())
///                     .secretString("sbroa")
///                     .tags(TagArgs.builder()
///                         .key("ybodkythhxmehguhlrmodxhcduf")
///                         .value("wrci")
///                         .build())
///                     .build())
///                 .awsRegion("mw")
///                 .awsSourceSchema("whhfrjfzgejfasbcycqe")
///                 .awsTags(Map.of("key4141", "jdlhnhoxtob"))
///                 .publicCloudConnectorsResourceId("osnofxgmgmrsc")
///                 .publicCloudResourceName("wj")
///                 .build())
///             .resourceGroupName("rgsecretsManagerSecret")
///             .tags(Map.of("key1461", "aqew"))
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
/// const secretsManagerSecret = new azure_native.awsconnector.SecretsManagerSecret("secretsManagerSecret", {
///     location: "balqdxuifwdmtcinyxjit",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "qxrdtehsmibehk",
///         awsAccountId: "wtxdsgybisrqopffdhreyacjrysd",
///         awsProperties: {
///             description: "esljjbmcrcqe",
///             generateSecretString: {
///                 excludeCharacters: "hsixzpgawn",
///                 excludeLowercase: true,
///                 excludeNumbers: true,
///                 excludePunctuation: true,
///                 excludeUppercase: true,
///                 generateStringKey: "dxyswggnusnewllmvmoskwswk",
///                 includeSpace: true,
///                 passwordLength: 17,
///                 requireEachIncludedType: true,
///                 secretStringTemplate: "qgspiepreoyooekaprlglfjbvittue",
///             },
///             id: "vpnzmovjfbrltixnsgeml",
///             kmsKeyId: "vunob",
///             name: "jqmtr",
///             replicaRegions: [{
///                 kmsKeyId: "bkyubkuxwbasjkguqm",
///                 region: "m",
///             }],
///             secretString: "sbroa",
///             tags: [{
///                 key: "ybodkythhxmehguhlrmodxhcduf",
///                 value: "wrci",
///             }],
///         },
///         awsRegion: "mw",
///         awsSourceSchema: "whhfrjfzgejfasbcycqe",
///         awsTags: {
///             key4141: "jdlhnhoxtob",
///         },
///         publicCloudConnectorsResourceId: "osnofxgmgmrsc",
///         publicCloudResourceName: "wj",
///     },
///     resourceGroupName: "rgsecretsManagerSecret",
///     tags: {
///         key1461: "aqew",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// secrets_manager_secret = azure_native.awsconnector.SecretsManagerSecret("secretsManagerSecret",
///     location="balqdxuifwdmtcinyxjit",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "qxrdtehsmibehk",
///         "aws_account_id": "wtxdsgybisrqopffdhreyacjrysd",
///         "aws_properties": {
///             "description": "esljjbmcrcqe",
///             "generate_secret_string": {
///                 "exclude_characters": "hsixzpgawn",
///                 "exclude_lowercase": True,
///                 "exclude_numbers": True,
///                 "exclude_punctuation": True,
///                 "exclude_uppercase": True,
///                 "generate_string_key": "dxyswggnusnewllmvmoskwswk",
///                 "include_space": True,
///                 "password_length": 17,
///                 "require_each_included_type": True,
///                 "secret_string_template": "qgspiepreoyooekaprlglfjbvittue",
///             },
///             "id": "vpnzmovjfbrltixnsgeml",
///             "kms_key_id": "vunob",
///             "name": "jqmtr",
///             "replica_regions": [{
///                 "kms_key_id": "bkyubkuxwbasjkguqm",
///                 "region": "m",
///             }],
///             "secret_string": "sbroa",
///             "tags": [{
///                 "key": "ybodkythhxmehguhlrmodxhcduf",
///                 "value": "wrci",
///             }],
///         },
///         "aws_region": "mw",
///         "aws_source_schema": "whhfrjfzgejfasbcycqe",
///         "aws_tags": {
///             "key4141": "jdlhnhoxtob",
///         },
///         "public_cloud_connectors_resource_id": "osnofxgmgmrsc",
///         "public_cloud_resource_name": "wj",
///     },
///     resource_group_name="rgsecretsManagerSecret",
///     tags={
///         "key1461": "aqew",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   secretsManagerSecret:
///     type: azure-native:awsconnector:SecretsManagerSecret
///     properties:
///       location: balqdxuifwdmtcinyxjit
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: qxrdtehsmibehk
///         awsAccountId: wtxdsgybisrqopffdhreyacjrysd
///         awsProperties:
///           description: esljjbmcrcqe
///           generateSecretString:
///             excludeCharacters: hsixzpgawn
///             excludeLowercase: true
///             excludeNumbers: true
///             excludePunctuation: true
///             excludeUppercase: true
///             generateStringKey: dxyswggnusnewllmvmoskwswk
///             includeSpace: true
///             passwordLength: 17
///             requireEachIncludedType: true
///             secretStringTemplate: qgspiepreoyooekaprlglfjbvittue
///           id: vpnzmovjfbrltixnsgeml
///           kmsKeyId: vunob
///           name: jqmtr
///           replicaRegions:
///             - kmsKeyId: bkyubkuxwbasjkguqm
///               region: m
///           secretString: sbroa
///           tags:
///             - key: ybodkythhxmehguhlrmodxhcduf
///               value: wrci
///         awsRegion: mw
///         awsSourceSchema: whhfrjfzgejfasbcycqe
///         awsTags:
///           key4141: jdlhnhoxtob
///         publicCloudConnectorsResourceId: osnofxgmgmrsc
///         publicCloudResourceName: wj
///       resourceGroupName: rgsecretsManagerSecret
///       tags:
///         key1461: aqew
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
/// $ pulumi import azure-native:awsconnector:SecretsManagerSecret fhctmzwyqjl /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/secretsManagerSecrets/{name}
/// ```
class SecretsManagerSecret extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<SecretsManagerSecretPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SecretsManagerSecret].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecretsManagerSecret]. {@macro pulumi_awsconnector_secrets_manager_secret_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecretsManagerSecret(
    String name, {
    SecretsManagerSecretArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:SecretsManagerSecret',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<SecretsManagerSecretPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecretsManagerSecretPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
