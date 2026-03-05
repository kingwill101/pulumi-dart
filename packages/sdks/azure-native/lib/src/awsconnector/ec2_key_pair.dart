import 'package:pulumi/pulumi.dart' as pulumi;
import 'ec2_key_pair_args.dart';
import 'ec2_key_pair_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Ec2KeyPairs_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ec2KeyPair = new AzureNative.AwsConnector.Ec2KeyPair("ec2KeyPair", new()
///     {
///         Location = "okgykmqgdqfktczzwnisgblxjor",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.Ec2KeyPairPropertiesArgs
///         {
///             Arn = "hbplblilwwscgwiaifygy",
///             AwsAccountId = "iamyich",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsEc2KeyPairPropertiesArgs
///             {
///                 KeyFingerprint = "xamuanffyhal",
///                 KeyFormat = AzureNative.AwsConnector.KeyFormat.Pem,
///                 KeyName = "jsltsdchgdrtwidgfy",
///                 KeyPairId = "tqtfcaqdmookxfgpvbzkyzzgstwqh",
///                 KeyType = AzureNative.AwsConnector.KeyType.Ed25519,
///                 PublicKeyMaterial = "wewhsgvwdbsygwbukotmsiu",
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "tthjjmap",
///                         Value = "fcqkvmxnvgkszsjglbmc",
///                     },
///                 },
///             },
///             AwsRegion = "zkxhveyqnzcmihgmancphtwumisld",
///             AwsSourceSchema = "qbl",
///             AwsTags =
///             {
///                 { "key6629", "qrszxqxtlbgttasepkymnkamqvw" },
///             },
///             PublicCloudConnectorsResourceId = "dtqfffijdvwrjascztihbhcjfo",
///             PublicCloudResourceName = "nyywppatxodspls",
///         },
///         ResourceGroupName = "rgec2KeyPair",
///         Tags =
///         {
///             { "key7076", "hevuyqs" },
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
/// 		_, err := awsconnector.NewEc2KeyPair(ctx, "ec2KeyPair", &awsconnector.Ec2KeyPairArgs{
/// 			Location: pulumi.String("okgykmqgdqfktczzwnisgblxjor"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.Ec2KeyPairPropertiesArgs{
/// 				Arn:          pulumi.String("hbplblilwwscgwiaifygy"),
/// 				AwsAccountId: pulumi.String("iamyich"),
/// 				AwsProperties: &awsconnector.AwsEc2KeyPairPropertiesArgs{
/// 					KeyFingerprint:    pulumi.String("xamuanffyhal"),
/// 					KeyFormat:         pulumi.String(awsconnector.KeyFormatPem),
/// 					KeyName:           pulumi.String("jsltsdchgdrtwidgfy"),
/// 					KeyPairId:         pulumi.String("tqtfcaqdmookxfgpvbzkyzzgstwqh"),
/// 					KeyType:           pulumi.String(awsconnector.KeyTypeEd25519),
/// 					PublicKeyMaterial: pulumi.String("wewhsgvwdbsygwbukotmsiu"),
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("tthjjmap"),
/// 							Value: pulumi.String("fcqkvmxnvgkszsjglbmc"),
/// 						},
/// 					},
/// 				},
/// 				AwsRegion:       pulumi.String("zkxhveyqnzcmihgmancphtwumisld"),
/// 				AwsSourceSchema: pulumi.String("qbl"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key6629": pulumi.String("qrszxqxtlbgttasepkymnkamqvw"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("dtqfffijdvwrjascztihbhcjfo"),
/// 				PublicCloudResourceName:         pulumi.String("nyywppatxodspls"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgec2KeyPair"),
/// 			Tags: pulumi.StringMap{
/// 				"key7076": pulumi.String("hevuyqs"),
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
/// import com.pulumi.azurenative.awsconnector.Ec2KeyPair;
/// import com.pulumi.azurenative.awsconnector.Ec2KeyPairArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.Ec2KeyPairPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsEc2KeyPairPropertiesArgs;
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
///         var ec2KeyPair = new Ec2KeyPair("ec2KeyPair", Ec2KeyPairArgs.builder()
///             .location("okgykmqgdqfktczzwnisgblxjor")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(Ec2KeyPairPropertiesArgs.builder()
///                 .arn("hbplblilwwscgwiaifygy")
///                 .awsAccountId("iamyich")
///                 .awsProperties(AwsEc2KeyPairPropertiesArgs.builder()
///                     .keyFingerprint("xamuanffyhal")
///                     .keyFormat("pem")
///                     .keyName("jsltsdchgdrtwidgfy")
///                     .keyPairId("tqtfcaqdmookxfgpvbzkyzzgstwqh")
///                     .keyType("ed25519")
///                     .publicKeyMaterial("wewhsgvwdbsygwbukotmsiu")
///                     .tags(TagArgs.builder()
///                         .key("tthjjmap")
///                         .value("fcqkvmxnvgkszsjglbmc")
///                         .build())
///                     .build())
///                 .awsRegion("zkxhveyqnzcmihgmancphtwumisld")
///                 .awsSourceSchema("qbl")
///                 .awsTags(Map.of("key6629", "qrszxqxtlbgttasepkymnkamqvw"))
///                 .publicCloudConnectorsResourceId("dtqfffijdvwrjascztihbhcjfo")
///                 .publicCloudResourceName("nyywppatxodspls")
///                 .build())
///             .resourceGroupName("rgec2KeyPair")
///             .tags(Map.of("key7076", "hevuyqs"))
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
/// const ec2KeyPair = new azure_native.awsconnector.Ec2KeyPair("ec2KeyPair", {
///     location: "okgykmqgdqfktczzwnisgblxjor",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "hbplblilwwscgwiaifygy",
///         awsAccountId: "iamyich",
///         awsProperties: {
///             keyFingerprint: "xamuanffyhal",
///             keyFormat: azure_native.awsconnector.KeyFormat.Pem,
///             keyName: "jsltsdchgdrtwidgfy",
///             keyPairId: "tqtfcaqdmookxfgpvbzkyzzgstwqh",
///             keyType: azure_native.awsconnector.KeyType.Ed25519,
///             publicKeyMaterial: "wewhsgvwdbsygwbukotmsiu",
///             tags: [{
///                 key: "tthjjmap",
///                 value: "fcqkvmxnvgkszsjglbmc",
///             }],
///         },
///         awsRegion: "zkxhveyqnzcmihgmancphtwumisld",
///         awsSourceSchema: "qbl",
///         awsTags: {
///             key6629: "qrszxqxtlbgttasepkymnkamqvw",
///         },
///         publicCloudConnectorsResourceId: "dtqfffijdvwrjascztihbhcjfo",
///         publicCloudResourceName: "nyywppatxodspls",
///     },
///     resourceGroupName: "rgec2KeyPair",
///     tags: {
///         key7076: "hevuyqs",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// ec2_key_pair = azure_native.awsconnector.Ec2KeyPair("ec2KeyPair",
///     location="okgykmqgdqfktczzwnisgblxjor",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "hbplblilwwscgwiaifygy",
///         "aws_account_id": "iamyich",
///         "aws_properties": {
///             "key_fingerprint": "xamuanffyhal",
///             "key_format": azure_native.awsconnector.KeyFormat.PEM,
///             "key_name": "jsltsdchgdrtwidgfy",
///             "key_pair_id": "tqtfcaqdmookxfgpvbzkyzzgstwqh",
///             "key_type": azure_native.awsconnector.KeyType.ED25519,
///             "public_key_material": "wewhsgvwdbsygwbukotmsiu",
///             "tags": [{
///                 "key": "tthjjmap",
///                 "value": "fcqkvmxnvgkszsjglbmc",
///             }],
///         },
///         "aws_region": "zkxhveyqnzcmihgmancphtwumisld",
///         "aws_source_schema": "qbl",
///         "aws_tags": {
///             "key6629": "qrszxqxtlbgttasepkymnkamqvw",
///         },
///         "public_cloud_connectors_resource_id": "dtqfffijdvwrjascztihbhcjfo",
///         "public_cloud_resource_name": "nyywppatxodspls",
///     },
///     resource_group_name="rgec2KeyPair",
///     tags={
///         "key7076": "hevuyqs",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   ec2KeyPair:
///     type: azure-native:awsconnector:Ec2KeyPair
///     properties:
///       location: okgykmqgdqfktczzwnisgblxjor
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: hbplblilwwscgwiaifygy
///         awsAccountId: iamyich
///         awsProperties:
///           keyFingerprint: xamuanffyhal
///           keyFormat: pem
///           keyName: jsltsdchgdrtwidgfy
///           keyPairId: tqtfcaqdmookxfgpvbzkyzzgstwqh
///           keyType: ed25519
///           publicKeyMaterial: wewhsgvwdbsygwbukotmsiu
///           tags:
///             - key: tthjjmap
///               value: fcqkvmxnvgkszsjglbmc
///         awsRegion: zkxhveyqnzcmihgmancphtwumisld
///         awsSourceSchema: qbl
///         awsTags:
///           key6629: qrszxqxtlbgttasepkymnkamqvw
///         publicCloudConnectorsResourceId: dtqfffijdvwrjascztihbhcjfo
///         publicCloudResourceName: nyywppatxodspls
///       resourceGroupName: rgec2KeyPair
///       tags:
///         key7076: hevuyqs
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
/// $ pulumi import azure-native:awsconnector:Ec2KeyPair cu /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/ec2KeyPairs/{name}
/// ```
class Ec2KeyPair extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<Ec2KeyPairPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Ec2KeyPair].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Ec2KeyPair]. {@macro pulumi_awsconnector_ec2_key_pair_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Ec2KeyPair(
    String name, {
    Ec2KeyPairArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:awsconnector:Ec2KeyPair',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<Ec2KeyPairPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return Ec2KeyPairPropertiesResponse.fromMap(
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
