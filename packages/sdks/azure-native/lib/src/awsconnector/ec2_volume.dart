import 'package:pulumi/pulumi.dart' as pulumi;
import 'ec2_volume_args.dart';
import 'ec2_volume_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Ec2Volumes_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ec2Volume = new AzureNative.AwsConnector.Ec2Volume("ec2Volume", new()
///     {
///         Location = "tvdnvkrfzxnahsvnguhrcancxusw",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.Ec2VolumePropertiesArgs
///         {
///             Arn = "evx",
///             AwsAccountId = "zoosbunhmv",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsEc2VolumePropertiesArgs
///             {
///                 AutoEnableIO = true,
///                 AvailabilityZone = "wtzdrwiuscqtvxwi",
///                 Encrypted = true,
///                 Iops = 3,
///                 KmsKeyId = "brtkdxsrwuxdzodllqlhzbrwpgkx",
///                 MultiAttachEnabled = true,
///                 OutpostArn = "umrirqwmsnmeeknbjkph",
///                 Size = 2,
///                 SnapshotId = "upwukogzrkqcaea",
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "hizjca",
///                         Value = "hnfhwndsnhbpnwfv",
///                     },
///                 },
///                 Throughput = 20,
///                 VolumeId = "rdcojpg",
///                 VolumeType = "otkmglqvqws",
///             },
///             AwsRegion = "cw",
///             AwsSourceSchema = "wlglq",
///             AwsTags =
///             {
///                 { "key2425", "rgrfhhzzndrgf" },
///             },
///             PublicCloudConnectorsResourceId = "fw",
///             PublicCloudResourceName = "xowgb",
///         },
///         ResourceGroupName = "rgec2Volume",
///         Tags =
///         {
///             { "key271", "ntenfvupathlqgnlukxvtzwzbmj" },
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
/// 		_, err := awsconnector.NewEc2Volume(ctx, "ec2Volume", &awsconnector.Ec2VolumeArgs{
/// 			Location: pulumi.String("tvdnvkrfzxnahsvnguhrcancxusw"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.Ec2VolumePropertiesArgs{
/// 				Arn:          pulumi.String("evx"),
/// 				AwsAccountId: pulumi.String("zoosbunhmv"),
/// 				AwsProperties: &awsconnector.AwsEc2VolumePropertiesArgs{
/// 					AutoEnableIO:       pulumi.Bool(true),
/// 					AvailabilityZone:   pulumi.String("wtzdrwiuscqtvxwi"),
/// 					Encrypted:          pulumi.Bool(true),
/// 					Iops:               pulumi.Int(3),
/// 					KmsKeyId:           pulumi.String("brtkdxsrwuxdzodllqlhzbrwpgkx"),
/// 					MultiAttachEnabled: pulumi.Bool(true),
/// 					OutpostArn:         pulumi.String("umrirqwmsnmeeknbjkph"),
/// 					Size:               pulumi.Int(2),
/// 					SnapshotId:         pulumi.String("upwukogzrkqcaea"),
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("hizjca"),
/// 							Value: pulumi.String("hnfhwndsnhbpnwfv"),
/// 						},
/// 					},
/// 					Throughput: pulumi.Int(20),
/// 					VolumeId:   pulumi.String("rdcojpg"),
/// 					VolumeType: pulumi.String("otkmglqvqws"),
/// 				},
/// 				AwsRegion:       pulumi.String("cw"),
/// 				AwsSourceSchema: pulumi.String("wlglq"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key2425": pulumi.String("rgrfhhzzndrgf"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("fw"),
/// 				PublicCloudResourceName:         pulumi.String("xowgb"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgec2Volume"),
/// 			Tags: pulumi.StringMap{
/// 				"key271": pulumi.String("ntenfvupathlqgnlukxvtzwzbmj"),
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
/// resource "azure-native_awsconnector_ec2volume" "ec2Volume" {
///   location = "tvdnvkrfzxnahsvnguhrcancxusw"
///   name     = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"
///   properties = {
///     arn            = "evx"
///     aws_account_id = "zoosbunhmv"
///     aws_properties = {
///       auto_enable_io       = true
///       availability_zone    = "wtzdrwiuscqtvxwi"
///       encrypted            = true
///       iops                 = 3
///       kms_key_id           = "brtkdxsrwuxdzodllqlhzbrwpgkx"
///       multi_attach_enabled = true
///       outpost_arn          = "umrirqwmsnmeeknbjkph"
///       size                 = 2
///       snapshot_id          = "upwukogzrkqcaea"
///       tags = [{
///         "key"   = "hizjca"
///         "value" = "hnfhwndsnhbpnwfv"
///       }]
///       throughput  = 20
///       volume_id   = "rdcojpg"
///       volume_type = "otkmglqvqws"
///     }
///     aws_region        = "cw"
///     aws_source_schema = "wlglq"
///     aws_tags = {
///       "key2425" = "rgrfhhzzndrgf"
///     }
///     public_cloud_connectors_resource_id = "fw"
///     public_cloud_resource_name          = "xowgb"
///   }
///   resource_group_name = "rgec2Volume"
///   tags = {
///     "key271" = "ntenfvupathlqgnlukxvtzwzbmj"
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
/// import com.pulumi.azurenative.awsconnector.Ec2Volume;
/// import com.pulumi.azurenative.awsconnector.Ec2VolumeArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.Ec2VolumePropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsEc2VolumePropertiesArgs;
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
///         var ec2Volume = new Ec2Volume("ec2Volume", Ec2VolumeArgs.builder()
///             .location("tvdnvkrfzxnahsvnguhrcancxusw")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(Ec2VolumePropertiesArgs.builder()
///                 .arn("evx")
///                 .awsAccountId("zoosbunhmv")
///                 .awsProperties(AwsEc2VolumePropertiesArgs.builder()
///                     .autoEnableIO(true)
///                     .availabilityZone("wtzdrwiuscqtvxwi")
///                     .encrypted(true)
///                     .iops(3)
///                     .kmsKeyId("brtkdxsrwuxdzodllqlhzbrwpgkx")
///                     .multiAttachEnabled(true)
///                     .outpostArn("umrirqwmsnmeeknbjkph")
///                     .size(2)
///                     .snapshotId("upwukogzrkqcaea")
///                     .tags(TagArgs.builder()
///                         .key("hizjca")
///                         .value("hnfhwndsnhbpnwfv")
///                         .build())
///                     .throughput(20)
///                     .volumeId("rdcojpg")
///                     .volumeType("otkmglqvqws")
///                     .build())
///                 .awsRegion("cw")
///                 .awsSourceSchema("wlglq")
///                 .awsTags(Map.of("key2425", "rgrfhhzzndrgf"))
///                 .publicCloudConnectorsResourceId("fw")
///                 .publicCloudResourceName("xowgb")
///                 .build())
///             .resourceGroupName("rgec2Volume")
///             .tags(Map.of("key271", "ntenfvupathlqgnlukxvtzwzbmj"))
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
/// const ec2Volume = new azure_native.awsconnector.Ec2Volume("ec2Volume", {
///     location: "tvdnvkrfzxnahsvnguhrcancxusw",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "evx",
///         awsAccountId: "zoosbunhmv",
///         awsProperties: {
///             autoEnableIO: true,
///             availabilityZone: "wtzdrwiuscqtvxwi",
///             encrypted: true,
///             iops: 3,
///             kmsKeyId: "brtkdxsrwuxdzodllqlhzbrwpgkx",
///             multiAttachEnabled: true,
///             outpostArn: "umrirqwmsnmeeknbjkph",
///             size: 2,
///             snapshotId: "upwukogzrkqcaea",
///             tags: [{
///                 key: "hizjca",
///                 value: "hnfhwndsnhbpnwfv",
///             }],
///             throughput: 20,
///             volumeId: "rdcojpg",
///             volumeType: "otkmglqvqws",
///         },
///         awsRegion: "cw",
///         awsSourceSchema: "wlglq",
///         awsTags: {
///             key2425: "rgrfhhzzndrgf",
///         },
///         publicCloudConnectorsResourceId: "fw",
///         publicCloudResourceName: "xowgb",
///     },
///     resourceGroupName: "rgec2Volume",
///     tags: {
///         key271: "ntenfvupathlqgnlukxvtzwzbmj",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// ec2_volume = azure_native.awsconnector.Ec2Volume("ec2Volume",
///     location="tvdnvkrfzxnahsvnguhrcancxusw",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "evx",
///         "aws_account_id": "zoosbunhmv",
///         "aws_properties": {
///             "auto_enable_io": True,
///             "availability_zone": "wtzdrwiuscqtvxwi",
///             "encrypted": True,
///             "iops": 3,
///             "kms_key_id": "brtkdxsrwuxdzodllqlhzbrwpgkx",
///             "multi_attach_enabled": True,
///             "outpost_arn": "umrirqwmsnmeeknbjkph",
///             "size": 2,
///             "snapshot_id": "upwukogzrkqcaea",
///             "tags": [{
///                 "key": "hizjca",
///                 "value": "hnfhwndsnhbpnwfv",
///             }],
///             "throughput": 20,
///             "volume_id": "rdcojpg",
///             "volume_type": "otkmglqvqws",
///         },
///         "aws_region": "cw",
///         "aws_source_schema": "wlglq",
///         "aws_tags": {
///             "key2425": "rgrfhhzzndrgf",
///         },
///         "public_cloud_connectors_resource_id": "fw",
///         "public_cloud_resource_name": "xowgb",
///     },
///     resource_group_name="rgec2Volume",
///     tags={
///         "key271": "ntenfvupathlqgnlukxvtzwzbmj",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   ec2Volume:
///     type: azure-native:awsconnector:Ec2Volume
///     properties:
///       location: tvdnvkrfzxnahsvnguhrcancxusw
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: evx
///         awsAccountId: zoosbunhmv
///         awsProperties:
///           autoEnableIO: true
///           availabilityZone: wtzdrwiuscqtvxwi
///           encrypted: true
///           iops: 3
///           kmsKeyId: brtkdxsrwuxdzodllqlhzbrwpgkx
///           multiAttachEnabled: true
///           outpostArn: umrirqwmsnmeeknbjkph
///           size: 2
///           snapshotId: upwukogzrkqcaea
///           tags:
///             - key: hizjca
///               value: hnfhwndsnhbpnwfv
///           throughput: 20
///           volumeId: rdcojpg
///           volumeType: otkmglqvqws
///         awsRegion: cw
///         awsSourceSchema: wlglq
///         awsTags:
///           key2425: rgrfhhzzndrgf
///         publicCloudConnectorsResourceId: fw
///         publicCloudResourceName: xowgb
///       resourceGroupName: rgec2Volume
///       tags:
///         key271: ntenfvupathlqgnlukxvtzwzbmj
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
/// $ pulumi import azure-native:awsconnector:Ec2Volume fgfntrewk /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/ec2Volumes/{name}
/// ```
class Ec2Volume extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<Ec2VolumePropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Ec2Volume].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Ec2Volume]. {@macro pulumi_awsconnector_ec2_volume_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Ec2Volume(
    String name, {
    Ec2VolumeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:Ec2Volume',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<Ec2VolumePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return Ec2VolumePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Ec2Volume] resource.
  Ec2Volume.reference(String urn)
    : super(
        'azure-native:awsconnector:Ec2Volume',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<Ec2VolumePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return Ec2VolumePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
