import 'package:pulumi/pulumi.dart' as pulumi;
import 'route53_resource_record_set_args.dart';
import 'route53_resource_record_set_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Route53ResourceRecordSets_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var route53ResourceRecordSet = new AzureNative.AwsConnector.Route53ResourceRecordSet("route53ResourceRecordSet", new()
///     {
///         Location = "fjdvlwthtamvmempnqmew",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.Route53ResourceRecordSetPropertiesArgs
///         {
///             Arn = "bvuvtjvkmzr",
///             AwsAccountId = "ktpknwetzcdkadwzokqsphnw",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsRoute53ResourceRecordSetPropertiesArgs
///             {
///                 AliasTarget = new AzureNative.AwsConnector.Inputs.AliasTargetArgs
///                 {
///                     DnsName = "waeiyiiaifbfgjkifiehgpvdssxp",
///                     EvaluateTargetHealth = true,
///                     HostedZoneId = "hyjpvho",
///                 },
///                 CidrRoutingConfig = new AzureNative.AwsConnector.Inputs.CidrRoutingConfigArgs
///                 {
///                     CollectionId = "yzvizqbgbmivdawr",
///                     LocationName = "ajghwvabvx",
///                 },
///                 Failover = new AzureNative.AwsConnector.Inputs.ResourceRecordSetFailoverEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.ResourceRecordSetFailover.PRIMARY,
///                 },
///                 GeoLocation = new AzureNative.AwsConnector.Inputs.GeoLocationArgs
///                 {
///                     ContinentCode = "efuwaaipthjwgythmpiqonxjn",
///                     CountryCode = "jsiftfskuw",
///                     SubdivisionCode = "mteb",
///                 },
///                 GeoProximityLocation = new AzureNative.AwsConnector.Inputs.GeoProximityLocationArgs
///                 {
///                     AwsRegion = "ughqvzy",
///                     Bias = 15,
///                     Coordinates = new AzureNative.AwsConnector.Inputs.CoordinatesArgs
///                     {
///                         Latitude = "eijexao",
///                         Longitude = "krewjxmtnbo",
///                     },
///                     LocalZoneGroup = "ksejwbcwmouldiasoybmm",
///                 },
///                 HealthCheckId = "tz",
///                 MultiValueAnswer = true,
///                 Name = "tmjfllnntbaiyvbzzfivmhgyj",
///                 Region = new AzureNative.AwsConnector.Inputs.ResourceRecordSetRegionEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.ResourceRecordSetRegion.AfSouth1,
///                 },
///                 ResourceRecords = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.ResourceRecordArgs
///                     {
///                         Value = "joiqyrlrpntv",
///                     },
///                 },
///                 SetIdentifier = "rmgriiqkzi",
///                 TrafficPolicyInstanceId = "nttbthvurnpsjgshknlxpamzymcgno",
///                 Ttl = 18,
///                 Type = new AzureNative.AwsConnector.Inputs.RRTypeEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.RRType.A,
///                 },
///                 Weight = 16,
///             },
///             AwsRegion = "bccacstjducrajieglqbivvq",
///             AwsSourceSchema = "w",
///             AwsTags =
///             {
///                 { "key1343", "zlwgpllmvhhghwjqjbpiwodxvyze" },
///             },
///             PublicCloudConnectorsResourceId = "xglniymkrzvonhdikhhxue",
///             PublicCloudResourceName = "xctgrwojlyvrzlx",
///         },
///         ResourceGroupName = "rgroute53ResourceRecordSet",
///         Tags =
///         {
///             { "key3468", "uz" },
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
/// 		_, err := awsconnector.NewRoute53ResourceRecordSet(ctx, "route53ResourceRecordSet", &awsconnector.Route53ResourceRecordSetArgs{
/// 			Location: pulumi.String("fjdvlwthtamvmempnqmew"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.Route53ResourceRecordSetPropertiesArgs{
/// 				Arn:          pulumi.String("bvuvtjvkmzr"),
/// 				AwsAccountId: pulumi.String("ktpknwetzcdkadwzokqsphnw"),
/// 				AwsProperties: &awsconnector.AwsRoute53ResourceRecordSetPropertiesArgs{
/// 					AliasTarget: &awsconnector.AliasTargetArgs{
/// 						DnsName:              pulumi.String("waeiyiiaifbfgjkifiehgpvdssxp"),
/// 						EvaluateTargetHealth: pulumi.Bool(true),
/// 						HostedZoneId:         pulumi.String("hyjpvho"),
/// 					},
/// 					CidrRoutingConfig: &awsconnector.CidrRoutingConfigArgs{
/// 						CollectionId: pulumi.String("yzvizqbgbmivdawr"),
/// 						LocationName: pulumi.String("ajghwvabvx"),
/// 					},
/// 					Failover: &awsconnector.ResourceRecordSetFailoverEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.ResourceRecordSetFailoverPRIMARY),
/// 					},
/// 					GeoLocation: &awsconnector.GeoLocationArgs{
/// 						ContinentCode:   pulumi.String("efuwaaipthjwgythmpiqonxjn"),
/// 						CountryCode:     pulumi.String("jsiftfskuw"),
/// 						SubdivisionCode: pulumi.String("mteb"),
/// 					},
/// 					GeoProximityLocation: &awsconnector.GeoProximityLocationArgs{
/// 						AwsRegion: pulumi.String("ughqvzy"),
/// 						Bias:      pulumi.Int(15),
/// 						Coordinates: &awsconnector.CoordinatesArgs{
/// 							Latitude:  pulumi.String("eijexao"),
/// 							Longitude: pulumi.String("krewjxmtnbo"),
/// 						},
/// 						LocalZoneGroup: pulumi.String("ksejwbcwmouldiasoybmm"),
/// 					},
/// 					HealthCheckId:    pulumi.String("tz"),
/// 					MultiValueAnswer: pulumi.Bool(true),
/// 					Name:             pulumi.String("tmjfllnntbaiyvbzzfivmhgyj"),
/// 					Region: &awsconnector.ResourceRecordSetRegionEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.ResourceRecordSetRegionAfSouth1),
/// 					},
/// 					ResourceRecords: awsconnector.ResourceRecordArray{
/// 						&awsconnector.ResourceRecordArgs{
/// 							Value: pulumi.String("joiqyrlrpntv"),
/// 						},
/// 					},
/// 					SetIdentifier:           pulumi.String("rmgriiqkzi"),
/// 					TrafficPolicyInstanceId: pulumi.String("nttbthvurnpsjgshknlxpamzymcgno"),
/// 					Ttl:                     pulumi.Float64(18),
/// 					Type: &awsconnector.RRTypeEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.RRTypeA),
/// 					},
/// 					Weight: pulumi.Float64(16),
/// 				},
/// 				AwsRegion:       pulumi.String("bccacstjducrajieglqbivvq"),
/// 				AwsSourceSchema: pulumi.String("w"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key1343": pulumi.String("zlwgpllmvhhghwjqjbpiwodxvyze"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("xglniymkrzvonhdikhhxue"),
/// 				PublicCloudResourceName:         pulumi.String("xctgrwojlyvrzlx"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgroute53ResourceRecordSet"),
/// 			Tags: pulumi.StringMap{
/// 				"key3468": pulumi.String("uz"),
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
/// import com.pulumi.azurenative.awsconnector.Route53ResourceRecordSet;
/// import com.pulumi.azurenative.awsconnector.Route53ResourceRecordSetArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.Route53ResourceRecordSetPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsRoute53ResourceRecordSetPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AliasTargetArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.CidrRoutingConfigArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ResourceRecordSetFailoverEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.GeoLocationArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.GeoProximityLocationArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.CoordinatesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ResourceRecordSetRegionEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.RRTypeEnumValueArgs;
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
///         var route53ResourceRecordSet = new Route53ResourceRecordSet("route53ResourceRecordSet", Route53ResourceRecordSetArgs.builder()
///             .location("fjdvlwthtamvmempnqmew")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(Route53ResourceRecordSetPropertiesArgs.builder()
///                 .arn("bvuvtjvkmzr")
///                 .awsAccountId("ktpknwetzcdkadwzokqsphnw")
///                 .awsProperties(AwsRoute53ResourceRecordSetPropertiesArgs.builder()
///                     .aliasTarget(AliasTargetArgs.builder()
///                         .dnsName("waeiyiiaifbfgjkifiehgpvdssxp")
///                         .evaluateTargetHealth(true)
///                         .hostedZoneId("hyjpvho")
///                         .build())
///                     .cidrRoutingConfig(CidrRoutingConfigArgs.builder()
///                         .collectionId("yzvizqbgbmivdawr")
///                         .locationName("ajghwvabvx")
///                         .build())
///                     .failover(ResourceRecordSetFailoverEnumValueArgs.builder()
///                         .value("PRIMARY")
///                         .build())
///                     .geoLocation(GeoLocationArgs.builder()
///                         .continentCode("efuwaaipthjwgythmpiqonxjn")
///                         .countryCode("jsiftfskuw")
///                         .subdivisionCode("mteb")
///                         .build())
///                     .geoProximityLocation(GeoProximityLocationArgs.builder()
///                         .awsRegion("ughqvzy")
///                         .bias(15)
///                         .coordinates(CoordinatesArgs.builder()
///                             .latitude("eijexao")
///                             .longitude("krewjxmtnbo")
///                             .build())
///                         .localZoneGroup("ksejwbcwmouldiasoybmm")
///                         .build())
///                     .healthCheckId("tz")
///                     .multiValueAnswer(true)
///                     .name("tmjfllnntbaiyvbzzfivmhgyj")
///                     .region(ResourceRecordSetRegionEnumValueArgs.builder()
///                         .value("af-south-1")
///                         .build())
///                     .resourceRecords(ResourceRecordArgs.builder()
///                         .value("joiqyrlrpntv")
///                         .build())
///                     .setIdentifier("rmgriiqkzi")
///                     .trafficPolicyInstanceId("nttbthvurnpsjgshknlxpamzymcgno")
///                     .ttl(18.0)
///                     .type(RRTypeEnumValueArgs.builder()
///                         .value("A")
///                         .build())
///                     .weight(16.0)
///                     .build())
///                 .awsRegion("bccacstjducrajieglqbivvq")
///                 .awsSourceSchema("w")
///                 .awsTags(Map.of("key1343", "zlwgpllmvhhghwjqjbpiwodxvyze"))
///                 .publicCloudConnectorsResourceId("xglniymkrzvonhdikhhxue")
///                 .publicCloudResourceName("xctgrwojlyvrzlx")
///                 .build())
///             .resourceGroupName("rgroute53ResourceRecordSet")
///             .tags(Map.of("key3468", "uz"))
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
/// const route53ResourceRecordSet = new azure_native.awsconnector.Route53ResourceRecordSet("route53ResourceRecordSet", {
///     location: "fjdvlwthtamvmempnqmew",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "bvuvtjvkmzr",
///         awsAccountId: "ktpknwetzcdkadwzokqsphnw",
///         awsProperties: {
///             aliasTarget: {
///                 dnsName: "waeiyiiaifbfgjkifiehgpvdssxp",
///                 evaluateTargetHealth: true,
///                 hostedZoneId: "hyjpvho",
///             },
///             cidrRoutingConfig: {
///                 collectionId: "yzvizqbgbmivdawr",
///                 locationName: "ajghwvabvx",
///             },
///             failover: {
///                 value: azure_native.awsconnector.ResourceRecordSetFailover.PRIMARY,
///             },
///             geoLocation: {
///                 continentCode: "efuwaaipthjwgythmpiqonxjn",
///                 countryCode: "jsiftfskuw",
///                 subdivisionCode: "mteb",
///             },
///             geoProximityLocation: {
///                 awsRegion: "ughqvzy",
///                 bias: 15,
///                 coordinates: {
///                     latitude: "eijexao",
///                     longitude: "krewjxmtnbo",
///                 },
///                 localZoneGroup: "ksejwbcwmouldiasoybmm",
///             },
///             healthCheckId: "tz",
///             multiValueAnswer: true,
///             name: "tmjfllnntbaiyvbzzfivmhgyj",
///             region: {
///                 value: azure_native.awsconnector.ResourceRecordSetRegion.AfSouth1,
///             },
///             resourceRecords: [{
///                 value: "joiqyrlrpntv",
///             }],
///             setIdentifier: "rmgriiqkzi",
///             trafficPolicyInstanceId: "nttbthvurnpsjgshknlxpamzymcgno",
///             ttl: 18,
///             type: {
///                 value: azure_native.awsconnector.RRType.A,
///             },
///             weight: 16,
///         },
///         awsRegion: "bccacstjducrajieglqbivvq",
///         awsSourceSchema: "w",
///         awsTags: {
///             key1343: "zlwgpllmvhhghwjqjbpiwodxvyze",
///         },
///         publicCloudConnectorsResourceId: "xglniymkrzvonhdikhhxue",
///         publicCloudResourceName: "xctgrwojlyvrzlx",
///     },
///     resourceGroupName: "rgroute53ResourceRecordSet",
///     tags: {
///         key3468: "uz",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// route53_resource_record_set = azure_native.awsconnector.Route53ResourceRecordSet("route53ResourceRecordSet",
///     location="fjdvlwthtamvmempnqmew",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "bvuvtjvkmzr",
///         "aws_account_id": "ktpknwetzcdkadwzokqsphnw",
///         "aws_properties": {
///             "alias_target": {
///                 "dns_name": "waeiyiiaifbfgjkifiehgpvdssxp",
///                 "evaluate_target_health": True,
///                 "hosted_zone_id": "hyjpvho",
///             },
///             "cidr_routing_config": {
///                 "collection_id": "yzvizqbgbmivdawr",
///                 "location_name": "ajghwvabvx",
///             },
///             "failover": {
///                 "value": azure_native.awsconnector.ResourceRecordSetFailover.PRIMARY,
///             },
///             "geo_location": {
///                 "continent_code": "efuwaaipthjwgythmpiqonxjn",
///                 "country_code": "jsiftfskuw",
///                 "subdivision_code": "mteb",
///             },
///             "geo_proximity_location": {
///                 "aws_region": "ughqvzy",
///                 "bias": 15,
///                 "coordinates": {
///                     "latitude": "eijexao",
///                     "longitude": "krewjxmtnbo",
///                 },
///                 "local_zone_group": "ksejwbcwmouldiasoybmm",
///             },
///             "health_check_id": "tz",
///             "multi_value_answer": True,
///             "name": "tmjfllnntbaiyvbzzfivmhgyj",
///             "region": {
///                 "value": azure_native.awsconnector.ResourceRecordSetRegion.AF_SOUTH1,
///             },
///             "resource_records": [{
///                 "value": "joiqyrlrpntv",
///             }],
///             "set_identifier": "rmgriiqkzi",
///             "traffic_policy_instance_id": "nttbthvurnpsjgshknlxpamzymcgno",
///             "ttl": 18,
///             "type": {
///                 "value": azure_native.awsconnector.RRType.A,
///             },
///             "weight": 16,
///         },
///         "aws_region": "bccacstjducrajieglqbivvq",
///         "aws_source_schema": "w",
///         "aws_tags": {
///             "key1343": "zlwgpllmvhhghwjqjbpiwodxvyze",
///         },
///         "public_cloud_connectors_resource_id": "xglniymkrzvonhdikhhxue",
///         "public_cloud_resource_name": "xctgrwojlyvrzlx",
///     },
///     resource_group_name="rgroute53ResourceRecordSet",
///     tags={
///         "key3468": "uz",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   route53ResourceRecordSet:
///     type: azure-native:awsconnector:Route53ResourceRecordSet
///     properties:
///       location: fjdvlwthtamvmempnqmew
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: bvuvtjvkmzr
///         awsAccountId: ktpknwetzcdkadwzokqsphnw
///         awsProperties:
///           aliasTarget:
///             dnsName: waeiyiiaifbfgjkifiehgpvdssxp
///             evaluateTargetHealth: true
///             hostedZoneId: hyjpvho
///           cidrRoutingConfig:
///             collectionId: yzvizqbgbmivdawr
///             locationName: ajghwvabvx
///           failover:
///             value: PRIMARY
///           geoLocation:
///             continentCode: efuwaaipthjwgythmpiqonxjn
///             countryCode: jsiftfskuw
///             subdivisionCode: mteb
///           geoProximityLocation:
///             awsRegion: ughqvzy
///             bias: 15
///             coordinates:
///               latitude: eijexao
///               longitude: krewjxmtnbo
///             localZoneGroup: ksejwbcwmouldiasoybmm
///           healthCheckId: tz
///           multiValueAnswer: true
///           name: tmjfllnntbaiyvbzzfivmhgyj
///           region:
///             value: af-south-1
///           resourceRecords:
///             - value: joiqyrlrpntv
///           setIdentifier: rmgriiqkzi
///           trafficPolicyInstanceId: nttbthvurnpsjgshknlxpamzymcgno
///           ttl: 18
///           type:
///             value: A
///           weight: 16
///         awsRegion: bccacstjducrajieglqbivvq
///         awsSourceSchema: w
///         awsTags:
///           key1343: zlwgpllmvhhghwjqjbpiwodxvyze
///         publicCloudConnectorsResourceId: xglniymkrzvonhdikhhxue
///         publicCloudResourceName: xctgrwojlyvrzlx
///       resourceGroupName: rgroute53ResourceRecordSet
///       tags:
///         key3468: uz
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
/// $ pulumi import azure-native:awsconnector:Route53ResourceRecordSet ockpwyrugvmyyrwkuzbjqril /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/route53ResourceRecordSets/{name}
/// ```
class Route53ResourceRecordSet extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<Route53ResourceRecordSetPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Route53ResourceRecordSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Route53ResourceRecordSet]. {@macro pulumi_awsconnector_route53_resource_record_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Route53ResourceRecordSet(
    String name, {
    Route53ResourceRecordSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:Route53ResourceRecordSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<Route53ResourceRecordSetPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return Route53ResourceRecordSetPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
