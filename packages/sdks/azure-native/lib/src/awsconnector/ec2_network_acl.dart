import 'package:pulumi/pulumi.dart' as pulumi;
import 'ec2_network_acl_args.dart';
import 'ec2_network_acl_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Ec2NetworkAcls_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ec2NetworkAcl = new AzureNative.AwsConnector.Ec2NetworkAcl("ec2NetworkAcl", new()
///     {
///         Location = "fshtit",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.Ec2NetworkAclPropertiesArgs
///         {
///             Arn = "mwwchyidvtcm",
///             AwsAccountId = "nwnjrjumgvvtfndyaxyiwbugmdk",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsEc2NetworkAclPropertiesArgs
///             {
///                 Id = "qgxcaonshnjzgtrwpbtgtnec",
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "ybqfvnnjihkyssxqqynvpdtbdt",
///                         Value = "szjckvzlsvasj",
///                     },
///                 },
///                 VpcId = "wifperjiuulltgxcljqwnaeyscd",
///             },
///             AwsRegion = "zmntebskjciytwfcjyj",
///             AwsSourceSchema = "hqiutsyaxzitfwtekhw",
///             AwsTags =
///             {
///                 { "key8049", "yfihxfeqfujhxxqpzpttbewzztgdix" },
///             },
///             PublicCloudConnectorsResourceId = "thejbzeletryigazixejsz",
///             PublicCloudResourceName = "dniirwtrtuvjlcdcjq",
///         },
///         ResourceGroupName = "rgec2NetworkAcl",
///         Tags =
///         {
///             { "key7602", "dffxjegkksnmrmfplzhq" },
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
/// 		_, err := awsconnector.NewEc2NetworkAcl(ctx, "ec2NetworkAcl", &awsconnector.Ec2NetworkAclArgs{
/// 			Location: pulumi.String("fshtit"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.Ec2NetworkAclPropertiesArgs{
/// 				Arn:          pulumi.String("mwwchyidvtcm"),
/// 				AwsAccountId: pulumi.String("nwnjrjumgvvtfndyaxyiwbugmdk"),
/// 				AwsProperties: &awsconnector.AwsEc2NetworkAclPropertiesArgs{
/// 					Id: pulumi.String("qgxcaonshnjzgtrwpbtgtnec"),
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("ybqfvnnjihkyssxqqynvpdtbdt"),
/// 							Value: pulumi.String("szjckvzlsvasj"),
/// 						},
/// 					},
/// 					VpcId: pulumi.String("wifperjiuulltgxcljqwnaeyscd"),
/// 				},
/// 				AwsRegion:       pulumi.String("zmntebskjciytwfcjyj"),
/// 				AwsSourceSchema: pulumi.String("hqiutsyaxzitfwtekhw"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key8049": pulumi.String("yfihxfeqfujhxxqpzpttbewzztgdix"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("thejbzeletryigazixejsz"),
/// 				PublicCloudResourceName:         pulumi.String("dniirwtrtuvjlcdcjq"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgec2NetworkAcl"),
/// 			Tags: pulumi.StringMap{
/// 				"key7602": pulumi.String("dffxjegkksnmrmfplzhq"),
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
/// import com.pulumi.azurenative.awsconnector.Ec2NetworkAcl;
/// import com.pulumi.azurenative.awsconnector.Ec2NetworkAclArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.Ec2NetworkAclPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsEc2NetworkAclPropertiesArgs;
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
///         var ec2NetworkAcl = new Ec2NetworkAcl("ec2NetworkAcl", Ec2NetworkAclArgs.builder()
///             .location("fshtit")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(Ec2NetworkAclPropertiesArgs.builder()
///                 .arn("mwwchyidvtcm")
///                 .awsAccountId("nwnjrjumgvvtfndyaxyiwbugmdk")
///                 .awsProperties(AwsEc2NetworkAclPropertiesArgs.builder()
///                     .id("qgxcaonshnjzgtrwpbtgtnec")
///                     .tags(TagArgs.builder()
///                         .key("ybqfvnnjihkyssxqqynvpdtbdt")
///                         .value("szjckvzlsvasj")
///                         .build())
///                     .vpcId("wifperjiuulltgxcljqwnaeyscd")
///                     .build())
///                 .awsRegion("zmntebskjciytwfcjyj")
///                 .awsSourceSchema("hqiutsyaxzitfwtekhw")
///                 .awsTags(Map.of("key8049", "yfihxfeqfujhxxqpzpttbewzztgdix"))
///                 .publicCloudConnectorsResourceId("thejbzeletryigazixejsz")
///                 .publicCloudResourceName("dniirwtrtuvjlcdcjq")
///                 .build())
///             .resourceGroupName("rgec2NetworkAcl")
///             .tags(Map.of("key7602", "dffxjegkksnmrmfplzhq"))
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
/// const ec2NetworkAcl = new azure_native.awsconnector.Ec2NetworkAcl("ec2NetworkAcl", {
///     location: "fshtit",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "mwwchyidvtcm",
///         awsAccountId: "nwnjrjumgvvtfndyaxyiwbugmdk",
///         awsProperties: {
///             id: "qgxcaonshnjzgtrwpbtgtnec",
///             tags: [{
///                 key: "ybqfvnnjihkyssxqqynvpdtbdt",
///                 value: "szjckvzlsvasj",
///             }],
///             vpcId: "wifperjiuulltgxcljqwnaeyscd",
///         },
///         awsRegion: "zmntebskjciytwfcjyj",
///         awsSourceSchema: "hqiutsyaxzitfwtekhw",
///         awsTags: {
///             key8049: "yfihxfeqfujhxxqpzpttbewzztgdix",
///         },
///         publicCloudConnectorsResourceId: "thejbzeletryigazixejsz",
///         publicCloudResourceName: "dniirwtrtuvjlcdcjq",
///     },
///     resourceGroupName: "rgec2NetworkAcl",
///     tags: {
///         key7602: "dffxjegkksnmrmfplzhq",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// ec2_network_acl = azure_native.awsconnector.Ec2NetworkAcl("ec2NetworkAcl",
///     location="fshtit",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "mwwchyidvtcm",
///         "aws_account_id": "nwnjrjumgvvtfndyaxyiwbugmdk",
///         "aws_properties": {
///             "id": "qgxcaonshnjzgtrwpbtgtnec",
///             "tags": [{
///                 "key": "ybqfvnnjihkyssxqqynvpdtbdt",
///                 "value": "szjckvzlsvasj",
///             }],
///             "vpc_id": "wifperjiuulltgxcljqwnaeyscd",
///         },
///         "aws_region": "zmntebskjciytwfcjyj",
///         "aws_source_schema": "hqiutsyaxzitfwtekhw",
///         "aws_tags": {
///             "key8049": "yfihxfeqfujhxxqpzpttbewzztgdix",
///         },
///         "public_cloud_connectors_resource_id": "thejbzeletryigazixejsz",
///         "public_cloud_resource_name": "dniirwtrtuvjlcdcjq",
///     },
///     resource_group_name="rgec2NetworkAcl",
///     tags={
///         "key7602": "dffxjegkksnmrmfplzhq",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   ec2NetworkAcl:
///     type: azure-native:awsconnector:Ec2NetworkAcl
///     properties:
///       location: fshtit
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: mwwchyidvtcm
///         awsAccountId: nwnjrjumgvvtfndyaxyiwbugmdk
///         awsProperties:
///           id: qgxcaonshnjzgtrwpbtgtnec
///           tags:
///             - key: ybqfvnnjihkyssxqqynvpdtbdt
///               value: szjckvzlsvasj
///           vpcId: wifperjiuulltgxcljqwnaeyscd
///         awsRegion: zmntebskjciytwfcjyj
///         awsSourceSchema: hqiutsyaxzitfwtekhw
///         awsTags:
///           key8049: yfihxfeqfujhxxqpzpttbewzztgdix
///         publicCloudConnectorsResourceId: thejbzeletryigazixejsz
///         publicCloudResourceName: dniirwtrtuvjlcdcjq
///       resourceGroupName: rgec2NetworkAcl
///       tags:
///         key7602: dffxjegkksnmrmfplzhq
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
/// $ pulumi import azure-native:awsconnector:Ec2NetworkAcl cvogwcrrjooylziw /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/ec2NetworkAcls/{name}
/// ```
class Ec2NetworkAcl extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<Ec2NetworkAclPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Ec2NetworkAcl].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Ec2NetworkAcl]. {@macro pulumi_awsconnector_ec2_network_acl_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Ec2NetworkAcl(
    String name, {
    Ec2NetworkAclArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:awsconnector:Ec2NetworkAcl',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<Ec2NetworkAclPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return Ec2NetworkAclPropertiesResponse.fromMap(
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
