import 'package:pulumi/pulumi.dart' as pulumi;
import 'ec2_vpc_args.dart';
import 'ec2_vpc_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Ec2Vpcs_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ec2Vpc = new AzureNative.AwsConnector.Ec2Vpc("ec2Vpc", new()
///     {
///         Location = "bcrtgodiyozdsiqbhdvsaaog",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.Ec2VpcPropertiesArgs
///         {
///             Arn = "isskkecektndkosbruasgvkakzf",
///             AwsAccountId = "vskthos",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsEc2VpcPropertiesArgs
///             {
///                 CidrBlock = "amstuguadqkmlmofdszmxhgssf",
///                 CidrBlockAssociations = new[]
///                 {
///                     "ykwdexxzxjxowuuawym",
///                 },
///                 DefaultNetworkAcl = "lhtepidfpfsyxksnvekueeyvw",
///                 DefaultSecurityGroup = "qtqgizvsvzdqxmbwwpmtcnqlfuh",
///                 EnableDnsHostnames = true,
///                 EnableDnsSupport = true,
///                 InstanceTenancy = "haqdsdkgbjmnwdgamqs",
///                 Ipv4IpamPoolId = "ldzbfvpzpwudqtdyb",
///                 Ipv4NetmaskLength = 21,
///                 Ipv6CidrBlocks = new[]
///                 {
///                     "q",
///                 },
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "dn",
///                         Value = "tqvkxdrwsaxvxwckrpqk",
///                     },
///                 },
///                 VpcId = "wqqqqmtbgzmdfmkiaoyjdkavuzzzzw",
///             },
///             AwsRegion = "paraxj",
///             AwsSourceSchema = "vnjplxwhapuaydjjdqiaqfvbfjam",
///             AwsTags =
///             {
///                 { "key96", "hjcp" },
///             },
///             PublicCloudConnectorsResourceId = "hpzdeuzmjfwatmynigq",
///             PublicCloudResourceName = "qjwdilmlbbam",
///         },
///         ResourceGroupName = "rgec2Vpc",
///         Tags =
///         {
///             { "key2430", "wsbwsruiakoihittdhcmmwrjmft" },
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
/// 		_, err := awsconnector.NewEc2Vpc(ctx, "ec2Vpc", &awsconnector.Ec2VpcArgs{
/// 			Location: pulumi.String("bcrtgodiyozdsiqbhdvsaaog"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.Ec2VpcPropertiesArgs{
/// 				Arn:          pulumi.String("isskkecektndkosbruasgvkakzf"),
/// 				AwsAccountId: pulumi.String("vskthos"),
/// 				AwsProperties: &awsconnector.AwsEc2VpcPropertiesArgs{
/// 					CidrBlock: pulumi.String("amstuguadqkmlmofdszmxhgssf"),
/// 					CidrBlockAssociations: pulumi.StringArray{
/// 						pulumi.String("ykwdexxzxjxowuuawym"),
/// 					},
/// 					DefaultNetworkAcl:    pulumi.String("lhtepidfpfsyxksnvekueeyvw"),
/// 					DefaultSecurityGroup: pulumi.String("qtqgizvsvzdqxmbwwpmtcnqlfuh"),
/// 					EnableDnsHostnames:   pulumi.Bool(true),
/// 					EnableDnsSupport:     pulumi.Bool(true),
/// 					InstanceTenancy:      pulumi.String("haqdsdkgbjmnwdgamqs"),
/// 					Ipv4IpamPoolId:       pulumi.String("ldzbfvpzpwudqtdyb"),
/// 					Ipv4NetmaskLength:    pulumi.Int(21),
/// 					Ipv6CidrBlocks: pulumi.StringArray{
/// 						pulumi.String("q"),
/// 					},
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("dn"),
/// 							Value: pulumi.String("tqvkxdrwsaxvxwckrpqk"),
/// 						},
/// 					},
/// 					VpcId: pulumi.String("wqqqqmtbgzmdfmkiaoyjdkavuzzzzw"),
/// 				},
/// 				AwsRegion:       pulumi.String("paraxj"),
/// 				AwsSourceSchema: pulumi.String("vnjplxwhapuaydjjdqiaqfvbfjam"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key96": pulumi.String("hjcp"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("hpzdeuzmjfwatmynigq"),
/// 				PublicCloudResourceName:         pulumi.String("qjwdilmlbbam"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgec2Vpc"),
/// 			Tags: pulumi.StringMap{
/// 				"key2430": pulumi.String("wsbwsruiakoihittdhcmmwrjmft"),
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
/// import com.pulumi.azurenative.awsconnector.Ec2Vpc;
/// import com.pulumi.azurenative.awsconnector.Ec2VpcArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.Ec2VpcPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsEc2VpcPropertiesArgs;
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
///         var ec2Vpc = new Ec2Vpc("ec2Vpc", Ec2VpcArgs.builder()
///             .location("bcrtgodiyozdsiqbhdvsaaog")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(Ec2VpcPropertiesArgs.builder()
///                 .arn("isskkecektndkosbruasgvkakzf")
///                 .awsAccountId("vskthos")
///                 .awsProperties(AwsEc2VpcPropertiesArgs.builder()
///                     .cidrBlock("amstuguadqkmlmofdszmxhgssf")
///                     .cidrBlockAssociations("ykwdexxzxjxowuuawym")
///                     .defaultNetworkAcl("lhtepidfpfsyxksnvekueeyvw")
///                     .defaultSecurityGroup("qtqgizvsvzdqxmbwwpmtcnqlfuh")
///                     .enableDnsHostnames(true)
///                     .enableDnsSupport(true)
///                     .instanceTenancy("haqdsdkgbjmnwdgamqs")
///                     .ipv4IpamPoolId("ldzbfvpzpwudqtdyb")
///                     .ipv4NetmaskLength(21)
///                     .ipv6CidrBlocks("q")
///                     .tags(TagArgs.builder()
///                         .key("dn")
///                         .value("tqvkxdrwsaxvxwckrpqk")
///                         .build())
///                     .vpcId("wqqqqmtbgzmdfmkiaoyjdkavuzzzzw")
///                     .build())
///                 .awsRegion("paraxj")
///                 .awsSourceSchema("vnjplxwhapuaydjjdqiaqfvbfjam")
///                 .awsTags(Map.of("key96", "hjcp"))
///                 .publicCloudConnectorsResourceId("hpzdeuzmjfwatmynigq")
///                 .publicCloudResourceName("qjwdilmlbbam")
///                 .build())
///             .resourceGroupName("rgec2Vpc")
///             .tags(Map.of("key2430", "wsbwsruiakoihittdhcmmwrjmft"))
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
/// const ec2Vpc = new azure_native.awsconnector.Ec2Vpc("ec2Vpc", {
///     location: "bcrtgodiyozdsiqbhdvsaaog",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "isskkecektndkosbruasgvkakzf",
///         awsAccountId: "vskthos",
///         awsProperties: {
///             cidrBlock: "amstuguadqkmlmofdszmxhgssf",
///             cidrBlockAssociations: ["ykwdexxzxjxowuuawym"],
///             defaultNetworkAcl: "lhtepidfpfsyxksnvekueeyvw",
///             defaultSecurityGroup: "qtqgizvsvzdqxmbwwpmtcnqlfuh",
///             enableDnsHostnames: true,
///             enableDnsSupport: true,
///             instanceTenancy: "haqdsdkgbjmnwdgamqs",
///             ipv4IpamPoolId: "ldzbfvpzpwudqtdyb",
///             ipv4NetmaskLength: 21,
///             ipv6CidrBlocks: ["q"],
///             tags: [{
///                 key: "dn",
///                 value: "tqvkxdrwsaxvxwckrpqk",
///             }],
///             vpcId: "wqqqqmtbgzmdfmkiaoyjdkavuzzzzw",
///         },
///         awsRegion: "paraxj",
///         awsSourceSchema: "vnjplxwhapuaydjjdqiaqfvbfjam",
///         awsTags: {
///             key96: "hjcp",
///         },
///         publicCloudConnectorsResourceId: "hpzdeuzmjfwatmynigq",
///         publicCloudResourceName: "qjwdilmlbbam",
///     },
///     resourceGroupName: "rgec2Vpc",
///     tags: {
///         key2430: "wsbwsruiakoihittdhcmmwrjmft",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// ec2_vpc = azure_native.awsconnector.Ec2Vpc("ec2Vpc",
///     location="bcrtgodiyozdsiqbhdvsaaog",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "isskkecektndkosbruasgvkakzf",
///         "aws_account_id": "vskthos",
///         "aws_properties": {
///             "cidr_block": "amstuguadqkmlmofdszmxhgssf",
///             "cidr_block_associations": ["ykwdexxzxjxowuuawym"],
///             "default_network_acl": "lhtepidfpfsyxksnvekueeyvw",
///             "default_security_group": "qtqgizvsvzdqxmbwwpmtcnqlfuh",
///             "enable_dns_hostnames": True,
///             "enable_dns_support": True,
///             "instance_tenancy": "haqdsdkgbjmnwdgamqs",
///             "ipv4_ipam_pool_id": "ldzbfvpzpwudqtdyb",
///             "ipv4_netmask_length": 21,
///             "ipv6_cidr_blocks": ["q"],
///             "tags": [{
///                 "key": "dn",
///                 "value": "tqvkxdrwsaxvxwckrpqk",
///             }],
///             "vpc_id": "wqqqqmtbgzmdfmkiaoyjdkavuzzzzw",
///         },
///         "aws_region": "paraxj",
///         "aws_source_schema": "vnjplxwhapuaydjjdqiaqfvbfjam",
///         "aws_tags": {
///             "key96": "hjcp",
///         },
///         "public_cloud_connectors_resource_id": "hpzdeuzmjfwatmynigq",
///         "public_cloud_resource_name": "qjwdilmlbbam",
///     },
///     resource_group_name="rgec2Vpc",
///     tags={
///         "key2430": "wsbwsruiakoihittdhcmmwrjmft",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   ec2Vpc:
///     type: azure-native:awsconnector:Ec2Vpc
///     properties:
///       location: bcrtgodiyozdsiqbhdvsaaog
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: isskkecektndkosbruasgvkakzf
///         awsAccountId: vskthos
///         awsProperties:
///           cidrBlock: amstuguadqkmlmofdszmxhgssf
///           cidrBlockAssociations:
///             - ykwdexxzxjxowuuawym
///           defaultNetworkAcl: lhtepidfpfsyxksnvekueeyvw
///           defaultSecurityGroup: qtqgizvsvzdqxmbwwpmtcnqlfuh
///           enableDnsHostnames: true
///           enableDnsSupport: true
///           instanceTenancy: haqdsdkgbjmnwdgamqs
///           ipv4IpamPoolId: ldzbfvpzpwudqtdyb
///           ipv4NetmaskLength: 21
///           ipv6CidrBlocks:
///             - q
///           tags:
///             - key: dn
///               value: tqvkxdrwsaxvxwckrpqk
///           vpcId: wqqqqmtbgzmdfmkiaoyjdkavuzzzzw
///         awsRegion: paraxj
///         awsSourceSchema: vnjplxwhapuaydjjdqiaqfvbfjam
///         awsTags:
///           key96: hjcp
///         publicCloudConnectorsResourceId: hpzdeuzmjfwatmynigq
///         publicCloudResourceName: qjwdilmlbbam
///       resourceGroupName: rgec2Vpc
///       tags:
///         key2430: wsbwsruiakoihittdhcmmwrjmft
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
/// $ pulumi import azure-native:awsconnector:Ec2Vpc dey /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/ec2Vpcs/{name}
/// ```
class Ec2Vpc extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<Ec2VpcPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Ec2Vpc].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Ec2Vpc]. {@macro pulumi_awsconnector_ec2_vpc_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Ec2Vpc(
    String name, {
    Ec2VpcArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:Ec2Vpc',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<Ec2VpcPropertiesResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
