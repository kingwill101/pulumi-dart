import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssm_resource_compliance_summary_item_args.dart';
import 'ssm_resource_compliance_summary_item_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SsmResourceComplianceSummaryItems_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ssmResourceComplianceSummaryItem = new AzureNative.AwsConnector.SsmResourceComplianceSummaryItem("ssmResourceComplianceSummaryItem", new()
///     {
///         Location = "kr",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.SsmResourceComplianceSummaryItemPropertiesArgs
///         {
///             Arn = "s",
///             AwsAccountId = "taqkptjbkqarwksdmfumdyi",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsSsmResourceComplianceSummaryItemPropertiesArgs
///             {
///                 ComplianceType = "fblmjhswva",
///                 CompliantSummary = new AzureNative.AwsConnector.Inputs.CompliantSummaryArgs
///                 {
///                     CompliantCount = 2,
///                     SeveritySummary = new AzureNative.AwsConnector.Inputs.SeveritySummaryArgs
///                     {
///                         CriticalCount = 7,
///                         HighCount = 18,
///                         InformationalCount = 17,
///                         LowCount = 19,
///                         MediumCount = 20,
///                         UnspecifiedCount = 11,
///                     },
///                 },
///                 ExecutionSummary = new AzureNative.AwsConnector.Inputs.ComplianceExecutionSummaryArgs
///                 {
///                     ExecutionId = "ngwakxvtdysew",
///                     ExecutionTime = "2024-10-08T03:48:53.913Z",
///                     ExecutionType = "wjneewwqlrtdntdsot",
///                 },
///                 NonCompliantSummary = new AzureNative.AwsConnector.Inputs.NonCompliantSummaryArgs
///                 {
///                     NonCompliantCount = 18,
///                     SeveritySummary = new AzureNative.AwsConnector.Inputs.SeveritySummaryArgs
///                     {
///                         CriticalCount = 7,
///                         HighCount = 18,
///                         InformationalCount = 17,
///                         LowCount = 19,
///                         MediumCount = 20,
///                         UnspecifiedCount = 11,
///                     },
///                 },
///                 OverallSeverity = new AzureNative.AwsConnector.Inputs.ComplianceSeverityEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.ComplianceSeverity.CRITICAL,
///                 },
///                 ResourceId = "muhsukivzcqvnlxiyrudvdymmii",
///                 ResourceType = "rphjdvzvwasngsqoozoivduj",
///                 Status = new AzureNative.AwsConnector.Inputs.ComplianceStatusEnumValueArgs
///                 {
///                     Value = AzureNative.AwsConnector.ComplianceStatus.COMPLIANT,
///                 },
///             },
///             AwsRegion = "hkemdhobdaxfwcvdjohvqtwpmjezu",
///             AwsSourceSchema = "ppxlpfsm",
///             AwsTags =
///             {
///                 { "key3567", "prmmwewyaitggucnntudddji" },
///             },
///             PublicCloudConnectorsResourceId = "lghqnauuu",
///             PublicCloudResourceName = "qvohsbyuajd",
///         },
///         ResourceGroupName = "rgssmResourceComplianceSummaryItem",
///         Tags =
///         {
///             { "key3147", "qdybk" },
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
/// 		_, err := awsconnector.NewSsmResourceComplianceSummaryItem(ctx, "ssmResourceComplianceSummaryItem", &awsconnector.SsmResourceComplianceSummaryItemArgs{
/// 			Location: pulumi.String("kr"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.SsmResourceComplianceSummaryItemPropertiesArgs{
/// 				Arn:          pulumi.String("s"),
/// 				AwsAccountId: pulumi.String("taqkptjbkqarwksdmfumdyi"),
/// 				AwsProperties: &awsconnector.AwsSsmResourceComplianceSummaryItemPropertiesArgs{
/// 					ComplianceType: pulumi.String("fblmjhswva"),
/// 					CompliantSummary: &awsconnector.CompliantSummaryArgs{
/// 						CompliantCount: pulumi.Int(2),
/// 						SeveritySummary: &awsconnector.SeveritySummaryArgs{
/// 							CriticalCount:      pulumi.Int(7),
/// 							HighCount:          pulumi.Int(18),
/// 							InformationalCount: pulumi.Int(17),
/// 							LowCount:           pulumi.Int(19),
/// 							MediumCount:        pulumi.Int(20),
/// 							UnspecifiedCount:   pulumi.Int(11),
/// 						},
/// 					},
/// 					ExecutionSummary: &awsconnector.ComplianceExecutionSummaryArgs{
/// 						ExecutionId:   pulumi.String("ngwakxvtdysew"),
/// 						ExecutionTime: pulumi.String("2024-10-08T03:48:53.913Z"),
/// 						ExecutionType: pulumi.String("wjneewwqlrtdntdsot"),
/// 					},
/// 					NonCompliantSummary: &awsconnector.NonCompliantSummaryArgs{
/// 						NonCompliantCount: pulumi.Int(18),
/// 						SeveritySummary: &awsconnector.SeveritySummaryArgs{
/// 							CriticalCount:      pulumi.Int(7),
/// 							HighCount:          pulumi.Int(18),
/// 							InformationalCount: pulumi.Int(17),
/// 							LowCount:           pulumi.Int(19),
/// 							MediumCount:        pulumi.Int(20),
/// 							UnspecifiedCount:   pulumi.Int(11),
/// 						},
/// 					},
/// 					OverallSeverity: &awsconnector.ComplianceSeverityEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.ComplianceSeverityCRITICAL),
/// 					},
/// 					ResourceId:   pulumi.String("muhsukivzcqvnlxiyrudvdymmii"),
/// 					ResourceType: pulumi.String("rphjdvzvwasngsqoozoivduj"),
/// 					Status: &awsconnector.ComplianceStatusEnumValueArgs{
/// 						Value: pulumi.String(awsconnector.ComplianceStatusCOMPLIANT),
/// 					},
/// 				},
/// 				AwsRegion:       pulumi.String("hkemdhobdaxfwcvdjohvqtwpmjezu"),
/// 				AwsSourceSchema: pulumi.String("ppxlpfsm"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key3567": pulumi.String("prmmwewyaitggucnntudddji"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("lghqnauuu"),
/// 				PublicCloudResourceName:         pulumi.String("qvohsbyuajd"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgssmResourceComplianceSummaryItem"),
/// 			Tags: pulumi.StringMap{
/// 				"key3147": pulumi.String("qdybk"),
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
/// import com.pulumi.azurenative.awsconnector.SsmResourceComplianceSummaryItem;
/// import com.pulumi.azurenative.awsconnector.SsmResourceComplianceSummaryItemArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.SsmResourceComplianceSummaryItemPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsSsmResourceComplianceSummaryItemPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.CompliantSummaryArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.SeveritySummaryArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ComplianceExecutionSummaryArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.NonCompliantSummaryArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ComplianceSeverityEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ComplianceStatusEnumValueArgs;
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
///         var ssmResourceComplianceSummaryItem = new SsmResourceComplianceSummaryItem("ssmResourceComplianceSummaryItem", SsmResourceComplianceSummaryItemArgs.builder()
///             .location("kr")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(SsmResourceComplianceSummaryItemPropertiesArgs.builder()
///                 .arn("s")
///                 .awsAccountId("taqkptjbkqarwksdmfumdyi")
///                 .awsProperties(AwsSsmResourceComplianceSummaryItemPropertiesArgs.builder()
///                     .complianceType("fblmjhswva")
///                     .compliantSummary(CompliantSummaryArgs.builder()
///                         .compliantCount(2)
///                         .severitySummary(SeveritySummaryArgs.builder()
///                             .criticalCount(7)
///                             .highCount(18)
///                             .informationalCount(17)
///                             .lowCount(19)
///                             .mediumCount(20)
///                             .unspecifiedCount(11)
///                             .build())
///                         .build())
///                     .executionSummary(ComplianceExecutionSummaryArgs.builder()
///                         .executionId("ngwakxvtdysew")
///                         .executionTime("2024-10-08T03:48:53.913Z")
///                         .executionType("wjneewwqlrtdntdsot")
///                         .build())
///                     .nonCompliantSummary(NonCompliantSummaryArgs.builder()
///                         .nonCompliantCount(18)
///                         .severitySummary(SeveritySummaryArgs.builder()
///                             .criticalCount(7)
///                             .highCount(18)
///                             .informationalCount(17)
///                             .lowCount(19)
///                             .mediumCount(20)
///                             .unspecifiedCount(11)
///                             .build())
///                         .build())
///                     .overallSeverity(ComplianceSeverityEnumValueArgs.builder()
///                         .value("CRITICAL")
///                         .build())
///                     .resourceId("muhsukivzcqvnlxiyrudvdymmii")
///                     .resourceType("rphjdvzvwasngsqoozoivduj")
///                     .status(ComplianceStatusEnumValueArgs.builder()
///                         .value("COMPLIANT")
///                         .build())
///                     .build())
///                 .awsRegion("hkemdhobdaxfwcvdjohvqtwpmjezu")
///                 .awsSourceSchema("ppxlpfsm")
///                 .awsTags(Map.of("key3567", "prmmwewyaitggucnntudddji"))
///                 .publicCloudConnectorsResourceId("lghqnauuu")
///                 .publicCloudResourceName("qvohsbyuajd")
///                 .build())
///             .resourceGroupName("rgssmResourceComplianceSummaryItem")
///             .tags(Map.of("key3147", "qdybk"))
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
/// const ssmResourceComplianceSummaryItem = new azure_native.awsconnector.SsmResourceComplianceSummaryItem("ssmResourceComplianceSummaryItem", {
///     location: "kr",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "s",
///         awsAccountId: "taqkptjbkqarwksdmfumdyi",
///         awsProperties: {
///             complianceType: "fblmjhswva",
///             compliantSummary: {
///                 compliantCount: 2,
///                 severitySummary: {
///                     criticalCount: 7,
///                     highCount: 18,
///                     informationalCount: 17,
///                     lowCount: 19,
///                     mediumCount: 20,
///                     unspecifiedCount: 11,
///                 },
///             },
///             executionSummary: {
///                 executionId: "ngwakxvtdysew",
///                 executionTime: "2024-10-08T03:48:53.913Z",
///                 executionType: "wjneewwqlrtdntdsot",
///             },
///             nonCompliantSummary: {
///                 nonCompliantCount: 18,
///                 severitySummary: {
///                     criticalCount: 7,
///                     highCount: 18,
///                     informationalCount: 17,
///                     lowCount: 19,
///                     mediumCount: 20,
///                     unspecifiedCount: 11,
///                 },
///             },
///             overallSeverity: {
///                 value: azure_native.awsconnector.ComplianceSeverity.CRITICAL,
///             },
///             resourceId: "muhsukivzcqvnlxiyrudvdymmii",
///             resourceType: "rphjdvzvwasngsqoozoivduj",
///             status: {
///                 value: azure_native.awsconnector.ComplianceStatus.COMPLIANT,
///             },
///         },
///         awsRegion: "hkemdhobdaxfwcvdjohvqtwpmjezu",
///         awsSourceSchema: "ppxlpfsm",
///         awsTags: {
///             key3567: "prmmwewyaitggucnntudddji",
///         },
///         publicCloudConnectorsResourceId: "lghqnauuu",
///         publicCloudResourceName: "qvohsbyuajd",
///     },
///     resourceGroupName: "rgssmResourceComplianceSummaryItem",
///     tags: {
///         key3147: "qdybk",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// ssm_resource_compliance_summary_item = azure_native.awsconnector.SsmResourceComplianceSummaryItem("ssmResourceComplianceSummaryItem",
///     location="kr",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "s",
///         "aws_account_id": "taqkptjbkqarwksdmfumdyi",
///         "aws_properties": {
///             "compliance_type": "fblmjhswva",
///             "compliant_summary": {
///                 "compliant_count": 2,
///                 "severity_summary": {
///                     "critical_count": 7,
///                     "high_count": 18,
///                     "informational_count": 17,
///                     "low_count": 19,
///                     "medium_count": 20,
///                     "unspecified_count": 11,
///                 },
///             },
///             "execution_summary": {
///                 "execution_id": "ngwakxvtdysew",
///                 "execution_time": "2024-10-08T03:48:53.913Z",
///                 "execution_type": "wjneewwqlrtdntdsot",
///             },
///             "non_compliant_summary": {
///                 "non_compliant_count": 18,
///                 "severity_summary": {
///                     "critical_count": 7,
///                     "high_count": 18,
///                     "informational_count": 17,
///                     "low_count": 19,
///                     "medium_count": 20,
///                     "unspecified_count": 11,
///                 },
///             },
///             "overall_severity": {
///                 "value": azure_native.awsconnector.ComplianceSeverity.CRITICAL,
///             },
///             "resource_id": "muhsukivzcqvnlxiyrudvdymmii",
///             "resource_type": "rphjdvzvwasngsqoozoivduj",
///             "status": {
///                 "value": azure_native.awsconnector.ComplianceStatus.COMPLIANT,
///             },
///         },
///         "aws_region": "hkemdhobdaxfwcvdjohvqtwpmjezu",
///         "aws_source_schema": "ppxlpfsm",
///         "aws_tags": {
///             "key3567": "prmmwewyaitggucnntudddji",
///         },
///         "public_cloud_connectors_resource_id": "lghqnauuu",
///         "public_cloud_resource_name": "qvohsbyuajd",
///     },
///     resource_group_name="rgssmResourceComplianceSummaryItem",
///     tags={
///         "key3147": "qdybk",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   ssmResourceComplianceSummaryItem:
///     type: azure-native:awsconnector:SsmResourceComplianceSummaryItem
///     properties:
///       location: kr
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: s
///         awsAccountId: taqkptjbkqarwksdmfumdyi
///         awsProperties:
///           complianceType: fblmjhswva
///           compliantSummary:
///             compliantCount: 2
///             severitySummary:
///               criticalCount: 7
///               highCount: 18
///               informationalCount: 17
///               lowCount: 19
///               mediumCount: 20
///               unspecifiedCount: 11
///           executionSummary:
///             executionId: ngwakxvtdysew
///             executionTime: 2024-10-08T03:48:53.913Z
///             executionType: wjneewwqlrtdntdsot
///           nonCompliantSummary:
///             nonCompliantCount: 18
///             severitySummary:
///               criticalCount: 7
///               highCount: 18
///               informationalCount: 17
///               lowCount: 19
///               mediumCount: 20
///               unspecifiedCount: 11
///           overallSeverity:
///             value: CRITICAL
///           resourceId: muhsukivzcqvnlxiyrudvdymmii
///           resourceType: rphjdvzvwasngsqoozoivduj
///           status:
///             value: COMPLIANT
///         awsRegion: hkemdhobdaxfwcvdjohvqtwpmjezu
///         awsSourceSchema: ppxlpfsm
///         awsTags:
///           key3567: prmmwewyaitggucnntudddji
///         publicCloudConnectorsResourceId: lghqnauuu
///         publicCloudResourceName: qvohsbyuajd
///       resourceGroupName: rgssmResourceComplianceSummaryItem
///       tags:
///         key3147: qdybk
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
/// $ pulumi import azure-native:awsconnector:SsmResourceComplianceSummaryItem fsrglygmhf /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/ssmResourceComplianceSummaryItems/{name}
/// ```
class SsmResourceComplianceSummaryItem extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<SsmResourceComplianceSummaryItemPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SsmResourceComplianceSummaryItem].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SsmResourceComplianceSummaryItem]. {@macro pulumi_awsconnector_ssm_resource_compliance_summary_item_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SsmResourceComplianceSummaryItem(
    String name, {
    SsmResourceComplianceSummaryItemArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:SsmResourceComplianceSummaryItem',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<SsmResourceComplianceSummaryItemPropertiesResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
