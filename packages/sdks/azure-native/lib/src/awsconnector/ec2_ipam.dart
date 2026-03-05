import 'package:pulumi/pulumi.dart' as pulumi;
import 'ec2_ipam_args.dart';
import 'ec2_ipam_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Ec2Ipams_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ec2Ipam = new AzureNative.AwsConnector.Ec2Ipam("ec2Ipam", new()
///     {
///         Location = "lhjepajysvu",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.Ec2IpamPropertiesArgs
///         {
///             Arn = "gcjcnzkmoauyi",
///             AwsAccountId = "fyceaucatzscmtkaw",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsEc2IpamPropertiesArgs
///             {
///                 DefaultResourceDiscoveryAssociationId = "upvbhujajpxidvdneaxudp",
///                 DefaultResourceDiscoveryId = "vmatfdwggwysxz",
///                 Description = "suxncf",
///                 IpamArn = "ounjgxqwlmalbxgwqepaivhpqm",
///                 IpamId = "baiefjd",
///                 IpamRegion = "dfdcpbefpcajoep",
///                 OperatingRegions = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.IpamOperatingRegionArgs
///                     {
///                         RegionName = "racqmjs",
///                     },
///                 },
///                 OwnerId = "sbcvakmustluzumdv",
///                 PrivateDefaultScopeId = "sgytzjkrmsnzccmbos",
///                 PublicDefaultScopeId = "uqxvzoqzwfiaerfqkufw",
///                 ResourceDiscoveryAssociationCount = 28,
///                 ScopeCount = 8,
///                 State = new AzureNative.AwsConnector.Inputs.IpamStateEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.IpamState.CreateComplete,
///                 },
///                 StateMessage = "wehaarwg",
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "lldedstrwaskhlskwkk",
///                         Value = "jnzubqdwmuxxyakaosx",
///                     },
///                 },
///                 Tier = new AzureNative.AwsConnector.Inputs.IpamTierEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.IpamTier.Advanced,
///                 },
///             },
///             AwsRegion = "rvtevmqvjnnignaaojkgqgzrsi",
///             AwsSourceSchema = "ivdglskrjwzg",
///             AwsTags =
///             {
///                 { "key4146", "ujvngmugdyjjv" },
///             },
///             PublicCloudConnectorsResourceId = "irfihvsxrgyhmubmuieufe",
///             PublicCloudResourceName = "y",
///         },
///         ResourceGroupName = "rgec2Ipam",
///         Tags =
///         {
///             { "key6845", "fmqqsfwgeauorxhhizhrca" },
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
/// 		_, err := awsconnector.NewEc2Ipam(ctx, "ec2Ipam", &awsconnector.Ec2IpamArgs{
/// 			Location: pulumi.String("lhjepajysvu"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.Ec2IpamPropertiesArgs{
/// 				Arn:          pulumi.String("gcjcnzkmoauyi"),
/// 				AwsAccountId: pulumi.String("fyceaucatzscmtkaw"),
/// 				AwsProperties: &awsconnector.AwsEc2IpamPropertiesArgs{
/// 					DefaultResourceDiscoveryAssociationId: pulumi.String("upvbhujajpxidvdneaxudp"),
/// 					DefaultResourceDiscoveryId:            pulumi.String("vmatfdwggwysxz"),
/// 					Description:                           pulumi.String("suxncf"),
/// 					IpamArn:                               pulumi.String("ounjgxqwlmalbxgwqepaivhpqm"),
/// 					IpamId:                                pulumi.String("baiefjd"),
/// 					IpamRegion:                            pulumi.String("dfdcpbefpcajoep"),
/// 					OperatingRegions: awsconnector.IpamOperatingRegionArray{
/// 						&awsconnector.IpamOperatingRegionArgs{
/// 							RegionName: pulumi.String("racqmjs"),
/// 						},
/// 					},
/// 					OwnerId:                           pulumi.String("sbcvakmustluzumdv"),
/// 					PrivateDefaultScopeId:             pulumi.String("sgytzjkrmsnzccmbos"),
/// 					PublicDefaultScopeId:              pulumi.String("uqxvzoqzwfiaerfqkufw"),
/// 					ResourceDiscoveryAssociationCount: pulumi.Int(28),
/// 					ScopeCount:                        pulumi.Int(8),
/// 					State: &awsconnector.IpamStateEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.IpamStateCreateComplete),
/// 					},
/// 					StateMessage: pulumi.String("wehaarwg"),
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("lldedstrwaskhlskwkk"),
/// 							Value: pulumi.String("jnzubqdwmuxxyakaosx"),
/// 						},
/// 					},
/// 					Tier: &awsconnector.IpamTierEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.IpamTierAdvanced),
/// 					},
/// 				},
/// 				AwsRegion:       pulumi.String("rvtevmqvjnnignaaojkgqgzrsi"),
/// 				AwsSourceSchema: pulumi.String("ivdglskrjwzg"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key4146": pulumi.String("ujvngmugdyjjv"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("irfihvsxrgyhmubmuieufe"),
/// 				PublicCloudResourceName:         pulumi.String("y"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgec2Ipam"),
/// 			Tags: pulumi.StringMap{
/// 				"key6845": pulumi.String("fmqqsfwgeauorxhhizhrca"),
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
/// import com.pulumi.azurenative.awsconnector.Ec2Ipam;
/// import com.pulumi.azurenative.awsconnector.Ec2IpamArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.Ec2IpamPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsEc2IpamPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.IpamStateEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.IpamTierEnumValueArgs;
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
///         var ec2Ipam = new Ec2Ipam("ec2Ipam", Ec2IpamArgs.builder()
///             .location("lhjepajysvu")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(Ec2IpamPropertiesArgs.builder()
///                 .arn("gcjcnzkmoauyi")
///                 .awsAccountId("fyceaucatzscmtkaw")
///                 .awsProperties(AwsEc2IpamPropertiesArgs.builder()
///                     .defaultResourceDiscoveryAssociationId("upvbhujajpxidvdneaxudp")
///                     .defaultResourceDiscoveryId("vmatfdwggwysxz")
///                     .description("suxncf")
///                     .ipamArn("ounjgxqwlmalbxgwqepaivhpqm")
///                     .ipamId("baiefjd")
///                     .ipamRegion("dfdcpbefpcajoep")
///                     .operatingRegions(IpamOperatingRegionArgs.builder()
///                         .regionName("racqmjs")
///                         .build())
///                     .ownerId("sbcvakmustluzumdv")
///                     .privateDefaultScopeId("sgytzjkrmsnzccmbos")
///                     .publicDefaultScopeId("uqxvzoqzwfiaerfqkufw")
///                     .resourceDiscoveryAssociationCount(28)
///                     .scopeCount(8)
///                     .state(IpamStateEnumValueArgs.builder()
///                         .value("create-complete")
///                         .build())
///                     .stateMessage("wehaarwg")
///                     .tags(TagArgs.builder()
///                         .key("lldedstrwaskhlskwkk")
///                         .value("jnzubqdwmuxxyakaosx")
///                         .build())
///                     .tier(IpamTierEnumValueArgs.builder()
///                         .value("advanced")
///                         .build())
///                     .build())
///                 .awsRegion("rvtevmqvjnnignaaojkgqgzrsi")
///                 .awsSourceSchema("ivdglskrjwzg")
///                 .awsTags(Map.of("key4146", "ujvngmugdyjjv"))
///                 .publicCloudConnectorsResourceId("irfihvsxrgyhmubmuieufe")
///                 .publicCloudResourceName("y")
///                 .build())
///             .resourceGroupName("rgec2Ipam")
///             .tags(Map.of("key6845", "fmqqsfwgeauorxhhizhrca"))
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
/// const ec2Ipam = new azure_native.awsconnector.Ec2Ipam("ec2Ipam", {
///     location: "lhjepajysvu",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "gcjcnzkmoauyi",
///         awsAccountId: "fyceaucatzscmtkaw",
///         awsProperties: {
///             defaultResourceDiscoveryAssociationId: "upvbhujajpxidvdneaxudp",
///             defaultResourceDiscoveryId: "vmatfdwggwysxz",
///             description: "suxncf",
///             ipamArn: "ounjgxqwlmalbxgwqepaivhpqm",
///             ipamId: "baiefjd",
///             ipamRegion: "dfdcpbefpcajoep",
///             operatingRegions: [{
///                 regionName: "racqmjs",
///             }],
///             ownerId: "sbcvakmustluzumdv",
///             privateDefaultScopeId: "sgytzjkrmsnzccmbos",
///             publicDefaultScopeId: "uqxvzoqzwfiaerfqkufw",
///             resourceDiscoveryAssociationCount: 28,
///             scopeCount: 8,
///             state: {
///                 value: azure_native.awsconnector.IpamState.CreateComplete,
///             },
///             stateMessage: "wehaarwg",
///             tags: [{
///                 key: "lldedstrwaskhlskwkk",
///                 value: "jnzubqdwmuxxyakaosx",
///             }],
///             tier: {
///                 value: azure_native.awsconnector.IpamTier.Advanced,
///             },
///         },
///         awsRegion: "rvtevmqvjnnignaaojkgqgzrsi",
///         awsSourceSchema: "ivdglskrjwzg",
///         awsTags: {
///             key4146: "ujvngmugdyjjv",
///         },
///         publicCloudConnectorsResourceId: "irfihvsxrgyhmubmuieufe",
///         publicCloudResourceName: "y",
///     },
///     resourceGroupName: "rgec2Ipam",
///     tags: {
///         key6845: "fmqqsfwgeauorxhhizhrca",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// ec2_ipam = azure_native.awsconnector.Ec2Ipam("ec2Ipam",
///     location="lhjepajysvu",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "gcjcnzkmoauyi",
///         "aws_account_id": "fyceaucatzscmtkaw",
///         "aws_properties": {
///             "default_resource_discovery_association_id": "upvbhujajpxidvdneaxudp",
///             "default_resource_discovery_id": "vmatfdwggwysxz",
///             "description": "suxncf",
///             "ipam_arn": "ounjgxqwlmalbxgwqepaivhpqm",
///             "ipam_id": "baiefjd",
///             "ipam_region": "dfdcpbefpcajoep",
///             "operating_regions": [{
///                 "region_name": "racqmjs",
///             }],
///             "owner_id": "sbcvakmustluzumdv",
///             "private_default_scope_id": "sgytzjkrmsnzccmbos",
///             "public_default_scope_id": "uqxvzoqzwfiaerfqkufw",
///             "resource_discovery_association_count": 28,
///             "scope_count": 8,
///             "state": {
///                 "value": azure_native.awsconnector.IpamState.CREATE_COMPLETE,
///             },
///             "state_message": "wehaarwg",
///             "tags": [{
///                 "key": "lldedstrwaskhlskwkk",
///                 "value": "jnzubqdwmuxxyakaosx",
///             }],
///             "tier": {
///                 "value": azure_native.awsconnector.IpamTier.ADVANCED,
///             },
///         },
///         "aws_region": "rvtevmqvjnnignaaojkgqgzrsi",
///         "aws_source_schema": "ivdglskrjwzg",
///         "aws_tags": {
///             "key4146": "ujvngmugdyjjv",
///         },
///         "public_cloud_connectors_resource_id": "irfihvsxrgyhmubmuieufe",
///         "public_cloud_resource_name": "y",
///     },
///     resource_group_name="rgec2Ipam",
///     tags={
///         "key6845": "fmqqsfwgeauorxhhizhrca",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   ec2Ipam:
///     type: azure-native:awsconnector:Ec2Ipam
///     properties:
///       location: lhjepajysvu
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: gcjcnzkmoauyi
///         awsAccountId: fyceaucatzscmtkaw
///         awsProperties:
///           defaultResourceDiscoveryAssociationId: upvbhujajpxidvdneaxudp
///           defaultResourceDiscoveryId: vmatfdwggwysxz
///           description: suxncf
///           ipamArn: ounjgxqwlmalbxgwqepaivhpqm
///           ipamId: baiefjd
///           ipamRegion: dfdcpbefpcajoep
///           operatingRegions:
///             - regionName: racqmjs
///           ownerId: sbcvakmustluzumdv
///           privateDefaultScopeId: sgytzjkrmsnzccmbos
///           publicDefaultScopeId: uqxvzoqzwfiaerfqkufw
///           resourceDiscoveryAssociationCount: 28
///           scopeCount: 8
///           state:
///             value: create-complete
///           stateMessage: wehaarwg
///           tags:
///             - key: lldedstrwaskhlskwkk
///               value: jnzubqdwmuxxyakaosx
///           tier:
///             value: advanced
///         awsRegion: rvtevmqvjnnignaaojkgqgzrsi
///         awsSourceSchema: ivdglskrjwzg
///         awsTags:
///           key4146: ujvngmugdyjjv
///         publicCloudConnectorsResourceId: irfihvsxrgyhmubmuieufe
///         publicCloudResourceName: y
///       resourceGroupName: rgec2Ipam
///       tags:
///         key6845: fmqqsfwgeauorxhhizhrca
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
/// $ pulumi import azure-native:awsconnector:Ec2Ipam qaeolhlu /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/ec2Ipams/{name}
/// ```
class Ec2Ipam extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<Ec2IpamPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Ec2Ipam].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Ec2Ipam]. {@macro pulumi_awsconnector_ec2_ipam_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Ec2Ipam(
    String name, {
    Ec2IpamArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:awsconnector:Ec2Ipam',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<Ec2IpamPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return Ec2IpamPropertiesResponse.fromMap(
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
