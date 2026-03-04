import 'package:pulumi/pulumi.dart' as pulumi;
import 'ec2_account_attribute_args.dart';
import 'ec2_account_attribute_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Ec2AccountAttributes_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ec2AccountAttribute = new AzureNative.AwsConnector.Ec2AccountAttribute("ec2AccountAttribute", new()
///     {
///         Location = "mxywielgbokfdxxwuudnbwzjcf",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.Ec2AccountAttributePropertiesArgs
///         {
///             Arn = "ttwi",
///             AwsAccountId = "jzeepmbcwiwakwsvqakkaz",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsEc2AccountAttributePropertiesArgs
///             {
///                 AttributeName = "vsrccnoksnxyyisrlfzkuj",
///                 AttributeValues = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.AccountAttributeValueArgs
///                     {
///                         AttributeValue = "lvlyhjnivtpgkbt",
///                     },
///                 },
///             },
///             AwsRegion = "ojtquhkurhjtoocjpjyibb",
///             AwsSourceSchema = "njukzwmmwgmvurer",
///             AwsTags =
///             {
///                 { "key2779", "qzjyzsygumaykisfigqlypvu" },
///             },
///             PublicCloudConnectorsResourceId = "rmmqxjdxoe",
///             PublicCloudResourceName = "lhdzqjxtfagnhbdjev",
///         },
///         ResourceGroupName = "rgec2AccountAttribute",
///         Tags =
///         {
///             { "key6022", "psppjmksguimpyjugsfgrp" },
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
/// 		_, err := awsconnector.NewEc2AccountAttribute(ctx, "ec2AccountAttribute", &awsconnector.Ec2AccountAttributeArgs{
/// 			Location: pulumi.String("mxywielgbokfdxxwuudnbwzjcf"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.Ec2AccountAttributePropertiesArgs{
/// 				Arn:          pulumi.String("ttwi"),
/// 				AwsAccountId: pulumi.String("jzeepmbcwiwakwsvqakkaz"),
/// 				AwsProperties: &awsconnector.AwsEc2AccountAttributePropertiesArgs{
/// 					AttributeName: pulumi.String("vsrccnoksnxyyisrlfzkuj"),
/// 					AttributeValues: awsconnector.AccountAttributeValueArray{
/// 						&awsconnector.AccountAttributeValueArgs{
/// 							AttributeValue: pulumi.String("lvlyhjnivtpgkbt"),
/// 						},
/// 					},
/// 				},
/// 				AwsRegion:       pulumi.String("ojtquhkurhjtoocjpjyibb"),
/// 				AwsSourceSchema: pulumi.String("njukzwmmwgmvurer"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key2779": pulumi.String("qzjyzsygumaykisfigqlypvu"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("rmmqxjdxoe"),
/// 				PublicCloudResourceName:         pulumi.String("lhdzqjxtfagnhbdjev"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgec2AccountAttribute"),
/// 			Tags: pulumi.StringMap{
/// 				"key6022": pulumi.String("psppjmksguimpyjugsfgrp"),
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
/// import com.pulumi.azurenative.awsconnector.Ec2AccountAttribute;
/// import com.pulumi.azurenative.awsconnector.Ec2AccountAttributeArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.Ec2AccountAttributePropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsEc2AccountAttributePropertiesArgs;
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
///         var ec2AccountAttribute = new Ec2AccountAttribute("ec2AccountAttribute", Ec2AccountAttributeArgs.builder()
///             .location("mxywielgbokfdxxwuudnbwzjcf")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(Ec2AccountAttributePropertiesArgs.builder()
///                 .arn("ttwi")
///                 .awsAccountId("jzeepmbcwiwakwsvqakkaz")
///                 .awsProperties(AwsEc2AccountAttributePropertiesArgs.builder()
///                     .attributeName("vsrccnoksnxyyisrlfzkuj")
///                     .attributeValues(AccountAttributeValueArgs.builder()
///                         .attributeValue("lvlyhjnivtpgkbt")
///                         .build())
///                     .build())
///                 .awsRegion("ojtquhkurhjtoocjpjyibb")
///                 .awsSourceSchema("njukzwmmwgmvurer")
///                 .awsTags(Map.of("key2779", "qzjyzsygumaykisfigqlypvu"))
///                 .publicCloudConnectorsResourceId("rmmqxjdxoe")
///                 .publicCloudResourceName("lhdzqjxtfagnhbdjev")
///                 .build())
///             .resourceGroupName("rgec2AccountAttribute")
///             .tags(Map.of("key6022", "psppjmksguimpyjugsfgrp"))
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
/// const ec2AccountAttribute = new azure_native.awsconnector.Ec2AccountAttribute("ec2AccountAttribute", {
///     location: "mxywielgbokfdxxwuudnbwzjcf",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "ttwi",
///         awsAccountId: "jzeepmbcwiwakwsvqakkaz",
///         awsProperties: {
///             attributeName: "vsrccnoksnxyyisrlfzkuj",
///             attributeValues: [{
///                 attributeValue: "lvlyhjnivtpgkbt",
///             }],
///         },
///         awsRegion: "ojtquhkurhjtoocjpjyibb",
///         awsSourceSchema: "njukzwmmwgmvurer",
///         awsTags: {
///             key2779: "qzjyzsygumaykisfigqlypvu",
///         },
///         publicCloudConnectorsResourceId: "rmmqxjdxoe",
///         publicCloudResourceName: "lhdzqjxtfagnhbdjev",
///     },
///     resourceGroupName: "rgec2AccountAttribute",
///     tags: {
///         key6022: "psppjmksguimpyjugsfgrp",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// ec2_account_attribute = azure_native.awsconnector.Ec2AccountAttribute("ec2AccountAttribute",
///     location="mxywielgbokfdxxwuudnbwzjcf",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "ttwi",
///         "aws_account_id": "jzeepmbcwiwakwsvqakkaz",
///         "aws_properties": {
///             "attribute_name": "vsrccnoksnxyyisrlfzkuj",
///             "attribute_values": [{
///                 "attribute_value": "lvlyhjnivtpgkbt",
///             }],
///         },
///         "aws_region": "ojtquhkurhjtoocjpjyibb",
///         "aws_source_schema": "njukzwmmwgmvurer",
///         "aws_tags": {
///             "key2779": "qzjyzsygumaykisfigqlypvu",
///         },
///         "public_cloud_connectors_resource_id": "rmmqxjdxoe",
///         "public_cloud_resource_name": "lhdzqjxtfagnhbdjev",
///     },
///     resource_group_name="rgec2AccountAttribute",
///     tags={
///         "key6022": "psppjmksguimpyjugsfgrp",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   ec2AccountAttribute:
///     type: azure-native:awsconnector:Ec2AccountAttribute
///     properties:
///       location: mxywielgbokfdxxwuudnbwzjcf
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: ttwi
///         awsAccountId: jzeepmbcwiwakwsvqakkaz
///         awsProperties:
///           attributeName: vsrccnoksnxyyisrlfzkuj
///           attributeValues:
///             - attributeValue: lvlyhjnivtpgkbt
///         awsRegion: ojtquhkurhjtoocjpjyibb
///         awsSourceSchema: njukzwmmwgmvurer
///         awsTags:
///           key2779: qzjyzsygumaykisfigqlypvu
///         publicCloudConnectorsResourceId: rmmqxjdxoe
///         publicCloudResourceName: lhdzqjxtfagnhbdjev
///       resourceGroupName: rgec2AccountAttribute
///       tags:
///         key6022: psppjmksguimpyjugsfgrp
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
/// $ pulumi import azure-native:awsconnector:Ec2AccountAttribute gwbo /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/ec2AccountAttributes/{name}
/// ```
class Ec2AccountAttribute extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<Ec2AccountAttributePropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Ec2AccountAttribute].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Ec2AccountAttribute]. {@macro pulumi_awsconnector_ec2_account_attribute_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Ec2AccountAttribute(
    String name, {
    Ec2AccountAttributeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:awsconnector:Ec2AccountAttribute',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<Ec2AccountAttributePropertiesResponse>(
      'properties',
    );
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
