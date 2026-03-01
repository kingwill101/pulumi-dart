import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_service_configuration_recorder_args.dart';
import 'config_service_configuration_recorder_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ConfigServiceConfigurationRecorders_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var configServiceConfigurationRecorder = new AzureNative.AwsConnector.ConfigServiceConfigurationRecorder("configServiceConfigurationRecorder", new()
///     {
///         Location = "uhzzvapzjrmbzxfxdqyczgmcq",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.ConfigServiceConfigurationRecorderPropertiesArgs
///         {
///             Arn = "jdsihdzklcqjurvrxp",
///             AwsAccountId = "pxxfgnveimxacjnvjtionuq",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsConfigServiceConfigurationRecorderPropertiesArgs
///             {
///                 Name = "umkcdjmciwgorjwxtm",
///                 RecordingGroup = new AzureNative.AwsConnector.Inputs.RecordingGroupArgs
///                 {
///                     AllSupported = true,
///                     ExclusionByResourceTypes = new AzureNative.AwsConnector.Inputs.ExclusionByResourceTypesArgs
///                     {
///                         ResourceTypes = new[]
///                         {
///                             "AWS::ACM::Certificate",
///                         },
///                     },
///                     IncludeGlobalResourceTypes = true,
///                     RecordingStrategy = new AzureNative.AwsConnector.Inputs.RecordingStrategyArgs
///                     {
///                         UseOnly = new AzureNative.AwsConnector.Inputs.RecordingStrategyTypeEnumValueArgs
///                         {
///                             Value = AzureNative.AwsConnector.RecordingStrategyType.ALL_SUPPORTED_RESOURCE_TYPES,
///                         },
///                     },
///                     ResourceTypes = new[]
///                     {
///                         "AWS::ACM::Certificate",
///                     },
///                 },
///                 RecordingMode = new AzureNative.AwsConnector.Inputs.RecordingModeArgs
///                 {
///                     RecordingFrequency = new AzureNative.AwsConnector.Inputs.RecordingFrequencyEnumValueArgs
///                     {
///                         Value = AzureNative.AwsConnector.RecordingFrequency.CONTINUOUS,
///                     },
///                     RecordingModeOverrides = new[]
///                     {
///                         new AzureNative.AwsConnector.Inputs.RecordingModeOverrideArgs
///                         {
///                             Description = "fxclcxlsumaur",
///                             RecordingFrequency = new AzureNative.AwsConnector.Inputs.RecordingFrequencyEnumValueArgs
///                             {
///                                 Value = AzureNative.AwsConnector.RecordingFrequency.CONTINUOUS,
///                             },
///                             ResourceTypes = new[]
///                             {
///                                 "AWS::ACM::Certificate",
///                             },
///                         },
///                     },
///                 },
///                 RoleARN = "alfppyafyrtgacngfxckcioci",
///             },
///             AwsRegion = "xvzbwkxfmww",
///             AwsSourceSchema = "eolodykekuepfruwphifvo",
///             AwsTags =
///             {
///                 { "key7810", "iwpldfrgnzxhqb" },
///             },
///             PublicCloudConnectorsResourceId = "ofuen",
///             PublicCloudResourceName = "sieljn",
///         },
///         ResourceGroupName = "rgconfigServiceConfigurationRecorder",
///         Tags =
///         {
///             { "key1719", "adugjzkmxmgtjz" },
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
/// 		_, err := awsconnector.NewConfigServiceConfigurationRecorder(ctx, "configServiceConfigurationRecorder", &awsconnector.ConfigServiceConfigurationRecorderArgs{
/// 			Location: pulumi.String("uhzzvapzjrmbzxfxdqyczgmcq"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.ConfigServiceConfigurationRecorderPropertiesArgs{
/// 				Arn:          pulumi.String("jdsihdzklcqjurvrxp"),
/// 				AwsAccountId: pulumi.String("pxxfgnveimxacjnvjtionuq"),
/// 				AwsProperties: &awsconnector.AwsConfigServiceConfigurationRecorderPropertiesArgs{
/// 					Name: pulumi.String("umkcdjmciwgorjwxtm"),
/// 					RecordingGroup: &awsconnector.RecordingGroupArgs{
/// 						AllSupported: pulumi.Bool(true),
/// 						ExclusionByResourceTypes: &awsconnector.ExclusionByResourceTypesArgs{
/// 							ResourceTypes: pulumi.StringArray{
/// 								pulumi.String("AWS::ACM::Certificate"),
/// 							},
/// 						},
/// 						IncludeGlobalResourceTypes: pulumi.Bool(true),
/// 						RecordingStrategy: &awsconnector.RecordingStrategyArgs{
/// 							UseOnly: &awsconnector.RecordingStrategyTypeEnumValueArgs{
/// 								Value: pulumi.String(awsconnector.RecordingStrategyType_ALL_SUPPORTED_RESOURCE_TYPES),
/// 							},
/// 						},
/// 						ResourceTypes: pulumi.StringArray{
/// 							pulumi.String("AWS::ACM::Certificate"),
/// 						},
/// 					},
/// 					RecordingMode: &awsconnector.RecordingModeArgs{
/// 						RecordingFrequency: &awsconnector.RecordingFrequencyEnumValueArgs{
/// 							Value: pulumi.String(awsconnector.RecordingFrequencyCONTINUOUS),
/// 						},
/// 						RecordingModeOverrides: awsconnector.RecordingModeOverrideArray{
/// 							&awsconnector.RecordingModeOverrideArgs{
/// 								Description: pulumi.String("fxclcxlsumaur"),
/// 								RecordingFrequency: &awsconnector.RecordingFrequencyEnumValueArgs{
/// 									Value: pulumi.String(awsconnector.RecordingFrequencyCONTINUOUS),
/// 								},
/// 								ResourceTypes: pulumi.StringArray{
/// 									pulumi.String("AWS::ACM::Certificate"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					RoleARN: pulumi.String("alfppyafyrtgacngfxckcioci"),
/// 				},
/// 				AwsRegion:       pulumi.String("xvzbwkxfmww"),
/// 				AwsSourceSchema: pulumi.String("eolodykekuepfruwphifvo"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key7810": pulumi.String("iwpldfrgnzxhqb"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("ofuen"),
/// 				PublicCloudResourceName:         pulumi.String("sieljn"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgconfigServiceConfigurationRecorder"),
/// 			Tags: pulumi.StringMap{
/// 				"key1719": pulumi.String("adugjzkmxmgtjz"),
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
/// import com.pulumi.azurenative.awsconnector.ConfigServiceConfigurationRecorder;
/// import com.pulumi.azurenative.awsconnector.ConfigServiceConfigurationRecorderArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ConfigServiceConfigurationRecorderPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsConfigServiceConfigurationRecorderPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.RecordingGroupArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ExclusionByResourceTypesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.RecordingStrategyArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.RecordingStrategyTypeEnumValueArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.RecordingModeArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.RecordingFrequencyEnumValueArgs;
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
///         var configServiceConfigurationRecorder = new ConfigServiceConfigurationRecorder("configServiceConfigurationRecorder", ConfigServiceConfigurationRecorderArgs.builder()
///             .location("uhzzvapzjrmbzxfxdqyczgmcq")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(ConfigServiceConfigurationRecorderPropertiesArgs.builder()
///                 .arn("jdsihdzklcqjurvrxp")
///                 .awsAccountId("pxxfgnveimxacjnvjtionuq")
///                 .awsProperties(AwsConfigServiceConfigurationRecorderPropertiesArgs.builder()
///                     .name("umkcdjmciwgorjwxtm")
///                     .recordingGroup(RecordingGroupArgs.builder()
///                         .allSupported(true)
///                         .exclusionByResourceTypes(ExclusionByResourceTypesArgs.builder()
///                             .resourceTypes("AWS::ACM::Certificate")
///                             .build())
///                         .includeGlobalResourceTypes(true)
///                         .recordingStrategy(RecordingStrategyArgs.builder()
///                             .useOnly(RecordingStrategyTypeEnumValueArgs.builder()
///                                 .value("ALL_SUPPORTED_RESOURCE_TYPES")
///                                 .build())
///                             .build())
///                         .resourceTypes("AWS::ACM::Certificate")
///                         .build())
///                     .recordingMode(RecordingModeArgs.builder()
///                         .recordingFrequency(RecordingFrequencyEnumValueArgs.builder()
///                             .value("CONTINUOUS")
///                             .build())
///                         .recordingModeOverrides(RecordingModeOverrideArgs.builder()
///                             .description("fxclcxlsumaur")
///                             .recordingFrequency(RecordingFrequencyEnumValueArgs.builder()
///                                 .value("CONTINUOUS")
///                                 .build())
///                             .resourceTypes("AWS::ACM::Certificate")
///                             .build())
///                         .build())
///                     .roleARN("alfppyafyrtgacngfxckcioci")
///                     .build())
///                 .awsRegion("xvzbwkxfmww")
///                 .awsSourceSchema("eolodykekuepfruwphifvo")
///                 .awsTags(Map.of("key7810", "iwpldfrgnzxhqb"))
///                 .publicCloudConnectorsResourceId("ofuen")
///                 .publicCloudResourceName("sieljn")
///                 .build())
///             .resourceGroupName("rgconfigServiceConfigurationRecorder")
///             .tags(Map.of("key1719", "adugjzkmxmgtjz"))
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
/// const configServiceConfigurationRecorder = new azure_native.awsconnector.ConfigServiceConfigurationRecorder("configServiceConfigurationRecorder", {
///     location: "uhzzvapzjrmbzxfxdqyczgmcq",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "jdsihdzklcqjurvrxp",
///         awsAccountId: "pxxfgnveimxacjnvjtionuq",
///         awsProperties: {
///             name: "umkcdjmciwgorjwxtm",
///             recordingGroup: {
///                 allSupported: true,
///                 exclusionByResourceTypes: {
///                     resourceTypes: ["AWS::ACM::Certificate"],
///                 },
///                 includeGlobalResourceTypes: true,
///                 recordingStrategy: {
///                     useOnly: {
///                         value: azure_native.awsconnector.RecordingStrategyType.ALL_SUPPORTED_RESOURCE_TYPES,
///                     },
///                 },
///                 resourceTypes: ["AWS::ACM::Certificate"],
///             },
///             recordingMode: {
///                 recordingFrequency: {
///                     value: azure_native.awsconnector.RecordingFrequency.CONTINUOUS,
///                 },
///                 recordingModeOverrides: [{
///                     description: "fxclcxlsumaur",
///                     recordingFrequency: {
///                         value: azure_native.awsconnector.RecordingFrequency.CONTINUOUS,
///                     },
///                     resourceTypes: ["AWS::ACM::Certificate"],
///                 }],
///             },
///             roleARN: "alfppyafyrtgacngfxckcioci",
///         },
///         awsRegion: "xvzbwkxfmww",
///         awsSourceSchema: "eolodykekuepfruwphifvo",
///         awsTags: {
///             key7810: "iwpldfrgnzxhqb",
///         },
///         publicCloudConnectorsResourceId: "ofuen",
///         publicCloudResourceName: "sieljn",
///     },
///     resourceGroupName: "rgconfigServiceConfigurationRecorder",
///     tags: {
///         key1719: "adugjzkmxmgtjz",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// config_service_configuration_recorder = azure_native.awsconnector.ConfigServiceConfigurationRecorder("configServiceConfigurationRecorder",
///     location="uhzzvapzjrmbzxfxdqyczgmcq",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "jdsihdzklcqjurvrxp",
///         "aws_account_id": "pxxfgnveimxacjnvjtionuq",
///         "aws_properties": {
///             "name": "umkcdjmciwgorjwxtm",
///             "recording_group": {
///                 "all_supported": True,
///                 "exclusion_by_resource_types": {
///                     "resource_types": ["AWS::ACM::Certificate"],
///                 },
///                 "include_global_resource_types": True,
///                 "recording_strategy": {
///                     "use_only": {
///                         "value": azure_native.awsconnector.RecordingStrategyType.AL_L_SUPPORTE_D_RESOURC_E_TYPES,
///                     },
///                 },
///                 "resource_types": ["AWS::ACM::Certificate"],
///             },
///             "recording_mode": {
///                 "recording_frequency": {
///                     "value": azure_native.awsconnector.RecordingFrequency.CONTINUOUS,
///                 },
///                 "recording_mode_overrides": [{
///                     "description": "fxclcxlsumaur",
///                     "recording_frequency": {
///                         "value": azure_native.awsconnector.RecordingFrequency.CONTINUOUS,
///                     },
///                     "resource_types": ["AWS::ACM::Certificate"],
///                 }],
///             },
///             "role_arn": "alfppyafyrtgacngfxckcioci",
///         },
///         "aws_region": "xvzbwkxfmww",
///         "aws_source_schema": "eolodykekuepfruwphifvo",
///         "aws_tags": {
///             "key7810": "iwpldfrgnzxhqb",
///         },
///         "public_cloud_connectors_resource_id": "ofuen",
///         "public_cloud_resource_name": "sieljn",
///     },
///     resource_group_name="rgconfigServiceConfigurationRecorder",
///     tags={
///         "key1719": "adugjzkmxmgtjz",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   configServiceConfigurationRecorder:
///     type: azure-native:awsconnector:ConfigServiceConfigurationRecorder
///     properties:
///       location: uhzzvapzjrmbzxfxdqyczgmcq
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: jdsihdzklcqjurvrxp
///         awsAccountId: pxxfgnveimxacjnvjtionuq
///         awsProperties:
///           name: umkcdjmciwgorjwxtm
///           recordingGroup:
///             allSupported: true
///             exclusionByResourceTypes:
///               resourceTypes:
///                 - AWS::ACM::Certificate
///             includeGlobalResourceTypes: true
///             recordingStrategy:
///               useOnly:
///                 value: ALL_SUPPORTED_RESOURCE_TYPES
///             resourceTypes:
///               - AWS::ACM::Certificate
///           recordingMode:
///             recordingFrequency:
///               value: CONTINUOUS
///             recordingModeOverrides:
///               - description: fxclcxlsumaur
///                 recordingFrequency:
///                   value: CONTINUOUS
///                 resourceTypes:
///                   - AWS::ACM::Certificate
///           roleARN: alfppyafyrtgacngfxckcioci
///         awsRegion: xvzbwkxfmww
///         awsSourceSchema: eolodykekuepfruwphifvo
///         awsTags:
///           key7810: iwpldfrgnzxhqb
///         publicCloudConnectorsResourceId: ofuen
///         publicCloudResourceName: sieljn
///       resourceGroupName: rgconfigServiceConfigurationRecorder
///       tags:
///         key1719: adugjzkmxmgtjz
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
/// $ pulumi import azure-native:awsconnector:ConfigServiceConfigurationRecorder ppfewmfyzkwdrh /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/configServiceConfigurationRecorders/{name}
/// ```
class ConfigServiceConfigurationRecorder extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<ConfigServiceConfigurationRecorderPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ConfigServiceConfigurationRecorder].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConfigServiceConfigurationRecorder]. {@macro pulumi_awsconnector_config_service_configuration_recorder_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConfigServiceConfigurationRecorder(
    String name, {
    ConfigServiceConfigurationRecorderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:ConfigServiceConfigurationRecorder',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<ConfigServiceConfigurationRecorderPropertiesResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
