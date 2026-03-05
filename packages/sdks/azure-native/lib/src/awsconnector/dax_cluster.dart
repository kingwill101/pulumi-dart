import 'package:pulumi/pulumi.dart' as pulumi;
import 'dax_cluster_args.dart';
import 'dax_cluster_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### DaxClusters_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var daxCluster = new AzureNative.AwsConnector.DaxCluster("daxCluster", new()
///     {
///         Location = "vmw",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.DaxClusterPropertiesArgs
///         {
///             Arn = "eqibkrig",
///             AwsAccountId = "xgeehpujhnyfhspdaqcugx",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsDaxClusterPropertiesArgs
///             {
///                 ActiveNodes = 18,
///                 ClusterArn = "drxcjkivmlrtslbwoykkohay",
///                 ClusterDiscoveryEndpoint = new AzureNative.AwsConnector.Inputs.DaxClusterEndpointArgs
///                 {
///                     Address = "piabfnkoscysceufovcpffxl",
///                     Port = 13,
///                     Url = "bcwzfeebgdzlvoafvyddknwzaih",
///                 },
///                 ClusterEndpointEncryptionType = new AzureNative.AwsConnector.Inputs.ClusterEndpointEncryptionTypeEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.ClusterEndpointEncryptionType.NONE,
///                 },
///                 ClusterName = "zobzejccpfjaqcvzutazmzjbl",
///                 Description = "q",
///                 IamRoleArn = "epmvlmhygrgjvx",
///                 NodeIdsToRemove = new[]
///                 {
///                     "uzzbmymlnrssuuqf",
///                 },
///                 NodeType = "vwyypkakaevefciygrniikfpyul",
///                 Nodes = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.NodeArgs
///                     {
///                         AvailabilityZone = "j",
///                         Endpoint = new AzureNative.AwsConnector.Inputs.DaxClusterEndpointArgs
///                         {
///                             Address = "piabfnkoscysceufovcpffxl",
///                             Port = 13,
///                             Url = "bcwzfeebgdzlvoafvyddknwzaih",
///                         },
///                         NodeCreateTime = "2024-10-08T03:51:45.186Z",
///                         NodeId = "stfvsn",
///                         NodeStatus = "cvxigvbkflormrnhzzjp",
///                         ParameterGroupStatus = "ywehlocxyzqprjzljpwluyd",
///                     },
///                 },
///                 NotificationConfiguration = new AzureNative.AwsConnector.Inputs.DaxClusterNotificationConfigurationArgs
///                 {
///                     TopicArn = "phhrllxlsvtkodsyamltvoypqoj",
///                     TopicStatus = "dfjjkb",
///                 },
///                 ParameterGroup = new AzureNative.AwsConnector.Inputs.ParameterGroupStatusArgs
///                 {
///                     NodeIdsToReboot = new[]
///                     {
///                         "idyqnyv",
///                     },
///                     ParameterApplyStatus = "jrxbdxqellqqtknz",
///                     ParameterGroupName = "ezciyomlrtvgjq",
///                 },
///                 PreferredMaintenanceWindow = "gnqllhurfpmhsujlnznvuhtnacwfe",
///                 SecurityGroups = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.SecurityGroupMembershipArgs
///                     {
///                         SecurityGroupIdentifier = "ehbvorabecsniiea",
///                         Status = "ymc",
///                     },
///                 },
///                 SseDescription = new AzureNative.AwsConnector.Inputs.SSEDescriptionArgs
///                 {
///                     Status = new AzureNative.AwsConnector.Inputs.SSEStatusEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.SSEStatus.DISABLED,
///                     },
///                 },
///                 Status = "mpwpseuoxrzbpamqwtibhochip",
///                 SubnetGroup = "tzsrvhfugpjrwm",
///                 TotalNodes = 26,
///             },
///             AwsRegion = "kyjdudcmqspnbb",
///             AwsSourceSchema = "ukv",
///             AwsTags =
///             {
///                 { "key1821", "aewrtrhvlcbtyjtdep" },
///             },
///             PublicCloudConnectorsResourceId = "jzzs",
///             PublicCloudResourceName = "rdpgjpjzbwahajy",
///         },
///         ResourceGroupName = "rgdaxCluster",
///         Tags =
///         {
///             { "key1674", "xjulycgcyyd" },
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
/// 		_, err := awsconnector.NewDaxCluster(ctx, "daxCluster", &awsconnector.DaxClusterArgs{
/// 			Location: pulumi.String("vmw"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.DaxClusterPropertiesArgs{
/// 				Arn:          pulumi.String("eqibkrig"),
/// 				AwsAccountId: pulumi.String("xgeehpujhnyfhspdaqcugx"),
/// 				AwsProperties: &awsconnector.AwsDaxClusterPropertiesArgs{
/// 					ActiveNodes: pulumi.Int(18),
/// 					ClusterArn:  pulumi.String("drxcjkivmlrtslbwoykkohay"),
/// 					ClusterDiscoveryEndpoint: &awsconnector.DaxClusterEndpointArgs{
/// 						Address: pulumi.String("piabfnkoscysceufovcpffxl"),
/// 						Port:    pulumi.Int(13),
/// 						Url:     pulumi.String("bcwzfeebgdzlvoafvyddknwzaih"),
/// 					},
/// 					ClusterEndpointEncryptionType: &awsconnector.ClusterEndpointEncryptionTypeEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.ClusterEndpointEncryptionTypeNONE),
/// 					},
/// 					ClusterName: pulumi.String("zobzejccpfjaqcvzutazmzjbl"),
/// 					Description: pulumi.String("q"),
/// 					IamRoleArn:  pulumi.String("epmvlmhygrgjvx"),
/// 					NodeIdsToRemove: pulumi.StringArray{
/// 						pulumi.String("uzzbmymlnrssuuqf"),
/// 					},
/// 					NodeType: pulumi.String("vwyypkakaevefciygrniikfpyul"),
/// 					Nodes: awsconnector.NodeArray{
/// 						&awsconnector.NodeArgs{
/// 							AvailabilityZone: pulumi.String("j"),
/// 							Endpoint: &awsconnector.DaxClusterEndpointArgs{
/// 								Address: pulumi.String("piabfnkoscysceufovcpffxl"),
/// 								Port:    pulumi.Int(13),
/// 								Url:     pulumi.String("bcwzfeebgdzlvoafvyddknwzaih"),
/// 							},
/// 							NodeCreateTime:       pulumi.String("2024-10-08T03:51:45.186Z"),
/// 							NodeId:               pulumi.String("stfvsn"),
/// 							NodeStatus:           pulumi.String("cvxigvbkflormrnhzzjp"),
/// 							ParameterGroupStatus: pulumi.String("ywehlocxyzqprjzljpwluyd"),
/// 						},
/// 					},
/// 					NotificationConfiguration: &awsconnector.DaxClusterNotificationConfigurationArgs{
/// 						TopicArn:    pulumi.String("phhrllxlsvtkodsyamltvoypqoj"),
/// 						TopicStatus: pulumi.String("dfjjkb"),
/// 					},
/// 					ParameterGroup: &awsconnector.ParameterGroupStatusArgs{
/// 						NodeIdsToReboot: pulumi.StringArray{
/// 							pulumi.String("idyqnyv"),
/// 						},
/// 						ParameterApplyStatus: pulumi.String("jrxbdxqellqqtknz"),
/// 						ParameterGroupName:   pulumi.String("ezciyomlrtvgjq"),
/// 					},
/// 					PreferredMaintenanceWindow: pulumi.String("gnqllhurfpmhsujlnznvuhtnacwfe"),
/// 					SecurityGroups: awsconnector.SecurityGroupMembershipArray{
/// 						&awsconnector.SecurityGroupMembershipArgs{
/// 							SecurityGroupIdentifier: pulumi.String("ehbvorabecsniiea"),
/// 							Status:                  pulumi.String("ymc"),
/// 						},
/// 					},
/// 					SseDescription: &awsconnector.SSEDescriptionArgs{
/// 						Status: &awsconnector.SSEStatusEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.SSEStatusDISABLED),
/// 						},
/// 					},
/// 					Status:      pulumi.String("mpwpseuoxrzbpamqwtibhochip"),
/// 					SubnetGroup: pulumi.String("tzsrvhfugpjrwm"),
/// 					TotalNodes:  pulumi.Int(26),
/// 				},
/// 				AwsRegion:       pulumi.String("kyjdudcmqspnbb"),
/// 				AwsSourceSchema: pulumi.String("ukv"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key1821": pulumi.String("aewrtrhvlcbtyjtdep"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("jzzs"),
/// 				PublicCloudResourceName:         pulumi.String("rdpgjpjzbwahajy"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgdaxCluster"),
/// 			Tags: pulumi.StringMap{
/// 				"key1674": pulumi.String("xjulycgcyyd"),
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
/// import com.pulumi.azurenative.awsconnector.DaxCluster;
/// import com.pulumi.azurenative.awsconnector.DaxClusterArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.DaxClusterPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsDaxClusterPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.DaxClusterEndpointArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ClusterEndpointEncryptionTypeEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.DaxClusterNotificationConfigurationArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ParameterGroupStatusArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.SSEDescriptionArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.SSEStatusEnumValueArgs;
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
///         var daxCluster = new DaxCluster("daxCluster", DaxClusterArgs.builder()
///             .location("vmw")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(DaxClusterPropertiesArgs.builder()
///                 .arn("eqibkrig")
///                 .awsAccountId("xgeehpujhnyfhspdaqcugx")
///                 .awsProperties(AwsDaxClusterPropertiesArgs.builder()
///                     .activeNodes(18)
///                     .clusterArn("drxcjkivmlrtslbwoykkohay")
///                     .clusterDiscoveryEndpoint(DaxClusterEndpointArgs.builder()
///                         .address("piabfnkoscysceufovcpffxl")
///                         .port(13)
///                         .url("bcwzfeebgdzlvoafvyddknwzaih")
///                         .build())
///                     .clusterEndpointEncryptionType(ClusterEndpointEncryptionTypeEnumValueArgs.builder()
///                         .value("NONE")
///                         .build())
///                     .clusterName("zobzejccpfjaqcvzutazmzjbl")
///                     .description("q")
///                     .iamRoleArn("epmvlmhygrgjvx")
///                     .nodeIdsToRemove("uzzbmymlnrssuuqf")
///                     .nodeType("vwyypkakaevefciygrniikfpyul")
///                     .nodes(NodeArgs.builder()
///                         .availabilityZone("j")
///                         .endpoint(DaxClusterEndpointArgs.builder()
///                             .address("piabfnkoscysceufovcpffxl")
///                             .port(13)
///                             .url("bcwzfeebgdzlvoafvyddknwzaih")
///                             .build())
///                         .nodeCreateTime("2024-10-08T03:51:45.186Z")
///                         .nodeId("stfvsn")
///                         .nodeStatus("cvxigvbkflormrnhzzjp")
///                         .parameterGroupStatus("ywehlocxyzqprjzljpwluyd")
///                         .build())
///                     .notificationConfiguration(DaxClusterNotificationConfigurationArgs.builder()
///                         .topicArn("phhrllxlsvtkodsyamltvoypqoj")
///                         .topicStatus("dfjjkb")
///                         .build())
///                     .parameterGroup(ParameterGroupStatusArgs.builder()
///                         .nodeIdsToReboot("idyqnyv")
///                         .parameterApplyStatus("jrxbdxqellqqtknz")
///                         .parameterGroupName("ezciyomlrtvgjq")
///                         .build())
///                     .preferredMaintenanceWindow("gnqllhurfpmhsujlnznvuhtnacwfe")
///                     .securityGroups(SecurityGroupMembershipArgs.builder()
///                         .securityGroupIdentifier("ehbvorabecsniiea")
///                         .status("ymc")
///                         .build())
///                     .sseDescription(SSEDescriptionArgs.builder()
///                         .status(SSEStatusEnumValueArgs.builder()
///                             .value("DISABLED")
///                             .build())
///                         .build())
///                     .status("mpwpseuoxrzbpamqwtibhochip")
///                     .subnetGroup("tzsrvhfugpjrwm")
///                     .totalNodes(26)
///                     .build())
///                 .awsRegion("kyjdudcmqspnbb")
///                 .awsSourceSchema("ukv")
///                 .awsTags(Map.of("key1821", "aewrtrhvlcbtyjtdep"))
///                 .publicCloudConnectorsResourceId("jzzs")
///                 .publicCloudResourceName("rdpgjpjzbwahajy")
///                 .build())
///             .resourceGroupName("rgdaxCluster")
///             .tags(Map.of("key1674", "xjulycgcyyd"))
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
/// const daxCluster = new azure_native.awsconnector.DaxCluster("daxCluster", {
///     location: "vmw",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "eqibkrig",
///         awsAccountId: "xgeehpujhnyfhspdaqcugx",
///         awsProperties: {
///             activeNodes: 18,
///             clusterArn: "drxcjkivmlrtslbwoykkohay",
///             clusterDiscoveryEndpoint: {
///                 address: "piabfnkoscysceufovcpffxl",
///                 port: 13,
///                 url: "bcwzfeebgdzlvoafvyddknwzaih",
///             },
///             clusterEndpointEncryptionType: {
///                 value: azure_native.awsconnector.ClusterEndpointEncryptionType.NONE,
///             },
///             clusterName: "zobzejccpfjaqcvzutazmzjbl",
///             description: "q",
///             iamRoleArn: "epmvlmhygrgjvx",
///             nodeIdsToRemove: ["uzzbmymlnrssuuqf"],
///             nodeType: "vwyypkakaevefciygrniikfpyul",
///             nodes: [{
///                 availabilityZone: "j",
///                 endpoint: {
///                     address: "piabfnkoscysceufovcpffxl",
///                     port: 13,
///                     url: "bcwzfeebgdzlvoafvyddknwzaih",
///                 },
///                 nodeCreateTime: "2024-10-08T03:51:45.186Z",
///                 nodeId: "stfvsn",
///                 nodeStatus: "cvxigvbkflormrnhzzjp",
///                 parameterGroupStatus: "ywehlocxyzqprjzljpwluyd",
///             }],
///             notificationConfiguration: {
///                 topicArn: "phhrllxlsvtkodsyamltvoypqoj",
///                 topicStatus: "dfjjkb",
///             },
///             parameterGroup: {
///                 nodeIdsToReboot: ["idyqnyv"],
///                 parameterApplyStatus: "jrxbdxqellqqtknz",
///                 parameterGroupName: "ezciyomlrtvgjq",
///             },
///             preferredMaintenanceWindow: "gnqllhurfpmhsujlnznvuhtnacwfe",
///             securityGroups: [{
///                 securityGroupIdentifier: "ehbvorabecsniiea",
///                 status: "ymc",
///             }],
///             sseDescription: {
///                 status: {
///                     value: azure_native.awsconnector.SSEStatus.DISABLED,
///                 },
///             },
///             status: "mpwpseuoxrzbpamqwtibhochip",
///             subnetGroup: "tzsrvhfugpjrwm",
///             totalNodes: 26,
///         },
///         awsRegion: "kyjdudcmqspnbb",
///         awsSourceSchema: "ukv",
///         awsTags: {
///             key1821: "aewrtrhvlcbtyjtdep",
///         },
///         publicCloudConnectorsResourceId: "jzzs",
///         publicCloudResourceName: "rdpgjpjzbwahajy",
///     },
///     resourceGroupName: "rgdaxCluster",
///     tags: {
///         key1674: "xjulycgcyyd",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dax_cluster = azure_native.awsconnector.DaxCluster("daxCluster",
///     location="vmw",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "eqibkrig",
///         "aws_account_id": "xgeehpujhnyfhspdaqcugx",
///         "aws_properties": {
///             "active_nodes": 18,
///             "cluster_arn": "drxcjkivmlrtslbwoykkohay",
///             "cluster_discovery_endpoint": {
///                 "address": "piabfnkoscysceufovcpffxl",
///                 "port": 13,
///                 "url": "bcwzfeebgdzlvoafvyddknwzaih",
///             },
///             "cluster_endpoint_encryption_type": {
///                 "value": azure_native.awsconnector.ClusterEndpointEncryptionType.NONE,
///             },
///             "cluster_name": "zobzejccpfjaqcvzutazmzjbl",
///             "description": "q",
///             "iam_role_arn": "epmvlmhygrgjvx",
///             "node_ids_to_remove": ["uzzbmymlnrssuuqf"],
///             "node_type": "vwyypkakaevefciygrniikfpyul",
///             "nodes": [{
///                 "availability_zone": "j",
///                 "endpoint": {
///                     "address": "piabfnkoscysceufovcpffxl",
///                     "port": 13,
///                     "url": "bcwzfeebgdzlvoafvyddknwzaih",
///                 },
///                 "node_create_time": "2024-10-08T03:51:45.186Z",
///                 "node_id": "stfvsn",
///                 "node_status": "cvxigvbkflormrnhzzjp",
///                 "parameter_group_status": "ywehlocxyzqprjzljpwluyd",
///             }],
///             "notification_configuration": {
///                 "topic_arn": "phhrllxlsvtkodsyamltvoypqoj",
///                 "topic_status": "dfjjkb",
///             },
///             "parameter_group": {
///                 "node_ids_to_reboot": ["idyqnyv"],
///                 "parameter_apply_status": "jrxbdxqellqqtknz",
///                 "parameter_group_name": "ezciyomlrtvgjq",
///             },
///             "preferred_maintenance_window": "gnqllhurfpmhsujlnznvuhtnacwfe",
///             "security_groups": [{
///                 "security_group_identifier": "ehbvorabecsniiea",
///                 "status": "ymc",
///             }],
///             "sse_description": {
///                 "status": {
///                     "value": azure_native.awsconnector.SSEStatus.DISABLED,
///                 },
///             },
///             "status": "mpwpseuoxrzbpamqwtibhochip",
///             "subnet_group": "tzsrvhfugpjrwm",
///             "total_nodes": 26,
///         },
///         "aws_region": "kyjdudcmqspnbb",
///         "aws_source_schema": "ukv",
///         "aws_tags": {
///             "key1821": "aewrtrhvlcbtyjtdep",
///         },
///         "public_cloud_connectors_resource_id": "jzzs",
///         "public_cloud_resource_name": "rdpgjpjzbwahajy",
///     },
///     resource_group_name="rgdaxCluster",
///     tags={
///         "key1674": "xjulycgcyyd",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   daxCluster:
///     type: azure-native:awsconnector:DaxCluster
///     properties:
///       location: vmw
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: eqibkrig
///         awsAccountId: xgeehpujhnyfhspdaqcugx
///         awsProperties:
///           activeNodes: 18
///           clusterArn: drxcjkivmlrtslbwoykkohay
///           clusterDiscoveryEndpoint:
///             address: piabfnkoscysceufovcpffxl
///             port: 13
///             url: bcwzfeebgdzlvoafvyddknwzaih
///           clusterEndpointEncryptionType:
///             value: NONE
///           clusterName: zobzejccpfjaqcvzutazmzjbl
///           description: q
///           iamRoleArn: epmvlmhygrgjvx
///           nodeIdsToRemove:
///             - uzzbmymlnrssuuqf
///           nodeType: vwyypkakaevefciygrniikfpyul
///           nodes:
///             - availabilityZone: j
///               endpoint:
///                 address: piabfnkoscysceufovcpffxl
///                 port: 13
///                 url: bcwzfeebgdzlvoafvyddknwzaih
///               nodeCreateTime: 2024-10-08T03:51:45.186Z
///               nodeId: stfvsn
///               nodeStatus: cvxigvbkflormrnhzzjp
///               parameterGroupStatus: ywehlocxyzqprjzljpwluyd
///           notificationConfiguration:
///             topicArn: phhrllxlsvtkodsyamltvoypqoj
///             topicStatus: dfjjkb
///           parameterGroup:
///             nodeIdsToReboot:
///               - idyqnyv
///             parameterApplyStatus: jrxbdxqellqqtknz
///             parameterGroupName: ezciyomlrtvgjq
///           preferredMaintenanceWindow: gnqllhurfpmhsujlnznvuhtnacwfe
///           securityGroups:
///             - securityGroupIdentifier: ehbvorabecsniiea
///               status: ymc
///           sseDescription:
///             status:
///               value: DISABLED
///           status: mpwpseuoxrzbpamqwtibhochip
///           subnetGroup: tzsrvhfugpjrwm
///           totalNodes: 26
///         awsRegion: kyjdudcmqspnbb
///         awsSourceSchema: ukv
///         awsTags:
///           key1821: aewrtrhvlcbtyjtdep
///         publicCloudConnectorsResourceId: jzzs
///         publicCloudResourceName: rdpgjpjzbwahajy
///       resourceGroupName: rgdaxCluster
///       tags:
///         key1674: xjulycgcyyd
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
/// $ pulumi import azure-native:awsconnector:DaxCluster sjqsmwkcdacfzcmciafezgodtlragm /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/daxClusters/{name}
/// ```
class DaxCluster extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<DaxClusterPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DaxCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DaxCluster]. {@macro pulumi_awsconnector_dax_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DaxCluster(
    String name, {
    DaxClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:DaxCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<DaxClusterPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DaxClusterPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
