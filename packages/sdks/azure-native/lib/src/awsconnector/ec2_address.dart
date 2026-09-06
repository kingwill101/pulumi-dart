import 'package:pulumi/pulumi.dart' as pulumi;
import 'ec2_address_args.dart';
import 'ec2_address_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Ec2Addresses_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ec2Address = new AzureNative.AwsConnector.Ec2Address("ec2Address", new()
///     {
///         Location = "uwbmdjhaqaqz",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.Ec2AddressPropertiesArgs
///         {
///             Arn = "kgqnwrdoqeqjraczlznfiu",
///             AwsAccountId = "nfzczrgklte",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsEc2AddressPropertiesArgs
///             {
///                 AllocationId = "lakfpwuipmqvwqzpiojxgxjrh",
///                 AssociationId = "wwgugzolrxtpvpaxafaqi",
///                 CarrierIp = "tpwlxdfmqhkr",
///                 CustomerOwnedIp = "qpvlzqkbksm",
///                 CustomerOwnedIpv4Pool = "sbzgaydiiwsnarhj",
///                 Domain = new AzureNative.AwsConnector.Inputs.DomainTypeEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.DomainType.Standard,
///                 },
///                 InstanceId = "lcw",
///                 NetworkBorderGroup = "cvmuzymwrwriouiziwwhybkwv",
///                 NetworkInterfaceId = "pundetxxybkvjkwhenmdlxzoji",
///                 NetworkInterfaceOwnerId = "mxcypkkbqs",
///                 PrivateIpAddress = "syfgrbvaucqkmkakjhez",
///                 PublicIp = "uzkzeonfghtefuulqaev",
///                 PublicIpv4Pool = "dlv",
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "acaotlyww",
///                         Value = "tcahesrhkpnaonjnhbfsmiyhypjmw",
///                     },
///                 },
///             },
///             AwsRegion = "qocfydee",
///             AwsSourceSchema = "uachsjdkxtczamkh",
///             AwsTags =
///             {
///                 { "key6276", "nolpfwzekiehxektjfku" },
///             },
///             PublicCloudConnectorsResourceId = "eytnpsrqhczygcelqjky",
///             PublicCloudResourceName = "xongligvmdxe",
///         },
///         ResourceGroupName = "rgec2Address",
///         Tags =
///         {
///             { "key991", "zgudcnhfnizgcnyjetbfss" },
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
/// 		_, err := awsconnector.NewEc2Address(ctx, "ec2Address", &awsconnector.Ec2AddressArgs{
/// 			Location: pulumi.String("uwbmdjhaqaqz"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.Ec2AddressPropertiesArgs{
/// 				Arn:          pulumi.String("kgqnwrdoqeqjraczlznfiu"),
/// 				AwsAccountId: pulumi.String("nfzczrgklte"),
/// 				AwsProperties: &awsconnector.AwsEc2AddressPropertiesArgs{
/// 					AllocationId:          pulumi.String("lakfpwuipmqvwqzpiojxgxjrh"),
/// 					AssociationId:         pulumi.String("wwgugzolrxtpvpaxafaqi"),
/// 					CarrierIp:             pulumi.String("tpwlxdfmqhkr"),
/// 					CustomerOwnedIp:       pulumi.String("qpvlzqkbksm"),
/// 					CustomerOwnedIpv4Pool: pulumi.String("sbzgaydiiwsnarhj"),
/// 					Domain: &awsconnector.DomainTypeEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.DomainTypeStandard),
/// 					},
/// 					InstanceId:              pulumi.String("lcw"),
/// 					NetworkBorderGroup:      pulumi.String("cvmuzymwrwriouiziwwhybkwv"),
/// 					NetworkInterfaceId:      pulumi.String("pundetxxybkvjkwhenmdlxzoji"),
/// 					NetworkInterfaceOwnerId: pulumi.String("mxcypkkbqs"),
/// 					PrivateIpAddress:        pulumi.String("syfgrbvaucqkmkakjhez"),
/// 					PublicIp:                pulumi.String("uzkzeonfghtefuulqaev"),
/// 					PublicIpv4Pool:          pulumi.String("dlv"),
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("acaotlyww"),
/// 							Value: pulumi.String("tcahesrhkpnaonjnhbfsmiyhypjmw"),
/// 						},
/// 					},
/// 				},
/// 				AwsRegion:       pulumi.String("qocfydee"),
/// 				AwsSourceSchema: pulumi.String("uachsjdkxtczamkh"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key6276": pulumi.String("nolpfwzekiehxektjfku"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("eytnpsrqhczygcelqjky"),
/// 				PublicCloudResourceName:         pulumi.String("xongligvmdxe"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgec2Address"),
/// 			Tags: pulumi.StringMap{
/// 				"key991": pulumi.String("zgudcnhfnizgcnyjetbfss"),
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
/// resource "azure-native_awsconnector_ec2address" "ec2Address" {
///   location = "uwbmdjhaqaqz"
///   name     = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"
///   properties = {
///     arn            = "kgqnwrdoqeqjraczlznfiu"
///     aws_account_id = "nfzczrgklte"
///     aws_properties = {
///       allocation_id            = "lakfpwuipmqvwqzpiojxgxjrh"
///       association_id           = "wwgugzolrxtpvpaxafaqi"
///       carrier_ip               = "tpwlxdfmqhkr"
///       customer_owned_ip        = "qpvlzqkbksm"
///       customer_owned_ipv4_pool = "sbzgaydiiwsnarhj"
///       domain = {
///         value = "standard"
///       }
///       instance_id                = "lcw"
///       network_border_group       = "cvmuzymwrwriouiziwwhybkwv"
///       network_interface_id       = "pundetxxybkvjkwhenmdlxzoji"
///       network_interface_owner_id = "mxcypkkbqs"
///       private_ip_address         = "syfgrbvaucqkmkakjhez"
///       public_ip                  = "uzkzeonfghtefuulqaev"
///       public_ipv4_pool           = "dlv"
///       tags = [{
///         "key"   = "acaotlyww"
///         "value" = "tcahesrhkpnaonjnhbfsmiyhypjmw"
///       }]
///     }
///     aws_region        = "qocfydee"
///     aws_source_schema = "uachsjdkxtczamkh"
///     aws_tags = {
///       "key6276" = "nolpfwzekiehxektjfku"
///     }
///     public_cloud_connectors_resource_id = "eytnpsrqhczygcelqjky"
///     public_cloud_resource_name          = "xongligvmdxe"
///   }
///   resource_group_name = "rgec2Address"
///   tags = {
///     "key991" = "zgudcnhfnizgcnyjetbfss"
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
/// import com.pulumi.azurenative.awsconnector.Ec2Address;
/// import com.pulumi.azurenative.awsconnector.Ec2AddressArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.Ec2AddressPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsEc2AddressPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.DomainTypeEnumValueArgs;
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
///         var ec2Address = new Ec2Address("ec2Address", Ec2AddressArgs.builder()
///             .location("uwbmdjhaqaqz")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(Ec2AddressPropertiesArgs.builder()
///                 .arn("kgqnwrdoqeqjraczlznfiu")
///                 .awsAccountId("nfzczrgklte")
///                 .awsProperties(AwsEc2AddressPropertiesArgs.builder()
///                     .allocationId("lakfpwuipmqvwqzpiojxgxjrh")
///                     .associationId("wwgugzolrxtpvpaxafaqi")
///                     .carrierIp("tpwlxdfmqhkr")
///                     .customerOwnedIp("qpvlzqkbksm")
///                     .customerOwnedIpv4Pool("sbzgaydiiwsnarhj")
///                     .domain(DomainTypeEnumValueArgs.builder()
///                         .value("standard")
///                         .build())
///                     .instanceId("lcw")
///                     .networkBorderGroup("cvmuzymwrwriouiziwwhybkwv")
///                     .networkInterfaceId("pundetxxybkvjkwhenmdlxzoji")
///                     .networkInterfaceOwnerId("mxcypkkbqs")
///                     .privateIpAddress("syfgrbvaucqkmkakjhez")
///                     .publicIp("uzkzeonfghtefuulqaev")
///                     .publicIpv4Pool("dlv")
///                     .tags(TagArgs.builder()
///                         .key("acaotlyww")
///                         .value("tcahesrhkpnaonjnhbfsmiyhypjmw")
///                         .build())
///                     .build())
///                 .awsRegion("qocfydee")
///                 .awsSourceSchema("uachsjdkxtczamkh")
///                 .awsTags(Map.of("key6276", "nolpfwzekiehxektjfku"))
///                 .publicCloudConnectorsResourceId("eytnpsrqhczygcelqjky")
///                 .publicCloudResourceName("xongligvmdxe")
///                 .build())
///             .resourceGroupName("rgec2Address")
///             .tags(Map.of("key991", "zgudcnhfnizgcnyjetbfss"))
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
/// const ec2Address = new azure_native.awsconnector.Ec2Address("ec2Address", {
///     location: "uwbmdjhaqaqz",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "kgqnwrdoqeqjraczlznfiu",
///         awsAccountId: "nfzczrgklte",
///         awsProperties: {
///             allocationId: "lakfpwuipmqvwqzpiojxgxjrh",
///             associationId: "wwgugzolrxtpvpaxafaqi",
///             carrierIp: "tpwlxdfmqhkr",
///             customerOwnedIp: "qpvlzqkbksm",
///             customerOwnedIpv4Pool: "sbzgaydiiwsnarhj",
///             domain: {
///                 value: azure_native.awsconnector.DomainType.Standard,
///             },
///             instanceId: "lcw",
///             networkBorderGroup: "cvmuzymwrwriouiziwwhybkwv",
///             networkInterfaceId: "pundetxxybkvjkwhenmdlxzoji",
///             networkInterfaceOwnerId: "mxcypkkbqs",
///             privateIpAddress: "syfgrbvaucqkmkakjhez",
///             publicIp: "uzkzeonfghtefuulqaev",
///             publicIpv4Pool: "dlv",
///             tags: [{
///                 key: "acaotlyww",
///                 value: "tcahesrhkpnaonjnhbfsmiyhypjmw",
///             }],
///         },
///         awsRegion: "qocfydee",
///         awsSourceSchema: "uachsjdkxtczamkh",
///         awsTags: {
///             key6276: "nolpfwzekiehxektjfku",
///         },
///         publicCloudConnectorsResourceId: "eytnpsrqhczygcelqjky",
///         publicCloudResourceName: "xongligvmdxe",
///     },
///     resourceGroupName: "rgec2Address",
///     tags: {
///         key991: "zgudcnhfnizgcnyjetbfss",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// ec2_address = azure_native.awsconnector.Ec2Address("ec2Address",
///     location="uwbmdjhaqaqz",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "kgqnwrdoqeqjraczlznfiu",
///         "aws_account_id": "nfzczrgklte",
///         "aws_properties": {
///             "allocation_id": "lakfpwuipmqvwqzpiojxgxjrh",
///             "association_id": "wwgugzolrxtpvpaxafaqi",
///             "carrier_ip": "tpwlxdfmqhkr",
///             "customer_owned_ip": "qpvlzqkbksm",
///             "customer_owned_ipv4_pool": "sbzgaydiiwsnarhj",
///             "domain": {
///                 "value": azure_native.awsconnector.DomainType.STANDARD,
///             },
///             "instance_id": "lcw",
///             "network_border_group": "cvmuzymwrwriouiziwwhybkwv",
///             "network_interface_id": "pundetxxybkvjkwhenmdlxzoji",
///             "network_interface_owner_id": "mxcypkkbqs",
///             "private_ip_address": "syfgrbvaucqkmkakjhez",
///             "public_ip": "uzkzeonfghtefuulqaev",
///             "public_ipv4_pool": "dlv",
///             "tags": [{
///                 "key": "acaotlyww",
///                 "value": "tcahesrhkpnaonjnhbfsmiyhypjmw",
///             }],
///         },
///         "aws_region": "qocfydee",
///         "aws_source_schema": "uachsjdkxtczamkh",
///         "aws_tags": {
///             "key6276": "nolpfwzekiehxektjfku",
///         },
///         "public_cloud_connectors_resource_id": "eytnpsrqhczygcelqjky",
///         "public_cloud_resource_name": "xongligvmdxe",
///     },
///     resource_group_name="rgec2Address",
///     tags={
///         "key991": "zgudcnhfnizgcnyjetbfss",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   ec2Address:
///     type: azure-native:awsconnector:Ec2Address
///     properties:
///       location: uwbmdjhaqaqz
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: kgqnwrdoqeqjraczlznfiu
///         awsAccountId: nfzczrgklte
///         awsProperties:
///           allocationId: lakfpwuipmqvwqzpiojxgxjrh
///           associationId: wwgugzolrxtpvpaxafaqi
///           carrierIp: tpwlxdfmqhkr
///           customerOwnedIp: qpvlzqkbksm
///           customerOwnedIpv4Pool: sbzgaydiiwsnarhj
///           domain:
///             value: standard
///           instanceId: lcw
///           networkBorderGroup: cvmuzymwrwriouiziwwhybkwv
///           networkInterfaceId: pundetxxybkvjkwhenmdlxzoji
///           networkInterfaceOwnerId: mxcypkkbqs
///           privateIpAddress: syfgrbvaucqkmkakjhez
///           publicIp: uzkzeonfghtefuulqaev
///           publicIpv4Pool: dlv
///           tags:
///             - key: acaotlyww
///               value: tcahesrhkpnaonjnhbfsmiyhypjmw
///         awsRegion: qocfydee
///         awsSourceSchema: uachsjdkxtczamkh
///         awsTags:
///           key6276: nolpfwzekiehxektjfku
///         publicCloudConnectorsResourceId: eytnpsrqhczygcelqjky
///         publicCloudResourceName: xongligvmdxe
///       resourceGroupName: rgec2Address
///       tags:
///         key991: zgudcnhfnizgcnyjetbfss
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
/// $ pulumi import azure-native:awsconnector:Ec2Address xnduh /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/ec2Addresses/{name}
/// ```
class Ec2Address extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<Ec2AddressPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Ec2Address].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Ec2Address]. {@macro pulumi_awsconnector_ec2_address_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Ec2Address(
    String name, {
    Ec2AddressArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:Ec2Address',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<Ec2AddressPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return Ec2AddressPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Ec2Address] resource.
  Ec2Address.reference(String urn)
    : super(
        'azure-native:awsconnector:Ec2Address',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<Ec2AddressPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return Ec2AddressPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
