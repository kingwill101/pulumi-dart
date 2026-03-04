import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_load_balancingv2_target_health_description_args.dart';
import 'elastic_load_balancingv2_target_health_description_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ElasticLoadBalancingv2TargetHealthDescriptions_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var elasticLoadBalancingv2TargetHealthDescription = new AzureNative.AwsConnector.ElasticLoadBalancingv2TargetHealthDescription("elasticLoadBalancingv2TargetHealthDescription", new()
///     {
///         Location = "fjdx",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.ElasticLoadBalancingv2TargetHealthDescriptionPropertiesArgs
///         {
///             Arn = "hwxzsqacyslkcfypjntjeecsgic",
///             AwsAccountId = "nqhdoshumaulzimktuhfyzbokepnin",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsElasticLoadBalancingv2TargetHealthDescriptionPropertiesArgs
///             {
///                 AnomalyDetection = new AzureNative.AwsConnector.Inputs.AnomalyDetectionArgs
///                 {
///                     MitigationInEffect = new AzureNative.AwsConnector.Inputs.MitigationInEffectEnumEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.MitigationInEffectEnum.No,
///                     },
///                     Result = new AzureNative.AwsConnector.Inputs.AnomalyResultEnumEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.AnomalyResultEnum.Anomalous,
///                     },
///                 },
///                 HealthCheckPort = "wncbdhbdrxjzdwg",
///                 Target = new AzureNative.AwsConnector.Inputs.TargetDescriptionArgs
///                 {
///                     AvailabilityZone = "lopqxsnyhbsjjqaj",
///                     Id = "wrhggxodbbktxivhn",
///                     Port = 29,
///                 },
///                 TargetHealth = new AzureNative.AwsConnector.Inputs.TargetHealthArgs
///                 {
///                     Description = "v",
///                     Reason = new AzureNative.AwsConnector.Inputs.TargetHealthReasonEnumEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.TargetHealthReasonEnum.ElbInitialHealthChecking,
///                     },
///                     State = new AzureNative.AwsConnector.Inputs.TargetHealthStateEnumEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.TargetHealthStateEnum.Draining,
///                     },
///                 },
///             },
///             AwsRegion = "jhbryqdcp",
///             AwsSourceSchema = "kqowwthevk",
///             AwsTags =
///             {
///                 { "key1547", "ursadfghvwitmnfl" },
///             },
///             PublicCloudConnectorsResourceId = "zwes",
///             PublicCloudResourceName = "dwtgooliytsuedlhhauisu",
///         },
///         ResourceGroupName = "rgelasticLoadBalancingV2TargetHealthDescription",
///         Tags =
///         {
///             { "key7243", "rnnjfbxaflvpmnutqzvg" },
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
/// 		_, err := awsconnector.NewElasticLoadBalancingv2TargetHealthDescription(ctx, "elasticLoadBalancingv2TargetHealthDescription", &awsconnector.ElasticLoadBalancingv2TargetHealthDescriptionArgs{
/// 			Location: pulumi.String("fjdx"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.ElasticLoadBalancingv2TargetHealthDescriptionPropertiesArgs{
/// 				Arn:          pulumi.String("hwxzsqacyslkcfypjntjeecsgic"),
/// 				AwsAccountId: pulumi.String("nqhdoshumaulzimktuhfyzbokepnin"),
/// 				AwsProperties: &awsconnector.AwsElasticLoadBalancingv2TargetHealthDescriptionPropertiesArgs{
/// 					AnomalyDetection: &awsconnector.AnomalyDetectionArgs{
/// 						MitigationInEffect: &awsconnector.MitigationInEffectEnumEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.MitigationInEffectEnumNo),
/// 						},
/// 						Result: &awsconnector.AnomalyResultEnumEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.AnomalyResultEnumAnomalous),
/// 						},
/// 					},
/// 					HealthCheckPort: pulumi.String("wncbdhbdrxjzdwg"),
/// 					Target: &awsconnector.TargetDescriptionArgs{
/// 						AvailabilityZone: pulumi.String("lopqxsnyhbsjjqaj"),
/// 						Id:               pulumi.String("wrhggxodbbktxivhn"),
/// 						Port:             pulumi.Int(29),
/// 					},
/// 					TargetHealth: &awsconnector.TargetHealthArgs{
/// 						Description: pulumi.String("v"),
/// 						Reason: &awsconnector.TargetHealthReasonEnumEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.TargetHealthReasonEnumElbInitialHealthChecking),
/// 						},
/// 						State: &awsconnector.TargetHealthStateEnumEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.TargetHealthStateEnumDraining),
/// 						},
/// 					},
/// 				},
/// 				AwsRegion:       pulumi.String("jhbryqdcp"),
/// 				AwsSourceSchema: pulumi.String("kqowwthevk"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key1547": pulumi.String("ursadfghvwitmnfl"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("zwes"),
/// 				PublicCloudResourceName:         pulumi.String("dwtgooliytsuedlhhauisu"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgelasticLoadBalancingV2TargetHealthDescription"),
/// 			Tags: pulumi.StringMap{
/// 				"key7243": pulumi.String("rnnjfbxaflvpmnutqzvg"),
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
/// import com.pulumi.azurenative.awsconnector.ElasticLoadBalancingv2TargetHealthDescription;
/// import com.pulumi.azurenative.awsconnector.ElasticLoadBalancingv2TargetHealthDescriptionArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ElasticLoadBalancingv2TargetHealthDescriptionPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsElasticLoadBalancingv2TargetHealthDescriptionPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AnomalyDetectionArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.MitigationInEffectEnumEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AnomalyResultEnumEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.TargetDescriptionArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.TargetHealthArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.TargetHealthReasonEnumEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.TargetHealthStateEnumEnumValueArgs;
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
///         var elasticLoadBalancingv2TargetHealthDescription = new ElasticLoadBalancingv2TargetHealthDescription("elasticLoadBalancingv2TargetHealthDescription", ElasticLoadBalancingv2TargetHealthDescriptionArgs.builder()
///             .location("fjdx")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(ElasticLoadBalancingv2TargetHealthDescriptionPropertiesArgs.builder()
///                 .arn("hwxzsqacyslkcfypjntjeecsgic")
///                 .awsAccountId("nqhdoshumaulzimktuhfyzbokepnin")
///                 .awsProperties(AwsElasticLoadBalancingv2TargetHealthDescriptionPropertiesArgs.builder()
///                     .anomalyDetection(AnomalyDetectionArgs.builder()
///                         .mitigationInEffect(MitigationInEffectEnumEnumValueArgs.builder()
///                             .value("no")
///                             .build())
///                         .result(AnomalyResultEnumEnumValueArgs.builder()
///                             .value("anomalous")
///                             .build())
///                         .build())
///                     .healthCheckPort("wncbdhbdrxjzdwg")
///                     .target(TargetDescriptionArgs.builder()
///                         .availabilityZone("lopqxsnyhbsjjqaj")
///                         .id("wrhggxodbbktxivhn")
///                         .port(29)
///                         .build())
///                     .targetHealth(TargetHealthArgs.builder()
///                         .description("v")
///                         .reason(TargetHealthReasonEnumEnumValueArgs.builder()
///                             .value("Elb.InitialHealthChecking")
///                             .build())
///                         .state(TargetHealthStateEnumEnumValueArgs.builder()
///                             .value("draining")
///                             .build())
///                         .build())
///                     .build())
///                 .awsRegion("jhbryqdcp")
///                 .awsSourceSchema("kqowwthevk")
///                 .awsTags(Map.of("key1547", "ursadfghvwitmnfl"))
///                 .publicCloudConnectorsResourceId("zwes")
///                 .publicCloudResourceName("dwtgooliytsuedlhhauisu")
///                 .build())
///             .resourceGroupName("rgelasticLoadBalancingV2TargetHealthDescription")
///             .tags(Map.of("key7243", "rnnjfbxaflvpmnutqzvg"))
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
/// const elasticLoadBalancingv2TargetHealthDescription = new azure_native.awsconnector.ElasticLoadBalancingv2TargetHealthDescription("elasticLoadBalancingv2TargetHealthDescription", {
///     location: "fjdx",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "hwxzsqacyslkcfypjntjeecsgic",
///         awsAccountId: "nqhdoshumaulzimktuhfyzbokepnin",
///         awsProperties: {
///             anomalyDetection: {
///                 mitigationInEffect: {
///                     value: azure_native.awsconnector.MitigationInEffectEnum.No,
///                 },
///                 result: {
///                     value: azure_native.awsconnector.AnomalyResultEnum.Anomalous,
///                 },
///             },
///             healthCheckPort: "wncbdhbdrxjzdwg",
///             target: {
///                 availabilityZone: "lopqxsnyhbsjjqaj",
///                 id: "wrhggxodbbktxivhn",
///                 port: 29,
///             },
///             targetHealth: {
///                 description: "v",
///                 reason: {
///                     value: azure_native.awsconnector.TargetHealthReasonEnum.ElbInitialHealthChecking,
///                 },
///                 state: {
///                     value: azure_native.awsconnector.TargetHealthStateEnum.Draining,
///                 },
///             },
///         },
///         awsRegion: "jhbryqdcp",
///         awsSourceSchema: "kqowwthevk",
///         awsTags: {
///             key1547: "ursadfghvwitmnfl",
///         },
///         publicCloudConnectorsResourceId: "zwes",
///         publicCloudResourceName: "dwtgooliytsuedlhhauisu",
///     },
///     resourceGroupName: "rgelasticLoadBalancingV2TargetHealthDescription",
///     tags: {
///         key7243: "rnnjfbxaflvpmnutqzvg",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// elastic_load_balancingv2_target_health_description = azure_native.awsconnector.ElasticLoadBalancingv2TargetHealthDescription("elasticLoadBalancingv2TargetHealthDescription",
///     location="fjdx",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "hwxzsqacyslkcfypjntjeecsgic",
///         "aws_account_id": "nqhdoshumaulzimktuhfyzbokepnin",
///         "aws_properties": {
///             "anomaly_detection": {
///                 "mitigation_in_effect": {
///                     "value": azure_native.awsconnector.MitigationInEffectEnum.NO,
///                 },
///                 "result": {
///                     "value": azure_native.awsconnector.AnomalyResultEnum.ANOMALOUS,
///                 },
///             },
///             "health_check_port": "wncbdhbdrxjzdwg",
///             "target": {
///                 "availability_zone": "lopqxsnyhbsjjqaj",
///                 "id": "wrhggxodbbktxivhn",
///                 "port": 29,
///             },
///             "target_health": {
///                 "description": "v",
///                 "reason": {
///                     "value": azure_native.awsconnector.TargetHealthReasonEnum.ELB_INITIAL_HEALTH_CHECKING,
///                 },
///                 "state": {
///                     "value": azure_native.awsconnector.TargetHealthStateEnum.DRAINING,
///                 },
///             },
///         },
///         "aws_region": "jhbryqdcp",
///         "aws_source_schema": "kqowwthevk",
///         "aws_tags": {
///             "key1547": "ursadfghvwitmnfl",
///         },
///         "public_cloud_connectors_resource_id": "zwes",
///         "public_cloud_resource_name": "dwtgooliytsuedlhhauisu",
///     },
///     resource_group_name="rgelasticLoadBalancingV2TargetHealthDescription",
///     tags={
///         "key7243": "rnnjfbxaflvpmnutqzvg",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   elasticLoadBalancingv2TargetHealthDescription:
///     type: azure-native:awsconnector:ElasticLoadBalancingv2TargetHealthDescription
///     properties:
///       location: fjdx
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: hwxzsqacyslkcfypjntjeecsgic
///         awsAccountId: nqhdoshumaulzimktuhfyzbokepnin
///         awsProperties:
///           anomalyDetection:
///             mitigationInEffect:
///               value: no
///             result:
///               value: anomalous
///           healthCheckPort: wncbdhbdrxjzdwg
///           target:
///             availabilityZone: lopqxsnyhbsjjqaj
///             id: wrhggxodbbktxivhn
///             port: 29
///           targetHealth:
///             description: v
///             reason:
///               value: Elb.InitialHealthChecking
///             state:
///               value: draining
///         awsRegion: jhbryqdcp
///         awsSourceSchema: kqowwthevk
///         awsTags:
///           key1547: ursadfghvwitmnfl
///         publicCloudConnectorsResourceId: zwes
///         publicCloudResourceName: dwtgooliytsuedlhhauisu
///       resourceGroupName: rgelasticLoadBalancingV2TargetHealthDescription
///       tags:
///         key7243: rnnjfbxaflvpmnutqzvg
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
/// $ pulumi import azure-native:awsconnector:ElasticLoadBalancingv2TargetHealthDescription jpetudmwrkfgbiihrhfwekiomcafmh /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/elasticLoadBalancingV2TargetHealthDescriptions/{name}
/// ```
class ElasticLoadBalancingv2TargetHealthDescription
    extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<
    ElasticLoadBalancingv2TargetHealthDescriptionPropertiesResponse
  >
  properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ElasticLoadBalancingv2TargetHealthDescription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ElasticLoadBalancingv2TargetHealthDescription]. {@macro pulumi_awsconnector_elastic_load_balancingv2_target_health_description_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ElasticLoadBalancingv2TargetHealthDescription(
    String name, {
    ElasticLoadBalancingv2TargetHealthDescriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:awsconnector:ElasticLoadBalancingv2TargetHealthDescription',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties =
        registerOutput<
          ElasticLoadBalancingv2TargetHealthDescriptionPropertiesResponse
        >('properties');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
