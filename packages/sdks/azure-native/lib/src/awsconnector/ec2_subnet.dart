import 'package:pulumi/pulumi.dart' as pulumi;
import 'ec2_subnet_args.dart';
import 'ec2_subnet_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Ec2Subnets_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ec2Subnet = new AzureNative.AwsConnector.Ec2Subnet("ec2Subnet", new()
///     {
///         Location = "zlyeymkfsbtninhfrnvrhxprr",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.Ec2SubnetPropertiesArgs
///         {
///             Arn = "swrduvxfquidiycxlrijjixfbwb",
///             AwsAccountId = "mmlzefobqbimxcbqwrkitlgfu",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsEc2SubnetPropertiesArgs
///             {
///                 AssignIpv6AddressOnCreation = true,
///                 AvailabilityZone = "forrknmiozum",
///                 AvailabilityZoneId = "gbjfdurjqxgejgwo",
///                 CidrBlock = "sisksglodnipqskrsfsvkpcrrcy",
///                 EnableDns64 = true,
///                 EnableLniAtDeviceIndex = 1,
///                 Ipv4IpamPoolId = "jdpbqiv",
///                 Ipv4NetmaskLength = 18,
///                 Ipv6CidrBlock = "ayzvyvftxekjogtumuln",
///                 Ipv6CidrBlocks = new[]
///                 {
///                     "amuwewdpaadfixhakcdaqrjzlskguz",
///                 },
///                 Ipv6IpamPoolId = "lenenhwtwwet",
///                 Ipv6Native = true,
///                 Ipv6NetmaskLength = 16,
///                 MapPublicIpOnLaunch = true,
///                 NetworkAclAssociationId = "saevhbbbzksuojanmdoizrhyxo",
///                 OutpostArn = "qzuvnwxqc",
///                 PrivateDnsNameOptionsOnLaunch = new AzureNative.AwsConnector.Inputs.PrivateDnsNameOptionsOnLaunchModelPropertiesArgs
///                 {
///                     EnableResourceNameDnsAAAARecord = true,
///                     EnableResourceNameDnsARecord = true,
///                     HostnameType = "cbuc",
///                 },
///                 SubnetId = "vxxbkvimjzmcfoxur",
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "sffepghmsdrubyiodc",
///                         Value = "bfgzdnenxrviyueqzftrrvu",
///                     },
///                 },
///                 VpcId = "aqqzsoyvmaxfyqddvthvxlhdti",
///             },
///             AwsRegion = "huifdbndfvqyztfwfclpqlxupzib",
///             AwsSourceSchema = "wyjdcprcwjbw",
///             AwsTags =
///             {
///                 { "key3667", "ydqfhlcswoexpb" },
///             },
///             PublicCloudConnectorsResourceId = "svkjfvphtfxopebxrcdvwyj",
///             PublicCloudResourceName = "p",
///         },
///         ResourceGroupName = "rgec2Subnet",
///         Tags =
///         {
///             { "key8525", "tpogejwctbas" },
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
/// 		_, err := awsconnector.NewEc2Subnet(ctx, "ec2Subnet", &awsconnector.Ec2SubnetArgs{
/// 			Location: pulumi.String("zlyeymkfsbtninhfrnvrhxprr"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.Ec2SubnetPropertiesArgs{
/// 				Arn:          pulumi.String("swrduvxfquidiycxlrijjixfbwb"),
/// 				AwsAccountId: pulumi.String("mmlzefobqbimxcbqwrkitlgfu"),
/// 				AwsProperties: &awsconnector.AwsEc2SubnetPropertiesArgs{
/// 					AssignIpv6AddressOnCreation: pulumi.Bool(true),
/// 					AvailabilityZone:            pulumi.String("forrknmiozum"),
/// 					AvailabilityZoneId:          pulumi.String("gbjfdurjqxgejgwo"),
/// 					CidrBlock:                   pulumi.String("sisksglodnipqskrsfsvkpcrrcy"),
/// 					EnableDns64:                 pulumi.Bool(true),
/// 					EnableLniAtDeviceIndex:      pulumi.Int(1),
/// 					Ipv4IpamPoolId:              pulumi.String("jdpbqiv"),
/// 					Ipv4NetmaskLength:           pulumi.Int(18),
/// 					Ipv6CidrBlock:               pulumi.String("ayzvyvftxekjogtumuln"),
/// 					Ipv6CidrBlocks: pulumi.StringArray{
/// 						pulumi.String("amuwewdpaadfixhakcdaqrjzlskguz"),
/// 					},
/// 					Ipv6IpamPoolId:          pulumi.String("lenenhwtwwet"),
/// 					Ipv6Native:              pulumi.Bool(true),
/// 					Ipv6NetmaskLength:       pulumi.Int(16),
/// 					MapPublicIpOnLaunch:     pulumi.Bool(true),
/// 					NetworkAclAssociationId: pulumi.String("saevhbbbzksuojanmdoizrhyxo"),
/// 					OutpostArn:              pulumi.String("qzuvnwxqc"),
/// 					PrivateDnsNameOptionsOnLaunch: &awsconnector.PrivateDnsNameOptionsOnLaunchModelPropertiesArgs{
/// 						EnableResourceNameDnsAAAARecord: pulumi.Bool(true),
/// 						EnableResourceNameDnsARecord:    pulumi.Bool(true),
/// 						HostnameType:                    pulumi.String("cbuc"),
/// 					},
/// 					SubnetId: pulumi.String("vxxbkvimjzmcfoxur"),
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("sffepghmsdrubyiodc"),
/// 							Value: pulumi.String("bfgzdnenxrviyueqzftrrvu"),
/// 						},
/// 					},
/// 					VpcId: pulumi.String("aqqzsoyvmaxfyqddvthvxlhdti"),
/// 				},
/// 				AwsRegion:       pulumi.String("huifdbndfvqyztfwfclpqlxupzib"),
/// 				AwsSourceSchema: pulumi.String("wyjdcprcwjbw"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key3667": pulumi.String("ydqfhlcswoexpb"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("svkjfvphtfxopebxrcdvwyj"),
/// 				PublicCloudResourceName:         pulumi.String("p"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgec2Subnet"),
/// 			Tags: pulumi.StringMap{
/// 				"key8525": pulumi.String("tpogejwctbas"),
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
/// import com.pulumi.azurenative.awsconnector.Ec2Subnet;
/// import com.pulumi.azurenative.awsconnector.Ec2SubnetArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.Ec2SubnetPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsEc2SubnetPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.PrivateDnsNameOptionsOnLaunchModelPropertiesArgs;
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
///         var ec2Subnet = new Ec2Subnet("ec2Subnet", Ec2SubnetArgs.builder()
///             .location("zlyeymkfsbtninhfrnvrhxprr")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(Ec2SubnetPropertiesArgs.builder()
///                 .arn("swrduvxfquidiycxlrijjixfbwb")
///                 .awsAccountId("mmlzefobqbimxcbqwrkitlgfu")
///                 .awsProperties(AwsEc2SubnetPropertiesArgs.builder()
///                     .assignIpv6AddressOnCreation(true)
///                     .availabilityZone("forrknmiozum")
///                     .availabilityZoneId("gbjfdurjqxgejgwo")
///                     .cidrBlock("sisksglodnipqskrsfsvkpcrrcy")
///                     .enableDns64(true)
///                     .enableLniAtDeviceIndex(1)
///                     .ipv4IpamPoolId("jdpbqiv")
///                     .ipv4NetmaskLength(18)
///                     .ipv6CidrBlock("ayzvyvftxekjogtumuln")
///                     .ipv6CidrBlocks("amuwewdpaadfixhakcdaqrjzlskguz")
///                     .ipv6IpamPoolId("lenenhwtwwet")
///                     .ipv6Native(true)
///                     .ipv6NetmaskLength(16)
///                     .mapPublicIpOnLaunch(true)
///                     .networkAclAssociationId("saevhbbbzksuojanmdoizrhyxo")
///                     .outpostArn("qzuvnwxqc")
///                     .privateDnsNameOptionsOnLaunch(PrivateDnsNameOptionsOnLaunchModelPropertiesArgs.builder()
///                         .enableResourceNameDnsAAAARecord(true)
///                         .enableResourceNameDnsARecord(true)
///                         .hostnameType("cbuc")
///                         .build())
///                     .subnetId("vxxbkvimjzmcfoxur")
///                     .tags(TagArgs.builder()
///                         .key("sffepghmsdrubyiodc")
///                         .value("bfgzdnenxrviyueqzftrrvu")
///                         .build())
///                     .vpcId("aqqzsoyvmaxfyqddvthvxlhdti")
///                     .build())
///                 .awsRegion("huifdbndfvqyztfwfclpqlxupzib")
///                 .awsSourceSchema("wyjdcprcwjbw")
///                 .awsTags(Map.of("key3667", "ydqfhlcswoexpb"))
///                 .publicCloudConnectorsResourceId("svkjfvphtfxopebxrcdvwyj")
///                 .publicCloudResourceName("p")
///                 .build())
///             .resourceGroupName("rgec2Subnet")
///             .tags(Map.of("key8525", "tpogejwctbas"))
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
/// const ec2Subnet = new azure_native.awsconnector.Ec2Subnet("ec2Subnet", {
///     location: "zlyeymkfsbtninhfrnvrhxprr",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "swrduvxfquidiycxlrijjixfbwb",
///         awsAccountId: "mmlzefobqbimxcbqwrkitlgfu",
///         awsProperties: {
///             assignIpv6AddressOnCreation: true,
///             availabilityZone: "forrknmiozum",
///             availabilityZoneId: "gbjfdurjqxgejgwo",
///             cidrBlock: "sisksglodnipqskrsfsvkpcrrcy",
///             enableDns64: true,
///             enableLniAtDeviceIndex: 1,
///             ipv4IpamPoolId: "jdpbqiv",
///             ipv4NetmaskLength: 18,
///             ipv6CidrBlock: "ayzvyvftxekjogtumuln",
///             ipv6CidrBlocks: ["amuwewdpaadfixhakcdaqrjzlskguz"],
///             ipv6IpamPoolId: "lenenhwtwwet",
///             ipv6Native: true,
///             ipv6NetmaskLength: 16,
///             mapPublicIpOnLaunch: true,
///             networkAclAssociationId: "saevhbbbzksuojanmdoizrhyxo",
///             outpostArn: "qzuvnwxqc",
///             privateDnsNameOptionsOnLaunch: {
///                 enableResourceNameDnsAAAARecord: true,
///                 enableResourceNameDnsARecord: true,
///                 hostnameType: "cbuc",
///             },
///             subnetId: "vxxbkvimjzmcfoxur",
///             tags: [{
///                 key: "sffepghmsdrubyiodc",
///                 value: "bfgzdnenxrviyueqzftrrvu",
///             }],
///             vpcId: "aqqzsoyvmaxfyqddvthvxlhdti",
///         },
///         awsRegion: "huifdbndfvqyztfwfclpqlxupzib",
///         awsSourceSchema: "wyjdcprcwjbw",
///         awsTags: {
///             key3667: "ydqfhlcswoexpb",
///         },
///         publicCloudConnectorsResourceId: "svkjfvphtfxopebxrcdvwyj",
///         publicCloudResourceName: "p",
///     },
///     resourceGroupName: "rgec2Subnet",
///     tags: {
///         key8525: "tpogejwctbas",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// ec2_subnet = azure_native.awsconnector.Ec2Subnet("ec2Subnet",
///     location="zlyeymkfsbtninhfrnvrhxprr",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "swrduvxfquidiycxlrijjixfbwb",
///         "aws_account_id": "mmlzefobqbimxcbqwrkitlgfu",
///         "aws_properties": {
///             "assign_ipv6_address_on_creation": True,
///             "availability_zone": "forrknmiozum",
///             "availability_zone_id": "gbjfdurjqxgejgwo",
///             "cidr_block": "sisksglodnipqskrsfsvkpcrrcy",
///             "enable_dns64": True,
///             "enable_lni_at_device_index": 1,
///             "ipv4_ipam_pool_id": "jdpbqiv",
///             "ipv4_netmask_length": 18,
///             "ipv6_cidr_block": "ayzvyvftxekjogtumuln",
///             "ipv6_cidr_blocks": ["amuwewdpaadfixhakcdaqrjzlskguz"],
///             "ipv6_ipam_pool_id": "lenenhwtwwet",
///             "ipv6_native": True,
///             "ipv6_netmask_length": 16,
///             "map_public_ip_on_launch": True,
///             "network_acl_association_id": "saevhbbbzksuojanmdoizrhyxo",
///             "outpost_arn": "qzuvnwxqc",
///             "private_dns_name_options_on_launch": {
///                 "enable_resource_name_dns_aaaa_record": True,
///                 "enable_resource_name_dns_a_record": True,
///                 "hostname_type": "cbuc",
///             },
///             "subnet_id": "vxxbkvimjzmcfoxur",
///             "tags": [{
///                 "key": "sffepghmsdrubyiodc",
///                 "value": "bfgzdnenxrviyueqzftrrvu",
///             }],
///             "vpc_id": "aqqzsoyvmaxfyqddvthvxlhdti",
///         },
///         "aws_region": "huifdbndfvqyztfwfclpqlxupzib",
///         "aws_source_schema": "wyjdcprcwjbw",
///         "aws_tags": {
///             "key3667": "ydqfhlcswoexpb",
///         },
///         "public_cloud_connectors_resource_id": "svkjfvphtfxopebxrcdvwyj",
///         "public_cloud_resource_name": "p",
///     },
///     resource_group_name="rgec2Subnet",
///     tags={
///         "key8525": "tpogejwctbas",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   ec2Subnet:
///     type: azure-native:awsconnector:Ec2Subnet
///     properties:
///       location: zlyeymkfsbtninhfrnvrhxprr
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: swrduvxfquidiycxlrijjixfbwb
///         awsAccountId: mmlzefobqbimxcbqwrkitlgfu
///         awsProperties:
///           assignIpv6AddressOnCreation: true
///           availabilityZone: forrknmiozum
///           availabilityZoneId: gbjfdurjqxgejgwo
///           cidrBlock: sisksglodnipqskrsfsvkpcrrcy
///           enableDns64: true
///           enableLniAtDeviceIndex: 1
///           ipv4IpamPoolId: jdpbqiv
///           ipv4NetmaskLength: 18
///           ipv6CidrBlock: ayzvyvftxekjogtumuln
///           ipv6CidrBlocks:
///             - amuwewdpaadfixhakcdaqrjzlskguz
///           ipv6IpamPoolId: lenenhwtwwet
///           ipv6Native: true
///           ipv6NetmaskLength: 16
///           mapPublicIpOnLaunch: true
///           networkAclAssociationId: saevhbbbzksuojanmdoizrhyxo
///           outpostArn: qzuvnwxqc
///           privateDnsNameOptionsOnLaunch:
///             enableResourceNameDnsAAAARecord: true
///             enableResourceNameDnsARecord: true
///             hostnameType: cbuc
///           subnetId: vxxbkvimjzmcfoxur
///           tags:
///             - key: sffepghmsdrubyiodc
///               value: bfgzdnenxrviyueqzftrrvu
///           vpcId: aqqzsoyvmaxfyqddvthvxlhdti
///         awsRegion: huifdbndfvqyztfwfclpqlxupzib
///         awsSourceSchema: wyjdcprcwjbw
///         awsTags:
///           key3667: ydqfhlcswoexpb
///         publicCloudConnectorsResourceId: svkjfvphtfxopebxrcdvwyj
///         publicCloudResourceName: p
///       resourceGroupName: rgec2Subnet
///       tags:
///         key8525: tpogejwctbas
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
/// $ pulumi import azure-native:awsconnector:Ec2Subnet urmilmqjfvqbhtfltmnc /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/ec2Subnets/{name}
/// ```
class Ec2Subnet extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<Ec2SubnetPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Ec2Subnet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Ec2Subnet]. {@macro pulumi_awsconnector_ec2_subnet_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Ec2Subnet(
    String name, {
    Ec2SubnetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:Ec2Subnet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<Ec2SubnetPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return Ec2SubnetPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
