import 'package:pulumi/pulumi.dart' as pulumi;
import 'ec2_network_interface_args.dart';
import 'ec2_network_interface_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Ec2NetworkInterfaces_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ec2NetworkInterface = new AzureNative.AwsConnector.Ec2NetworkInterface("ec2NetworkInterface", new()
///     {
///         Location = "lagtstrmaffl",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.Ec2NetworkInterfacePropertiesArgs
///         {
///             Arn = "nmgqcimbhzksweqtns",
///             AwsAccountId = "gjylibjqfzkkx",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsEc2NetworkInterfacePropertiesArgs
///             {
///                 ConnectionTrackingSpecification = new AzureNative.AwsConnector.Inputs.ConnectionTrackingSpecificationArgs
///                 {
///                     TcpEstablishedTimeout = 17,
///                     UdpStreamTimeout = 8,
///                     UdpTimeout = 23,
///                 },
///                 Description = "rjfmatpnlpzafpjsvdifepkeompzpz",
///                 EnablePrimaryIpv6 = true,
///                 GroupSet = new[]
///                 {
///                     "dqnxzfzzixpqqapipgobuepnptfi",
///                 },
///                 Id = "djkpriel",
///                 InterfaceType = "osohhzoujznxwq",
///                 Ipv4PrefixCount = 18,
///                 Ipv4Prefixes = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.Ipv4PrefixSpecificationArgs
///                     {
///                         Ipv4Prefix = "gptczjajfvxavzpalq",
///                     },
///                 },
///                 Ipv6AddressCount = 21,
///                 Ipv6Addresses = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.InstanceIpv6AddressArgs
///                     {
///                         Ipv6Address = "yltzjtkgfhbhokimzn",
///                     },
///                 },
///                 Ipv6PrefixCount = 1,
///                 Ipv6Prefixes = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.Ipv6PrefixSpecificationArgs
///                     {
///                         Ipv6Prefix = "srpldhvaafcozyarpechevrnxlf",
///                     },
///                 },
///                 PrimaryIpv6Address = "uoblo",
///                 PrimaryPrivateIpAddress = "qyowqxftdeptwmjwfa",
///                 PrivateIpAddress = "qicwhumw",
///                 PrivateIpAddresses = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.PrivateIpAddressSpecificationArgs
///                     {
///                         Primary = true,
///                         PrivateIpAddress = "mmkedmvsclcwfvlvx",
///                     },
///                 },
///                 SecondaryPrivateIpAddressCount = 9,
///                 SecondaryPrivateIpAddresses = new[]
///                 {
///                     "mkvwjalereuiy",
///                 },
///                 SourceDestCheck = true,
///                 SubnetId = "wfyytldstgkdpoffxak",
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "ecbkgvgrwffyykfpbghbipmg",
///                         Value = "zlzzwcqgyuoe",
///                     },
///                 },
///                 VpcId = "ykqkegxxhqsw",
///             },
///             AwsRegion = "dpghaxzupmkfwbvir",
///             AwsSourceSchema = "smaakwcpvp",
///             AwsTags =
///             {
///                 { "key190", "coungxpxexmyovmnasvh" },
///             },
///             PublicCloudConnectorsResourceId = "ottcocnvajfifabmlw",
///             PublicCloudResourceName = "pjjwxtuejzskysxlytlrcqegfkuydf",
///         },
///         ResourceGroupName = "rgec2NetworkInterface",
///         Tags =
///         {
///             { "key2520", "ui" },
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
/// 		_, err := awsconnector.NewEc2NetworkInterface(ctx, "ec2NetworkInterface", &awsconnector.Ec2NetworkInterfaceArgs{
/// 			Location: pulumi.String("lagtstrmaffl"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.Ec2NetworkInterfacePropertiesArgs{
/// 				Arn:          pulumi.String("nmgqcimbhzksweqtns"),
/// 				AwsAccountId: pulumi.String("gjylibjqfzkkx"),
/// 				AwsProperties: &awsconnector.AwsEc2NetworkInterfacePropertiesArgs{
/// 					ConnectionTrackingSpecification: &awsconnector.ConnectionTrackingSpecificationArgs{
/// 						TcpEstablishedTimeout: pulumi.Int(17),
/// 						UdpStreamTimeout:      pulumi.Int(8),
/// 						UdpTimeout:            pulumi.Int(23),
/// 					},
/// 					Description:       pulumi.String("rjfmatpnlpzafpjsvdifepkeompzpz"),
/// 					EnablePrimaryIpv6: pulumi.Bool(true),
/// 					GroupSet: pulumi.StringArray{
/// 						pulumi.String("dqnxzfzzixpqqapipgobuepnptfi"),
/// 					},
/// 					Id:              pulumi.String("djkpriel"),
/// 					InterfaceType:   pulumi.String("osohhzoujznxwq"),
/// 					Ipv4PrefixCount: pulumi.Int(18),
/// 					Ipv4Prefixes: awsconnector.Ipv4PrefixSpecificationArray{
/// 						&awsconnector.Ipv4PrefixSpecificationArgs{
/// 							Ipv4Prefix: pulumi.String("gptczjajfvxavzpalq"),
/// 						},
/// 					},
/// 					Ipv6AddressCount: pulumi.Int(21),
/// 					Ipv6Addresses: awsconnector.InstanceIpv6AddressArray{
/// 						&awsconnector.InstanceIpv6AddressArgs{
/// 							Ipv6Address: pulumi.String("yltzjtkgfhbhokimzn"),
/// 						},
/// 					},
/// 					Ipv6PrefixCount: pulumi.Int(1),
/// 					Ipv6Prefixes: awsconnector.Ipv6PrefixSpecificationArray{
/// 						&awsconnector.Ipv6PrefixSpecificationArgs{
/// 							Ipv6Prefix: pulumi.String("srpldhvaafcozyarpechevrnxlf"),
/// 						},
/// 					},
/// 					PrimaryIpv6Address:      pulumi.String("uoblo"),
/// 					PrimaryPrivateIpAddress: pulumi.String("qyowqxftdeptwmjwfa"),
/// 					PrivateIpAddress:        pulumi.String("qicwhumw"),
/// 					PrivateIpAddresses: awsconnector.PrivateIpAddressSpecificationArray{
/// 						&awsconnector.PrivateIpAddressSpecificationArgs{
/// 							Primary:          pulumi.Bool(true),
/// 							PrivateIpAddress: pulumi.String("mmkedmvsclcwfvlvx"),
/// 						},
/// 					},
/// 					SecondaryPrivateIpAddressCount: pulumi.Int(9),
/// 					SecondaryPrivateIpAddresses: pulumi.StringArray{
/// 						pulumi.String("mkvwjalereuiy"),
/// 					},
/// 					SourceDestCheck: pulumi.Bool(true),
/// 					SubnetId:        pulumi.String("wfyytldstgkdpoffxak"),
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("ecbkgvgrwffyykfpbghbipmg"),
/// 							Value: pulumi.String("zlzzwcqgyuoe"),
/// 						},
/// 					},
/// 					VpcId: pulumi.String("ykqkegxxhqsw"),
/// 				},
/// 				AwsRegion:       pulumi.String("dpghaxzupmkfwbvir"),
/// 				AwsSourceSchema: pulumi.String("smaakwcpvp"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key190": pulumi.String("coungxpxexmyovmnasvh"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("ottcocnvajfifabmlw"),
/// 				PublicCloudResourceName:         pulumi.String("pjjwxtuejzskysxlytlrcqegfkuydf"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgec2NetworkInterface"),
/// 			Tags: pulumi.StringMap{
/// 				"key2520": pulumi.String("ui"),
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
/// import com.pulumi.azurenative.awsconnector.Ec2NetworkInterface;
/// import com.pulumi.azurenative.awsconnector.Ec2NetworkInterfaceArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.Ec2NetworkInterfacePropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsEc2NetworkInterfacePropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ConnectionTrackingSpecificationArgs;
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
///         var ec2NetworkInterface = new Ec2NetworkInterface("ec2NetworkInterface", Ec2NetworkInterfaceArgs.builder()
///             .location("lagtstrmaffl")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(Ec2NetworkInterfacePropertiesArgs.builder()
///                 .arn("nmgqcimbhzksweqtns")
///                 .awsAccountId("gjylibjqfzkkx")
///                 .awsProperties(AwsEc2NetworkInterfacePropertiesArgs.builder()
///                     .connectionTrackingSpecification(ConnectionTrackingSpecificationArgs.builder()
///                         .tcpEstablishedTimeout(17)
///                         .udpStreamTimeout(8)
///                         .udpTimeout(23)
///                         .build())
///                     .description("rjfmatpnlpzafpjsvdifepkeompzpz")
///                     .enablePrimaryIpv6(true)
///                     .groupSet("dqnxzfzzixpqqapipgobuepnptfi")
///                     .id("djkpriel")
///                     .interfaceType("osohhzoujznxwq")
///                     .ipv4PrefixCount(18)
///                     .ipv4Prefixes(Ipv4PrefixSpecificationArgs.builder()
///                         .ipv4Prefix("gptczjajfvxavzpalq")
///                         .build())
///                     .ipv6AddressCount(21)
///                     .ipv6Addresses(InstanceIpv6AddressArgs.builder()
///                         .ipv6Address("yltzjtkgfhbhokimzn")
///                         .build())
///                     .ipv6PrefixCount(1)
///                     .ipv6Prefixes(Ipv6PrefixSpecificationArgs.builder()
///                         .ipv6Prefix("srpldhvaafcozyarpechevrnxlf")
///                         .build())
///                     .primaryIpv6Address("uoblo")
///                     .primaryPrivateIpAddress("qyowqxftdeptwmjwfa")
///                     .privateIpAddress("qicwhumw")
///                     .privateIpAddresses(PrivateIpAddressSpecificationArgs.builder()
///                         .primary(true)
///                         .privateIpAddress("mmkedmvsclcwfvlvx")
///                         .build())
///                     .secondaryPrivateIpAddressCount(9)
///                     .secondaryPrivateIpAddresses("mkvwjalereuiy")
///                     .sourceDestCheck(true)
///                     .subnetId("wfyytldstgkdpoffxak")
///                     .tags(TagArgs.builder()
///                         .key("ecbkgvgrwffyykfpbghbipmg")
///                         .value("zlzzwcqgyuoe")
///                         .build())
///                     .vpcId("ykqkegxxhqsw")
///                     .build())
///                 .awsRegion("dpghaxzupmkfwbvir")
///                 .awsSourceSchema("smaakwcpvp")
///                 .awsTags(Map.of("key190", "coungxpxexmyovmnasvh"))
///                 .publicCloudConnectorsResourceId("ottcocnvajfifabmlw")
///                 .publicCloudResourceName("pjjwxtuejzskysxlytlrcqegfkuydf")
///                 .build())
///             .resourceGroupName("rgec2NetworkInterface")
///             .tags(Map.of("key2520", "ui"))
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
/// const ec2NetworkInterface = new azure_native.awsconnector.Ec2NetworkInterface("ec2NetworkInterface", {
///     location: "lagtstrmaffl",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "nmgqcimbhzksweqtns",
///         awsAccountId: "gjylibjqfzkkx",
///         awsProperties: {
///             connectionTrackingSpecification: {
///                 tcpEstablishedTimeout: 17,
///                 udpStreamTimeout: 8,
///                 udpTimeout: 23,
///             },
///             description: "rjfmatpnlpzafpjsvdifepkeompzpz",
///             enablePrimaryIpv6: true,
///             groupSet: ["dqnxzfzzixpqqapipgobuepnptfi"],
///             id: "djkpriel",
///             interfaceType: "osohhzoujznxwq",
///             ipv4PrefixCount: 18,
///             ipv4Prefixes: [{
///                 ipv4Prefix: "gptczjajfvxavzpalq",
///             }],
///             ipv6AddressCount: 21,
///             ipv6Addresses: [{
///                 ipv6Address: "yltzjtkgfhbhokimzn",
///             }],
///             ipv6PrefixCount: 1,
///             ipv6Prefixes: [{
///                 ipv6Prefix: "srpldhvaafcozyarpechevrnxlf",
///             }],
///             primaryIpv6Address: "uoblo",
///             primaryPrivateIpAddress: "qyowqxftdeptwmjwfa",
///             privateIpAddress: "qicwhumw",
///             privateIpAddresses: [{
///                 primary: true,
///                 privateIpAddress: "mmkedmvsclcwfvlvx",
///             }],
///             secondaryPrivateIpAddressCount: 9,
///             secondaryPrivateIpAddresses: ["mkvwjalereuiy"],
///             sourceDestCheck: true,
///             subnetId: "wfyytldstgkdpoffxak",
///             tags: [{
///                 key: "ecbkgvgrwffyykfpbghbipmg",
///                 value: "zlzzwcqgyuoe",
///             }],
///             vpcId: "ykqkegxxhqsw",
///         },
///         awsRegion: "dpghaxzupmkfwbvir",
///         awsSourceSchema: "smaakwcpvp",
///         awsTags: {
///             key190: "coungxpxexmyovmnasvh",
///         },
///         publicCloudConnectorsResourceId: "ottcocnvajfifabmlw",
///         publicCloudResourceName: "pjjwxtuejzskysxlytlrcqegfkuydf",
///     },
///     resourceGroupName: "rgec2NetworkInterface",
///     tags: {
///         key2520: "ui",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// ec2_network_interface = azure_native.awsconnector.Ec2NetworkInterface("ec2NetworkInterface",
///     location="lagtstrmaffl",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "nmgqcimbhzksweqtns",
///         "aws_account_id": "gjylibjqfzkkx",
///         "aws_properties": {
///             "connection_tracking_specification": {
///                 "tcp_established_timeout": 17,
///                 "udp_stream_timeout": 8,
///                 "udp_timeout": 23,
///             },
///             "description": "rjfmatpnlpzafpjsvdifepkeompzpz",
///             "enable_primary_ipv6": True,
///             "group_set": ["dqnxzfzzixpqqapipgobuepnptfi"],
///             "id": "djkpriel",
///             "interface_type": "osohhzoujznxwq",
///             "ipv4_prefix_count": 18,
///             "ipv4_prefixes": [{
///                 "ipv4_prefix": "gptczjajfvxavzpalq",
///             }],
///             "ipv6_address_count": 21,
///             "ipv6_addresses": [{
///                 "ipv6_address": "yltzjtkgfhbhokimzn",
///             }],
///             "ipv6_prefix_count": 1,
///             "ipv6_prefixes": [{
///                 "ipv6_prefix": "srpldhvaafcozyarpechevrnxlf",
///             }],
///             "primary_ipv6_address": "uoblo",
///             "primary_private_ip_address": "qyowqxftdeptwmjwfa",
///             "private_ip_address": "qicwhumw",
///             "private_ip_addresses": [{
///                 "primary": True,
///                 "private_ip_address": "mmkedmvsclcwfvlvx",
///             }],
///             "secondary_private_ip_address_count": 9,
///             "secondary_private_ip_addresses": ["mkvwjalereuiy"],
///             "source_dest_check": True,
///             "subnet_id": "wfyytldstgkdpoffxak",
///             "tags": [{
///                 "key": "ecbkgvgrwffyykfpbghbipmg",
///                 "value": "zlzzwcqgyuoe",
///             }],
///             "vpc_id": "ykqkegxxhqsw",
///         },
///         "aws_region": "dpghaxzupmkfwbvir",
///         "aws_source_schema": "smaakwcpvp",
///         "aws_tags": {
///             "key190": "coungxpxexmyovmnasvh",
///         },
///         "public_cloud_connectors_resource_id": "ottcocnvajfifabmlw",
///         "public_cloud_resource_name": "pjjwxtuejzskysxlytlrcqegfkuydf",
///     },
///     resource_group_name="rgec2NetworkInterface",
///     tags={
///         "key2520": "ui",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   ec2NetworkInterface:
///     type: azure-native:awsconnector:Ec2NetworkInterface
///     properties:
///       location: lagtstrmaffl
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: nmgqcimbhzksweqtns
///         awsAccountId: gjylibjqfzkkx
///         awsProperties:
///           connectionTrackingSpecification:
///             tcpEstablishedTimeout: 17
///             udpStreamTimeout: 8
///             udpTimeout: 23
///           description: rjfmatpnlpzafpjsvdifepkeompzpz
///           enablePrimaryIpv6: true
///           groupSet:
///             - dqnxzfzzixpqqapipgobuepnptfi
///           id: djkpriel
///           interfaceType: osohhzoujznxwq
///           ipv4PrefixCount: 18
///           ipv4Prefixes:
///             - ipv4Prefix: gptczjajfvxavzpalq
///           ipv6AddressCount: 21
///           ipv6Addresses:
///             - ipv6Address: yltzjtkgfhbhokimzn
///           ipv6PrefixCount: 1
///           ipv6Prefixes:
///             - ipv6Prefix: srpldhvaafcozyarpechevrnxlf
///           primaryIpv6Address: uoblo
///           primaryPrivateIpAddress: qyowqxftdeptwmjwfa
///           privateIpAddress: qicwhumw
///           privateIpAddresses:
///             - primary: true
///               privateIpAddress: mmkedmvsclcwfvlvx
///           secondaryPrivateIpAddressCount: 9
///           secondaryPrivateIpAddresses:
///             - mkvwjalereuiy
///           sourceDestCheck: true
///           subnetId: wfyytldstgkdpoffxak
///           tags:
///             - key: ecbkgvgrwffyykfpbghbipmg
///               value: zlzzwcqgyuoe
///           vpcId: ykqkegxxhqsw
///         awsRegion: dpghaxzupmkfwbvir
///         awsSourceSchema: smaakwcpvp
///         awsTags:
///           key190: coungxpxexmyovmnasvh
///         publicCloudConnectorsResourceId: ottcocnvajfifabmlw
///         publicCloudResourceName: pjjwxtuejzskysxlytlrcqegfkuydf
///       resourceGroupName: rgec2NetworkInterface
///       tags:
///         key2520: ui
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
/// $ pulumi import azure-native:awsconnector:Ec2NetworkInterface huvphvhqg /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/ec2NetworkInterfaces/{name}
/// ```
class Ec2NetworkInterface extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<Ec2NetworkInterfacePropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Ec2NetworkInterface].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Ec2NetworkInterface]. {@macro pulumi_awsconnector_ec2_network_interface_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Ec2NetworkInterface(
    String name, {
    Ec2NetworkInterfaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:Ec2NetworkInterface',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<Ec2NetworkInterfacePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return Ec2NetworkInterfacePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
