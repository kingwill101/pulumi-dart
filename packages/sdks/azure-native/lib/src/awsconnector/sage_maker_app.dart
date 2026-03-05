import 'package:pulumi/pulumi.dart' as pulumi;
import 'sage_maker_app_args.dart';
import 'sage_maker_app_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SageMakerApps_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sageMakerApp = new AzureNative.AwsConnector.SageMakerApp("sageMakerApp", new()
///     {
///         Location = "wnlhgbkbelgwiwhnismoau",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.SageMakerAppPropertiesArgs
///         {
///             Arn = "jlzaozimvtjn",
///             AwsAccountId = "lgqcehdauhqdqezactw",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsSageMakerAppPropertiesArgs
///             {
///                 AppArn = "gher",
///                 AppName = "evzkcyynebo",
///                 AppType = AzureNative.AwsConnector.AppType.Canvas,
///                 DomainId = "dkqxukvimzaw",
///                 ResourceSpec = new AzureNative.AwsConnector.Inputs.ResourceSpecArgs
///                 {
///                     InstanceType = AzureNative.AwsConnector.ResourceSpecInstanceType.MlC512xlarge,
///                     SageMakerImageArn = "pgukixbhpruaz",
///                     SageMakerImageVersionArn = "juqpu",
///                 },
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "bwiejavqzxocieoyuhmayxvf",
///                         Value = "oiirwwaoqv",
///                     },
///                 },
///                 UserProfileName = "hqjtakkgaetxvrmswgdzfbnna",
///             },
///             AwsRegion = "tnogtlqasqlenkt",
///             AwsSourceSchema = "xshoewjusdxuy",
///             AwsTags =
///             {
///                 { "key2126", "vfltdeknkbeu" },
///             },
///             PublicCloudConnectorsResourceId = "vaphifjjavrvy",
///             PublicCloudResourceName = "ptlnykuziapscweekj",
///         },
///         ResourceGroupName = "rgsageMakerApp",
///         Tags =
///         {
///             { "key3532", "z" },
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
/// 		_, err := awsconnector.NewSageMakerApp(ctx, "sageMakerApp", &awsconnector.SageMakerAppArgs{
/// 			Location: pulumi.String("wnlhgbkbelgwiwhnismoau"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.SageMakerAppPropertiesArgs{
/// 				Arn:          pulumi.String("jlzaozimvtjn"),
/// 				AwsAccountId: pulumi.String("lgqcehdauhqdqezactw"),
/// 				AwsProperties: &awsconnector.AwsSageMakerAppPropertiesArgs{
/// 					AppArn:   pulumi.String("gher"),
/// 					AppName:  pulumi.String("evzkcyynebo"),
/// 					AppType:  pulumi.String(awsconnector.AppTypeCanvas),
/// 					DomainId: pulumi.String("dkqxukvimzaw"),
/// 					ResourceSpec: &awsconnector.ResourceSpecArgs{
/// 						InstanceType:             pulumi.String(awsconnector.ResourceSpecInstanceTypeMlC512xlarge),
/// 						SageMakerImageArn:        pulumi.String("pgukixbhpruaz"),
/// 						SageMakerImageVersionArn: pulumi.String("juqpu"),
/// 					},
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("bwiejavqzxocieoyuhmayxvf"),
/// 							Value: pulumi.String("oiirwwaoqv"),
/// 						},
/// 					},
/// 					UserProfileName: pulumi.String("hqjtakkgaetxvrmswgdzfbnna"),
/// 				},
/// 				AwsRegion:       pulumi.String("tnogtlqasqlenkt"),
/// 				AwsSourceSchema: pulumi.String("xshoewjusdxuy"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key2126": pulumi.String("vfltdeknkbeu"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("vaphifjjavrvy"),
/// 				PublicCloudResourceName:         pulumi.String("ptlnykuziapscweekj"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgsageMakerApp"),
/// 			Tags: pulumi.StringMap{
/// 				"key3532": pulumi.String("z"),
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
/// import com.pulumi.azurenative.awsconnector.SageMakerApp;
/// import com.pulumi.azurenative.awsconnector.SageMakerAppArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.SageMakerAppPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsSageMakerAppPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ResourceSpecArgs;
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
///         var sageMakerApp = new SageMakerApp("sageMakerApp", SageMakerAppArgs.builder()
///             .location("wnlhgbkbelgwiwhnismoau")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(SageMakerAppPropertiesArgs.builder()
///                 .arn("jlzaozimvtjn")
///                 .awsAccountId("lgqcehdauhqdqezactw")
///                 .awsProperties(AwsSageMakerAppPropertiesArgs.builder()
///                     .appArn("gher")
///                     .appName("evzkcyynebo")
///                     .appType("Canvas")
///                     .domainId("dkqxukvimzaw")
///                     .resourceSpec(ResourceSpecArgs.builder()
///                         .instanceType("ml.c5.12xlarge")
///                         .sageMakerImageArn("pgukixbhpruaz")
///                         .sageMakerImageVersionArn("juqpu")
///                         .build())
///                     .tags(TagArgs.builder()
///                         .key("bwiejavqzxocieoyuhmayxvf")
///                         .value("oiirwwaoqv")
///                         .build())
///                     .userProfileName("hqjtakkgaetxvrmswgdzfbnna")
///                     .build())
///                 .awsRegion("tnogtlqasqlenkt")
///                 .awsSourceSchema("xshoewjusdxuy")
///                 .awsTags(Map.of("key2126", "vfltdeknkbeu"))
///                 .publicCloudConnectorsResourceId("vaphifjjavrvy")
///                 .publicCloudResourceName("ptlnykuziapscweekj")
///                 .build())
///             .resourceGroupName("rgsageMakerApp")
///             .tags(Map.of("key3532", "z"))
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
/// const sageMakerApp = new azure_native.awsconnector.SageMakerApp("sageMakerApp", {
///     location: "wnlhgbkbelgwiwhnismoau",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "jlzaozimvtjn",
///         awsAccountId: "lgqcehdauhqdqezactw",
///         awsProperties: {
///             appArn: "gher",
///             appName: "evzkcyynebo",
///             appType: azure_native.awsconnector.AppType.Canvas,
///             domainId: "dkqxukvimzaw",
///             resourceSpec: {
///                 instanceType: azure_native.awsconnector.ResourceSpecInstanceType.MlC512xlarge,
///                 sageMakerImageArn: "pgukixbhpruaz",
///                 sageMakerImageVersionArn: "juqpu",
///             },
///             tags: [{
///                 key: "bwiejavqzxocieoyuhmayxvf",
///                 value: "oiirwwaoqv",
///             }],
///             userProfileName: "hqjtakkgaetxvrmswgdzfbnna",
///         },
///         awsRegion: "tnogtlqasqlenkt",
///         awsSourceSchema: "xshoewjusdxuy",
///         awsTags: {
///             key2126: "vfltdeknkbeu",
///         },
///         publicCloudConnectorsResourceId: "vaphifjjavrvy",
///         publicCloudResourceName: "ptlnykuziapscweekj",
///     },
///     resourceGroupName: "rgsageMakerApp",
///     tags: {
///         key3532: "z",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sage_maker_app = azure_native.awsconnector.SageMakerApp("sageMakerApp",
///     location="wnlhgbkbelgwiwhnismoau",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "jlzaozimvtjn",
///         "aws_account_id": "lgqcehdauhqdqezactw",
///         "aws_properties": {
///             "app_arn": "gher",
///             "app_name": "evzkcyynebo",
///             "app_type": azure_native.awsconnector.AppType.CANVAS,
///             "domain_id": "dkqxukvimzaw",
///             "resource_spec": {
///                 "instance_type": azure_native.awsconnector.ResourceSpecInstanceType.ML_C512XLARGE,
///                 "sage_maker_image_arn": "pgukixbhpruaz",
///                 "sage_maker_image_version_arn": "juqpu",
///             },
///             "tags": [{
///                 "key": "bwiejavqzxocieoyuhmayxvf",
///                 "value": "oiirwwaoqv",
///             }],
///             "user_profile_name": "hqjtakkgaetxvrmswgdzfbnna",
///         },
///         "aws_region": "tnogtlqasqlenkt",
///         "aws_source_schema": "xshoewjusdxuy",
///         "aws_tags": {
///             "key2126": "vfltdeknkbeu",
///         },
///         "public_cloud_connectors_resource_id": "vaphifjjavrvy",
///         "public_cloud_resource_name": "ptlnykuziapscweekj",
///     },
///     resource_group_name="rgsageMakerApp",
///     tags={
///         "key3532": "z",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   sageMakerApp:
///     type: azure-native:awsconnector:SageMakerApp
///     properties:
///       location: wnlhgbkbelgwiwhnismoau
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: jlzaozimvtjn
///         awsAccountId: lgqcehdauhqdqezactw
///         awsProperties:
///           appArn: gher
///           appName: evzkcyynebo
///           appType: Canvas
///           domainId: dkqxukvimzaw
///           resourceSpec:
///             instanceType: ml.c5.12xlarge
///             sageMakerImageArn: pgukixbhpruaz
///             sageMakerImageVersionArn: juqpu
///           tags:
///             - key: bwiejavqzxocieoyuhmayxvf
///               value: oiirwwaoqv
///           userProfileName: hqjtakkgaetxvrmswgdzfbnna
///         awsRegion: tnogtlqasqlenkt
///         awsSourceSchema: xshoewjusdxuy
///         awsTags:
///           key2126: vfltdeknkbeu
///         publicCloudConnectorsResourceId: vaphifjjavrvy
///         publicCloudResourceName: ptlnykuziapscweekj
///       resourceGroupName: rgsageMakerApp
///       tags:
///         key3532: z
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
/// $ pulumi import azure-native:awsconnector:SageMakerApp bqmsonklppqgjvicxnpire /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/sageMakerApps/{name}
/// ```
class SageMakerApp extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<SageMakerAppPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SageMakerApp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SageMakerApp]. {@macro pulumi_awsconnector_sage_maker_app_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SageMakerApp(
    String name, {
    SageMakerAppArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:SageMakerApp',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<SageMakerAppPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SageMakerAppPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
