import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_analyzer_analyzer_args.dart';
import 'access_analyzer_analyzer_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### AccessAnalyzerAnalyzers_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var accessAnalyzerAnalyzer = new AzureNative.AwsConnector.AccessAnalyzerAnalyzer("accessAnalyzerAnalyzer", new()
///     {
///         Location = "jpcbvhsspnqhnreartkjyr",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.AccessAnalyzerAnalyzerPropertiesArgs
///         {
///             Arn = "dgzbebaorvepu",
///             AwsAccountId = "pvsawejgihtmvcjqnob",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsAccessAnalyzerAnalyzerPropertiesArgs
///             {
///                 AnalyzerConfiguration = new AzureNative.AwsConnector.Inputs.UnusedAccessConfigurationArgs
///                 {
///                     UnusedAccessAge = 29,
///                 },
///                 AnalyzerName = "owom",
///                 ArchiveRules = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.ArchiveRuleArgs
///                     {
///                         Filter = new[]
///                         {
///                             new AzureNative.AwsConnector.Inputs.FilterArgs
///                             {
///                                 Contains = new[]
///                                 {
///                                     "hpzoliradchznu",
///                                 },
///                                 Eq = new[]
///                                 {
///                                     "vlrqwrfkkwxvyxmqpbmwkxig",
///                                 },
///                                 Exists = true,
///                                 Neq = new[]
///                                 {
///                                     "ro",
///                                 },
///                                 Property = "pzndukmteempygtvmsrcrjulphe",
///                             },
///                         },
///                         RuleName = "hvfnklcbuefkibrtayx",
///                     },
///                 },
///                 Arn = "bmt",
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "xeapsjw",
///                         Value = "mtcjrbabaynnrmqttjf",
///                     },
///                 },
///                 Type = "vswmvhmkyxepqkvvksbglssmrgg",
///             },
///             AwsRegion = "edosnsqdwcvgl",
///             AwsSourceSchema = "ur",
///             AwsTags =
///             {
///                 { "key746", "ux" },
///             },
///             PublicCloudConnectorsResourceId = "qfefhuzrkvg",
///             PublicCloudResourceName = "euuddejz",
///         },
///         ResourceGroupName = "rgaccessAnalyzerAnalyzer",
///         Tags =
///         {
///             { "key5531", "fkyuwvyhzd" },
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
/// 		_, err := awsconnector.NewAccessAnalyzerAnalyzer(ctx, "accessAnalyzerAnalyzer", &awsconnector.AccessAnalyzerAnalyzerArgs{
/// 			Location: pulumi.String("jpcbvhsspnqhnreartkjyr"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.AccessAnalyzerAnalyzerPropertiesArgs{
/// 				Arn:          pulumi.String("dgzbebaorvepu"),
/// 				AwsAccountId: pulumi.String("pvsawejgihtmvcjqnob"),
/// 				AwsProperties: &awsconnector.AwsAccessAnalyzerAnalyzerPropertiesArgs{
/// 					AnalyzerConfiguration: &awsconnector.UnusedAccessConfigurationArgs{
/// 						UnusedAccessAge: pulumi.Int(29),
/// 					},
/// 					AnalyzerName: pulumi.String("owom"),
/// 					ArchiveRules: awsconnector.ArchiveRuleArray{
/// 						&awsconnector.ArchiveRuleArgs{
/// 							Filter: awsconnector.FilterArray{
/// 								&awsconnector.FilterArgs{
/// 									Contains: pulumi.StringArray{
/// 										pulumi.String("hpzoliradchznu"),
/// 									},
/// 									Eq: pulumi.StringArray{
/// 										pulumi.String("vlrqwrfkkwxvyxmqpbmwkxig"),
/// 									},
/// 									Exists: pulumi.Bool(true),
/// 									Neq: pulumi.StringArray{
/// 										pulumi.String("ro"),
/// 									},
/// 									Property: pulumi.String("pzndukmteempygtvmsrcrjulphe"),
/// 								},
/// 							},
/// 							RuleName: pulumi.String("hvfnklcbuefkibrtayx"),
/// 						},
/// 					},
/// 					Arn: pulumi.String("bmt"),
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("xeapsjw"),
/// 							Value: pulumi.String("mtcjrbabaynnrmqttjf"),
/// 						},
/// 					},
/// 					Type: pulumi.String("vswmvhmkyxepqkvvksbglssmrgg"),
/// 				},
/// 				AwsRegion:       pulumi.String("edosnsqdwcvgl"),
/// 				AwsSourceSchema: pulumi.String("ur"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key746": pulumi.String("ux"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("qfefhuzrkvg"),
/// 				PublicCloudResourceName:         pulumi.String("euuddejz"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgaccessAnalyzerAnalyzer"),
/// 			Tags: pulumi.StringMap{
/// 				"key5531": pulumi.String("fkyuwvyhzd"),
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
/// resource "azure-native_awsconnector_accessanalyzeranalyzer" "accessAnalyzerAnalyzer" {
///   location = "jpcbvhsspnqhnreartkjyr"
///   name     = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"
///   properties = {
///     arn            = "dgzbebaorvepu"
///     aws_account_id = "pvsawejgihtmvcjqnob"
///     aws_properties = {
///       analyzer_configuration = {
///         unused_access_age = 29
///       }
///       analyzer_name = "owom"
///       archive_rules = [{
///         "filter" = [{
///           "contains" = ["hpzoliradchznu"]
///           "eq"       = ["vlrqwrfkkwxvyxmqpbmwkxig"]
///           "exists"   = true
///           "neq"      = ["ro"]
///           "property" = "pzndukmteempygtvmsrcrjulphe"
///         }]
///         "ruleName" = "hvfnklcbuefkibrtayx"
///       }]
///       arn = "bmt"
///       tags = [{
///         "key"   = "xeapsjw"
///         "value" = "mtcjrbabaynnrmqttjf"
///       }]
///       type = "vswmvhmkyxepqkvvksbglssmrgg"
///     }
///     aws_region        = "edosnsqdwcvgl"
///     aws_source_schema = "ur"
///     aws_tags = {
///       "key746" = "ux"
///     }
///     public_cloud_connectors_resource_id = "qfefhuzrkvg"
///     public_cloud_resource_name          = "euuddejz"
///   }
///   resource_group_name = "rgaccessAnalyzerAnalyzer"
///   tags = {
///     "key5531" = "fkyuwvyhzd"
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
/// import com.pulumi.azurenative.awsconnector.AccessAnalyzerAnalyzer;
/// import com.pulumi.azurenative.awsconnector.AccessAnalyzerAnalyzerArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AccessAnalyzerAnalyzerPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsAccessAnalyzerAnalyzerPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.UnusedAccessConfigurationArgs;
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
///         var accessAnalyzerAnalyzer = new AccessAnalyzerAnalyzer("accessAnalyzerAnalyzer", AccessAnalyzerAnalyzerArgs.builder()
///             .location("jpcbvhsspnqhnreartkjyr")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(AccessAnalyzerAnalyzerPropertiesArgs.builder()
///                 .arn("dgzbebaorvepu")
///                 .awsAccountId("pvsawejgihtmvcjqnob")
///                 .awsProperties(AwsAccessAnalyzerAnalyzerPropertiesArgs.builder()
///                     .analyzerConfiguration(UnusedAccessConfigurationArgs.builder()
///                         .unusedAccessAge(29)
///                         .build())
///                     .analyzerName("owom")
///                     .archiveRules(ArchiveRuleArgs.builder()
///                         .filter(FilterArgs.builder()
///                             .contains("hpzoliradchznu")
///                             .eq("vlrqwrfkkwxvyxmqpbmwkxig")
///                             .exists(true)
///                             .neq("ro")
///                             .property("pzndukmteempygtvmsrcrjulphe")
///                             .build())
///                         .ruleName("hvfnklcbuefkibrtayx")
///                         .build())
///                     .arn("bmt")
///                     .tags(TagArgs.builder()
///                         .key("xeapsjw")
///                         .value("mtcjrbabaynnrmqttjf")
///                         .build())
///                     .type("vswmvhmkyxepqkvvksbglssmrgg")
///                     .build())
///                 .awsRegion("edosnsqdwcvgl")
///                 .awsSourceSchema("ur")
///                 .awsTags(Map.of("key746", "ux"))
///                 .publicCloudConnectorsResourceId("qfefhuzrkvg")
///                 .publicCloudResourceName("euuddejz")
///                 .build())
///             .resourceGroupName("rgaccessAnalyzerAnalyzer")
///             .tags(Map.of("key5531", "fkyuwvyhzd"))
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
/// const accessAnalyzerAnalyzer = new azure_native.awsconnector.AccessAnalyzerAnalyzer("accessAnalyzerAnalyzer", {
///     location: "jpcbvhsspnqhnreartkjyr",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "dgzbebaorvepu",
///         awsAccountId: "pvsawejgihtmvcjqnob",
///         awsProperties: {
///             analyzerConfiguration: {
///                 unusedAccessAge: 29,
///             },
///             analyzerName: "owom",
///             archiveRules: [{
///                 filter: [{
///                     contains: ["hpzoliradchznu"],
///                     eq: ["vlrqwrfkkwxvyxmqpbmwkxig"],
///                     exists: true,
///                     neq: ["ro"],
///                     property: "pzndukmteempygtvmsrcrjulphe",
///                 }],
///                 ruleName: "hvfnklcbuefkibrtayx",
///             }],
///             arn: "bmt",
///             tags: [{
///                 key: "xeapsjw",
///                 value: "mtcjrbabaynnrmqttjf",
///             }],
///             type: "vswmvhmkyxepqkvvksbglssmrgg",
///         },
///         awsRegion: "edosnsqdwcvgl",
///         awsSourceSchema: "ur",
///         awsTags: {
///             key746: "ux",
///         },
///         publicCloudConnectorsResourceId: "qfefhuzrkvg",
///         publicCloudResourceName: "euuddejz",
///     },
///     resourceGroupName: "rgaccessAnalyzerAnalyzer",
///     tags: {
///         key5531: "fkyuwvyhzd",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// access_analyzer_analyzer = azure_native.awsconnector.AccessAnalyzerAnalyzer("accessAnalyzerAnalyzer",
///     location="jpcbvhsspnqhnreartkjyr",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "dgzbebaorvepu",
///         "aws_account_id": "pvsawejgihtmvcjqnob",
///         "aws_properties": {
///             "analyzer_configuration": {
///                 "unused_access_age": 29,
///             },
///             "analyzer_name": "owom",
///             "archive_rules": [{
///                 "filter": [{
///                     "contains": ["hpzoliradchznu"],
///                     "eq": ["vlrqwrfkkwxvyxmqpbmwkxig"],
///                     "exists": True,
///                     "neq": ["ro"],
///                     "property": "pzndukmteempygtvmsrcrjulphe",
///                 }],
///                 "rule_name": "hvfnklcbuefkibrtayx",
///             }],
///             "arn": "bmt",
///             "tags": [{
///                 "key": "xeapsjw",
///                 "value": "mtcjrbabaynnrmqttjf",
///             }],
///             "type": "vswmvhmkyxepqkvvksbglssmrgg",
///         },
///         "aws_region": "edosnsqdwcvgl",
///         "aws_source_schema": "ur",
///         "aws_tags": {
///             "key746": "ux",
///         },
///         "public_cloud_connectors_resource_id": "qfefhuzrkvg",
///         "public_cloud_resource_name": "euuddejz",
///     },
///     resource_group_name="rgaccessAnalyzerAnalyzer",
///     tags={
///         "key5531": "fkyuwvyhzd",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   accessAnalyzerAnalyzer:
///     type: azure-native:awsconnector:AccessAnalyzerAnalyzer
///     properties:
///       location: jpcbvhsspnqhnreartkjyr
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: dgzbebaorvepu
///         awsAccountId: pvsawejgihtmvcjqnob
///         awsProperties:
///           analyzerConfiguration:
///             unusedAccessAge: 29
///           analyzerName: owom
///           archiveRules:
///             - filter:
///                 - contains:
///                     - hpzoliradchznu
///                   eq:
///                     - vlrqwrfkkwxvyxmqpbmwkxig
///                   exists: true
///                   neq:
///                     - ro
///                   property: pzndukmteempygtvmsrcrjulphe
///               ruleName: hvfnklcbuefkibrtayx
///           arn: bmt
///           tags:
///             - key: xeapsjw
///               value: mtcjrbabaynnrmqttjf
///           type: vswmvhmkyxepqkvvksbglssmrgg
///         awsRegion: edosnsqdwcvgl
///         awsSourceSchema: ur
///         awsTags:
///           key746: ux
///         publicCloudConnectorsResourceId: qfefhuzrkvg
///         publicCloudResourceName: euuddejz
///       resourceGroupName: rgaccessAnalyzerAnalyzer
///       tags:
///         key5531: fkyuwvyhzd
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
/// $ pulumi import azure-native:awsconnector:AccessAnalyzerAnalyzer ufpyfqqujqkhoaysswb /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/accessAnalyzerAnalyzers/{name}
/// ```
class AccessAnalyzerAnalyzer extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<AccessAnalyzerAnalyzerPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AccessAnalyzerAnalyzer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessAnalyzerAnalyzer]. {@macro pulumi_awsconnector_access_analyzer_analyzer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessAnalyzerAnalyzer(
    String name, {
    AccessAnalyzerAnalyzerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:AccessAnalyzerAnalyzer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AccessAnalyzerAnalyzerPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessAnalyzerAnalyzerPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [AccessAnalyzerAnalyzer] resource.
  AccessAnalyzerAnalyzer.reference(String urn)
    : super(
        'azure-native:awsconnector:AccessAnalyzerAnalyzer',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AccessAnalyzerAnalyzerPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessAnalyzerAnalyzerPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
