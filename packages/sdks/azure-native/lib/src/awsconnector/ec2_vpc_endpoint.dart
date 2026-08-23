import 'package:pulumi/pulumi.dart' as pulumi;
import 'ec2_vpc_endpoint_args.dart';
import 'ec2_vpcendpoint_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Ec2VpcEndpoints_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ec2VpcEndpoint = new AzureNative.AwsConnector.Ec2VpcEndpoint("ec2VpcEndpoint", new()
///     {
///         Location = "kkohg",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.Ec2VPCEndpointPropertiesArgs
///         {
///             Arn = "cxdwblbwakjiwxs",
///             AwsAccountId = "wtjkq",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsEc2VPCEndpointPropertiesArgs
///             {
///                 CreationTimestamp = "wmawquyzuhbnkrveo",
///                 DnsEntries = new[]
///                 {
///                     "kenhegadrd",
///                 },
///                 Id = "xfylmv",
///                 NetworkInterfaceIds = new[]
///                 {
///                     "uvzbeqj",
///                 },
///                 PolicyDocument = null,
///                 PrivateDnsEnabled = true,
///                 RouteTableIds = new[]
///                 {
///                     "ybkagmpjwuixbpltpabcrwewbjgj",
///                 },
///                 SecurityGroupIds = new[]
///                 {
///                     "swfhjyallivwkmzqdyqsgitfilel",
///                 },
///                 ServiceName = "bltgximadajrfctijpznsmxgy",
///                 SubnetIds = new[]
///                 {
///                     "oyfzvlrnugigsjyadmdpjblsgpcxkr",
///                 },
///                 VpcEndpointType = AzureNative.AwsConnector.VpcEndpointType.Gateway,
///                 VpcId = "ebbnplgbjkbqfifbmbrii",
///             },
///             AwsRegion = "hmnjtlhnkmnlwcuykbighvnvnjc",
///             AwsSourceSchema = "mpgbtkugoucwqsqzzchrl",
///             AwsTags =
///             {
///                 { "key7370", "ru" },
///             },
///             PublicCloudConnectorsResourceId = "lyxajxyfvrugpvxchbigrlulomftou",
///             PublicCloudResourceName = "zwgwsjbodssxgzq",
///         },
///         ResourceGroupName = "rgec2VPCEndpoint",
///         Tags =
///         {
///             { "key8512", "flakqatnfqyuqukrwcy" },
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
/// 		_, err := awsconnector.NewEc2VpcEndpoint(ctx, "ec2VpcEndpoint", &awsconnector.Ec2VpcEndpointArgs{
/// 			Location: pulumi.String("kkohg"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.Ec2VPCEndpointPropertiesArgs{
/// 				Arn:          pulumi.String("cxdwblbwakjiwxs"),
/// 				AwsAccountId: pulumi.String("wtjkq"),
/// 				AwsProperties: &awsconnector.AwsEc2VPCEndpointPropertiesArgs{
/// 					CreationTimestamp: pulumi.String("wmawquyzuhbnkrveo"),
/// 					DnsEntries: pulumi.StringArray{
/// 						pulumi.String("kenhegadrd"),
/// 					},
/// 					Id: pulumi.String("xfylmv"),
/// 					NetworkInterfaceIds: pulumi.StringArray{
/// 						pulumi.String("uvzbeqj"),
/// 					},
/// 					PolicyDocument:    pulumi.Any(map[string]interface{}{}),
/// 					PrivateDnsEnabled: pulumi.Bool(true),
/// 					RouteTableIds: pulumi.StringArray{
/// 						pulumi.String("ybkagmpjwuixbpltpabcrwewbjgj"),
/// 					},
/// 					SecurityGroupIds: pulumi.StringArray{
/// 						pulumi.String("swfhjyallivwkmzqdyqsgitfilel"),
/// 					},
/// 					ServiceName: pulumi.String("bltgximadajrfctijpznsmxgy"),
/// 					SubnetIds: pulumi.StringArray{
/// 						pulumi.String("oyfzvlrnugigsjyadmdpjblsgpcxkr"),
/// 					},
/// 					VpcEndpointType: pulumi.String(awsconnector.VpcEndpointTypeGateway),
/// 					VpcId:           pulumi.String("ebbnplgbjkbqfifbmbrii"),
/// 				},
/// 				AwsRegion:       pulumi.String("hmnjtlhnkmnlwcuykbighvnvnjc"),
/// 				AwsSourceSchema: pulumi.String("mpgbtkugoucwqsqzzchrl"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key7370": pulumi.String("ru"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("lyxajxyfvrugpvxchbigrlulomftou"),
/// 				PublicCloudResourceName:         pulumi.String("zwgwsjbodssxgzq"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgec2VPCEndpoint"),
/// 			Tags: pulumi.StringMap{
/// 				"key8512": pulumi.String("flakqatnfqyuqukrwcy"),
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
/// resource "azure-native_awsconnector_ec2vpcendpoint" "ec2VpcEndpoint" {
///   location = "kkohg"
///   name     = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"
///   properties = {
///     arn            = "cxdwblbwakjiwxs"
///     aws_account_id = "wtjkq"
///     aws_properties = {
///       creation_timestamp    = "wmawquyzuhbnkrveo"
///       dns_entries           = ["kenhegadrd"]
///       id                    = "xfylmv"
///       network_interface_ids = ["uvzbeqj"]
///       policy_document       = {}
///       private_dns_enabled   = true
///       route_table_ids       = ["ybkagmpjwuixbpltpabcrwewbjgj"]
///       security_group_ids    = ["swfhjyallivwkmzqdyqsgitfilel"]
///       service_name          = "bltgximadajrfctijpznsmxgy"
///       subnet_ids            = ["oyfzvlrnugigsjyadmdpjblsgpcxkr"]
///       vpc_endpoint_type     = "Gateway"
///       vpc_id                = "ebbnplgbjkbqfifbmbrii"
///     }
///     aws_region        = "hmnjtlhnkmnlwcuykbighvnvnjc"
///     aws_source_schema = "mpgbtkugoucwqsqzzchrl"
///     aws_tags = {
///       "key7370" = "ru"
///     }
///     public_cloud_connectors_resource_id = "lyxajxyfvrugpvxchbigrlulomftou"
///     public_cloud_resource_name          = "zwgwsjbodssxgzq"
///   }
///   resource_group_name = "rgec2VPCEndpoint"
///   tags = {
///     "key8512" = "flakqatnfqyuqukrwcy"
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
/// import com.pulumi.azurenative.awsconnector.Ec2VpcEndpoint;
/// import com.pulumi.azurenative.awsconnector.Ec2VpcEndpointArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.Ec2VPCEndpointPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsEc2VPCEndpointPropertiesArgs;
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
///         var ec2VpcEndpoint = new Ec2VpcEndpoint("ec2VpcEndpoint", Ec2VpcEndpointArgs.builder()
///             .location("kkohg")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(Ec2VPCEndpointPropertiesArgs.builder()
///                 .arn("cxdwblbwakjiwxs")
///                 .awsAccountId("wtjkq")
///                 .awsProperties(AwsEc2VPCEndpointPropertiesArgs.builder()
///                     .creationTimestamp("wmawquyzuhbnkrveo")
///                     .dnsEntries("kenhegadrd")
///                     .id("xfylmv")
///                     .networkInterfaceIds("uvzbeqj")
///                     .policyDocument(Map.ofEntries(
///                     ))
///                     .privateDnsEnabled(true)
///                     .routeTableIds("ybkagmpjwuixbpltpabcrwewbjgj")
///                     .securityGroupIds("swfhjyallivwkmzqdyqsgitfilel")
///                     .serviceName("bltgximadajrfctijpznsmxgy")
///                     .subnetIds("oyfzvlrnugigsjyadmdpjblsgpcxkr")
///                     .vpcEndpointType("Gateway")
///                     .vpcId("ebbnplgbjkbqfifbmbrii")
///                     .build())
///                 .awsRegion("hmnjtlhnkmnlwcuykbighvnvnjc")
///                 .awsSourceSchema("mpgbtkugoucwqsqzzchrl")
///                 .awsTags(Map.of("key7370", "ru"))
///                 .publicCloudConnectorsResourceId("lyxajxyfvrugpvxchbigrlulomftou")
///                 .publicCloudResourceName("zwgwsjbodssxgzq")
///                 .build())
///             .resourceGroupName("rgec2VPCEndpoint")
///             .tags(Map.of("key8512", "flakqatnfqyuqukrwcy"))
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
/// const ec2VpcEndpoint = new azure_native.awsconnector.Ec2VpcEndpoint("ec2VpcEndpoint", {
///     location: "kkohg",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "cxdwblbwakjiwxs",
///         awsAccountId: "wtjkq",
///         awsProperties: {
///             creationTimestamp: "wmawquyzuhbnkrveo",
///             dnsEntries: ["kenhegadrd"],
///             id: "xfylmv",
///             networkInterfaceIds: ["uvzbeqj"],
///             policyDocument: {},
///             privateDnsEnabled: true,
///             routeTableIds: ["ybkagmpjwuixbpltpabcrwewbjgj"],
///             securityGroupIds: ["swfhjyallivwkmzqdyqsgitfilel"],
///             serviceName: "bltgximadajrfctijpznsmxgy",
///             subnetIds: ["oyfzvlrnugigsjyadmdpjblsgpcxkr"],
///             vpcEndpointType: azure_native.awsconnector.VpcEndpointType.Gateway,
///             vpcId: "ebbnplgbjkbqfifbmbrii",
///         },
///         awsRegion: "hmnjtlhnkmnlwcuykbighvnvnjc",
///         awsSourceSchema: "mpgbtkugoucwqsqzzchrl",
///         awsTags: {
///             key7370: "ru",
///         },
///         publicCloudConnectorsResourceId: "lyxajxyfvrugpvxchbigrlulomftou",
///         publicCloudResourceName: "zwgwsjbodssxgzq",
///     },
///     resourceGroupName: "rgec2VPCEndpoint",
///     tags: {
///         key8512: "flakqatnfqyuqukrwcy",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// ec2_vpc_endpoint = azure_native.awsconnector.Ec2VpcEndpoint("ec2VpcEndpoint",
///     location="kkohg",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "cxdwblbwakjiwxs",
///         "aws_account_id": "wtjkq",
///         "aws_properties": {
///             "creation_timestamp": "wmawquyzuhbnkrveo",
///             "dns_entries": ["kenhegadrd"],
///             "id": "xfylmv",
///             "network_interface_ids": ["uvzbeqj"],
///             "policy_document": {},
///             "private_dns_enabled": True,
///             "route_table_ids": ["ybkagmpjwuixbpltpabcrwewbjgj"],
///             "security_group_ids": ["swfhjyallivwkmzqdyqsgitfilel"],
///             "service_name": "bltgximadajrfctijpznsmxgy",
///             "subnet_ids": ["oyfzvlrnugigsjyadmdpjblsgpcxkr"],
///             "vpc_endpoint_type": azure_native.awsconnector.VpcEndpointType.GATEWAY,
///             "vpc_id": "ebbnplgbjkbqfifbmbrii",
///         },
///         "aws_region": "hmnjtlhnkmnlwcuykbighvnvnjc",
///         "aws_source_schema": "mpgbtkugoucwqsqzzchrl",
///         "aws_tags": {
///             "key7370": "ru",
///         },
///         "public_cloud_connectors_resource_id": "lyxajxyfvrugpvxchbigrlulomftou",
///         "public_cloud_resource_name": "zwgwsjbodssxgzq",
///     },
///     resource_group_name="rgec2VPCEndpoint",
///     tags={
///         "key8512": "flakqatnfqyuqukrwcy",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   ec2VpcEndpoint:
///     type: azure-native:awsconnector:Ec2VpcEndpoint
///     properties:
///       location: kkohg
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: cxdwblbwakjiwxs
///         awsAccountId: wtjkq
///         awsProperties:
///           creationTimestamp: wmawquyzuhbnkrveo
///           dnsEntries:
///             - kenhegadrd
///           id: xfylmv
///           networkInterfaceIds:
///             - uvzbeqj
///           policyDocument: {}
///           privateDnsEnabled: true
///           routeTableIds:
///             - ybkagmpjwuixbpltpabcrwewbjgj
///           securityGroupIds:
///             - swfhjyallivwkmzqdyqsgitfilel
///           serviceName: bltgximadajrfctijpznsmxgy
///           subnetIds:
///             - oyfzvlrnugigsjyadmdpjblsgpcxkr
///           vpcEndpointType: Gateway
///           vpcId: ebbnplgbjkbqfifbmbrii
///         awsRegion: hmnjtlhnkmnlwcuykbighvnvnjc
///         awsSourceSchema: mpgbtkugoucwqsqzzchrl
///         awsTags:
///           key7370: ru
///         publicCloudConnectorsResourceId: lyxajxyfvrugpvxchbigrlulomftou
///         publicCloudResourceName: zwgwsjbodssxgzq
///       resourceGroupName: rgec2VPCEndpoint
///       tags:
///         key8512: flakqatnfqyuqukrwcy
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
/// $ pulumi import azure-native:awsconnector:Ec2VpcEndpoint gwdblodylojmzwamkvkhborn /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/ec2VPCEndpoints/{name}
/// ```
class Ec2VpcEndpoint extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<Ec2VPCEndpointPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Ec2VpcEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Ec2VpcEndpoint]. {@macro pulumi_awsconnector_ec2_vpc_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Ec2VpcEndpoint(
    String name, {
    Ec2VpcEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:Ec2VpcEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<Ec2VPCEndpointPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return Ec2VPCEndpointPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
