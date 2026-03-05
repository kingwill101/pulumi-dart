import 'package:pulumi/pulumi.dart' as pulumi;
import 'guard_duty_detector_args.dart';
import 'guard_duty_detector_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### GuardDutyDetectors_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var guardDutyDetector = new AzureNative.AwsConnector.GuardDutyDetector("guardDutyDetector", new()
///     {
///         Location = "sxpvpkjhhmcssseznufvqer",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.GuardDutyDetectorPropertiesArgs
///         {
///             Arn = "bdql",
///             AwsAccountId = "lgyellrapjphgbfhni",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsGuardDutyDetectorPropertiesArgs
///             {
///                 DataSources = new AzureNative.AwsConnector.Inputs.CFNDataSourceConfigurationsArgs
///                 {
///                     Kubernetes = new AzureNative.AwsConnector.Inputs.CFNKubernetesConfigurationArgs
///                     {
///                         AuditLogs = new AzureNative.AwsConnector.Inputs.CFNKubernetesAuditLogsConfigurationArgs
///                         {
///                             Enable = true,
///                         },
///                     },
///                     MalwareProtection = new AzureNative.AwsConnector.Inputs.CFNMalwareProtectionConfigurationArgs
///                     {
///                         ScanEc2InstanceWithFindings = new AzureNative.AwsConnector.Inputs.CFNScanEc2InstanceWithFindingsConfigurationArgs
///                         {
///                             EbsVolumes = true,
///                         },
///                     },
///                     S3Logs = new AzureNative.AwsConnector.Inputs.CFNS3LogsConfigurationArgs
///                     {
///                         Enable = true,
///                     },
///                 },
///                 Enable = true,
///                 Features = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.CFNFeatureConfigurationArgs
///                     {
///                         AdditionalConfiguration = new[]
///                         {
///                             new AzureNative.AwsConnector.Inputs.CFNFeatureAdditionalConfigurationArgs
///                             {
///                                 Name = "lkkifsmqcaujhderxjzcmezjh",
///                                 Status = "wbjikrlaxrtwpwiexknat",
///                             },
///                         },
///                         Name = "aoocmexbklfmzmglxopv",
///                         Status = AzureNative.AwsConnector.CFNFeatureConfigurationStatus.DISABLED,
///                     },
///                 },
///                 FindingPublishingFrequency = "ed",
///                 Id = "vakfpotktucclwwqxkczvzrw",
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagItemArgs
///                     {
///                         Key = "fezaldlvzejdwknyannwfh",
///                         Value = "edlendjmyszkw",
///                     },
///                 },
///             },
///             AwsRegion = "wtiiifsewygmgbdcebhl",
///             AwsSourceSchema = "coaitkvmjezenllwmaouhnwfmjjbxa",
///             AwsTags =
///             {
///                 { "key6130", "qomcwrehzvdlpltzqhdzxu" },
///             },
///             PublicCloudConnectorsResourceId = "infmmygcbbjb",
///             PublicCloudResourceName = "hkdypyaxoeszbx",
///         },
///         ResourceGroupName = "rgguardDutyDetector",
///         Tags =
///         {
///             { "key3628", "pguiezvqu" },
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
/// 		_, err := awsconnector.NewGuardDutyDetector(ctx, "guardDutyDetector", &awsconnector.GuardDutyDetectorArgs{
/// 			Location: pulumi.String("sxpvpkjhhmcssseznufvqer"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.GuardDutyDetectorPropertiesArgs{
/// 				Arn:          pulumi.String("bdql"),
/// 				AwsAccountId: pulumi.String("lgyellrapjphgbfhni"),
/// 				AwsProperties: &awsconnector.AwsGuardDutyDetectorPropertiesArgs{
/// 					DataSources: &awsconnector.CFNDataSourceConfigurationsArgs{
/// 						Kubernetes: &awsconnector.CFNKubernetesConfigurationArgs{
/// 							AuditLogs: &awsconnector.CFNKubernetesAuditLogsConfigurationArgs{
/// 								Enable: pulumi.Bool(true),
/// 							},
/// 						},
/// 						MalwareProtection: &awsconnector.CFNMalwareProtectionConfigurationArgs{
/// 							ScanEc2InstanceWithFindings: &awsconnector.CFNScanEc2InstanceWithFindingsConfigurationArgs{
/// 								EbsVolumes: pulumi.Bool(true),
/// 							},
/// 						},
/// 						S3Logs: &awsconnector.CFNS3LogsConfigurationArgs{
/// 							Enable: pulumi.Bool(true),
/// 						},
/// 					},
/// 					Enable: pulumi.Bool(true),
/// 					Features: awsconnector.CFNFeatureConfigurationArray{
/// 						&awsconnector.CFNFeatureConfigurationArgs{
/// 							AdditionalConfiguration: awsconnector.CFNFeatureAdditionalConfigurationArray{
/// 								&awsconnector.CFNFeatureAdditionalConfigurationArgs{
/// 									Name:   pulumi.String("lkkifsmqcaujhderxjzcmezjh"),
/// 									Status: pulumi.String("wbjikrlaxrtwpwiexknat"),
/// 								},
/// 							},
/// 							Name:   pulumi.String("aoocmexbklfmzmglxopv"),
/// 							Status: pulumi.String(awsconnector.CFNFeatureConfigurationStatusDISABLED),
/// 						},
/// 					},
/// 					FindingPublishingFrequency: pulumi.String("ed"),
/// 					Id:                         pulumi.String("vakfpotktucclwwqxkczvzrw"),
/// 					Tags: awsconnector.TagItemArray{
/// 						&awsconnector.TagItemArgs{
/// 							Key:   pulumi.String("fezaldlvzejdwknyannwfh"),
/// 							Value: pulumi.String("edlendjmyszkw"),
/// 						},
/// 					},
/// 				},
/// 				AwsRegion:       pulumi.String("wtiiifsewygmgbdcebhl"),
/// 				AwsSourceSchema: pulumi.String("coaitkvmjezenllwmaouhnwfmjjbxa"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key6130": pulumi.String("qomcwrehzvdlpltzqhdzxu"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("infmmygcbbjb"),
/// 				PublicCloudResourceName:         pulumi.String("hkdypyaxoeszbx"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgguardDutyDetector"),
/// 			Tags: pulumi.StringMap{
/// 				"key3628": pulumi.String("pguiezvqu"),
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
/// import com.pulumi.azurenative.awsconnector.GuardDutyDetector;
/// import com.pulumi.azurenative.awsconnector.GuardDutyDetectorArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.GuardDutyDetectorPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsGuardDutyDetectorPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.CFNDataSourceConfigurationsArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.CFNKubernetesConfigurationArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.CFNKubernetesAuditLogsConfigurationArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.CFNMalwareProtectionConfigurationArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.CFNScanEc2InstanceWithFindingsConfigurationArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.CFNS3LogsConfigurationArgs;
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
///         var guardDutyDetector = new GuardDutyDetector("guardDutyDetector", GuardDutyDetectorArgs.builder()
///             .location("sxpvpkjhhmcssseznufvqer")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(GuardDutyDetectorPropertiesArgs.builder()
///                 .arn("bdql")
///                 .awsAccountId("lgyellrapjphgbfhni")
///                 .awsProperties(AwsGuardDutyDetectorPropertiesArgs.builder()
///                     .dataSources(CFNDataSourceConfigurationsArgs.builder()
///                         .kubernetes(CFNKubernetesConfigurationArgs.builder()
///                             .auditLogs(CFNKubernetesAuditLogsConfigurationArgs.builder()
///                                 .enable(true)
///                                 .build())
///                             .build())
///                         .malwareProtection(CFNMalwareProtectionConfigurationArgs.builder()
///                             .scanEc2InstanceWithFindings(CFNScanEc2InstanceWithFindingsConfigurationArgs.builder()
///                                 .ebsVolumes(true)
///                                 .build())
///                             .build())
///                         .s3Logs(CFNS3LogsConfigurationArgs.builder()
///                             .enable(true)
///                             .build())
///                         .build())
///                     .enable(true)
///                     .features(CFNFeatureConfigurationArgs.builder()
///                         .additionalConfiguration(CFNFeatureAdditionalConfigurationArgs.builder()
///                             .name("lkkifsmqcaujhderxjzcmezjh")
///                             .status("wbjikrlaxrtwpwiexknat")
///                             .build())
///                         .name("aoocmexbklfmzmglxopv")
///                         .status("DISABLED")
///                         .build())
///                     .findingPublishingFrequency("ed")
///                     .id("vakfpotktucclwwqxkczvzrw")
///                     .tags(TagItemArgs.builder()
///                         .key("fezaldlvzejdwknyannwfh")
///                         .value("edlendjmyszkw")
///                         .build())
///                     .build())
///                 .awsRegion("wtiiifsewygmgbdcebhl")
///                 .awsSourceSchema("coaitkvmjezenllwmaouhnwfmjjbxa")
///                 .awsTags(Map.of("key6130", "qomcwrehzvdlpltzqhdzxu"))
///                 .publicCloudConnectorsResourceId("infmmygcbbjb")
///                 .publicCloudResourceName("hkdypyaxoeszbx")
///                 .build())
///             .resourceGroupName("rgguardDutyDetector")
///             .tags(Map.of("key3628", "pguiezvqu"))
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
/// const guardDutyDetector = new azure_native.awsconnector.GuardDutyDetector("guardDutyDetector", {
///     location: "sxpvpkjhhmcssseznufvqer",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "bdql",
///         awsAccountId: "lgyellrapjphgbfhni",
///         awsProperties: {
///             dataSources: {
///                 kubernetes: {
///                     auditLogs: {
///                         enable: true,
///                     },
///                 },
///                 malwareProtection: {
///                     scanEc2InstanceWithFindings: {
///                         ebsVolumes: true,
///                     },
///                 },
///                 s3Logs: {
///                     enable: true,
///                 },
///             },
///             enable: true,
///             features: [{
///                 additionalConfiguration: [{
///                     name: "lkkifsmqcaujhderxjzcmezjh",
///                     status: "wbjikrlaxrtwpwiexknat",
///                 }],
///                 name: "aoocmexbklfmzmglxopv",
///                 status: azure_native.awsconnector.CFNFeatureConfigurationStatus.DISABLED,
///             }],
///             findingPublishingFrequency: "ed",
///             id: "vakfpotktucclwwqxkczvzrw",
///             tags: [{
///                 key: "fezaldlvzejdwknyannwfh",
///                 value: "edlendjmyszkw",
///             }],
///         },
///         awsRegion: "wtiiifsewygmgbdcebhl",
///         awsSourceSchema: "coaitkvmjezenllwmaouhnwfmjjbxa",
///         awsTags: {
///             key6130: "qomcwrehzvdlpltzqhdzxu",
///         },
///         publicCloudConnectorsResourceId: "infmmygcbbjb",
///         publicCloudResourceName: "hkdypyaxoeszbx",
///     },
///     resourceGroupName: "rgguardDutyDetector",
///     tags: {
///         key3628: "pguiezvqu",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// guard_duty_detector = azure_native.awsconnector.GuardDutyDetector("guardDutyDetector",
///     location="sxpvpkjhhmcssseznufvqer",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "bdql",
///         "aws_account_id": "lgyellrapjphgbfhni",
///         "aws_properties": {
///             "data_sources": {
///                 "kubernetes": {
///                     "audit_logs": {
///                         "enable": True,
///                     },
///                 },
///                 "malware_protection": {
///                     "scan_ec2_instance_with_findings": {
///                         "ebs_volumes": True,
///                     },
///                 },
///                 "s3_logs": {
///                     "enable": True,
///                 },
///             },
///             "enable": True,
///             "features": [{
///                 "additional_configuration": [{
///                     "name": "lkkifsmqcaujhderxjzcmezjh",
///                     "status": "wbjikrlaxrtwpwiexknat",
///                 }],
///                 "name": "aoocmexbklfmzmglxopv",
///                 "status": azure_native.awsconnector.CFNFeatureConfigurationStatus.DISABLED,
///             }],
///             "finding_publishing_frequency": "ed",
///             "id": "vakfpotktucclwwqxkczvzrw",
///             "tags": [{
///                 "key": "fezaldlvzejdwknyannwfh",
///                 "value": "edlendjmyszkw",
///             }],
///         },
///         "aws_region": "wtiiifsewygmgbdcebhl",
///         "aws_source_schema": "coaitkvmjezenllwmaouhnwfmjjbxa",
///         "aws_tags": {
///             "key6130": "qomcwrehzvdlpltzqhdzxu",
///         },
///         "public_cloud_connectors_resource_id": "infmmygcbbjb",
///         "public_cloud_resource_name": "hkdypyaxoeszbx",
///     },
///     resource_group_name="rgguardDutyDetector",
///     tags={
///         "key3628": "pguiezvqu",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   guardDutyDetector:
///     type: azure-native:awsconnector:GuardDutyDetector
///     properties:
///       location: sxpvpkjhhmcssseznufvqer
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: bdql
///         awsAccountId: lgyellrapjphgbfhni
///         awsProperties:
///           dataSources:
///             kubernetes:
///               auditLogs:
///                 enable: true
///             malwareProtection:
///               scanEc2InstanceWithFindings:
///                 ebsVolumes: true
///             s3Logs:
///               enable: true
///           enable: true
///           features:
///             - additionalConfiguration:
///                 - name: lkkifsmqcaujhderxjzcmezjh
///                   status: wbjikrlaxrtwpwiexknat
///               name: aoocmexbklfmzmglxopv
///               status: DISABLED
///           findingPublishingFrequency: ed
///           id: vakfpotktucclwwqxkczvzrw
///           tags:
///             - key: fezaldlvzejdwknyannwfh
///               value: edlendjmyszkw
///         awsRegion: wtiiifsewygmgbdcebhl
///         awsSourceSchema: coaitkvmjezenllwmaouhnwfmjjbxa
///         awsTags:
///           key6130: qomcwrehzvdlpltzqhdzxu
///         publicCloudConnectorsResourceId: infmmygcbbjb
///         publicCloudResourceName: hkdypyaxoeszbx
///       resourceGroupName: rgguardDutyDetector
///       tags:
///         key3628: pguiezvqu
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
/// $ pulumi import azure-native:awsconnector:GuardDutyDetector iraqwqwlttjteccptbaifmzaiohbd /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/guardDutyDetectors/{name}
/// ```
class GuardDutyDetector extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<GuardDutyDetectorPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [GuardDutyDetector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GuardDutyDetector]. {@macro pulumi_awsconnector_guard_duty_detector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GuardDutyDetector(
    String name, {
    GuardDutyDetectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:awsconnector:GuardDutyDetector',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<GuardDutyDetectorPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GuardDutyDetectorPropertiesResponse.fromMap(
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
