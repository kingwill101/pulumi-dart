import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_load_balancing_v2_target_group_args.dart';
import 'elastic_load_balancing_v2_target_group_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ElasticLoadBalancingV2TargetGroups_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var elasticLoadBalancingV2TargetGroup = new AzureNative.AwsConnector.ElasticLoadBalancingV2TargetGroup("elasticLoadBalancingV2TargetGroup", new()
///     {
///         Location = "uyngtpdaililbq",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.ElasticLoadBalancingV2TargetGroupPropertiesArgs
///         {
///             Arn = "avccwbbipudnfjximva",
///             AwsAccountId = "vjdgbgqisnvysonxlwjoczc",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsElasticLoadBalancingV2TargetGroupPropertiesArgs
///             {
///                 HealthCheckEnabled = true,
///                 HealthCheckIntervalSeconds = 16,
///                 HealthCheckPath = "exmwepsqjmnvppxuwwvineim",
///                 HealthCheckPort = "cjuqka",
///                 HealthCheckProtocol = "vkarvxh",
///                 HealthCheckTimeoutSeconds = 13,
///                 HealthyThresholdCount = 21,
///                 IpAddressType = "da",
///                 LoadBalancerArns = new[]
///                 {
///                     "tzafgmrxzoifkxbmzsivajwdwedjw",
///                 },
///                 Matcher = new AzureNative.AwsConnector.Inputs.MatcherArgs
///                 {
///                     GrpcCode = "tbnxw",
///                     HttpCode = "pavevmyswjhnoptlankjaiieao",
///                 },
///                 Name = "ruyunzpgs",
///                 Port = 9,
///                 Protocol = "cltdmqhlrmrhgdamynxpmnbshrth",
///                 ProtocolVersion = "rpqn",
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "fkysin",
///                         Value = "ivjhgawgxhfvwiyaeruurbpkyx",
///                     },
///                 },
///                 TargetGroupArn = "nlyfkpaomu",
///                 TargetGroupAttributes = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TargetGroupAttributeArgs
///                     {
///                         Key = "edcafpxbnifvdfchilay",
///                         Value = "fiffi",
///                     },
///                 },
///                 TargetGroupFullName = "xhghbskmnfhkswoncku",
///                 TargetGroupName = "b",
///                 TargetType = "eekpandbuoghdxtg",
///                 Targets = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TargetDescriptionArgs
///                     {
///                         AvailabilityZone = "degmktltnufhywqic",
///                         Id = "dpaky",
///                         Port = 13,
///                     },
///                 },
///                 UnhealthyThresholdCount = 14,
///                 VpcId = "leubklsppgcmljbowvzpwvwya",
///             },
///             AwsRegion = "qlfglghejmmlo",
///             AwsSourceSchema = "cljfeojrexeruhvjklisrmf",
///             AwsTags =
///             {
///                 { "key5023", "tfayscxthf" },
///             },
///             PublicCloudConnectorsResourceId = "agzteeghhpawmqbjrdkgduq",
///             PublicCloudResourceName = "muortngxuegbngvcemmzovetqah",
///         },
///         ResourceGroupName = "rgelasticLoadBalancingV2TargetGroup",
///         Tags =
///         {
///             { "key6050", "pemhzyusesfpizecwecekae" },
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
/// 		_, err := awsconnector.NewElasticLoadBalancingV2TargetGroup(ctx, "elasticLoadBalancingV2TargetGroup", &awsconnector.ElasticLoadBalancingV2TargetGroupArgs{
/// 			Location: pulumi.String("uyngtpdaililbq"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.ElasticLoadBalancingV2TargetGroupPropertiesArgs{
/// 				Arn:          pulumi.String("avccwbbipudnfjximva"),
/// 				AwsAccountId: pulumi.String("vjdgbgqisnvysonxlwjoczc"),
/// 				AwsProperties: &awsconnector.AwsElasticLoadBalancingV2TargetGroupPropertiesArgs{
/// 					HealthCheckEnabled:         pulumi.Bool(true),
/// 					HealthCheckIntervalSeconds: pulumi.Int(16),
/// 					HealthCheckPath:            pulumi.String("exmwepsqjmnvppxuwwvineim"),
/// 					HealthCheckPort:            pulumi.String("cjuqka"),
/// 					HealthCheckProtocol:        pulumi.String("vkarvxh"),
/// 					HealthCheckTimeoutSeconds:  pulumi.Int(13),
/// 					HealthyThresholdCount:      pulumi.Int(21),
/// 					IpAddressType:              pulumi.String("da"),
/// 					LoadBalancerArns: pulumi.StringArray{
/// 						pulumi.String("tzafgmrxzoifkxbmzsivajwdwedjw"),
/// 					},
/// 					Matcher: &awsconnector.MatcherArgs{
/// 						GrpcCode: pulumi.String("tbnxw"),
/// 						HttpCode: pulumi.String("pavevmyswjhnoptlankjaiieao"),
/// 					},
/// 					Name:            pulumi.String("ruyunzpgs"),
/// 					Port:            pulumi.Int(9),
/// 					Protocol:        pulumi.String("cltdmqhlrmrhgdamynxpmnbshrth"),
/// 					ProtocolVersion: pulumi.String("rpqn"),
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("fkysin"),
/// 							Value: pulumi.String("ivjhgawgxhfvwiyaeruurbpkyx"),
/// 						},
/// 					},
/// 					TargetGroupArn: pulumi.String("nlyfkpaomu"),
/// 					TargetGroupAttributes: awsconnector.TargetGroupAttributeArray{
/// 						&awsconnector.TargetGroupAttributeArgs{
/// 							Key:   pulumi.String("edcafpxbnifvdfchilay"),
/// 							Value: pulumi.String("fiffi"),
/// 						},
/// 					},
/// 					TargetGroupFullName: pulumi.String("xhghbskmnfhkswoncku"),
/// 					TargetGroupName:     pulumi.String("b"),
/// 					TargetType:          pulumi.String("eekpandbuoghdxtg"),
/// 					Targets: awsconnector.TargetDescriptionArray{
/// 						&awsconnector.TargetDescriptionArgs{
/// 							AvailabilityZone: pulumi.String("degmktltnufhywqic"),
/// 							Id:               pulumi.String("dpaky"),
/// 							Port:             pulumi.Int(13),
/// 						},
/// 					},
/// 					UnhealthyThresholdCount: pulumi.Int(14),
/// 					VpcId:                   pulumi.String("leubklsppgcmljbowvzpwvwya"),
/// 				},
/// 				AwsRegion:       pulumi.String("qlfglghejmmlo"),
/// 				AwsSourceSchema: pulumi.String("cljfeojrexeruhvjklisrmf"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key5023": pulumi.String("tfayscxthf"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("agzteeghhpawmqbjrdkgduq"),
/// 				PublicCloudResourceName:         pulumi.String("muortngxuegbngvcemmzovetqah"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgelasticLoadBalancingV2TargetGroup"),
/// 			Tags: pulumi.StringMap{
/// 				"key6050": pulumi.String("pemhzyusesfpizecwecekae"),
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
/// import com.pulumi.azurenative.awsconnector.ElasticLoadBalancingV2TargetGroup;
/// import com.pulumi.azurenative.awsconnector.ElasticLoadBalancingV2TargetGroupArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ElasticLoadBalancingV2TargetGroupPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsElasticLoadBalancingV2TargetGroupPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.MatcherArgs;
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
///         var elasticLoadBalancingV2TargetGroup = new ElasticLoadBalancingV2TargetGroup("elasticLoadBalancingV2TargetGroup", ElasticLoadBalancingV2TargetGroupArgs.builder()
///             .location("uyngtpdaililbq")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(ElasticLoadBalancingV2TargetGroupPropertiesArgs.builder()
///                 .arn("avccwbbipudnfjximva")
///                 .awsAccountId("vjdgbgqisnvysonxlwjoczc")
///                 .awsProperties(AwsElasticLoadBalancingV2TargetGroupPropertiesArgs.builder()
///                     .healthCheckEnabled(true)
///                     .healthCheckIntervalSeconds(16)
///                     .healthCheckPath("exmwepsqjmnvppxuwwvineim")
///                     .healthCheckPort("cjuqka")
///                     .healthCheckProtocol("vkarvxh")
///                     .healthCheckTimeoutSeconds(13)
///                     .healthyThresholdCount(21)
///                     .ipAddressType("da")
///                     .loadBalancerArns("tzafgmrxzoifkxbmzsivajwdwedjw")
///                     .matcher(MatcherArgs.builder()
///                         .grpcCode("tbnxw")
///                         .httpCode("pavevmyswjhnoptlankjaiieao")
///                         .build())
///                     .name("ruyunzpgs")
///                     .port(9)
///                     .protocol("cltdmqhlrmrhgdamynxpmnbshrth")
///                     .protocolVersion("rpqn")
///                     .tags(TagArgs.builder()
///                         .key("fkysin")
///                         .value("ivjhgawgxhfvwiyaeruurbpkyx")
///                         .build())
///                     .targetGroupArn("nlyfkpaomu")
///                     .targetGroupAttributes(TargetGroupAttributeArgs.builder()
///                         .key("edcafpxbnifvdfchilay")
///                         .value("fiffi")
///                         .build())
///                     .targetGroupFullName("xhghbskmnfhkswoncku")
///                     .targetGroupName("b")
///                     .targetType("eekpandbuoghdxtg")
///                     .targets(TargetDescriptionArgs.builder()
///                         .availabilityZone("degmktltnufhywqic")
///                         .id("dpaky")
///                         .port(13)
///                         .build())
///                     .unhealthyThresholdCount(14)
///                     .vpcId("leubklsppgcmljbowvzpwvwya")
///                     .build())
///                 .awsRegion("qlfglghejmmlo")
///                 .awsSourceSchema("cljfeojrexeruhvjklisrmf")
///                 .awsTags(Map.of("key5023", "tfayscxthf"))
///                 .publicCloudConnectorsResourceId("agzteeghhpawmqbjrdkgduq")
///                 .publicCloudResourceName("muortngxuegbngvcemmzovetqah")
///                 .build())
///             .resourceGroupName("rgelasticLoadBalancingV2TargetGroup")
///             .tags(Map.of("key6050", "pemhzyusesfpizecwecekae"))
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
/// const elasticLoadBalancingV2TargetGroup = new azure_native.awsconnector.ElasticLoadBalancingV2TargetGroup("elasticLoadBalancingV2TargetGroup", {
///     location: "uyngtpdaililbq",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "avccwbbipudnfjximva",
///         awsAccountId: "vjdgbgqisnvysonxlwjoczc",
///         awsProperties: {
///             healthCheckEnabled: true,
///             healthCheckIntervalSeconds: 16,
///             healthCheckPath: "exmwepsqjmnvppxuwwvineim",
///             healthCheckPort: "cjuqka",
///             healthCheckProtocol: "vkarvxh",
///             healthCheckTimeoutSeconds: 13,
///             healthyThresholdCount: 21,
///             ipAddressType: "da",
///             loadBalancerArns: ["tzafgmrxzoifkxbmzsivajwdwedjw"],
///             matcher: {
///                 grpcCode: "tbnxw",
///                 httpCode: "pavevmyswjhnoptlankjaiieao",
///             },
///             name: "ruyunzpgs",
///             port: 9,
///             protocol: "cltdmqhlrmrhgdamynxpmnbshrth",
///             protocolVersion: "rpqn",
///             tags: [{
///                 key: "fkysin",
///                 value: "ivjhgawgxhfvwiyaeruurbpkyx",
///             }],
///             targetGroupArn: "nlyfkpaomu",
///             targetGroupAttributes: [{
///                 key: "edcafpxbnifvdfchilay",
///                 value: "fiffi",
///             }],
///             targetGroupFullName: "xhghbskmnfhkswoncku",
///             targetGroupName: "b",
///             targetType: "eekpandbuoghdxtg",
///             targets: [{
///                 availabilityZone: "degmktltnufhywqic",
///                 id: "dpaky",
///                 port: 13,
///             }],
///             unhealthyThresholdCount: 14,
///             vpcId: "leubklsppgcmljbowvzpwvwya",
///         },
///         awsRegion: "qlfglghejmmlo",
///         awsSourceSchema: "cljfeojrexeruhvjklisrmf",
///         awsTags: {
///             key5023: "tfayscxthf",
///         },
///         publicCloudConnectorsResourceId: "agzteeghhpawmqbjrdkgduq",
///         publicCloudResourceName: "muortngxuegbngvcemmzovetqah",
///     },
///     resourceGroupName: "rgelasticLoadBalancingV2TargetGroup",
///     tags: {
///         key6050: "pemhzyusesfpizecwecekae",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// elastic_load_balancing_v2_target_group = azure_native.awsconnector.ElasticLoadBalancingV2TargetGroup("elasticLoadBalancingV2TargetGroup",
///     location="uyngtpdaililbq",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "avccwbbipudnfjximva",
///         "aws_account_id": "vjdgbgqisnvysonxlwjoczc",
///         "aws_properties": {
///             "health_check_enabled": True,
///             "health_check_interval_seconds": 16,
///             "health_check_path": "exmwepsqjmnvppxuwwvineim",
///             "health_check_port": "cjuqka",
///             "health_check_protocol": "vkarvxh",
///             "health_check_timeout_seconds": 13,
///             "healthy_threshold_count": 21,
///             "ip_address_type": "da",
///             "load_balancer_arns": ["tzafgmrxzoifkxbmzsivajwdwedjw"],
///             "matcher": {
///                 "grpc_code": "tbnxw",
///                 "http_code": "pavevmyswjhnoptlankjaiieao",
///             },
///             "name": "ruyunzpgs",
///             "port": 9,
///             "protocol": "cltdmqhlrmrhgdamynxpmnbshrth",
///             "protocol_version": "rpqn",
///             "tags": [{
///                 "key": "fkysin",
///                 "value": "ivjhgawgxhfvwiyaeruurbpkyx",
///             }],
///             "target_group_arn": "nlyfkpaomu",
///             "target_group_attributes": [{
///                 "key": "edcafpxbnifvdfchilay",
///                 "value": "fiffi",
///             }],
///             "target_group_full_name": "xhghbskmnfhkswoncku",
///             "target_group_name": "b",
///             "target_type": "eekpandbuoghdxtg",
///             "targets": [{
///                 "availability_zone": "degmktltnufhywqic",
///                 "id": "dpaky",
///                 "port": 13,
///             }],
///             "unhealthy_threshold_count": 14,
///             "vpc_id": "leubklsppgcmljbowvzpwvwya",
///         },
///         "aws_region": "qlfglghejmmlo",
///         "aws_source_schema": "cljfeojrexeruhvjklisrmf",
///         "aws_tags": {
///             "key5023": "tfayscxthf",
///         },
///         "public_cloud_connectors_resource_id": "agzteeghhpawmqbjrdkgduq",
///         "public_cloud_resource_name": "muortngxuegbngvcemmzovetqah",
///     },
///     resource_group_name="rgelasticLoadBalancingV2TargetGroup",
///     tags={
///         "key6050": "pemhzyusesfpizecwecekae",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   elasticLoadBalancingV2TargetGroup:
///     type: azure-native:awsconnector:ElasticLoadBalancingV2TargetGroup
///     properties:
///       location: uyngtpdaililbq
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: avccwbbipudnfjximva
///         awsAccountId: vjdgbgqisnvysonxlwjoczc
///         awsProperties:
///           healthCheckEnabled: true
///           healthCheckIntervalSeconds: 16
///           healthCheckPath: exmwepsqjmnvppxuwwvineim
///           healthCheckPort: cjuqka
///           healthCheckProtocol: vkarvxh
///           healthCheckTimeoutSeconds: 13
///           healthyThresholdCount: 21
///           ipAddressType: da
///           loadBalancerArns:
///             - tzafgmrxzoifkxbmzsivajwdwedjw
///           matcher:
///             grpcCode: tbnxw
///             httpCode: pavevmyswjhnoptlankjaiieao
///           name: ruyunzpgs
///           port: 9
///           protocol: cltdmqhlrmrhgdamynxpmnbshrth
///           protocolVersion: rpqn
///           tags:
///             - key: fkysin
///               value: ivjhgawgxhfvwiyaeruurbpkyx
///           targetGroupArn: nlyfkpaomu
///           targetGroupAttributes:
///             - key: edcafpxbnifvdfchilay
///               value: fiffi
///           targetGroupFullName: xhghbskmnfhkswoncku
///           targetGroupName: b
///           targetType: eekpandbuoghdxtg
///           targets:
///             - availabilityZone: degmktltnufhywqic
///               id: dpaky
///               port: 13
///           unhealthyThresholdCount: 14
///           vpcId: leubklsppgcmljbowvzpwvwya
///         awsRegion: qlfglghejmmlo
///         awsSourceSchema: cljfeojrexeruhvjklisrmf
///         awsTags:
///           key5023: tfayscxthf
///         publicCloudConnectorsResourceId: agzteeghhpawmqbjrdkgduq
///         publicCloudResourceName: muortngxuegbngvcemmzovetqah
///       resourceGroupName: rgelasticLoadBalancingV2TargetGroup
///       tags:
///         key6050: pemhzyusesfpizecwecekae
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
/// $ pulumi import azure-native:awsconnector:ElasticLoadBalancingV2TargetGroup vxovzlnkinigqarvabyfm /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/elasticLoadBalancingV2TargetGroups/{name}
/// ```
class ElasticLoadBalancingV2TargetGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<ElasticLoadBalancingV2TargetGroupPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ElasticLoadBalancingV2TargetGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ElasticLoadBalancingV2TargetGroup]. {@macro pulumi_awsconnector_elastic_load_balancing_v2_target_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ElasticLoadBalancingV2TargetGroup(
    String name, {
    ElasticLoadBalancingV2TargetGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:ElasticLoadBalancingV2TargetGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ElasticLoadBalancingV2TargetGroupPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ElasticLoadBalancingV2TargetGroupPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
