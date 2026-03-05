import 'package:pulumi/pulumi.dart' as pulumi;
import 'ec2_route_table_args.dart';
import 'ec2_route_table_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Ec2RouteTables_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ec2RouteTable = new AzureNative.AwsConnector.Ec2RouteTable("ec2RouteTable", new()
///     {
///         Location = "hovrzjhgmyvotekfhnhfmvlcak",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.Ec2RouteTablePropertiesArgs
///         {
///             Arn = "eyazamslrmbbffijotyuugdepfsn",
///             AwsAccountId = "xlalfcqnhp",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsEc2RouteTablePropertiesArgs
///             {
///                 RouteTableId = "wjkircnwaktkmbnrmuglladvcdghmn",
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "jeqm",
///                         Value = "ywbmagghbowtrgxkmnquatuohxj",
///                     },
///                 },
///                 VpcId = "ndnaspemjnmztnyriemuybzp",
///             },
///             AwsRegion = "tmqwjtpadpygxhke",
///             AwsSourceSchema = "usgtqolcmcjynbdhavnneb",
///             AwsTags =
///             {
///                 { "key7743", "osantdzwyijo" },
///             },
///             PublicCloudConnectorsResourceId = "kaqsj",
///             PublicCloudResourceName = "ierypwmwselkslavwkgcmz",
///         },
///         ResourceGroupName = "rgec2RouteTable",
///         Tags =
///         {
///             { "key8794", "fhmajayysunpshosadan" },
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
/// 		_, err := awsconnector.NewEc2RouteTable(ctx, "ec2RouteTable", &awsconnector.Ec2RouteTableArgs{
/// 			Location: pulumi.String("hovrzjhgmyvotekfhnhfmvlcak"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.Ec2RouteTablePropertiesArgs{
/// 				Arn:          pulumi.String("eyazamslrmbbffijotyuugdepfsn"),
/// 				AwsAccountId: pulumi.String("xlalfcqnhp"),
/// 				AwsProperties: &awsconnector.AwsEc2RouteTablePropertiesArgs{
/// 					RouteTableId: pulumi.String("wjkircnwaktkmbnrmuglladvcdghmn"),
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("jeqm"),
/// 							Value: pulumi.String("ywbmagghbowtrgxkmnquatuohxj"),
/// 						},
/// 					},
/// 					VpcId: pulumi.String("ndnaspemjnmztnyriemuybzp"),
/// 				},
/// 				AwsRegion:       pulumi.String("tmqwjtpadpygxhke"),
/// 				AwsSourceSchema: pulumi.String("usgtqolcmcjynbdhavnneb"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key7743": pulumi.String("osantdzwyijo"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("kaqsj"),
/// 				PublicCloudResourceName:         pulumi.String("ierypwmwselkslavwkgcmz"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgec2RouteTable"),
/// 			Tags: pulumi.StringMap{
/// 				"key8794": pulumi.String("fhmajayysunpshosadan"),
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
/// import com.pulumi.azurenative.awsconnector.Ec2RouteTable;
/// import com.pulumi.azurenative.awsconnector.Ec2RouteTableArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.Ec2RouteTablePropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsEc2RouteTablePropertiesArgs;
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
///         var ec2RouteTable = new Ec2RouteTable("ec2RouteTable", Ec2RouteTableArgs.builder()
///             .location("hovrzjhgmyvotekfhnhfmvlcak")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(Ec2RouteTablePropertiesArgs.builder()
///                 .arn("eyazamslrmbbffijotyuugdepfsn")
///                 .awsAccountId("xlalfcqnhp")
///                 .awsProperties(AwsEc2RouteTablePropertiesArgs.builder()
///                     .routeTableId("wjkircnwaktkmbnrmuglladvcdghmn")
///                     .tags(TagArgs.builder()
///                         .key("jeqm")
///                         .value("ywbmagghbowtrgxkmnquatuohxj")
///                         .build())
///                     .vpcId("ndnaspemjnmztnyriemuybzp")
///                     .build())
///                 .awsRegion("tmqwjtpadpygxhke")
///                 .awsSourceSchema("usgtqolcmcjynbdhavnneb")
///                 .awsTags(Map.of("key7743", "osantdzwyijo"))
///                 .publicCloudConnectorsResourceId("kaqsj")
///                 .publicCloudResourceName("ierypwmwselkslavwkgcmz")
///                 .build())
///             .resourceGroupName("rgec2RouteTable")
///             .tags(Map.of("key8794", "fhmajayysunpshosadan"))
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
/// const ec2RouteTable = new azure_native.awsconnector.Ec2RouteTable("ec2RouteTable", {
///     location: "hovrzjhgmyvotekfhnhfmvlcak",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "eyazamslrmbbffijotyuugdepfsn",
///         awsAccountId: "xlalfcqnhp",
///         awsProperties: {
///             routeTableId: "wjkircnwaktkmbnrmuglladvcdghmn",
///             tags: [{
///                 key: "jeqm",
///                 value: "ywbmagghbowtrgxkmnquatuohxj",
///             }],
///             vpcId: "ndnaspemjnmztnyriemuybzp",
///         },
///         awsRegion: "tmqwjtpadpygxhke",
///         awsSourceSchema: "usgtqolcmcjynbdhavnneb",
///         awsTags: {
///             key7743: "osantdzwyijo",
///         },
///         publicCloudConnectorsResourceId: "kaqsj",
///         publicCloudResourceName: "ierypwmwselkslavwkgcmz",
///     },
///     resourceGroupName: "rgec2RouteTable",
///     tags: {
///         key8794: "fhmajayysunpshosadan",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// ec2_route_table = azure_native.awsconnector.Ec2RouteTable("ec2RouteTable",
///     location="hovrzjhgmyvotekfhnhfmvlcak",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "eyazamslrmbbffijotyuugdepfsn",
///         "aws_account_id": "xlalfcqnhp",
///         "aws_properties": {
///             "route_table_id": "wjkircnwaktkmbnrmuglladvcdghmn",
///             "tags": [{
///                 "key": "jeqm",
///                 "value": "ywbmagghbowtrgxkmnquatuohxj",
///             }],
///             "vpc_id": "ndnaspemjnmztnyriemuybzp",
///         },
///         "aws_region": "tmqwjtpadpygxhke",
///         "aws_source_schema": "usgtqolcmcjynbdhavnneb",
///         "aws_tags": {
///             "key7743": "osantdzwyijo",
///         },
///         "public_cloud_connectors_resource_id": "kaqsj",
///         "public_cloud_resource_name": "ierypwmwselkslavwkgcmz",
///     },
///     resource_group_name="rgec2RouteTable",
///     tags={
///         "key8794": "fhmajayysunpshosadan",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   ec2RouteTable:
///     type: azure-native:awsconnector:Ec2RouteTable
///     properties:
///       location: hovrzjhgmyvotekfhnhfmvlcak
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: eyazamslrmbbffijotyuugdepfsn
///         awsAccountId: xlalfcqnhp
///         awsProperties:
///           routeTableId: wjkircnwaktkmbnrmuglladvcdghmn
///           tags:
///             - key: jeqm
///               value: ywbmagghbowtrgxkmnquatuohxj
///           vpcId: ndnaspemjnmztnyriemuybzp
///         awsRegion: tmqwjtpadpygxhke
///         awsSourceSchema: usgtqolcmcjynbdhavnneb
///         awsTags:
///           key7743: osantdzwyijo
///         publicCloudConnectorsResourceId: kaqsj
///         publicCloudResourceName: ierypwmwselkslavwkgcmz
///       resourceGroupName: rgec2RouteTable
///       tags:
///         key8794: fhmajayysunpshosadan
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
/// $ pulumi import azure-native:awsconnector:Ec2RouteTable dforujria /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/ec2RouteTables/{name}
/// ```
class Ec2RouteTable extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<Ec2RouteTablePropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Ec2RouteTable].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Ec2RouteTable]. {@macro pulumi_awsconnector_ec2_route_table_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Ec2RouteTable(
    String name, {
    Ec2RouteTableArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:awsconnector:Ec2RouteTable',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<Ec2RouteTablePropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return Ec2RouteTablePropertiesResponse.fromMap(
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
