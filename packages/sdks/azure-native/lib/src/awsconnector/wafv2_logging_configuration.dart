import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'wafv2_logging_configuration_args.dart';
import 'wafv2_logging_configuration_properties_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Wafv2LoggingConfigurations_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var wafv2LoggingConfiguration = new AzureNative.AwsConnector.Wafv2LoggingConfiguration("wafv2LoggingConfiguration", new()
///     {
///         Location = "miqjaa",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.Wafv2LoggingConfigurationPropertiesArgs
///         {
///             Arn = "vvamx",
///             AwsAccountId = "opcrasgtswrifmkonwy",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsWafv2LoggingConfigurationPropertiesArgs
///             {
///                 LogDestinationConfigs = new[]
///                 {
///                     "lyxpldjogdqpffwthdto",
///                 },
///                 LoggingFilter = new AzureNative.AwsConnector.Inputs.LoggingFilterModelPropertiesArgs
///                 {
///                     DefaultBehavior = AzureNative.AwsConnector.DefaultBehavior.DROP,
///                     Filters = new[]
///                     {
///                         new AzureNative.AwsConnector.Inputs.FilterArgs
///                         {
///                             Behavior = AzureNative.AwsConnector.FilterBehavior.DROP,
///                             Conditions = new[]
///                             {
///                                 new AzureNative.AwsConnector.Inputs.ConditionArgs
///                                 {
///                                     ActionCondition = new AzureNative.AwsConnector.Inputs.ActionConditionModelPropertiesArgs
///                                     {
///                                         Action = AzureNative.AwsConnector.Action.ALLOW,
///                                     },
///                                     LabelNameCondition = new AzureNative.AwsConnector.Inputs.LabelNameConditionModelPropertiesArgs
///                                     {
///                                         LabelName = "oypkvstyighnjavknhfon",
///                                     },
///                                 },
///                             },
///                             Requirement = AzureNative.AwsConnector.FilterRequirement.MEETS_ALL,
///                         },
///                     },
///                 },
///                 ManagedByFirewallManager = true,
///                 RedactedFields = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.FieldToMatchArgs
///                     {
///                         SingleHeader = new AzureNative.AwsConnector.Inputs.SingleHeaderModelPropertiesArgs
///                         {
///                             Name = "bfqodp",
///                         },
///                     },
///                 },
///                 ResourceArn = "bnozeamipjgc",
///             },
///             AwsRegion = "kkwxoqqqiadksrmfpvopq",
///             AwsSourceSchema = "ywgazosjmcwothayguih",
///             AwsTags =
///             {
///                 { "key5392", "qn" },
///             },
///             PublicCloudConnectorsResourceId = "towziecfnbhswtodyqkkqrtatogbl",
///             PublicCloudResourceName = "eniprewwy",
///         },
///         ResourceGroupName = "rgwafv2LoggingConfiguration",
///         Tags =
///         {
///             { "key643", "cmguxikvqhszupgpbhlz" },
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
/// 		_, err := awsconnector.NewWafv2LoggingConfiguration(ctx, "wafv2LoggingConfiguration", &awsconnector.Wafv2LoggingConfigurationArgs{
/// 			Location: pulumi.String("miqjaa"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.Wafv2LoggingConfigurationPropertiesArgs{
/// 				Arn:          pulumi.String("vvamx"),
/// 				AwsAccountId: pulumi.String("opcrasgtswrifmkonwy"),
/// 				AwsProperties: &awsconnector.AwsWafv2LoggingConfigurationPropertiesArgs{
/// 					LogDestinationConfigs: pulumi.StringArray{
/// 						pulumi.String("lyxpldjogdqpffwthdto"),
/// 					},
/// 					LoggingFilter: &awsconnector.LoggingFilterModelPropertiesArgs{
/// 						DefaultBehavior: pulumi.String(awsconnector.DefaultBehaviorDROP),
/// 						Filters: awsconnector.FilterArray{
/// 							&awsconnector.FilterArgs{
/// 								Behavior: pulumi.String(awsconnector.FilterBehaviorDROP),
/// 								Conditions: awsconnector.ConditionArray{
/// 									&awsconnector.ConditionArgs{
/// 										ActionCondition: &awsconnector.ActionConditionModelPropertiesArgs{
/// 											Action: pulumi.String(awsconnector.ActionALLOW),
/// 										},
/// 										LabelNameCondition: &awsconnector.LabelNameConditionModelPropertiesArgs{
/// 											LabelName: pulumi.String("oypkvstyighnjavknhfon"),
/// 										},
/// 									},
/// 								},
/// 								Requirement: pulumi.String(awsconnector.FilterRequirement_MEETS_ALL),
/// 							},
/// 						},
/// 					},
/// 					ManagedByFirewallManager: pulumi.Bool(true),
/// 					RedactedFields: awsconnector.FieldToMatchArray{
/// 						&awsconnector.FieldToMatchArgs{
/// 							SingleHeader: &awsconnector.SingleHeaderModelPropertiesArgs{
/// 								Name: pulumi.String("bfqodp"),
/// 							},
/// 						},
/// 					},
/// 					ResourceArn: pulumi.String("bnozeamipjgc"),
/// 				},
/// 				AwsRegion:       pulumi.String("kkwxoqqqiadksrmfpvopq"),
/// 				AwsSourceSchema: pulumi.String("ywgazosjmcwothayguih"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key5392": pulumi.String("qn"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("towziecfnbhswtodyqkkqrtatogbl"),
/// 				PublicCloudResourceName:         pulumi.String("eniprewwy"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgwafv2LoggingConfiguration"),
/// 			Tags: pulumi.StringMap{
/// 				"key643": pulumi.String("cmguxikvqhszupgpbhlz"),
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
/// import com.pulumi.azurenative.awsconnector.Wafv2LoggingConfiguration;
/// import com.pulumi.azurenative.awsconnector.Wafv2LoggingConfigurationArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.Wafv2LoggingConfigurationPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsWafv2LoggingConfigurationPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.LoggingFilterModelPropertiesArgs;
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
///         var wafv2LoggingConfiguration = new Wafv2LoggingConfiguration("wafv2LoggingConfiguration", Wafv2LoggingConfigurationArgs.builder()
///             .location("miqjaa")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(Wafv2LoggingConfigurationPropertiesArgs.builder()
///                 .arn("vvamx")
///                 .awsAccountId("opcrasgtswrifmkonwy")
///                 .awsProperties(AwsWafv2LoggingConfigurationPropertiesArgs.builder()
///                     .logDestinationConfigs("lyxpldjogdqpffwthdto")
///                     .loggingFilter(LoggingFilterModelPropertiesArgs.builder()
///                         .defaultBehavior("DROP")
///                         .filters(FilterArgs.builder()
///                             .behavior("DROP")
///                             .conditions(ConditionArgs.builder()
///                                 .actionCondition(ActionConditionModelPropertiesArgs.builder()
///                                     .action("ALLOW")
///                                     .build())
///                                 .labelNameCondition(LabelNameConditionModelPropertiesArgs.builder()
///                                     .labelName("oypkvstyighnjavknhfon")
///                                     .build())
///                                 .build())
///                             .requirement("MEETS_ALL")
///                             .build())
///                         .build())
///                     .managedByFirewallManager(true)
///                     .redactedFields(FieldToMatchArgs.builder()
///                         .singleHeader(SingleHeaderModelPropertiesArgs.builder()
///                             .name("bfqodp")
///                             .build())
///                         .build())
///                     .resourceArn("bnozeamipjgc")
///                     .build())
///                 .awsRegion("kkwxoqqqiadksrmfpvopq")
///                 .awsSourceSchema("ywgazosjmcwothayguih")
///                 .awsTags(Map.of("key5392", "qn"))
///                 .publicCloudConnectorsResourceId("towziecfnbhswtodyqkkqrtatogbl")
///                 .publicCloudResourceName("eniprewwy")
///                 .build())
///             .resourceGroupName("rgwafv2LoggingConfiguration")
///             .tags(Map.of("key643", "cmguxikvqhszupgpbhlz"))
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
/// const wafv2LoggingConfiguration = new azure_native.awsconnector.Wafv2LoggingConfiguration("wafv2LoggingConfiguration", {
///     location: "miqjaa",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "vvamx",
///         awsAccountId: "opcrasgtswrifmkonwy",
///         awsProperties: {
///             logDestinationConfigs: ["lyxpldjogdqpffwthdto"],
///             loggingFilter: {
///                 defaultBehavior: azure_native.awsconnector.DefaultBehavior.DROP,
///                 filters: [{
///                     behavior: azure_native.awsconnector.FilterBehavior.DROP,
///                     conditions: [{
///                         actionCondition: {
///                             action: azure_native.awsconnector.Action.ALLOW,
///                         },
///                         labelNameCondition: {
///                             labelName: "oypkvstyighnjavknhfon",
///                         },
///                     }],
///                     requirement: azure_native.awsconnector.FilterRequirement.MEETS_ALL,
///                 }],
///             },
///             managedByFirewallManager: true,
///             redactedFields: [{
///                 singleHeader: {
///                     name: "bfqodp",
///                 },
///             }],
///             resourceArn: "bnozeamipjgc",
///         },
///         awsRegion: "kkwxoqqqiadksrmfpvopq",
///         awsSourceSchema: "ywgazosjmcwothayguih",
///         awsTags: {
///             key5392: "qn",
///         },
///         publicCloudConnectorsResourceId: "towziecfnbhswtodyqkkqrtatogbl",
///         publicCloudResourceName: "eniprewwy",
///     },
///     resourceGroupName: "rgwafv2LoggingConfiguration",
///     tags: {
///         key643: "cmguxikvqhszupgpbhlz",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// wafv2_logging_configuration = azure_native.awsconnector.Wafv2LoggingConfiguration("wafv2LoggingConfiguration",
///     location="miqjaa",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "vvamx",
///         "aws_account_id": "opcrasgtswrifmkonwy",
///         "aws_properties": {
///             "log_destination_configs": ["lyxpldjogdqpffwthdto"],
///             "logging_filter": {
///                 "default_behavior": azure_native.awsconnector.DefaultBehavior.DROP,
///                 "filters": [{
///                     "behavior": azure_native.awsconnector.FilterBehavior.DROP,
///                     "conditions": [{
///                         "action_condition": {
///                             "action": azure_native.awsconnector.Action.ALLOW,
///                         },
///                         "label_name_condition": {
///                             "label_name": "oypkvstyighnjavknhfon",
///                         },
///                     }],
///                     "requirement": azure_native.awsconnector.FilterRequirement.MEET_S_ALL,
///                 }],
///             },
///             "managed_by_firewall_manager": True,
///             "redacted_fields": [{
///                 "single_header": {
///                     "name": "bfqodp",
///                 },
///             }],
///             "resource_arn": "bnozeamipjgc",
///         },
///         "aws_region": "kkwxoqqqiadksrmfpvopq",
///         "aws_source_schema": "ywgazosjmcwothayguih",
///         "aws_tags": {
///             "key5392": "qn",
///         },
///         "public_cloud_connectors_resource_id": "towziecfnbhswtodyqkkqrtatogbl",
///         "public_cloud_resource_name": "eniprewwy",
///     },
///     resource_group_name="rgwafv2LoggingConfiguration",
///     tags={
///         "key643": "cmguxikvqhszupgpbhlz",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   wafv2LoggingConfiguration:
///     type: azure-native:awsconnector:Wafv2LoggingConfiguration
///     properties:
///       location: miqjaa
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: vvamx
///         awsAccountId: opcrasgtswrifmkonwy
///         awsProperties:
///           logDestinationConfigs:
///             - lyxpldjogdqpffwthdto
///           loggingFilter:
///             defaultBehavior: DROP
///             filters:
///               - behavior: DROP
///                 conditions:
///                   - actionCondition:
///                       action: ALLOW
///                     labelNameCondition:
///                       labelName: oypkvstyighnjavknhfon
///                 requirement: MEETS_ALL
///           managedByFirewallManager: true
///           redactedFields:
///             - singleHeader:
///                 name: bfqodp
///           resourceArn: bnozeamipjgc
///         awsRegion: kkwxoqqqiadksrmfpvopq
///         awsSourceSchema: ywgazosjmcwothayguih
///         awsTags:
///           key5392: qn
///         publicCloudConnectorsResourceId: towziecfnbhswtodyqkkqrtatogbl
///         publicCloudResourceName: eniprewwy
///       resourceGroupName: rgwafv2LoggingConfiguration
///       tags:
///         key643: cmguxikvqhszupgpbhlz
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
/// $ pulumi import azure-native:awsconnector:Wafv2LoggingConfiguration fhprvqrekcufvebkfddaoyll /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/wafv2LoggingConfigurations/{name}
/// ```
class Wafv2LoggingConfiguration extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<Wafv2LoggingConfigurationPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Wafv2LoggingConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Wafv2LoggingConfiguration]. {@macro pulumi_awsconnector_wafv2_logging_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Wafv2LoggingConfiguration(
    String name, {
    Wafv2LoggingConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:Wafv2LoggingConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<Wafv2LoggingConfigurationPropertiesResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
