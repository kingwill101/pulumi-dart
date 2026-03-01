import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssm_instance_information_args.dart';
import 'ssm_instance_information_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SsmInstanceInformations_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ssmInstanceInformation = new AzureNative.AwsConnector.SsmInstanceInformation("ssmInstanceInformation", new()
///     {
///         Location = "ermywoyxbvekjsddbgxzdiqctiy",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.SsmInstanceInformationPropertiesArgs
///         {
///             Arn = "oxfqehraraycsdhslhhkjdu",
///             AwsAccountId = "pjfy",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsSsmInstanceInformationPropertiesArgs
///             {
///                 ActivationId = "wqzon",
///                 AgentVersion = "bnfjsoeipnlc",
///                 AssociationOverview = new AzureNative.AwsConnector.Inputs.InstanceAggregatedAssociationOverviewArgs
///                 {
///                     DetailedStatus = "cbudhnfwcqmapsmzmdvjbnobfp",
///                     InstanceAssociationStatusAggregatedCount =
///                     {
///                         { "key8401", 17 },
///                     },
///                 },
///                 AssociationStatus = "elhplvmlvhpwuyovunmrlynmhejdw",
///                 ComputerName = "wweceaymirkelywqbxapvxzr",
///                 IamRole = "izwdzmlugehvtmnssak",
///                 InstanceId = "iubqpfcejhxieuegbecgpkzanri",
///                 IpAddress = "httjvosg",
///                 IsLatestVersion = true,
///                 LastAssociationExecutionDate = "2024-10-08T03:53:10.068Z",
///                 LastPingDateTime = "2024-10-08T03:53:10.068Z",
///                 LastSuccessfulAssociationExecutionDate = "2024-10-08T03:53:10.068Z",
///                 Name = "iubm",
///                 PingStatus = new AzureNative.AwsConnector.Inputs.PingStatusEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.PingStatus.ConnectionLost,
///                 },
///                 PlatformName = "cbiheizlbfmmcdrsntrldk",
///                 PlatformType = new AzureNative.AwsConnector.Inputs.PlatformTypeEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.PlatformType.Linux,
///                 },
///                 PlatformVersion = "eiopeklxdbhzvyxg",
///                 RegistrationDate = "2024-10-08T03:53:10.069Z",
///                 ResourceType = new AzureNative.AwsConnector.Inputs.ResourceTypeEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.ResourceType.EC2Instance,
///                 },
///                 SourceId = "mfupyczzkgmebrayfgrmxcdouve",
///                 SourceType = new AzureNative.AwsConnector.Inputs.SourceTypeEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.SourceType.AWSEC2Instance,
///                 },
///             },
///             AwsRegion = "mzethaciakqyywjomklr",
///             AwsSourceSchema = "wetpdek",
///             AwsTags =
///             {
///                 { "key8309", "mwxaauusamykdmepqrzjjlpozpflmk" },
///             },
///             PublicCloudConnectorsResourceId = "hsdju",
///             PublicCloudResourceName = "nmnanlhecnocoemxsevyl",
///         },
///         ResourceGroupName = "rgssmInstanceInformation",
///         Tags =
///         {
///             { "key678", "gnrhg" },
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
/// 		_, err := awsconnector.NewSsmInstanceInformation(ctx, "ssmInstanceInformation", &awsconnector.SsmInstanceInformationArgs{
/// 			Location: pulumi.String("ermywoyxbvekjsddbgxzdiqctiy"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.SsmInstanceInformationPropertiesArgs{
/// 				Arn:          pulumi.String("oxfqehraraycsdhslhhkjdu"),
/// 				AwsAccountId: pulumi.String("pjfy"),
/// 				AwsProperties: &awsconnector.AwsSsmInstanceInformationPropertiesArgs{
/// 					ActivationId: pulumi.String("wqzon"),
/// 					AgentVersion: pulumi.String("bnfjsoeipnlc"),
/// 					AssociationOverview: &awsconnector.InstanceAggregatedAssociationOverviewArgs{
/// 						DetailedStatus: pulumi.String("cbudhnfwcqmapsmzmdvjbnobfp"),
/// 						InstanceAssociationStatusAggregatedCount: pulumi.IntMap{
/// 							"key8401": pulumi.Int(17),
/// 						},
/// 					},
/// 					AssociationStatus:                      pulumi.String("elhplvmlvhpwuyovunmrlynmhejdw"),
/// 					ComputerName:                           pulumi.String("wweceaymirkelywqbxapvxzr"),
/// 					IamRole:                                pulumi.String("izwdzmlugehvtmnssak"),
/// 					InstanceId:                             pulumi.String("iubqpfcejhxieuegbecgpkzanri"),
/// 					IpAddress:                              pulumi.String("httjvosg"),
/// 					IsLatestVersion:                        pulumi.Bool(true),
/// 					LastAssociationExecutionDate:           pulumi.String("2024-10-08T03:53:10.068Z"),
/// 					LastPingDateTime:                       pulumi.String("2024-10-08T03:53:10.068Z"),
/// 					LastSuccessfulAssociationExecutionDate: pulumi.String("2024-10-08T03:53:10.068Z"),
/// 					Name:                                   pulumi.String("iubm"),
/// 					PingStatus: &awsconnector.PingStatusEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.PingStatusConnectionLost),
/// 					},
/// 					PlatformName: pulumi.String("cbiheizlbfmmcdrsntrldk"),
/// 					PlatformType: &awsconnector.PlatformTypeEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.PlatformTypeLinux),
/// 					},
/// 					PlatformVersion:  pulumi.String("eiopeklxdbhzvyxg"),
/// 					RegistrationDate: pulumi.String("2024-10-08T03:53:10.069Z"),
/// 					ResourceType: &awsconnector.ResourceTypeEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.ResourceTypeEC2Instance),
/// 					},
/// 					SourceId: pulumi.String("mfupyczzkgmebrayfgrmxcdouve"),
/// 					SourceType: &awsconnector.SourceTypeEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.SourceTypeAWSEC2Instance),
/// 					},
/// 				},
/// 				AwsRegion:       pulumi.String("mzethaciakqyywjomklr"),
/// 				AwsSourceSchema: pulumi.String("wetpdek"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key8309": pulumi.String("mwxaauusamykdmepqrzjjlpozpflmk"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("hsdju"),
/// 				PublicCloudResourceName:         pulumi.String("nmnanlhecnocoemxsevyl"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgssmInstanceInformation"),
/// 			Tags: pulumi.StringMap{
/// 				"key678": pulumi.String("gnrhg"),
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
/// import com.pulumi.azurenative.awsconnector.SsmInstanceInformation;
/// import com.pulumi.azurenative.awsconnector.SsmInstanceInformationArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.SsmInstanceInformationPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsSsmInstanceInformationPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.InstanceAggregatedAssociationOverviewArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.PingStatusEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.PlatformTypeEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ResourceTypeEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.SourceTypeEnumValueArgs;
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
///         var ssmInstanceInformation = new SsmInstanceInformation("ssmInstanceInformation", SsmInstanceInformationArgs.builder()
///             .location("ermywoyxbvekjsddbgxzdiqctiy")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(SsmInstanceInformationPropertiesArgs.builder()
///                 .arn("oxfqehraraycsdhslhhkjdu")
///                 .awsAccountId("pjfy")
///                 .awsProperties(AwsSsmInstanceInformationPropertiesArgs.builder()
///                     .activationId("wqzon")
///                     .agentVersion("bnfjsoeipnlc")
///                     .associationOverview(InstanceAggregatedAssociationOverviewArgs.builder()
///                         .detailedStatus("cbudhnfwcqmapsmzmdvjbnobfp")
///                         .instanceAssociationStatusAggregatedCount(Map.of("key8401", 17))
///                         .build())
///                     .associationStatus("elhplvmlvhpwuyovunmrlynmhejdw")
///                     .computerName("wweceaymirkelywqbxapvxzr")
///                     .iamRole("izwdzmlugehvtmnssak")
///                     .instanceId("iubqpfcejhxieuegbecgpkzanri")
///                     .ipAddress("httjvosg")
///                     .isLatestVersion(true)
///                     .lastAssociationExecutionDate("2024-10-08T03:53:10.068Z")
///                     .lastPingDateTime("2024-10-08T03:53:10.068Z")
///                     .lastSuccessfulAssociationExecutionDate("2024-10-08T03:53:10.068Z")
///                     .name("iubm")
///                     .pingStatus(PingStatusEnumValueArgs.builder()
///                         .value("ConnectionLost")
///                         .build())
///                     .platformName("cbiheizlbfmmcdrsntrldk")
///                     .platformType(PlatformTypeEnumValueArgs.builder()
///                         .value("Linux")
///                         .build())
///                     .platformVersion("eiopeklxdbhzvyxg")
///                     .registrationDate("2024-10-08T03:53:10.069Z")
///                     .resourceType(ResourceTypeEnumValueArgs.builder()
///                         .value("EC2Instance")
///                         .build())
///                     .sourceId("mfupyczzkgmebrayfgrmxcdouve")
///                     .sourceType(SourceTypeEnumValueArgs.builder()
///                         .value("AWS::EC2::Instance")
///                         .build())
///                     .build())
///                 .awsRegion("mzethaciakqyywjomklr")
///                 .awsSourceSchema("wetpdek")
///                 .awsTags(Map.of("key8309", "mwxaauusamykdmepqrzjjlpozpflmk"))
///                 .publicCloudConnectorsResourceId("hsdju")
///                 .publicCloudResourceName("nmnanlhecnocoemxsevyl")
///                 .build())
///             .resourceGroupName("rgssmInstanceInformation")
///             .tags(Map.of("key678", "gnrhg"))
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
/// const ssmInstanceInformation = new azure_native.awsconnector.SsmInstanceInformation("ssmInstanceInformation", {
///     location: "ermywoyxbvekjsddbgxzdiqctiy",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "oxfqehraraycsdhslhhkjdu",
///         awsAccountId: "pjfy",
///         awsProperties: {
///             activationId: "wqzon",
///             agentVersion: "bnfjsoeipnlc",
///             associationOverview: {
///                 detailedStatus: "cbudhnfwcqmapsmzmdvjbnobfp",
///                 instanceAssociationStatusAggregatedCount: {
///                     key8401: 17,
///                 },
///             },
///             associationStatus: "elhplvmlvhpwuyovunmrlynmhejdw",
///             computerName: "wweceaymirkelywqbxapvxzr",
///             iamRole: "izwdzmlugehvtmnssak",
///             instanceId: "iubqpfcejhxieuegbecgpkzanri",
///             ipAddress: "httjvosg",
///             isLatestVersion: true,
///             lastAssociationExecutionDate: "2024-10-08T03:53:10.068Z",
///             lastPingDateTime: "2024-10-08T03:53:10.068Z",
///             lastSuccessfulAssociationExecutionDate: "2024-10-08T03:53:10.068Z",
///             name: "iubm",
///             pingStatus: {
///                 value: azure_native.awsconnector.PingStatus.ConnectionLost,
///             },
///             platformName: "cbiheizlbfmmcdrsntrldk",
///             platformType: {
///                 value: azure_native.awsconnector.PlatformType.Linux,
///             },
///             platformVersion: "eiopeklxdbhzvyxg",
///             registrationDate: "2024-10-08T03:53:10.069Z",
///             resourceType: {
///                 value: azure_native.awsconnector.ResourceType.EC2Instance,
///             },
///             sourceId: "mfupyczzkgmebrayfgrmxcdouve",
///             sourceType: {
///                 value: azure_native.awsconnector.SourceType.AWSEC2Instance,
///             },
///         },
///         awsRegion: "mzethaciakqyywjomklr",
///         awsSourceSchema: "wetpdek",
///         awsTags: {
///             key8309: "mwxaauusamykdmepqrzjjlpozpflmk",
///         },
///         publicCloudConnectorsResourceId: "hsdju",
///         publicCloudResourceName: "nmnanlhecnocoemxsevyl",
///     },
///     resourceGroupName: "rgssmInstanceInformation",
///     tags: {
///         key678: "gnrhg",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// ssm_instance_information = azure_native.awsconnector.SsmInstanceInformation("ssmInstanceInformation",
///     location="ermywoyxbvekjsddbgxzdiqctiy",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "oxfqehraraycsdhslhhkjdu",
///         "aws_account_id": "pjfy",
///         "aws_properties": {
///             "activation_id": "wqzon",
///             "agent_version": "bnfjsoeipnlc",
///             "association_overview": {
///                 "detailed_status": "cbudhnfwcqmapsmzmdvjbnobfp",
///                 "instance_association_status_aggregated_count": {
///                     "key8401": 17,
///                 },
///             },
///             "association_status": "elhplvmlvhpwuyovunmrlynmhejdw",
///             "computer_name": "wweceaymirkelywqbxapvxzr",
///             "iam_role": "izwdzmlugehvtmnssak",
///             "instance_id": "iubqpfcejhxieuegbecgpkzanri",
///             "ip_address": "httjvosg",
///             "is_latest_version": True,
///             "last_association_execution_date": "2024-10-08T03:53:10.068Z",
///             "last_ping_date_time": "2024-10-08T03:53:10.068Z",
///             "last_successful_association_execution_date": "2024-10-08T03:53:10.068Z",
///             "name": "iubm",
///             "ping_status": {
///                 "value": azure_native.awsconnector.PingStatus.CONNECTION_LOST,
///             },
///             "platform_name": "cbiheizlbfmmcdrsntrldk",
///             "platform_type": {
///                 "value": azure_native.awsconnector.PlatformType.LINUX,
///             },
///             "platform_version": "eiopeklxdbhzvyxg",
///             "registration_date": "2024-10-08T03:53:10.069Z",
///             "resource_type": {
///                 "value": azure_native.awsconnector.ResourceType.EC2_INSTANCE,
///             },
///             "source_id": "mfupyczzkgmebrayfgrmxcdouve",
///             "source_type": {
///                 "value": azure_native.awsconnector.SourceType.AWSEC2_INSTANCE,
///             },
///         },
///         "aws_region": "mzethaciakqyywjomklr",
///         "aws_source_schema": "wetpdek",
///         "aws_tags": {
///             "key8309": "mwxaauusamykdmepqrzjjlpozpflmk",
///         },
///         "public_cloud_connectors_resource_id": "hsdju",
///         "public_cloud_resource_name": "nmnanlhecnocoemxsevyl",
///     },
///     resource_group_name="rgssmInstanceInformation",
///     tags={
///         "key678": "gnrhg",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   ssmInstanceInformation:
///     type: azure-native:awsconnector:SsmInstanceInformation
///     properties:
///       location: ermywoyxbvekjsddbgxzdiqctiy
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: oxfqehraraycsdhslhhkjdu
///         awsAccountId: pjfy
///         awsProperties:
///           activationId: wqzon
///           agentVersion: bnfjsoeipnlc
///           associationOverview:
///             detailedStatus: cbudhnfwcqmapsmzmdvjbnobfp
///             instanceAssociationStatusAggregatedCount:
///               key8401: 17
///           associationStatus: elhplvmlvhpwuyovunmrlynmhejdw
///           computerName: wweceaymirkelywqbxapvxzr
///           iamRole: izwdzmlugehvtmnssak
///           instanceId: iubqpfcejhxieuegbecgpkzanri
///           ipAddress: httjvosg
///           isLatestVersion: true
///           lastAssociationExecutionDate: 2024-10-08T03:53:10.068Z
///           lastPingDateTime: 2024-10-08T03:53:10.068Z
///           lastSuccessfulAssociationExecutionDate: 2024-10-08T03:53:10.068Z
///           name: iubm
///           pingStatus:
///             value: ConnectionLost
///           platformName: cbiheizlbfmmcdrsntrldk
///           platformType:
///             value: Linux
///           platformVersion: eiopeklxdbhzvyxg
///           registrationDate: 2024-10-08T03:53:10.069Z
///           resourceType:
///             value: EC2Instance
///           sourceId: mfupyczzkgmebrayfgrmxcdouve
///           sourceType:
///             value: AWS::EC2::Instance
///         awsRegion: mzethaciakqyywjomklr
///         awsSourceSchema: wetpdek
///         awsTags:
///           key8309: mwxaauusamykdmepqrzjjlpozpflmk
///         publicCloudConnectorsResourceId: hsdju
///         publicCloudResourceName: nmnanlhecnocoemxsevyl
///       resourceGroupName: rgssmInstanceInformation
///       tags:
///         key678: gnrhg
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
/// $ pulumi import azure-native:awsconnector:SsmInstanceInformation xuo /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/ssmInstanceInformations/{name}
/// ```
class SsmInstanceInformation extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<SsmInstanceInformationPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SsmInstanceInformation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SsmInstanceInformation]. {@macro pulumi_awsconnector_ssm_instance_information_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SsmInstanceInformation(
    String name, {
    SsmInstanceInformationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:SsmInstanceInformation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<SsmInstanceInformationPropertiesResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
