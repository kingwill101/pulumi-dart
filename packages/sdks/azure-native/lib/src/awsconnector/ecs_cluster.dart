import 'package:pulumi/pulumi.dart' as pulumi;
import 'ecs_cluster_args.dart';
import 'ecs_cluster_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### EcsClusters_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ecsCluster = new AzureNative.AwsConnector.EcsCluster("ecsCluster", new()
///     {
///         Location = "jvggofkffzhlultqukgoqtb",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.EcsClusterPropertiesArgs
///         {
///             Arn = "mpaxeywurctxasgtrtckgeoeqmeec",
///             AwsAccountId = "emdtbelvualaeqexsrbhvczjsy",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsEcsClusterPropertiesArgs
///             {
///                 Arn = "mgzeckagdmmepybkhhylkhxzv",
///                 CapacityProviders = new[]
///                 {
///                     "rqrmclul",
///                 },
///                 ClusterName = "eavbe",
///                 ClusterSettings = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.ClusterSettingsArgs
///                     {
///                         Name = "elsikbbzpkzaghwtqd",
///                         Value = "gbnpceuced",
///                     },
///                 },
///                 Configuration = new AzureNative.AwsConnector.Inputs.ClusterConfigurationArgs
///                 {
///                     ExecuteCommandConfiguration = new AzureNative.AwsConnector.Inputs.ExecuteCommandConfigurationArgs
///                     {
///                         KmsKeyId = "budbdglk",
///                         LogConfiguration = new AzureNative.AwsConnector.Inputs.ExecuteCommandLogConfigurationArgs
///                         {
///                             CloudWatchEncryptionEnabled = true,
///                             CloudWatchLogGroupName = "eiskop",
///                             S3BucketName = "sfcsij",
///                             S3EncryptionEnabled = true,
///                             S3KeyPrefix = "gfqnhjcnamxvhrllkzrzdbqzsnkj",
///                         },
///                         Logging = "rspegmyokypfqdocdrothsgivaqf",
///                     },
///                 },
///                 DefaultCapacityProviderStrategy = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.CapacityProviderStrategyItemArgs
///                     {
///                         Base = 16,
///                         CapacityProvider = "kttxptzsaauhguaygucxzzvrbriev",
///                         Weight = 1,
///                     },
///                 },
///                 ServiceConnectDefaults = new AzureNative.AwsConnector.Inputs.ServiceConnectDefaultsArgs
///                 {
///                     Namespace = "mwpjrqkazpcetkgyfplp",
///                 },
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "pmgixnftvmfbxgjyulnrh",
///                         Value = "dsvfiamfdrnwqretfcu",
///                     },
///                 },
///             },
///             AwsRegion = "qwurftmiaqdjvlbsxtmdosiauw",
///             AwsSourceSchema = "dnbeeswitidsf",
///             AwsTags =
///             {
///                 { "key3315", "bczizbtmiazzuhju" },
///             },
///             PublicCloudConnectorsResourceId = "jbtlcmxmtlcgoxfktpqbi",
///             PublicCloudResourceName = "nquaerebgaopkptxxbreyhr",
///         },
///         ResourceGroupName = "rgecsCluster",
///         Tags =
///         {
///             { "key1755", "o" },
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
/// 		_, err := awsconnector.NewEcsCluster(ctx, "ecsCluster", &awsconnector.EcsClusterArgs{
/// 			Location: pulumi.String("jvggofkffzhlultqukgoqtb"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.EcsClusterPropertiesArgs{
/// 				Arn:          pulumi.String("mpaxeywurctxasgtrtckgeoeqmeec"),
/// 				AwsAccountId: pulumi.String("emdtbelvualaeqexsrbhvczjsy"),
/// 				AwsProperties: &awsconnector.AwsEcsClusterPropertiesArgs{
/// 					Arn: pulumi.String("mgzeckagdmmepybkhhylkhxzv"),
/// 					CapacityProviders: pulumi.StringArray{
/// 						pulumi.String("rqrmclul"),
/// 					},
/// 					ClusterName: pulumi.String("eavbe"),
/// 					ClusterSettings: awsconnector.ClusterSettingsArray{
/// 						&awsconnector.ClusterSettingsArgs{
/// 							Name:  pulumi.String("elsikbbzpkzaghwtqd"),
/// 							Value: pulumi.String("gbnpceuced"),
/// 						},
/// 					},
/// 					Configuration: &awsconnector.ClusterConfigurationArgs{
/// 						ExecuteCommandConfiguration: &awsconnector.ExecuteCommandConfigurationArgs{
/// 							KmsKeyId: pulumi.String("budbdglk"),
/// 							LogConfiguration: &awsconnector.ExecuteCommandLogConfigurationArgs{
/// 								CloudWatchEncryptionEnabled: pulumi.Bool(true),
/// 								CloudWatchLogGroupName:      pulumi.String("eiskop"),
/// 								S3BucketName:                pulumi.String("sfcsij"),
/// 								S3EncryptionEnabled:         pulumi.Bool(true),
/// 								S3KeyPrefix:                 pulumi.String("gfqnhjcnamxvhrllkzrzdbqzsnkj"),
/// 							},
/// 							Logging: pulumi.String("rspegmyokypfqdocdrothsgivaqf"),
/// 						},
/// 					},
/// 					DefaultCapacityProviderStrategy: awsconnector.CapacityProviderStrategyItemArray{
/// 						&awsconnector.CapacityProviderStrategyItemArgs{
/// 							Base:             pulumi.Int(16),
/// 							CapacityProvider: pulumi.String("kttxptzsaauhguaygucxzzvrbriev"),
/// 							Weight:           pulumi.Int(1),
/// 						},
/// 					},
/// 					ServiceConnectDefaults: &awsconnector.ServiceConnectDefaultsArgs{
/// 						Namespace: pulumi.String("mwpjrqkazpcetkgyfplp"),
/// 					},
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("pmgixnftvmfbxgjyulnrh"),
/// 							Value: pulumi.String("dsvfiamfdrnwqretfcu"),
/// 						},
/// 					},
/// 				},
/// 				AwsRegion:       pulumi.String("qwurftmiaqdjvlbsxtmdosiauw"),
/// 				AwsSourceSchema: pulumi.String("dnbeeswitidsf"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key3315": pulumi.String("bczizbtmiazzuhju"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("jbtlcmxmtlcgoxfktpqbi"),
/// 				PublicCloudResourceName:         pulumi.String("nquaerebgaopkptxxbreyhr"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgecsCluster"),
/// 			Tags: pulumi.StringMap{
/// 				"key1755": pulumi.String("o"),
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
/// import com.pulumi.azurenative.awsconnector.EcsCluster;
/// import com.pulumi.azurenative.awsconnector.EcsClusterArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.EcsClusterPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsEcsClusterPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ClusterConfigurationArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ExecuteCommandConfigurationArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ExecuteCommandLogConfigurationArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ServiceConnectDefaultsArgs;
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
///         var ecsCluster = new EcsCluster("ecsCluster", EcsClusterArgs.builder()
///             .location("jvggofkffzhlultqukgoqtb")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(EcsClusterPropertiesArgs.builder()
///                 .arn("mpaxeywurctxasgtrtckgeoeqmeec")
///                 .awsAccountId("emdtbelvualaeqexsrbhvczjsy")
///                 .awsProperties(AwsEcsClusterPropertiesArgs.builder()
///                     .arn("mgzeckagdmmepybkhhylkhxzv")
///                     .capacityProviders("rqrmclul")
///                     .clusterName("eavbe")
///                     .clusterSettings(ClusterSettingsArgs.builder()
///                         .name("elsikbbzpkzaghwtqd")
///                         .value("gbnpceuced")
///                         .build())
///                     .configuration(ClusterConfigurationArgs.builder()
///                         .executeCommandConfiguration(ExecuteCommandConfigurationArgs.builder()
///                             .kmsKeyId("budbdglk")
///                             .logConfiguration(ExecuteCommandLogConfigurationArgs.builder()
///                                 .cloudWatchEncryptionEnabled(true)
///                                 .cloudWatchLogGroupName("eiskop")
///                                 .s3BucketName("sfcsij")
///                                 .s3EncryptionEnabled(true)
///                                 .s3KeyPrefix("gfqnhjcnamxvhrllkzrzdbqzsnkj")
///                                 .build())
///                             .logging("rspegmyokypfqdocdrothsgivaqf")
///                             .build())
///                         .build())
///                     .defaultCapacityProviderStrategy(CapacityProviderStrategyItemArgs.builder()
///                         .base(16)
///                         .capacityProvider("kttxptzsaauhguaygucxzzvrbriev")
///                         .weight(1)
///                         .build())
///                     .serviceConnectDefaults(ServiceConnectDefaultsArgs.builder()
///                         .namespace("mwpjrqkazpcetkgyfplp")
///                         .build())
///                     .tags(TagArgs.builder()
///                         .key("pmgixnftvmfbxgjyulnrh")
///                         .value("dsvfiamfdrnwqretfcu")
///                         .build())
///                     .build())
///                 .awsRegion("qwurftmiaqdjvlbsxtmdosiauw")
///                 .awsSourceSchema("dnbeeswitidsf")
///                 .awsTags(Map.of("key3315", "bczizbtmiazzuhju"))
///                 .publicCloudConnectorsResourceId("jbtlcmxmtlcgoxfktpqbi")
///                 .publicCloudResourceName("nquaerebgaopkptxxbreyhr")
///                 .build())
///             .resourceGroupName("rgecsCluster")
///             .tags(Map.of("key1755", "o"))
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
/// const ecsCluster = new azure_native.awsconnector.EcsCluster("ecsCluster", {
///     location: "jvggofkffzhlultqukgoqtb",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "mpaxeywurctxasgtrtckgeoeqmeec",
///         awsAccountId: "emdtbelvualaeqexsrbhvczjsy",
///         awsProperties: {
///             arn: "mgzeckagdmmepybkhhylkhxzv",
///             capacityProviders: ["rqrmclul"],
///             clusterName: "eavbe",
///             clusterSettings: [{
///                 name: "elsikbbzpkzaghwtqd",
///                 value: "gbnpceuced",
///             }],
///             configuration: {
///                 executeCommandConfiguration: {
///                     kmsKeyId: "budbdglk",
///                     logConfiguration: {
///                         cloudWatchEncryptionEnabled: true,
///                         cloudWatchLogGroupName: "eiskop",
///                         s3BucketName: "sfcsij",
///                         s3EncryptionEnabled: true,
///                         s3KeyPrefix: "gfqnhjcnamxvhrllkzrzdbqzsnkj",
///                     },
///                     logging: "rspegmyokypfqdocdrothsgivaqf",
///                 },
///             },
///             defaultCapacityProviderStrategy: [{
///                 base: 16,
///                 capacityProvider: "kttxptzsaauhguaygucxzzvrbriev",
///                 weight: 1,
///             }],
///             serviceConnectDefaults: {
///                 namespace: "mwpjrqkazpcetkgyfplp",
///             },
///             tags: [{
///                 key: "pmgixnftvmfbxgjyulnrh",
///                 value: "dsvfiamfdrnwqretfcu",
///             }],
///         },
///         awsRegion: "qwurftmiaqdjvlbsxtmdosiauw",
///         awsSourceSchema: "dnbeeswitidsf",
///         awsTags: {
///             key3315: "bczizbtmiazzuhju",
///         },
///         publicCloudConnectorsResourceId: "jbtlcmxmtlcgoxfktpqbi",
///         publicCloudResourceName: "nquaerebgaopkptxxbreyhr",
///     },
///     resourceGroupName: "rgecsCluster",
///     tags: {
///         key1755: "o",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// ecs_cluster = azure_native.awsconnector.EcsCluster("ecsCluster",
///     location="jvggofkffzhlultqukgoqtb",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "mpaxeywurctxasgtrtckgeoeqmeec",
///         "aws_account_id": "emdtbelvualaeqexsrbhvczjsy",
///         "aws_properties": {
///             "arn": "mgzeckagdmmepybkhhylkhxzv",
///             "capacity_providers": ["rqrmclul"],
///             "cluster_name": "eavbe",
///             "cluster_settings": [{
///                 "name": "elsikbbzpkzaghwtqd",
///                 "value": "gbnpceuced",
///             }],
///             "configuration": {
///                 "execute_command_configuration": {
///                     "kms_key_id": "budbdglk",
///                     "log_configuration": {
///                         "cloud_watch_encryption_enabled": True,
///                         "cloud_watch_log_group_name": "eiskop",
///                         "s3_bucket_name": "sfcsij",
///                         "s3_encryption_enabled": True,
///                         "s3_key_prefix": "gfqnhjcnamxvhrllkzrzdbqzsnkj",
///                     },
///                     "logging": "rspegmyokypfqdocdrothsgivaqf",
///                 },
///             },
///             "default_capacity_provider_strategy": [{
///                 "base": 16,
///                 "capacity_provider": "kttxptzsaauhguaygucxzzvrbriev",
///                 "weight": 1,
///             }],
///             "service_connect_defaults": {
///                 "namespace": "mwpjrqkazpcetkgyfplp",
///             },
///             "tags": [{
///                 "key": "pmgixnftvmfbxgjyulnrh",
///                 "value": "dsvfiamfdrnwqretfcu",
///             }],
///         },
///         "aws_region": "qwurftmiaqdjvlbsxtmdosiauw",
///         "aws_source_schema": "dnbeeswitidsf",
///         "aws_tags": {
///             "key3315": "bczizbtmiazzuhju",
///         },
///         "public_cloud_connectors_resource_id": "jbtlcmxmtlcgoxfktpqbi",
///         "public_cloud_resource_name": "nquaerebgaopkptxxbreyhr",
///     },
///     resource_group_name="rgecsCluster",
///     tags={
///         "key1755": "o",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   ecsCluster:
///     type: azure-native:awsconnector:EcsCluster
///     properties:
///       location: jvggofkffzhlultqukgoqtb
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: mpaxeywurctxasgtrtckgeoeqmeec
///         awsAccountId: emdtbelvualaeqexsrbhvczjsy
///         awsProperties:
///           arn: mgzeckagdmmepybkhhylkhxzv
///           capacityProviders:
///             - rqrmclul
///           clusterName: eavbe
///           clusterSettings:
///             - name: elsikbbzpkzaghwtqd
///               value: gbnpceuced
///           configuration:
///             executeCommandConfiguration:
///               kmsKeyId: budbdglk
///               logConfiguration:
///                 cloudWatchEncryptionEnabled: true
///                 cloudWatchLogGroupName: eiskop
///                 s3BucketName: sfcsij
///                 s3EncryptionEnabled: true
///                 s3KeyPrefix: gfqnhjcnamxvhrllkzrzdbqzsnkj
///               logging: rspegmyokypfqdocdrothsgivaqf
///           defaultCapacityProviderStrategy:
///             - base: 16
///               capacityProvider: kttxptzsaauhguaygucxzzvrbriev
///               weight: 1
///           serviceConnectDefaults:
///             namespace: mwpjrqkazpcetkgyfplp
///           tags:
///             - key: pmgixnftvmfbxgjyulnrh
///               value: dsvfiamfdrnwqretfcu
///         awsRegion: qwurftmiaqdjvlbsxtmdosiauw
///         awsSourceSchema: dnbeeswitidsf
///         awsTags:
///           key3315: bczizbtmiazzuhju
///         publicCloudConnectorsResourceId: jbtlcmxmtlcgoxfktpqbi
///         publicCloudResourceName: nquaerebgaopkptxxbreyhr
///       resourceGroupName: rgecsCluster
///       tags:
///         key1755: o
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
/// $ pulumi import azure-native:awsconnector:EcsCluster unezrtpygmickuuftycmdarakgw /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/ecsClusters/{name}
/// ```
class EcsCluster extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<EcsClusterPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [EcsCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EcsCluster]. {@macro pulumi_awsconnector_ecs_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EcsCluster(
    String name, {
    EcsClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:awsconnector:EcsCluster',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<EcsClusterPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EcsClusterPropertiesResponse.fromMap(
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
