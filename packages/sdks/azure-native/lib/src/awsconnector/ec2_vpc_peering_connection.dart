import 'package:pulumi/pulumi.dart' as pulumi;
import 'ec2_vpc_peering_connection_args.dart';
import 'ec2_vpcpeering_connection_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Ec2VpcPeeringConnections_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ec2VpcPeeringConnection = new AzureNative.AwsConnector.Ec2VpcPeeringConnection("ec2VpcPeeringConnection", new()
///     {
///         Location = "lqfmwbb",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.Ec2VPCPeeringConnectionPropertiesArgs
///         {
///             Arn = "dxhchlgpyvhsexomfqaj",
///             AwsAccountId = "digeyffuemunjngxz",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsEc2VPCPeeringConnectionPropertiesArgs
///             {
///                 Id = "emsfznbbfejdwouyracpg",
///                 PeerOwnerId = "ddjymdvquwsrdt",
///                 PeerRegion = "qcbhjmbddzbcs",
///                 PeerRoleArn = "kaophgngiqxorpifcluz",
///                 PeerVpcId = "ccurncyuawhicumwcxxnmuq",
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "quljgbamnwrovfxsxjeyymnt",
///                         Value = "xgzluroiobmj",
///                     },
///                 },
///                 VpcId = "lkitywfkos",
///             },
///             AwsRegion = "qgrfrceaszbzvo",
///             AwsSourceSchema = "pfevychrftkuamvlorm",
///             AwsTags =
///             {
///                 { "key8493", "juqefkwaorgfmwqzktgjos" },
///             },
///             PublicCloudConnectorsResourceId = "jlenaffdnxswiytzyfvbfjfghuf",
///             PublicCloudResourceName = "ackzpztj",
///         },
///         ResourceGroupName = "rgec2VPCPeeringConnection",
///         Tags =
///         {
///             { "key6160", "pgblenahxpyuppjtrhgaqsoabsr" },
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
/// 		_, err := awsconnector.NewEc2VpcPeeringConnection(ctx, "ec2VpcPeeringConnection", &awsconnector.Ec2VpcPeeringConnectionArgs{
/// 			Location: pulumi.String("lqfmwbb"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.Ec2VPCPeeringConnectionPropertiesArgs{
/// 				Arn:          pulumi.String("dxhchlgpyvhsexomfqaj"),
/// 				AwsAccountId: pulumi.String("digeyffuemunjngxz"),
/// 				AwsProperties: &awsconnector.AwsEc2VPCPeeringConnectionPropertiesArgs{
/// 					Id:          pulumi.String("emsfznbbfejdwouyracpg"),
/// 					PeerOwnerId: pulumi.String("ddjymdvquwsrdt"),
/// 					PeerRegion:  pulumi.String("qcbhjmbddzbcs"),
/// 					PeerRoleArn: pulumi.String("kaophgngiqxorpifcluz"),
/// 					PeerVpcId:   pulumi.String("ccurncyuawhicumwcxxnmuq"),
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("quljgbamnwrovfxsxjeyymnt"),
/// 							Value: pulumi.String("xgzluroiobmj"),
/// 						},
/// 					},
/// 					VpcId: pulumi.String("lkitywfkos"),
/// 				},
/// 				AwsRegion:       pulumi.String("qgrfrceaszbzvo"),
/// 				AwsSourceSchema: pulumi.String("pfevychrftkuamvlorm"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key8493": pulumi.String("juqefkwaorgfmwqzktgjos"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("jlenaffdnxswiytzyfvbfjfghuf"),
/// 				PublicCloudResourceName:         pulumi.String("ackzpztj"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgec2VPCPeeringConnection"),
/// 			Tags: pulumi.StringMap{
/// 				"key6160": pulumi.String("pgblenahxpyuppjtrhgaqsoabsr"),
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
/// resource "azure-native_awsconnector_ec2vpcpeeringconnection" "ec2VpcPeeringConnection" {
///   location = "lqfmwbb"
///   name     = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"
///   properties = {
///     arn            = "dxhchlgpyvhsexomfqaj"
///     aws_account_id = "digeyffuemunjngxz"
///     aws_properties = {
///       id            = "emsfznbbfejdwouyracpg"
///       peer_owner_id = "ddjymdvquwsrdt"
///       peer_region   = "qcbhjmbddzbcs"
///       peer_role_arn = "kaophgngiqxorpifcluz"
///       peer_vpc_id   = "ccurncyuawhicumwcxxnmuq"
///       tags = [{
///         "key"   = "quljgbamnwrovfxsxjeyymnt"
///         "value" = "xgzluroiobmj"
///       }]
///       vpc_id = "lkitywfkos"
///     }
///     aws_region        = "qgrfrceaszbzvo"
///     aws_source_schema = "pfevychrftkuamvlorm"
///     aws_tags = {
///       "key8493" = "juqefkwaorgfmwqzktgjos"
///     }
///     public_cloud_connectors_resource_id = "jlenaffdnxswiytzyfvbfjfghuf"
///     public_cloud_resource_name          = "ackzpztj"
///   }
///   resource_group_name = "rgec2VPCPeeringConnection"
///   tags = {
///     "key6160" = "pgblenahxpyuppjtrhgaqsoabsr"
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
/// import com.pulumi.azurenative.awsconnector.Ec2VpcPeeringConnection;
/// import com.pulumi.azurenative.awsconnector.Ec2VpcPeeringConnectionArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.Ec2VPCPeeringConnectionPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsEc2VPCPeeringConnectionPropertiesArgs;
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
///         var ec2VpcPeeringConnection = new Ec2VpcPeeringConnection("ec2VpcPeeringConnection", Ec2VpcPeeringConnectionArgs.builder()
///             .location("lqfmwbb")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(Ec2VPCPeeringConnectionPropertiesArgs.builder()
///                 .arn("dxhchlgpyvhsexomfqaj")
///                 .awsAccountId("digeyffuemunjngxz")
///                 .awsProperties(AwsEc2VPCPeeringConnectionPropertiesArgs.builder()
///                     .id("emsfznbbfejdwouyracpg")
///                     .peerOwnerId("ddjymdvquwsrdt")
///                     .peerRegion("qcbhjmbddzbcs")
///                     .peerRoleArn("kaophgngiqxorpifcluz")
///                     .peerVpcId("ccurncyuawhicumwcxxnmuq")
///                     .tags(TagArgs.builder()
///                         .key("quljgbamnwrovfxsxjeyymnt")
///                         .value("xgzluroiobmj")
///                         .build())
///                     .vpcId("lkitywfkos")
///                     .build())
///                 .awsRegion("qgrfrceaszbzvo")
///                 .awsSourceSchema("pfevychrftkuamvlorm")
///                 .awsTags(Map.of("key8493", "juqefkwaorgfmwqzktgjos"))
///                 .publicCloudConnectorsResourceId("jlenaffdnxswiytzyfvbfjfghuf")
///                 .publicCloudResourceName("ackzpztj")
///                 .build())
///             .resourceGroupName("rgec2VPCPeeringConnection")
///             .tags(Map.of("key6160", "pgblenahxpyuppjtrhgaqsoabsr"))
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
/// const ec2VpcPeeringConnection = new azure_native.awsconnector.Ec2VpcPeeringConnection("ec2VpcPeeringConnection", {
///     location: "lqfmwbb",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "dxhchlgpyvhsexomfqaj",
///         awsAccountId: "digeyffuemunjngxz",
///         awsProperties: {
///             id: "emsfznbbfejdwouyracpg",
///             peerOwnerId: "ddjymdvquwsrdt",
///             peerRegion: "qcbhjmbddzbcs",
///             peerRoleArn: "kaophgngiqxorpifcluz",
///             peerVpcId: "ccurncyuawhicumwcxxnmuq",
///             tags: [{
///                 key: "quljgbamnwrovfxsxjeyymnt",
///                 value: "xgzluroiobmj",
///             }],
///             vpcId: "lkitywfkos",
///         },
///         awsRegion: "qgrfrceaszbzvo",
///         awsSourceSchema: "pfevychrftkuamvlorm",
///         awsTags: {
///             key8493: "juqefkwaorgfmwqzktgjos",
///         },
///         publicCloudConnectorsResourceId: "jlenaffdnxswiytzyfvbfjfghuf",
///         publicCloudResourceName: "ackzpztj",
///     },
///     resourceGroupName: "rgec2VPCPeeringConnection",
///     tags: {
///         key6160: "pgblenahxpyuppjtrhgaqsoabsr",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// ec2_vpc_peering_connection = azure_native.awsconnector.Ec2VpcPeeringConnection("ec2VpcPeeringConnection",
///     location="lqfmwbb",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "dxhchlgpyvhsexomfqaj",
///         "aws_account_id": "digeyffuemunjngxz",
///         "aws_properties": {
///             "id": "emsfznbbfejdwouyracpg",
///             "peer_owner_id": "ddjymdvquwsrdt",
///             "peer_region": "qcbhjmbddzbcs",
///             "peer_role_arn": "kaophgngiqxorpifcluz",
///             "peer_vpc_id": "ccurncyuawhicumwcxxnmuq",
///             "tags": [{
///                 "key": "quljgbamnwrovfxsxjeyymnt",
///                 "value": "xgzluroiobmj",
///             }],
///             "vpc_id": "lkitywfkos",
///         },
///         "aws_region": "qgrfrceaszbzvo",
///         "aws_source_schema": "pfevychrftkuamvlorm",
///         "aws_tags": {
///             "key8493": "juqefkwaorgfmwqzktgjos",
///         },
///         "public_cloud_connectors_resource_id": "jlenaffdnxswiytzyfvbfjfghuf",
///         "public_cloud_resource_name": "ackzpztj",
///     },
///     resource_group_name="rgec2VPCPeeringConnection",
///     tags={
///         "key6160": "pgblenahxpyuppjtrhgaqsoabsr",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   ec2VpcPeeringConnection:
///     type: azure-native:awsconnector:Ec2VpcPeeringConnection
///     properties:
///       location: lqfmwbb
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: dxhchlgpyvhsexomfqaj
///         awsAccountId: digeyffuemunjngxz
///         awsProperties:
///           id: emsfznbbfejdwouyracpg
///           peerOwnerId: ddjymdvquwsrdt
///           peerRegion: qcbhjmbddzbcs
///           peerRoleArn: kaophgngiqxorpifcluz
///           peerVpcId: ccurncyuawhicumwcxxnmuq
///           tags:
///             - key: quljgbamnwrovfxsxjeyymnt
///               value: xgzluroiobmj
///           vpcId: lkitywfkos
///         awsRegion: qgrfrceaszbzvo
///         awsSourceSchema: pfevychrftkuamvlorm
///         awsTags:
///           key8493: juqefkwaorgfmwqzktgjos
///         publicCloudConnectorsResourceId: jlenaffdnxswiytzyfvbfjfghuf
///         publicCloudResourceName: ackzpztj
///       resourceGroupName: rgec2VPCPeeringConnection
///       tags:
///         key6160: pgblenahxpyuppjtrhgaqsoabsr
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
/// $ pulumi import azure-native:awsconnector:Ec2VpcPeeringConnection iqnkjibwefldpplqrvzjt /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/ec2VPCPeeringConnections/{name}
/// ```
class Ec2VpcPeeringConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<Ec2VPCPeeringConnectionPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Ec2VpcPeeringConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Ec2VpcPeeringConnection]. {@macro pulumi_awsconnector_ec2_vpc_peering_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Ec2VpcPeeringConnection(
    String name, {
    Ec2VpcPeeringConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:Ec2VpcPeeringConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<Ec2VPCPeeringConnectionPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return Ec2VPCPeeringConnectionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Ec2VpcPeeringConnection] resource.
  Ec2VpcPeeringConnection.reference(String urn)
    : super(
        'azure-native:awsconnector:Ec2VpcPeeringConnection',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<Ec2VPCPeeringConnectionPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return Ec2VPCPeeringConnectionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
