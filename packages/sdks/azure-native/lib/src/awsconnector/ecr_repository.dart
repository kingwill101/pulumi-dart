import 'package:pulumi/pulumi.dart' as pulumi;
import 'ecr_repository_args.dart';
import 'ecr_repository_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### EcrRepositories_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ecrRepository = new AzureNative.AwsConnector.EcrRepository("ecrRepository", new()
///     {
///         Location = "uxqfbijfanljas",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.EcrRepositoryPropertiesArgs
///         {
///             Arn = "djb",
///             AwsAccountId = "iuomdzpobqirucabbxz",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsEcrRepositoryPropertiesArgs
///             {
///                 Arn = "su",
///                 EmptyOnDelete = true,
///                 EncryptionConfiguration = null,
///                 ImageScanningConfiguration = new AzureNative.AwsConnector.Inputs.ImageScanningConfigurationArgs
///                 {
///                     ScanOnPush = true,
///                 },
///                 ImageTagMutability = AzureNative.AwsConnector.ImageTagMutability.IMMUTABLE,
///                 LifecyclePolicy = null,
///                 RepositoryName = "iuhxuyfxygvumphlcwhnsscudjez",
///                 RepositoryPolicyText = null,
///                 RepositoryUri = "vmljyfyskxbyjczax",
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "moogqsaqjqbgghbindkarxdgqqna",
///                         Value = "qu",
///                     },
///                 },
///             },
///             AwsRegion = "wliyvzjqcxbpwtgjae",
///             AwsSourceSchema = "olwqyujnmxxhxwyp",
///             AwsTags =
///             {
///                 { "key7950", "aybyysonysxvutpeysuxoeinx" },
///             },
///             PublicCloudConnectorsResourceId = "ohtcynikymmfceroreix",
///             PublicCloudResourceName = "bymfiroqkcgssnop",
///         },
///         ResourceGroupName = "rgecrRepository",
///         Tags =
///         {
///             { "key2390", "rgv" },
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
/// 		_, err := awsconnector.NewEcrRepository(ctx, "ecrRepository", &awsconnector.EcrRepositoryArgs{
/// 			Location: pulumi.String("uxqfbijfanljas"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.EcrRepositoryPropertiesArgs{
/// 				Arn:          pulumi.String("djb"),
/// 				AwsAccountId: pulumi.String("iuomdzpobqirucabbxz"),
/// 				AwsProperties: &awsconnector.AwsEcrRepositoryPropertiesArgs{
/// 					Arn:                     pulumi.String("su"),
/// 					EmptyOnDelete:           pulumi.Bool(true),
/// 					EncryptionConfiguration: &awsconnector.EncryptionConfigurationArgs{},
/// 					ImageScanningConfiguration: &awsconnector.ImageScanningConfigurationArgs{
/// 						ScanOnPush: pulumi.Bool(true),
/// 					},
/// 					ImageTagMutability:   pulumi.String(awsconnector.ImageTagMutabilityIMMUTABLE),
/// 					LifecyclePolicy:      &awsconnector.LifecyclePolicyArgs{},
/// 					RepositoryName:       pulumi.String("iuhxuyfxygvumphlcwhnsscudjez"),
/// 					RepositoryPolicyText: pulumi.Any(map[string]interface{}{}),
/// 					RepositoryUri:        pulumi.String("vmljyfyskxbyjczax"),
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("moogqsaqjqbgghbindkarxdgqqna"),
/// 							Value: pulumi.String("qu"),
/// 						},
/// 					},
/// 				},
/// 				AwsRegion:       pulumi.String("wliyvzjqcxbpwtgjae"),
/// 				AwsSourceSchema: pulumi.String("olwqyujnmxxhxwyp"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key7950": pulumi.String("aybyysonysxvutpeysuxoeinx"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("ohtcynikymmfceroreix"),
/// 				PublicCloudResourceName:         pulumi.String("bymfiroqkcgssnop"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgecrRepository"),
/// 			Tags: pulumi.StringMap{
/// 				"key2390": pulumi.String("rgv"),
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
/// import com.pulumi.azurenative.awsconnector.EcrRepository;
/// import com.pulumi.azurenative.awsconnector.EcrRepositoryArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.EcrRepositoryPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsEcrRepositoryPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.EncryptionConfigurationArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ImageScanningConfigurationArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.LifecyclePolicyArgs;
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
///         var ecrRepository = new EcrRepository("ecrRepository", EcrRepositoryArgs.builder()
///             .location("uxqfbijfanljas")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(EcrRepositoryPropertiesArgs.builder()
///                 .arn("djb")
///                 .awsAccountId("iuomdzpobqirucabbxz")
///                 .awsProperties(AwsEcrRepositoryPropertiesArgs.builder()
///                     .arn("su")
///                     .emptyOnDelete(true)
///                     .encryptionConfiguration(EncryptionConfigurationArgs.builder()
///                         .build())
///                     .imageScanningConfiguration(ImageScanningConfigurationArgs.builder()
///                         .scanOnPush(true)
///                         .build())
///                     .imageTagMutability("IMMUTABLE")
///                     .lifecyclePolicy(LifecyclePolicyArgs.builder()
///                         .build())
///                     .repositoryName("iuhxuyfxygvumphlcwhnsscudjez")
///                     .repositoryPolicyText(Map.ofEntries(
///                     ))
///                     .repositoryUri("vmljyfyskxbyjczax")
///                     .tags(TagArgs.builder()
///                         .key("moogqsaqjqbgghbindkarxdgqqna")
///                         .value("qu")
///                         .build())
///                     .build())
///                 .awsRegion("wliyvzjqcxbpwtgjae")
///                 .awsSourceSchema("olwqyujnmxxhxwyp")
///                 .awsTags(Map.of("key7950", "aybyysonysxvutpeysuxoeinx"))
///                 .publicCloudConnectorsResourceId("ohtcynikymmfceroreix")
///                 .publicCloudResourceName("bymfiroqkcgssnop")
///                 .build())
///             .resourceGroupName("rgecrRepository")
///             .tags(Map.of("key2390", "rgv"))
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
/// const ecrRepository = new azure_native.awsconnector.EcrRepository("ecrRepository", {
///     location: "uxqfbijfanljas",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "djb",
///         awsAccountId: "iuomdzpobqirucabbxz",
///         awsProperties: {
///             arn: "su",
///             emptyOnDelete: true,
///             encryptionConfiguration: {},
///             imageScanningConfiguration: {
///                 scanOnPush: true,
///             },
///             imageTagMutability: azure_native.awsconnector.ImageTagMutability.IMMUTABLE,
///             lifecyclePolicy: {},
///             repositoryName: "iuhxuyfxygvumphlcwhnsscudjez",
///             repositoryPolicyText: {},
///             repositoryUri: "vmljyfyskxbyjczax",
///             tags: [{
///                 key: "moogqsaqjqbgghbindkarxdgqqna",
///                 value: "qu",
///             }],
///         },
///         awsRegion: "wliyvzjqcxbpwtgjae",
///         awsSourceSchema: "olwqyujnmxxhxwyp",
///         awsTags: {
///             key7950: "aybyysonysxvutpeysuxoeinx",
///         },
///         publicCloudConnectorsResourceId: "ohtcynikymmfceroreix",
///         publicCloudResourceName: "bymfiroqkcgssnop",
///     },
///     resourceGroupName: "rgecrRepository",
///     tags: {
///         key2390: "rgv",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// ecr_repository = azure_native.awsconnector.EcrRepository("ecrRepository",
///     location="uxqfbijfanljas",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "djb",
///         "aws_account_id": "iuomdzpobqirucabbxz",
///         "aws_properties": {
///             "arn": "su",
///             "empty_on_delete": True,
///             "encryption_configuration": {},
///             "image_scanning_configuration": {
///                 "scan_on_push": True,
///             },
///             "image_tag_mutability": azure_native.awsconnector.ImageTagMutability.IMMUTABLE,
///             "lifecycle_policy": {},
///             "repository_name": "iuhxuyfxygvumphlcwhnsscudjez",
///             "repository_policy_text": {},
///             "repository_uri": "vmljyfyskxbyjczax",
///             "tags": [{
///                 "key": "moogqsaqjqbgghbindkarxdgqqna",
///                 "value": "qu",
///             }],
///         },
///         "aws_region": "wliyvzjqcxbpwtgjae",
///         "aws_source_schema": "olwqyujnmxxhxwyp",
///         "aws_tags": {
///             "key7950": "aybyysonysxvutpeysuxoeinx",
///         },
///         "public_cloud_connectors_resource_id": "ohtcynikymmfceroreix",
///         "public_cloud_resource_name": "bymfiroqkcgssnop",
///     },
///     resource_group_name="rgecrRepository",
///     tags={
///         "key2390": "rgv",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   ecrRepository:
///     type: azure-native:awsconnector:EcrRepository
///     properties:
///       location: uxqfbijfanljas
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: djb
///         awsAccountId: iuomdzpobqirucabbxz
///         awsProperties:
///           arn: su
///           emptyOnDelete: true
///           encryptionConfiguration: {}
///           imageScanningConfiguration:
///             scanOnPush: true
///           imageTagMutability: IMMUTABLE
///           lifecyclePolicy: {}
///           repositoryName: iuhxuyfxygvumphlcwhnsscudjez
///           repositoryPolicyText: {}
///           repositoryUri: vmljyfyskxbyjczax
///           tags:
///             - key: moogqsaqjqbgghbindkarxdgqqna
///               value: qu
///         awsRegion: wliyvzjqcxbpwtgjae
///         awsSourceSchema: olwqyujnmxxhxwyp
///         awsTags:
///           key7950: aybyysonysxvutpeysuxoeinx
///         publicCloudConnectorsResourceId: ohtcynikymmfceroreix
///         publicCloudResourceName: bymfiroqkcgssnop
///       resourceGroupName: rgecrRepository
///       tags:
///         key2390: rgv
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
/// $ pulumi import azure-native:awsconnector:EcrRepository hroacoybjuvv /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/ecrRepositories/{name}
/// ```
class EcrRepository extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<EcrRepositoryPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [EcrRepository].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EcrRepository]. {@macro pulumi_awsconnector_ecr_repository_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EcrRepository(
    String name, {
    EcrRepositoryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:awsconnector:EcrRepository',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<EcrRepositoryPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EcrRepositoryPropertiesResponse.fromMap(
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
