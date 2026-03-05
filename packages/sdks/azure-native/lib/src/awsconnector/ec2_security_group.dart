import 'package:pulumi/pulumi.dart' as pulumi;
import 'ec2_security_group_args.dart';
import 'ec2_security_group_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Ec2SecurityGroups_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ec2SecurityGroup = new AzureNative.AwsConnector.Ec2SecurityGroup("ec2SecurityGroup", new()
///     {
///         Location = "vzuwiygrafixnatwfk",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.Ec2SecurityGroupPropertiesArgs
///         {
///             Arn = "wmn",
///             AwsAccountId = "opjbipitrztwvqiwhvypn",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsEc2SecurityGroupPropertiesArgs
///             {
///                 Description = "hrrgskumwbylhgekdhngxjvwdnwt",
///                 GroupId = "ljankmjnfyn",
///                 GroupName = "btdfjlqbavbhlssltk",
///                 IpPermissions = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.IpPermissionArgs
///                     {
///                         FromPort = 20,
///                         IpProtocol = "kgjdillfenc",
///                         IpRanges = new[]
///                         {
///                             new AzureNative.AwsConnector.Inputs.IpRangeArgs
///                             {
///                                 CidrIp = "bvmbvmljqvxtixhffwasjzntbuc",
///                                 Description = "shzjegnqjhifwjai",
///                             },
///                         },
///                         Ipv6Ranges = new[]
///                         {
///                             new AzureNative.AwsConnector.Inputs.Ipv6RangeArgs
///                             {
///                                 CidrIpv6 = "uxlvmqqyfplqdqzolxmmnclvmtd",
///                                 Description = "iqaupyjrvko",
///                             },
///                         },
///                         PrefixListIds = new[]
///                         {
///                             new AzureNative.AwsConnector.Inputs.PrefixListIdArgs
///                             {
///                                 Description = "chukmrsgeaica",
///                                 PrefixListId = "abvyhxeqhgiuwfmdproas",
///                             },
///                         },
///                         ToPort = 22,
///                         UserIdGroupPairs = new[]
///                         {
///                             new AzureNative.AwsConnector.Inputs.UserIdGroupPairArgs
///                             {
///                                 Description = "ltskpjkztpi",
///                                 GroupId = "laktgsfwgfj",
///                                 GroupName = "rrnebynwgsv",
///                                 PeeringStatus = "t",
///                                 UserId = "chhl",
///                                 VpcId = "jxcofqkxxcehakoymxojgpra",
///                                 VpcPeeringConnectionId = "vdqrycsnfuwkgftprwierfwv",
///                             },
///                         },
///                     },
///                 },
///                 IpPermissionsEgress = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.IpPermissionArgs
///                     {
///                         FromPort = 20,
///                         IpProtocol = "kgjdillfenc",
///                         IpRanges = new[]
///                         {
///                             new AzureNative.AwsConnector.Inputs.IpRangeArgs
///                             {
///                                 CidrIp = "bvmbvmljqvxtixhffwasjzntbuc",
///                                 Description = "shzjegnqjhifwjai",
///                             },
///                         },
///                         Ipv6Ranges = new[]
///                         {
///                             new AzureNative.AwsConnector.Inputs.Ipv6RangeArgs
///                             {
///                                 CidrIpv6 = "uxlvmqqyfplqdqzolxmmnclvmtd",
///                                 Description = "iqaupyjrvko",
///                             },
///                         },
///                         PrefixListIds = new[]
///                         {
///                             new AzureNative.AwsConnector.Inputs.PrefixListIdArgs
///                             {
///                                 Description = "chukmrsgeaica",
///                                 PrefixListId = "abvyhxeqhgiuwfmdproas",
///                             },
///                         },
///                         ToPort = 22,
///                         UserIdGroupPairs = new[]
///                         {
///                             new AzureNative.AwsConnector.Inputs.UserIdGroupPairArgs
///                             {
///                                 Description = "ltskpjkztpi",
///                                 GroupId = "laktgsfwgfj",
///                                 GroupName = "rrnebynwgsv",
///                                 PeeringStatus = "t",
///                                 UserId = "chhl",
///                                 VpcId = "jxcofqkxxcehakoymxojgpra",
///                                 VpcPeeringConnectionId = "vdqrycsnfuwkgftprwierfwv",
///                             },
///                         },
///                     },
///                 },
///                 OwnerId = "zjetpuydwcwvcujxzfp",
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "qujkc",
///                         Value = "jflpondfk",
///                     },
///                 },
///                 VpcId = "prgpmjbyqcuinimbjrzfmpmme",
///             },
///             AwsRegion = "hqrasnkghl",
///             AwsSourceSchema = "qdcuf",
///             AwsTags =
///             {
///                 { "key5646", "rkutxmprvwlawcnhzsmyyujz" },
///             },
///             PublicCloudConnectorsResourceId = "fuzo",
///             PublicCloudResourceName = "laxwpziyjookzz",
///         },
///         ResourceGroupName = "rgec2SecurityGroup",
///         Tags =
///         {
///             { "key9265", "ixznafanbltkovpv" },
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
/// 		_, err := awsconnector.NewEc2SecurityGroup(ctx, "ec2SecurityGroup", &awsconnector.Ec2SecurityGroupArgs{
/// 			Location: pulumi.String("vzuwiygrafixnatwfk"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.Ec2SecurityGroupPropertiesArgs{
/// 				Arn:          pulumi.String("wmn"),
/// 				AwsAccountId: pulumi.String("opjbipitrztwvqiwhvypn"),
/// 				AwsProperties: &awsconnector.AwsEc2SecurityGroupPropertiesArgs{
/// 					Description: pulumi.String("hrrgskumwbylhgekdhngxjvwdnwt"),
/// 					GroupId:     pulumi.String("ljankmjnfyn"),
/// 					GroupName:   pulumi.String("btdfjlqbavbhlssltk"),
/// 					IpPermissions: awsconnector.IpPermissionArray{
/// 						&awsconnector.IpPermissionArgs{
/// 							FromPort:   pulumi.Int(20),
/// 							IpProtocol: pulumi.String("kgjdillfenc"),
/// 							IpRanges: awsconnector.IpRangeArray{
/// 								&awsconnector.IpRangeArgs{
/// 									CidrIp:      pulumi.String("bvmbvmljqvxtixhffwasjzntbuc"),
/// 									Description: pulumi.String("shzjegnqjhifwjai"),
/// 								},
/// 							},
/// 							Ipv6Ranges: awsconnector.Ipv6RangeArray{
/// 								&awsconnector.Ipv6RangeArgs{
/// 									CidrIpv6:    pulumi.String("uxlvmqqyfplqdqzolxmmnclvmtd"),
/// 									Description: pulumi.String("iqaupyjrvko"),
/// 								},
/// 							},
/// 							PrefixListIds: awsconnector.PrefixListIdArray{
/// 								&awsconnector.PrefixListIdArgs{
/// 									Description:  pulumi.String("chukmrsgeaica"),
/// 									PrefixListId: pulumi.String("abvyhxeqhgiuwfmdproas"),
/// 								},
/// 							},
/// 							ToPort: pulumi.Int(22),
/// 							UserIdGroupPairs: awsconnector.UserIdGroupPairArray{
/// 								&awsconnector.UserIdGroupPairArgs{
/// 									Description:            pulumi.String("ltskpjkztpi"),
/// 									GroupId:                pulumi.String("laktgsfwgfj"),
/// 									GroupName:              pulumi.String("rrnebynwgsv"),
/// 									PeeringStatus:          pulumi.String("t"),
/// 									UserId:                 pulumi.String("chhl"),
/// 									VpcId:                  pulumi.String("jxcofqkxxcehakoymxojgpra"),
/// 									VpcPeeringConnectionId: pulumi.String("vdqrycsnfuwkgftprwierfwv"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					IpPermissionsEgress: awsconnector.IpPermissionArray{
/// 						&awsconnector.IpPermissionArgs{
/// 							FromPort:   pulumi.Int(20),
/// 							IpProtocol: pulumi.String("kgjdillfenc"),
/// 							IpRanges: awsconnector.IpRangeArray{
/// 								&awsconnector.IpRangeArgs{
/// 									CidrIp:      pulumi.String("bvmbvmljqvxtixhffwasjzntbuc"),
/// 									Description: pulumi.String("shzjegnqjhifwjai"),
/// 								},
/// 							},
/// 							Ipv6Ranges: awsconnector.Ipv6RangeArray{
/// 								&awsconnector.Ipv6RangeArgs{
/// 									CidrIpv6:    pulumi.String("uxlvmqqyfplqdqzolxmmnclvmtd"),
/// 									Description: pulumi.String("iqaupyjrvko"),
/// 								},
/// 							},
/// 							PrefixListIds: awsconnector.PrefixListIdArray{
/// 								&awsconnector.PrefixListIdArgs{
/// 									Description:  pulumi.String("chukmrsgeaica"),
/// 									PrefixListId: pulumi.String("abvyhxeqhgiuwfmdproas"),
/// 								},
/// 							},
/// 							ToPort: pulumi.Int(22),
/// 							UserIdGroupPairs: awsconnector.UserIdGroupPairArray{
/// 								&awsconnector.UserIdGroupPairArgs{
/// 									Description:            pulumi.String("ltskpjkztpi"),
/// 									GroupId:                pulumi.String("laktgsfwgfj"),
/// 									GroupName:              pulumi.String("rrnebynwgsv"),
/// 									PeeringStatus:          pulumi.String("t"),
/// 									UserId:                 pulumi.String("chhl"),
/// 									VpcId:                  pulumi.String("jxcofqkxxcehakoymxojgpra"),
/// 									VpcPeeringConnectionId: pulumi.String("vdqrycsnfuwkgftprwierfwv"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					OwnerId: pulumi.String("zjetpuydwcwvcujxzfp"),
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("qujkc"),
/// 							Value: pulumi.String("jflpondfk"),
/// 						},
/// 					},
/// 					VpcId: pulumi.String("prgpmjbyqcuinimbjrzfmpmme"),
/// 				},
/// 				AwsRegion:       pulumi.String("hqrasnkghl"),
/// 				AwsSourceSchema: pulumi.String("qdcuf"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key5646": pulumi.String("rkutxmprvwlawcnhzsmyyujz"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("fuzo"),
/// 				PublicCloudResourceName:         pulumi.String("laxwpziyjookzz"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgec2SecurityGroup"),
/// 			Tags: pulumi.StringMap{
/// 				"key9265": pulumi.String("ixznafanbltkovpv"),
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
/// import com.pulumi.azurenative.awsconnector.Ec2SecurityGroup;
/// import com.pulumi.azurenative.awsconnector.Ec2SecurityGroupArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.Ec2SecurityGroupPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsEc2SecurityGroupPropertiesArgs;
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
///         var ec2SecurityGroup = new Ec2SecurityGroup("ec2SecurityGroup", Ec2SecurityGroupArgs.builder()
///             .location("vzuwiygrafixnatwfk")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(Ec2SecurityGroupPropertiesArgs.builder()
///                 .arn("wmn")
///                 .awsAccountId("opjbipitrztwvqiwhvypn")
///                 .awsProperties(AwsEc2SecurityGroupPropertiesArgs.builder()
///                     .description("hrrgskumwbylhgekdhngxjvwdnwt")
///                     .groupId("ljankmjnfyn")
///                     .groupName("btdfjlqbavbhlssltk")
///                     .ipPermissions(IpPermissionArgs.builder()
///                         .fromPort(20)
///                         .ipProtocol("kgjdillfenc")
///                         .ipRanges(IpRangeArgs.builder()
///                             .cidrIp("bvmbvmljqvxtixhffwasjzntbuc")
///                             .description("shzjegnqjhifwjai")
///                             .build())
///                         .ipv6Ranges(Ipv6RangeArgs.builder()
///                             .cidrIpv6("uxlvmqqyfplqdqzolxmmnclvmtd")
///                             .description("iqaupyjrvko")
///                             .build())
///                         .prefixListIds(PrefixListIdArgs.builder()
///                             .description("chukmrsgeaica")
///                             .prefixListId("abvyhxeqhgiuwfmdproas")
///                             .build())
///                         .toPort(22)
///                         .userIdGroupPairs(UserIdGroupPairArgs.builder()
///                             .description("ltskpjkztpi")
///                             .groupId("laktgsfwgfj")
///                             .groupName("rrnebynwgsv")
///                             .peeringStatus("t")
///                             .userId("chhl")
///                             .vpcId("jxcofqkxxcehakoymxojgpra")
///                             .vpcPeeringConnectionId("vdqrycsnfuwkgftprwierfwv")
///                             .build())
///                         .build())
///                     .ipPermissionsEgress(IpPermissionArgs.builder()
///                         .fromPort(20)
///                         .ipProtocol("kgjdillfenc")
///                         .ipRanges(IpRangeArgs.builder()
///                             .cidrIp("bvmbvmljqvxtixhffwasjzntbuc")
///                             .description("shzjegnqjhifwjai")
///                             .build())
///                         .ipv6Ranges(Ipv6RangeArgs.builder()
///                             .cidrIpv6("uxlvmqqyfplqdqzolxmmnclvmtd")
///                             .description("iqaupyjrvko")
///                             .build())
///                         .prefixListIds(PrefixListIdArgs.builder()
///                             .description("chukmrsgeaica")
///                             .prefixListId("abvyhxeqhgiuwfmdproas")
///                             .build())
///                         .toPort(22)
///                         .userIdGroupPairs(UserIdGroupPairArgs.builder()
///                             .description("ltskpjkztpi")
///                             .groupId("laktgsfwgfj")
///                             .groupName("rrnebynwgsv")
///                             .peeringStatus("t")
///                             .userId("chhl")
///                             .vpcId("jxcofqkxxcehakoymxojgpra")
///                             .vpcPeeringConnectionId("vdqrycsnfuwkgftprwierfwv")
///                             .build())
///                         .build())
///                     .ownerId("zjetpuydwcwvcujxzfp")
///                     .tags(TagArgs.builder()
///                         .key("qujkc")
///                         .value("jflpondfk")
///                         .build())
///                     .vpcId("prgpmjbyqcuinimbjrzfmpmme")
///                     .build())
///                 .awsRegion("hqrasnkghl")
///                 .awsSourceSchema("qdcuf")
///                 .awsTags(Map.of("key5646", "rkutxmprvwlawcnhzsmyyujz"))
///                 .publicCloudConnectorsResourceId("fuzo")
///                 .publicCloudResourceName("laxwpziyjookzz")
///                 .build())
///             .resourceGroupName("rgec2SecurityGroup")
///             .tags(Map.of("key9265", "ixznafanbltkovpv"))
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
/// const ec2SecurityGroup = new azure_native.awsconnector.Ec2SecurityGroup("ec2SecurityGroup", {
///     location: "vzuwiygrafixnatwfk",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "wmn",
///         awsAccountId: "opjbipitrztwvqiwhvypn",
///         awsProperties: {
///             description: "hrrgskumwbylhgekdhngxjvwdnwt",
///             groupId: "ljankmjnfyn",
///             groupName: "btdfjlqbavbhlssltk",
///             ipPermissions: [{
///                 fromPort: 20,
///                 ipProtocol: "kgjdillfenc",
///                 ipRanges: [{
///                     cidrIp: "bvmbvmljqvxtixhffwasjzntbuc",
///                     description: "shzjegnqjhifwjai",
///                 }],
///                 ipv6Ranges: [{
///                     cidrIpv6: "uxlvmqqyfplqdqzolxmmnclvmtd",
///                     description: "iqaupyjrvko",
///                 }],
///                 prefixListIds: [{
///                     description: "chukmrsgeaica",
///                     prefixListId: "abvyhxeqhgiuwfmdproas",
///                 }],
///                 toPort: 22,
///                 userIdGroupPairs: [{
///                     description: "ltskpjkztpi",
///                     groupId: "laktgsfwgfj",
///                     groupName: "rrnebynwgsv",
///                     peeringStatus: "t",
///                     userId: "chhl",
///                     vpcId: "jxcofqkxxcehakoymxojgpra",
///                     vpcPeeringConnectionId: "vdqrycsnfuwkgftprwierfwv",
///                 }],
///             }],
///             ipPermissionsEgress: [{
///                 fromPort: 20,
///                 ipProtocol: "kgjdillfenc",
///                 ipRanges: [{
///                     cidrIp: "bvmbvmljqvxtixhffwasjzntbuc",
///                     description: "shzjegnqjhifwjai",
///                 }],
///                 ipv6Ranges: [{
///                     cidrIpv6: "uxlvmqqyfplqdqzolxmmnclvmtd",
///                     description: "iqaupyjrvko",
///                 }],
///                 prefixListIds: [{
///                     description: "chukmrsgeaica",
///                     prefixListId: "abvyhxeqhgiuwfmdproas",
///                 }],
///                 toPort: 22,
///                 userIdGroupPairs: [{
///                     description: "ltskpjkztpi",
///                     groupId: "laktgsfwgfj",
///                     groupName: "rrnebynwgsv",
///                     peeringStatus: "t",
///                     userId: "chhl",
///                     vpcId: "jxcofqkxxcehakoymxojgpra",
///                     vpcPeeringConnectionId: "vdqrycsnfuwkgftprwierfwv",
///                 }],
///             }],
///             ownerId: "zjetpuydwcwvcujxzfp",
///             tags: [{
///                 key: "qujkc",
///                 value: "jflpondfk",
///             }],
///             vpcId: "prgpmjbyqcuinimbjrzfmpmme",
///         },
///         awsRegion: "hqrasnkghl",
///         awsSourceSchema: "qdcuf",
///         awsTags: {
///             key5646: "rkutxmprvwlawcnhzsmyyujz",
///         },
///         publicCloudConnectorsResourceId: "fuzo",
///         publicCloudResourceName: "laxwpziyjookzz",
///     },
///     resourceGroupName: "rgec2SecurityGroup",
///     tags: {
///         key9265: "ixznafanbltkovpv",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// ec2_security_group = azure_native.awsconnector.Ec2SecurityGroup("ec2SecurityGroup",
///     location="vzuwiygrafixnatwfk",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "wmn",
///         "aws_account_id": "opjbipitrztwvqiwhvypn",
///         "aws_properties": {
///             "description": "hrrgskumwbylhgekdhngxjvwdnwt",
///             "group_id": "ljankmjnfyn",
///             "group_name": "btdfjlqbavbhlssltk",
///             "ip_permissions": [{
///                 "from_port": 20,
///                 "ip_protocol": "kgjdillfenc",
///                 "ip_ranges": [{
///                     "cidr_ip": "bvmbvmljqvxtixhffwasjzntbuc",
///                     "description": "shzjegnqjhifwjai",
///                 }],
///                 "ipv6_ranges": [{
///                     "cidr_ipv6": "uxlvmqqyfplqdqzolxmmnclvmtd",
///                     "description": "iqaupyjrvko",
///                 }],
///                 "prefix_list_ids": [{
///                     "description": "chukmrsgeaica",
///                     "prefix_list_id": "abvyhxeqhgiuwfmdproas",
///                 }],
///                 "to_port": 22,
///                 "user_id_group_pairs": [{
///                     "description": "ltskpjkztpi",
///                     "group_id": "laktgsfwgfj",
///                     "group_name": "rrnebynwgsv",
///                     "peering_status": "t",
///                     "user_id": "chhl",
///                     "vpc_id": "jxcofqkxxcehakoymxojgpra",
///                     "vpc_peering_connection_id": "vdqrycsnfuwkgftprwierfwv",
///                 }],
///             }],
///             "ip_permissions_egress": [{
///                 "from_port": 20,
///                 "ip_protocol": "kgjdillfenc",
///                 "ip_ranges": [{
///                     "cidr_ip": "bvmbvmljqvxtixhffwasjzntbuc",
///                     "description": "shzjegnqjhifwjai",
///                 }],
///                 "ipv6_ranges": [{
///                     "cidr_ipv6": "uxlvmqqyfplqdqzolxmmnclvmtd",
///                     "description": "iqaupyjrvko",
///                 }],
///                 "prefix_list_ids": [{
///                     "description": "chukmrsgeaica",
///                     "prefix_list_id": "abvyhxeqhgiuwfmdproas",
///                 }],
///                 "to_port": 22,
///                 "user_id_group_pairs": [{
///                     "description": "ltskpjkztpi",
///                     "group_id": "laktgsfwgfj",
///                     "group_name": "rrnebynwgsv",
///                     "peering_status": "t",
///                     "user_id": "chhl",
///                     "vpc_id": "jxcofqkxxcehakoymxojgpra",
///                     "vpc_peering_connection_id": "vdqrycsnfuwkgftprwierfwv",
///                 }],
///             }],
///             "owner_id": "zjetpuydwcwvcujxzfp",
///             "tags": [{
///                 "key": "qujkc",
///                 "value": "jflpondfk",
///             }],
///             "vpc_id": "prgpmjbyqcuinimbjrzfmpmme",
///         },
///         "aws_region": "hqrasnkghl",
///         "aws_source_schema": "qdcuf",
///         "aws_tags": {
///             "key5646": "rkutxmprvwlawcnhzsmyyujz",
///         },
///         "public_cloud_connectors_resource_id": "fuzo",
///         "public_cloud_resource_name": "laxwpziyjookzz",
///     },
///     resource_group_name="rgec2SecurityGroup",
///     tags={
///         "key9265": "ixznafanbltkovpv",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   ec2SecurityGroup:
///     type: azure-native:awsconnector:Ec2SecurityGroup
///     properties:
///       location: vzuwiygrafixnatwfk
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: wmn
///         awsAccountId: opjbipitrztwvqiwhvypn
///         awsProperties:
///           description: hrrgskumwbylhgekdhngxjvwdnwt
///           groupId: ljankmjnfyn
///           groupName: btdfjlqbavbhlssltk
///           ipPermissions:
///             - fromPort: 20
///               ipProtocol: kgjdillfenc
///               ipRanges:
///                 - cidrIp: bvmbvmljqvxtixhffwasjzntbuc
///                   description: shzjegnqjhifwjai
///               ipv6Ranges:
///                 - cidrIpv6: uxlvmqqyfplqdqzolxmmnclvmtd
///                   description: iqaupyjrvko
///               prefixListIds:
///                 - description: chukmrsgeaica
///                   prefixListId: abvyhxeqhgiuwfmdproas
///               toPort: 22
///               userIdGroupPairs:
///                 - description: ltskpjkztpi
///                   groupId: laktgsfwgfj
///                   groupName: rrnebynwgsv
///                   peeringStatus: t
///                   userId: chhl
///                   vpcId: jxcofqkxxcehakoymxojgpra
///                   vpcPeeringConnectionId: vdqrycsnfuwkgftprwierfwv
///           ipPermissionsEgress:
///             - fromPort: 20
///               ipProtocol: kgjdillfenc
///               ipRanges:
///                 - cidrIp: bvmbvmljqvxtixhffwasjzntbuc
///                   description: shzjegnqjhifwjai
///               ipv6Ranges:
///                 - cidrIpv6: uxlvmqqyfplqdqzolxmmnclvmtd
///                   description: iqaupyjrvko
///               prefixListIds:
///                 - description: chukmrsgeaica
///                   prefixListId: abvyhxeqhgiuwfmdproas
///               toPort: 22
///               userIdGroupPairs:
///                 - description: ltskpjkztpi
///                   groupId: laktgsfwgfj
///                   groupName: rrnebynwgsv
///                   peeringStatus: t
///                   userId: chhl
///                   vpcId: jxcofqkxxcehakoymxojgpra
///                   vpcPeeringConnectionId: vdqrycsnfuwkgftprwierfwv
///           ownerId: zjetpuydwcwvcujxzfp
///           tags:
///             - key: qujkc
///               value: jflpondfk
///           vpcId: prgpmjbyqcuinimbjrzfmpmme
///         awsRegion: hqrasnkghl
///         awsSourceSchema: qdcuf
///         awsTags:
///           key5646: rkutxmprvwlawcnhzsmyyujz
///         publicCloudConnectorsResourceId: fuzo
///         publicCloudResourceName: laxwpziyjookzz
///       resourceGroupName: rgec2SecurityGroup
///       tags:
///         key9265: ixznafanbltkovpv
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
/// $ pulumi import azure-native:awsconnector:Ec2SecurityGroup oakxphunkdsdpxwzzb /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/ec2SecurityGroups/{name}
/// ```
class Ec2SecurityGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<Ec2SecurityGroupPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Ec2SecurityGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Ec2SecurityGroup]. {@macro pulumi_awsconnector_ec2_security_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Ec2SecurityGroup(
    String name, {
    Ec2SecurityGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:awsconnector:Ec2SecurityGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<Ec2SecurityGroupPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return Ec2SecurityGroupPropertiesResponse.fromMap(
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
