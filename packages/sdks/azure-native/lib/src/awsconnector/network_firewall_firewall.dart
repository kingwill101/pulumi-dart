import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_firewall_firewall_args.dart';
import 'network_firewall_firewall_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### NetworkFirewallFirewalls_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var networkFirewallFirewall = new AzureNative.AwsConnector.NetworkFirewallFirewall("networkFirewallFirewall", new()
///     {
///         Location = "shwlgihd",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.NetworkFirewallFirewallPropertiesArgs
///         {
///             Arn = "zc",
///             AwsAccountId = "tcfbgbhrgcpvphfftvjmhjqg",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsNetworkFirewallFirewallPropertiesArgs
///             {
///                 DeleteProtection = true,
///                 Description = "yjsjz",
///                 EndpointIds = new[]
///                 {
///                     "ivgfubgdwmucvasgqbxyoxs",
///                 },
///                 FirewallArn = "eukqjtyapnpaslgpyrjsuuuvrja",
///                 FirewallId = "ecwdwcfmctxuqrpliya",
///                 FirewallName = "rbcjdcahhnsogdcoklk",
///                 FirewallPolicyArn = "evdxwcayrnvbn",
///                 FirewallPolicyChangeProtection = true,
///                 SubnetChangeProtection = true,
///                 SubnetMappings = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.SubnetMappingArgs
///                     {
///                         IpAddressType = "gkcalzfxwkomabldynmunz",
///                         SubnetId = "kmo",
///                     },
///                 },
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "kasiukxlhrjduzsis",
///                         Value = "fnavszvtxyetugcmqvandzxjawuq",
///                     },
///                 },
///                 VpcId = "cxrvqz",
///             },
///             AwsRegion = "ctyppkrhygaywzprynu",
///             AwsSourceSchema = "syydqlqovymaflzph",
///             AwsTags =
///             {
///                 { "key9022", "plamuzuouuqwcslfbnicnejtvd" },
///             },
///             PublicCloudConnectorsResourceId = "qjo",
///             PublicCloudResourceName = "hloidqb",
///         },
///         ResourceGroupName = "rgnetworkFirewallFirewall",
///         Tags =
///         {
///             { "key1029", "evfw" },
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
/// 		_, err := awsconnector.NewNetworkFirewallFirewall(ctx, "networkFirewallFirewall", &awsconnector.NetworkFirewallFirewallArgs{
/// 			Location: pulumi.String("shwlgihd"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.NetworkFirewallFirewallPropertiesArgs{
/// 				Arn:          pulumi.String("zc"),
/// 				AwsAccountId: pulumi.String("tcfbgbhrgcpvphfftvjmhjqg"),
/// 				AwsProperties: &awsconnector.AwsNetworkFirewallFirewallPropertiesArgs{
/// 					DeleteProtection: pulumi.Bool(true),
/// 					Description:      pulumi.String("yjsjz"),
/// 					EndpointIds: pulumi.StringArray{
/// 						pulumi.String("ivgfubgdwmucvasgqbxyoxs"),
/// 					},
/// 					FirewallArn:                    pulumi.String("eukqjtyapnpaslgpyrjsuuuvrja"),
/// 					FirewallId:                     pulumi.String("ecwdwcfmctxuqrpliya"),
/// 					FirewallName:                   pulumi.String("rbcjdcahhnsogdcoklk"),
/// 					FirewallPolicyArn:              pulumi.String("evdxwcayrnvbn"),
/// 					FirewallPolicyChangeProtection: pulumi.Bool(true),
/// 					SubnetChangeProtection:         pulumi.Bool(true),
/// 					SubnetMappings: awsconnector.SubnetMappingArray{
/// 						&awsconnector.SubnetMappingArgs{
/// 							IpAddressType: pulumi.String("gkcalzfxwkomabldynmunz"),
/// 							SubnetId:      pulumi.String("kmo"),
/// 						},
/// 					},
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("kasiukxlhrjduzsis"),
/// 							Value: pulumi.String("fnavszvtxyetugcmqvandzxjawuq"),
/// 						},
/// 					},
/// 					VpcId: pulumi.String("cxrvqz"),
/// 				},
/// 				AwsRegion:       pulumi.String("ctyppkrhygaywzprynu"),
/// 				AwsSourceSchema: pulumi.String("syydqlqovymaflzph"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key9022": pulumi.String("plamuzuouuqwcslfbnicnejtvd"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("qjo"),
/// 				PublicCloudResourceName:         pulumi.String("hloidqb"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgnetworkFirewallFirewall"),
/// 			Tags: pulumi.StringMap{
/// 				"key1029": pulumi.String("evfw"),
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
/// import com.pulumi.azurenative.awsconnector.NetworkFirewallFirewall;
/// import com.pulumi.azurenative.awsconnector.NetworkFirewallFirewallArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.NetworkFirewallFirewallPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsNetworkFirewallFirewallPropertiesArgs;
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
///         var networkFirewallFirewall = new NetworkFirewallFirewall("networkFirewallFirewall", NetworkFirewallFirewallArgs.builder()
///             .location("shwlgihd")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(NetworkFirewallFirewallPropertiesArgs.builder()
///                 .arn("zc")
///                 .awsAccountId("tcfbgbhrgcpvphfftvjmhjqg")
///                 .awsProperties(AwsNetworkFirewallFirewallPropertiesArgs.builder()
///                     .deleteProtection(true)
///                     .description("yjsjz")
///                     .endpointIds("ivgfubgdwmucvasgqbxyoxs")
///                     .firewallArn("eukqjtyapnpaslgpyrjsuuuvrja")
///                     .firewallId("ecwdwcfmctxuqrpliya")
///                     .firewallName("rbcjdcahhnsogdcoklk")
///                     .firewallPolicyArn("evdxwcayrnvbn")
///                     .firewallPolicyChangeProtection(true)
///                     .subnetChangeProtection(true)
///                     .subnetMappings(SubnetMappingArgs.builder()
///                         .ipAddressType("gkcalzfxwkomabldynmunz")
///                         .subnetId("kmo")
///                         .build())
///                     .tags(TagArgs.builder()
///                         .key("kasiukxlhrjduzsis")
///                         .value("fnavszvtxyetugcmqvandzxjawuq")
///                         .build())
///                     .vpcId("cxrvqz")
///                     .build())
///                 .awsRegion("ctyppkrhygaywzprynu")
///                 .awsSourceSchema("syydqlqovymaflzph")
///                 .awsTags(Map.of("key9022", "plamuzuouuqwcslfbnicnejtvd"))
///                 .publicCloudConnectorsResourceId("qjo")
///                 .publicCloudResourceName("hloidqb")
///                 .build())
///             .resourceGroupName("rgnetworkFirewallFirewall")
///             .tags(Map.of("key1029", "evfw"))
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
/// const networkFirewallFirewall = new azure_native.awsconnector.NetworkFirewallFirewall("networkFirewallFirewall", {
///     location: "shwlgihd",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "zc",
///         awsAccountId: "tcfbgbhrgcpvphfftvjmhjqg",
///         awsProperties: {
///             deleteProtection: true,
///             description: "yjsjz",
///             endpointIds: ["ivgfubgdwmucvasgqbxyoxs"],
///             firewallArn: "eukqjtyapnpaslgpyrjsuuuvrja",
///             firewallId: "ecwdwcfmctxuqrpliya",
///             firewallName: "rbcjdcahhnsogdcoklk",
///             firewallPolicyArn: "evdxwcayrnvbn",
///             firewallPolicyChangeProtection: true,
///             subnetChangeProtection: true,
///             subnetMappings: [{
///                 ipAddressType: "gkcalzfxwkomabldynmunz",
///                 subnetId: "kmo",
///             }],
///             tags: [{
///                 key: "kasiukxlhrjduzsis",
///                 value: "fnavszvtxyetugcmqvandzxjawuq",
///             }],
///             vpcId: "cxrvqz",
///         },
///         awsRegion: "ctyppkrhygaywzprynu",
///         awsSourceSchema: "syydqlqovymaflzph",
///         awsTags: {
///             key9022: "plamuzuouuqwcslfbnicnejtvd",
///         },
///         publicCloudConnectorsResourceId: "qjo",
///         publicCloudResourceName: "hloidqb",
///     },
///     resourceGroupName: "rgnetworkFirewallFirewall",
///     tags: {
///         key1029: "evfw",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// network_firewall_firewall = azure_native.awsconnector.NetworkFirewallFirewall("networkFirewallFirewall",
///     location="shwlgihd",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "zc",
///         "aws_account_id": "tcfbgbhrgcpvphfftvjmhjqg",
///         "aws_properties": {
///             "delete_protection": True,
///             "description": "yjsjz",
///             "endpoint_ids": ["ivgfubgdwmucvasgqbxyoxs"],
///             "firewall_arn": "eukqjtyapnpaslgpyrjsuuuvrja",
///             "firewall_id": "ecwdwcfmctxuqrpliya",
///             "firewall_name": "rbcjdcahhnsogdcoklk",
///             "firewall_policy_arn": "evdxwcayrnvbn",
///             "firewall_policy_change_protection": True,
///             "subnet_change_protection": True,
///             "subnet_mappings": [{
///                 "ip_address_type": "gkcalzfxwkomabldynmunz",
///                 "subnet_id": "kmo",
///             }],
///             "tags": [{
///                 "key": "kasiukxlhrjduzsis",
///                 "value": "fnavszvtxyetugcmqvandzxjawuq",
///             }],
///             "vpc_id": "cxrvqz",
///         },
///         "aws_region": "ctyppkrhygaywzprynu",
///         "aws_source_schema": "syydqlqovymaflzph",
///         "aws_tags": {
///             "key9022": "plamuzuouuqwcslfbnicnejtvd",
///         },
///         "public_cloud_connectors_resource_id": "qjo",
///         "public_cloud_resource_name": "hloidqb",
///     },
///     resource_group_name="rgnetworkFirewallFirewall",
///     tags={
///         "key1029": "evfw",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   networkFirewallFirewall:
///     type: azure-native:awsconnector:NetworkFirewallFirewall
///     properties:
///       location: shwlgihd
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: zc
///         awsAccountId: tcfbgbhrgcpvphfftvjmhjqg
///         awsProperties:
///           deleteProtection: true
///           description: yjsjz
///           endpointIds:
///             - ivgfubgdwmucvasgqbxyoxs
///           firewallArn: eukqjtyapnpaslgpyrjsuuuvrja
///           firewallId: ecwdwcfmctxuqrpliya
///           firewallName: rbcjdcahhnsogdcoklk
///           firewallPolicyArn: evdxwcayrnvbn
///           firewallPolicyChangeProtection: true
///           subnetChangeProtection: true
///           subnetMappings:
///             - ipAddressType: gkcalzfxwkomabldynmunz
///               subnetId: kmo
///           tags:
///             - key: kasiukxlhrjduzsis
///               value: fnavszvtxyetugcmqvandzxjawuq
///           vpcId: cxrvqz
///         awsRegion: ctyppkrhygaywzprynu
///         awsSourceSchema: syydqlqovymaflzph
///         awsTags:
///           key9022: plamuzuouuqwcslfbnicnejtvd
///         publicCloudConnectorsResourceId: qjo
///         publicCloudResourceName: hloidqb
///       resourceGroupName: rgnetworkFirewallFirewall
///       tags:
///         key1029: evfw
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
/// $ pulumi import azure-native:awsconnector:NetworkFirewallFirewall ubxxjliwcbasgrmay /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/networkFirewallFirewalls/{name}
/// ```
class NetworkFirewallFirewall extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<NetworkFirewallFirewallPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [NetworkFirewallFirewall].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkFirewallFirewall]. {@macro pulumi_awsconnector_network_firewall_firewall_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkFirewallFirewall(
    String name, {
    NetworkFirewallFirewallArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:NetworkFirewallFirewall',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<NetworkFirewallFirewallPropertiesResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
