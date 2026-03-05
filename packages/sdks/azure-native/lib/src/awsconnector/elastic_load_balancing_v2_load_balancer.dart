import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_load_balancing_v2_load_balancer_args.dart';
import 'elastic_load_balancing_v2_load_balancer_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ElasticLoadBalancingV2LoadBalancers_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var elasticLoadBalancingV2LoadBalancer = new AzureNative.AwsConnector.ElasticLoadBalancingV2LoadBalancer("elasticLoadBalancingV2LoadBalancer", new()
///     {
///         Location = "zrpnzixidbktdxtkovhvkklslaw",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.ElasticLoadBalancingV2LoadBalancerPropertiesArgs
///         {
///             Arn = "kojgsx",
///             AwsAccountId = "eopxqyapnygxz",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsElasticLoadBalancingV2LoadBalancerPropertiesArgs
///             {
///                 CanonicalHostedZoneID = "cpniwdbqzfxrbtnzkthjyohnbtq",
///                 DnsName = "mafoyhxa",
///                 EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic = "gsefdpgmvnyizvpidgxdedsusstsmi",
///                 IpAddressType = "ghelcjykqvyqrwtwydiwleni",
///                 LoadBalancerArn = "tswueurcdm",
///                 LoadBalancerAttributes = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.LoadBalancerAttributeArgs
///                     {
///                         Key = "jmpasivxkgcqvadmp",
///                         Value = "cbsgvwtlyhuclvjpye",
///                     },
///                 },
///                 LoadBalancerFullName = "kmxzisdeike",
///                 LoadBalancerName = "bdspilcwdpibhmnlbygrgaebhvbz",
///                 Name = "erwqxzfowfkksnodfytvnnyefbdsc",
///                 Scheme = "nqjwo",
///                 SecurityGroups = new[]
///                 {
///                     "tavqrnlv",
///                 },
///                 SubnetMappings = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.SubnetMappingArgs
///                     {
///                         SubnetId = "igo",
///                     },
///                 },
///                 Subnets = new[]
///                 {
///                     "xqblkoljy",
///                 },
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "eaenshgcpimgwtmxvu",
///                         Value = "vxqjrslimcsyqfkfmjiqjcht",
///                     },
///                 },
///                 Type = "ywggrkrojayvb",
///             },
///             AwsRegion = "dplxwlbvhvz",
///             AwsSourceSchema = "lnmi",
///             AwsTags =
///             {
///                 { "key1771", "wqbrpppfj" },
///             },
///             PublicCloudConnectorsResourceId = "udwcmojnxevoeyr",
///             PublicCloudResourceName = "oicaxqhgvlybdl",
///         },
///         ResourceGroupName = "rgelasticLoadBalancingV2LoadBalancer",
///         Tags =
///         {
///             { "key4383", "on" },
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
/// 		_, err := awsconnector.NewElasticLoadBalancingV2LoadBalancer(ctx, "elasticLoadBalancingV2LoadBalancer", &awsconnector.ElasticLoadBalancingV2LoadBalancerArgs{
/// 			Location: pulumi.String("zrpnzixidbktdxtkovhvkklslaw"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.ElasticLoadBalancingV2LoadBalancerPropertiesArgs{
/// 				Arn:          pulumi.String("kojgsx"),
/// 				AwsAccountId: pulumi.String("eopxqyapnygxz"),
/// 				AwsProperties: &awsconnector.AwsElasticLoadBalancingV2LoadBalancerPropertiesArgs{
/// 					CanonicalHostedZoneID: pulumi.String("cpniwdbqzfxrbtnzkthjyohnbtq"),
/// 					DnsName:               pulumi.String("mafoyhxa"),
/// 					EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic: pulumi.String("gsefdpgmvnyizvpidgxdedsusstsmi"),
/// 					IpAddressType:   pulumi.String("ghelcjykqvyqrwtwydiwleni"),
/// 					LoadBalancerArn: pulumi.String("tswueurcdm"),
/// 					LoadBalancerAttributes: awsconnector.LoadBalancerAttributeArray{
/// 						&awsconnector.LoadBalancerAttributeArgs{
/// 							Key:   pulumi.String("jmpasivxkgcqvadmp"),
/// 							Value: pulumi.String("cbsgvwtlyhuclvjpye"),
/// 						},
/// 					},
/// 					LoadBalancerFullName: pulumi.String("kmxzisdeike"),
/// 					LoadBalancerName:     pulumi.String("bdspilcwdpibhmnlbygrgaebhvbz"),
/// 					Name:                 pulumi.String("erwqxzfowfkksnodfytvnnyefbdsc"),
/// 					Scheme:               pulumi.String("nqjwo"),
/// 					SecurityGroups: pulumi.StringArray{
/// 						pulumi.String("tavqrnlv"),
/// 					},
/// 					SubnetMappings: awsconnector.SubnetMappingArray{
/// 						&awsconnector.SubnetMappingArgs{
/// 							SubnetId: pulumi.String("igo"),
/// 						},
/// 					},
/// 					Subnets: pulumi.StringArray{
/// 						pulumi.String("xqblkoljy"),
/// 					},
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("eaenshgcpimgwtmxvu"),
/// 							Value: pulumi.String("vxqjrslimcsyqfkfmjiqjcht"),
/// 						},
/// 					},
/// 					Type: pulumi.String("ywggrkrojayvb"),
/// 				},
/// 				AwsRegion:       pulumi.String("dplxwlbvhvz"),
/// 				AwsSourceSchema: pulumi.String("lnmi"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key1771": pulumi.String("wqbrpppfj"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("udwcmojnxevoeyr"),
/// 				PublicCloudResourceName:         pulumi.String("oicaxqhgvlybdl"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgelasticLoadBalancingV2LoadBalancer"),
/// 			Tags: pulumi.StringMap{
/// 				"key4383": pulumi.String("on"),
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
/// import com.pulumi.azurenative.awsconnector.ElasticLoadBalancingV2LoadBalancer;
/// import com.pulumi.azurenative.awsconnector.ElasticLoadBalancingV2LoadBalancerArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ElasticLoadBalancingV2LoadBalancerPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsElasticLoadBalancingV2LoadBalancerPropertiesArgs;
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
///         var elasticLoadBalancingV2LoadBalancer = new ElasticLoadBalancingV2LoadBalancer("elasticLoadBalancingV2LoadBalancer", ElasticLoadBalancingV2LoadBalancerArgs.builder()
///             .location("zrpnzixidbktdxtkovhvkklslaw")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(ElasticLoadBalancingV2LoadBalancerPropertiesArgs.builder()
///                 .arn("kojgsx")
///                 .awsAccountId("eopxqyapnygxz")
///                 .awsProperties(AwsElasticLoadBalancingV2LoadBalancerPropertiesArgs.builder()
///                     .canonicalHostedZoneID("cpniwdbqzfxrbtnzkthjyohnbtq")
///                     .dnsName("mafoyhxa")
///                     .enforceSecurityGroupInboundRulesOnPrivateLinkTraffic("gsefdpgmvnyizvpidgxdedsusstsmi")
///                     .ipAddressType("ghelcjykqvyqrwtwydiwleni")
///                     .loadBalancerArn("tswueurcdm")
///                     .loadBalancerAttributes(LoadBalancerAttributeArgs.builder()
///                         .key("jmpasivxkgcqvadmp")
///                         .value("cbsgvwtlyhuclvjpye")
///                         .build())
///                     .loadBalancerFullName("kmxzisdeike")
///                     .loadBalancerName("bdspilcwdpibhmnlbygrgaebhvbz")
///                     .name("erwqxzfowfkksnodfytvnnyefbdsc")
///                     .scheme("nqjwo")
///                     .securityGroups("tavqrnlv")
///                     .subnetMappings(SubnetMappingArgs.builder()
///                         .subnetId("igo")
///                         .build())
///                     .subnets("xqblkoljy")
///                     .tags(TagArgs.builder()
///                         .key("eaenshgcpimgwtmxvu")
///                         .value("vxqjrslimcsyqfkfmjiqjcht")
///                         .build())
///                     .type("ywggrkrojayvb")
///                     .build())
///                 .awsRegion("dplxwlbvhvz")
///                 .awsSourceSchema("lnmi")
///                 .awsTags(Map.of("key1771", "wqbrpppfj"))
///                 .publicCloudConnectorsResourceId("udwcmojnxevoeyr")
///                 .publicCloudResourceName("oicaxqhgvlybdl")
///                 .build())
///             .resourceGroupName("rgelasticLoadBalancingV2LoadBalancer")
///             .tags(Map.of("key4383", "on"))
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
/// const elasticLoadBalancingV2LoadBalancer = new azure_native.awsconnector.ElasticLoadBalancingV2LoadBalancer("elasticLoadBalancingV2LoadBalancer", {
///     location: "zrpnzixidbktdxtkovhvkklslaw",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "kojgsx",
///         awsAccountId: "eopxqyapnygxz",
///         awsProperties: {
///             canonicalHostedZoneID: "cpniwdbqzfxrbtnzkthjyohnbtq",
///             dnsName: "mafoyhxa",
///             enforceSecurityGroupInboundRulesOnPrivateLinkTraffic: "gsefdpgmvnyizvpidgxdedsusstsmi",
///             ipAddressType: "ghelcjykqvyqrwtwydiwleni",
///             loadBalancerArn: "tswueurcdm",
///             loadBalancerAttributes: [{
///                 key: "jmpasivxkgcqvadmp",
///                 value: "cbsgvwtlyhuclvjpye",
///             }],
///             loadBalancerFullName: "kmxzisdeike",
///             loadBalancerName: "bdspilcwdpibhmnlbygrgaebhvbz",
///             name: "erwqxzfowfkksnodfytvnnyefbdsc",
///             scheme: "nqjwo",
///             securityGroups: ["tavqrnlv"],
///             subnetMappings: [{
///                 subnetId: "igo",
///             }],
///             subnets: ["xqblkoljy"],
///             tags: [{
///                 key: "eaenshgcpimgwtmxvu",
///                 value: "vxqjrslimcsyqfkfmjiqjcht",
///             }],
///             type: "ywggrkrojayvb",
///         },
///         awsRegion: "dplxwlbvhvz",
///         awsSourceSchema: "lnmi",
///         awsTags: {
///             key1771: "wqbrpppfj",
///         },
///         publicCloudConnectorsResourceId: "udwcmojnxevoeyr",
///         publicCloudResourceName: "oicaxqhgvlybdl",
///     },
///     resourceGroupName: "rgelasticLoadBalancingV2LoadBalancer",
///     tags: {
///         key4383: "on",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// elastic_load_balancing_v2_load_balancer = azure_native.awsconnector.ElasticLoadBalancingV2LoadBalancer("elasticLoadBalancingV2LoadBalancer",
///     location="zrpnzixidbktdxtkovhvkklslaw",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "kojgsx",
///         "aws_account_id": "eopxqyapnygxz",
///         "aws_properties": {
///             "canonical_hosted_zone_id": "cpniwdbqzfxrbtnzkthjyohnbtq",
///             "dns_name": "mafoyhxa",
///             "enforce_security_group_inbound_rules_on_private_link_traffic": "gsefdpgmvnyizvpidgxdedsusstsmi",
///             "ip_address_type": "ghelcjykqvyqrwtwydiwleni",
///             "load_balancer_arn": "tswueurcdm",
///             "load_balancer_attributes": [{
///                 "key": "jmpasivxkgcqvadmp",
///                 "value": "cbsgvwtlyhuclvjpye",
///             }],
///             "load_balancer_full_name": "kmxzisdeike",
///             "load_balancer_name": "bdspilcwdpibhmnlbygrgaebhvbz",
///             "name": "erwqxzfowfkksnodfytvnnyefbdsc",
///             "scheme": "nqjwo",
///             "security_groups": ["tavqrnlv"],
///             "subnet_mappings": [{
///                 "subnet_id": "igo",
///             }],
///             "subnets": ["xqblkoljy"],
///             "tags": [{
///                 "key": "eaenshgcpimgwtmxvu",
///                 "value": "vxqjrslimcsyqfkfmjiqjcht",
///             }],
///             "type": "ywggrkrojayvb",
///         },
///         "aws_region": "dplxwlbvhvz",
///         "aws_source_schema": "lnmi",
///         "aws_tags": {
///             "key1771": "wqbrpppfj",
///         },
///         "public_cloud_connectors_resource_id": "udwcmojnxevoeyr",
///         "public_cloud_resource_name": "oicaxqhgvlybdl",
///     },
///     resource_group_name="rgelasticLoadBalancingV2LoadBalancer",
///     tags={
///         "key4383": "on",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   elasticLoadBalancingV2LoadBalancer:
///     type: azure-native:awsconnector:ElasticLoadBalancingV2LoadBalancer
///     properties:
///       location: zrpnzixidbktdxtkovhvkklslaw
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: kojgsx
///         awsAccountId: eopxqyapnygxz
///         awsProperties:
///           canonicalHostedZoneID: cpniwdbqzfxrbtnzkthjyohnbtq
///           dnsName: mafoyhxa
///           enforceSecurityGroupInboundRulesOnPrivateLinkTraffic: gsefdpgmvnyizvpidgxdedsusstsmi
///           ipAddressType: ghelcjykqvyqrwtwydiwleni
///           loadBalancerArn: tswueurcdm
///           loadBalancerAttributes:
///             - key: jmpasivxkgcqvadmp
///               value: cbsgvwtlyhuclvjpye
///           loadBalancerFullName: kmxzisdeike
///           loadBalancerName: bdspilcwdpibhmnlbygrgaebhvbz
///           name: erwqxzfowfkksnodfytvnnyefbdsc
///           scheme: nqjwo
///           securityGroups:
///             - tavqrnlv
///           subnetMappings:
///             - subnetId: igo
///           subnets:
///             - xqblkoljy
///           tags:
///             - key: eaenshgcpimgwtmxvu
///               value: vxqjrslimcsyqfkfmjiqjcht
///           type: ywggrkrojayvb
///         awsRegion: dplxwlbvhvz
///         awsSourceSchema: lnmi
///         awsTags:
///           key1771: wqbrpppfj
///         publicCloudConnectorsResourceId: udwcmojnxevoeyr
///         publicCloudResourceName: oicaxqhgvlybdl
///       resourceGroupName: rgelasticLoadBalancingV2LoadBalancer
///       tags:
///         key4383: on
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
/// $ pulumi import azure-native:awsconnector:ElasticLoadBalancingV2LoadBalancer elnktjtdysq /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/elasticLoadBalancingV2LoadBalancers/{name}
/// ```
class ElasticLoadBalancingV2LoadBalancer extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<ElasticLoadBalancingV2LoadBalancerPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ElasticLoadBalancingV2LoadBalancer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ElasticLoadBalancingV2LoadBalancer]. {@macro pulumi_awsconnector_elastic_load_balancing_v2_load_balancer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ElasticLoadBalancingV2LoadBalancer(
    String name, {
    ElasticLoadBalancingV2LoadBalancerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:ElasticLoadBalancingV2LoadBalancer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ElasticLoadBalancingV2LoadBalancerPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ElasticLoadBalancingV2LoadBalancerPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
