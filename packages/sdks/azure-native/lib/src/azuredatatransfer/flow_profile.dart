import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_profile_args.dart';
import 'flow_profile_properties_response.dart';
import 'managed_service_identity_response.dart';
import 'system_data_response.dart';

/// Represents a FlowProfile Azure resource, which defines a data replication scenario with a specific data classification and a set of configurable policy rules.
///
/// Uses Azure REST API version 2025-05-30-preview.
///
/// Other available API versions: 2025-10-10-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azuredatatransfer [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates or updates the FlowPRofile resource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var flowProfile = new AzureNative.AzureDataTransfer.FlowProfile("flowProfile", new()
///     {
///         FlowProfileName = "testFlowProfile",
///         Location = "East US",
///         PipelineName = "testPipeline",
///         Properties = new AzureNative.AzureDataTransfer.Inputs.FlowProfilePropertiesArgs
///         {
///             Description = "Hello world description",
///             ReplicationScenario = AzureNative.AzureDataTransfer.DataClassType.Files,
///             Rulesets = new AzureNative.AzureDataTransfer.Inputs.FlowProfileRulesetsArgs
///             {
///                 Antivirus = new AzureNative.AzureDataTransfer.Inputs.AntivirusRulesetArgs
///                 {
///                     AvSolutions = new[]
///                     {
///                         AzureNative.AzureDataTransfer.AntivirusSolutions.Defender,
///                         AzureNative.AzureDataTransfer.AntivirusSolutions.ClamAv,
///                     },
///                 },
///                 Archives = new AzureNative.AzureDataTransfer.Inputs.ArchiveRulesetArgs
///                 {
///                     MaximumCompressionRatioLimit = 123,
///                     MaximumDepthLimit = 12,
///                     MaximumExpansionSizeLimit = 123456,
///                     MinimumSizeForExpansion = 1,
///                 },
///                 DataSize = new AzureNative.AzureDataTransfer.Inputs.DataSizeRulesetArgs
///                 {
///                     Maximum = 123456789,
///                     Minimum = 1,
///                 },
///                 MimeFilters = new AzureNative.AzureDataTransfer.Inputs.MimeFilterRulesetArgs
///                 {
///                     Filters = new[]
///                     {
///                         new AzureNative.AzureDataTransfer.Inputs.MimeTypeFilterArgs
///                         {
///                             Extensions = new[]
///                             {
///                                 ".json",
///                                 ".app",
///                                 ".js",
///                             },
///                             Media = "application/json",
///                         },
///                     },
///                     Type = AzureNative.AzureDataTransfer.FilterType.Allow,
///                 },
///                 TextMatching = new AzureNative.AzureDataTransfer.Inputs.TextMatchingRulesetArgs
///                 {
///                     Deny = new[]
///                     {
///                         new AzureNative.AzureDataTransfer.Inputs.TextMatchArgs
///                         {
///                             CaseSensitivity = AzureNative.AzureDataTransfer.Casing.Insensitive,
///                             MatchType = AzureNative.AzureDataTransfer.MatchType.Partial,
///                             Text = "hello world",
///                         },
///                         new AzureNative.AzureDataTransfer.Inputs.TextMatchArgs
///                         {
///                             CaseSensitivity = AzureNative.AzureDataTransfer.Casing.Sensitive,
///                             MatchType = AzureNative.AzureDataTransfer.MatchType.Complete,
///                             Text = "hello",
///                         },
///                     },
///                 },
///                 XmlFilters = new AzureNative.AzureDataTransfer.Inputs.XmlFilterRulesetArgs
///                 {
///                     DefaultNamespace = "testnamespace",
///                     Reference = AzureNative.AzureDataTransfer.XmlReferenceType.Inline,
///                     Schema = "<?xml version=\"1.0\" encoding=\"UTF-8\" ?> <xs:schema xmlns:xs=\"http://www.w3.org/2001/XMLSchema\"></xs:schema>",
///                 },
///             },
///             Status = AzureNative.AzureDataTransfer.FlowProfileStatus.Enabled,
///         },
///         ResourceGroupName = "testRG",
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
/// 	azuredatatransfer "github.com/pulumi/pulumi-azure-native-sdk/azuredatatransfer/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azuredatatransfer.NewFlowProfile(ctx, "flowProfile", &azuredatatransfer.FlowProfileArgs{
/// 			FlowProfileName: pulumi.String("testFlowProfile"),
/// 			Location:        pulumi.String("East US"),
/// 			PipelineName:    pulumi.String("testPipeline"),
/// 			Properties: &azuredatatransfer.FlowProfilePropertiesArgs{
/// 				Description:         pulumi.String("Hello world description"),
/// 				ReplicationScenario: pulumi.String(azuredatatransfer.DataClassTypeFiles),
/// 				Rulesets: &azuredatatransfer.FlowProfileRulesetsArgs{
/// 					Antivirus: &azuredatatransfer.AntivirusRulesetArgs{
/// 						AvSolutions: pulumi.StringArray{
/// 							pulumi.String(azuredatatransfer.AntivirusSolutionsDefender),
/// 							pulumi.String(azuredatatransfer.AntivirusSolutionsClamAv),
/// 						},
/// 					},
/// 					Archives: &azuredatatransfer.ArchiveRulesetArgs{
/// 						MaximumCompressionRatioLimit: pulumi.Float64(123),
/// 						MaximumDepthLimit:            pulumi.Float64(12),
/// 						MaximumExpansionSizeLimit:    pulumi.Float64(123456),
/// 						MinimumSizeForExpansion:      pulumi.Float64(1),
/// 					},
/// 					DataSize: &azuredatatransfer.DataSizeRulesetArgs{
/// 						Maximum: pulumi.Float64(123456789),
/// 						Minimum: pulumi.Float64(1),
/// 					},
/// 					MimeFilters: &azuredatatransfer.MimeFilterRulesetArgs{
/// 						Filters: azuredatatransfer.MimeTypeFilterArray{
/// 							&azuredatatransfer.MimeTypeFilterArgs{
/// 								Extensions: pulumi.StringArray{
/// 									pulumi.String(".json"),
/// 									pulumi.String(".app"),
/// 									pulumi.String(".js"),
/// 								},
/// 								Media: pulumi.String("application/json"),
/// 							},
/// 						},
/// 						Type: pulumi.String(azuredatatransfer.FilterTypeAllow),
/// 					},
/// 					TextMatching: &azuredatatransfer.TextMatchingRulesetArgs{
/// 						Deny: azuredatatransfer.TextMatchArray{
/// 							&azuredatatransfer.TextMatchArgs{
/// 								CaseSensitivity: pulumi.String(azuredatatransfer.CasingInsensitive),
/// 								MatchType:       pulumi.String(azuredatatransfer.MatchTypePartial),
/// 								Text:            pulumi.String("hello world"),
/// 							},
/// 							&azuredatatransfer.TextMatchArgs{
/// 								CaseSensitivity: pulumi.String(azuredatatransfer.CasingSensitive),
/// 								MatchType:       pulumi.String(azuredatatransfer.MatchTypeComplete),
/// 								Text:            pulumi.String("hello"),
/// 							},
/// 						},
/// 					},
/// 					XmlFilters: &azuredatatransfer.XmlFilterRulesetArgs{
/// 						DefaultNamespace: pulumi.String("testnamespace"),
/// 						Reference:        pulumi.String(azuredatatransfer.XmlReferenceTypeInline),
/// 						Schema:           pulumi.String("<?xml version=\"1.0\" encoding=\"UTF-8\" ?> <xs:schema xmlns:xs=\"http://www.w3.org/2001/XMLSchema\"></xs:schema>"),
/// 					},
/// 				},
/// 				Status: pulumi.String(azuredatatransfer.FlowProfileStatusEnabled),
/// 			},
/// 			ResourceGroupName: pulumi.String("testRG"),
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
/// import com.pulumi.azurenative.azuredatatransfer.FlowProfile;
/// import com.pulumi.azurenative.azuredatatransfer.FlowProfileArgs;
/// import com.pulumi.azurenative.azuredatatransfer.inputs.FlowProfilePropertiesArgs;
/// import com.pulumi.azurenative.azuredatatransfer.inputs.FlowProfileRulesetsArgs;
/// import com.pulumi.azurenative.azuredatatransfer.inputs.AntivirusRulesetArgs;
/// import com.pulumi.azurenative.azuredatatransfer.inputs.ArchiveRulesetArgs;
/// import com.pulumi.azurenative.azuredatatransfer.inputs.DataSizeRulesetArgs;
/// import com.pulumi.azurenative.azuredatatransfer.inputs.MimeFilterRulesetArgs;
/// import com.pulumi.azurenative.azuredatatransfer.inputs.TextMatchingRulesetArgs;
/// import com.pulumi.azurenative.azuredatatransfer.inputs.XmlFilterRulesetArgs;
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
///         var flowProfile = new FlowProfile("flowProfile", FlowProfileArgs.builder()
///             .flowProfileName("testFlowProfile")
///             .location("East US")
///             .pipelineName("testPipeline")
///             .properties(FlowProfilePropertiesArgs.builder()
///                 .description("Hello world description")
///                 .replicationScenario("Files")
///                 .rulesets(FlowProfileRulesetsArgs.builder()
///                     .antivirus(AntivirusRulesetArgs.builder()
///                         .avSolutions(
///                             "Defender",
///                             "ClamAv")
///                         .build())
///                     .archives(ArchiveRulesetArgs.builder()
///                         .maximumCompressionRatioLimit(123.0)
///                         .maximumDepthLimit(12.0)
///                         .maximumExpansionSizeLimit(123456.0)
///                         .minimumSizeForExpansion(1.0)
///                         .build())
///                     .dataSize(DataSizeRulesetArgs.builder()
///                         .maximum(123456789.0)
///                         .minimum(1.0)
///                         .build())
///                     .mimeFilters(MimeFilterRulesetArgs.builder()
///                         .filters(MimeTypeFilterArgs.builder()
///                             .extensions(
///                                 ".json",
///                                 ".app",
///                                 ".js")
///                             .media("application/json")
///                             .build())
///                         .type("Allow")
///                         .build())
///                     .textMatching(TextMatchingRulesetArgs.builder()
///                         .deny(
///                             TextMatchArgs.builder()
///                                 .caseSensitivity("Insensitive")
///                                 .matchType("Partial")
///                                 .text("hello world")
///                                 .build(),
///                             TextMatchArgs.builder()
///                                 .caseSensitivity("Sensitive")
///                                 .matchType("Complete")
///                                 .text("hello")
///                                 .build())
///                         .build())
///                     .xmlFilters(XmlFilterRulesetArgs.builder()
///                         .defaultNamespace("testnamespace")
///                         .reference("Inline")
///                         .schema("<?xml version=\"1.0\" encoding=\"UTF-8\" ?> <xs:schema xmlns:xs=\"http://www.w3.org/2001/XMLSchema\"></xs:schema>")
///                         .build())
///                     .build())
///                 .status("Enabled")
///                 .build())
///             .resourceGroupName("testRG")
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
/// const flowProfile = new azure_native.azuredatatransfer.FlowProfile("flowProfile", {
///     flowProfileName: "testFlowProfile",
///     location: "East US",
///     pipelineName: "testPipeline",
///     properties: {
///         description: "Hello world description",
///         replicationScenario: azure_native.azuredatatransfer.DataClassType.Files,
///         rulesets: {
///             antivirus: {
///                 avSolutions: [
///                     azure_native.azuredatatransfer.AntivirusSolutions.Defender,
///                     azure_native.azuredatatransfer.AntivirusSolutions.ClamAv,
///                 ],
///             },
///             archives: {
///                 maximumCompressionRatioLimit: 123,
///                 maximumDepthLimit: 12,
///                 maximumExpansionSizeLimit: 123456,
///                 minimumSizeForExpansion: 1,
///             },
///             dataSize: {
///                 maximum: 123456789,
///                 minimum: 1,
///             },
///             mimeFilters: {
///                 filters: [{
///                     extensions: [
///                         ".json",
///                         ".app",
///                         ".js",
///                     ],
///                     media: "application/json",
///                 }],
///                 type: azure_native.azuredatatransfer.FilterType.Allow,
///             },
///             textMatching: {
///                 deny: [
///                     {
///                         caseSensitivity: azure_native.azuredatatransfer.Casing.Insensitive,
///                         matchType: azure_native.azuredatatransfer.MatchType.Partial,
///                         text: "hello world",
///                     },
///                     {
///                         caseSensitivity: azure_native.azuredatatransfer.Casing.Sensitive,
///                         matchType: azure_native.azuredatatransfer.MatchType.Complete,
///                         text: "hello",
///                     },
///                 ],
///             },
///             xmlFilters: {
///                 defaultNamespace: "testnamespace",
///                 reference: azure_native.azuredatatransfer.XmlReferenceType.Inline,
///                 schema: "<?xml version=\"1.0\" encoding=\"UTF-8\" ?> <xs:schema xmlns:xs=\"http://www.w3.org/2001/XMLSchema\"></xs:schema>",
///             },
///         },
///         status: azure_native.azuredatatransfer.FlowProfileStatus.Enabled,
///     },
///     resourceGroupName: "testRG",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// flow_profile = azure_native.azuredatatransfer.FlowProfile("flowProfile",
///     flow_profile_name="testFlowProfile",
///     location="East US",
///     pipeline_name="testPipeline",
///     properties={
///         "description": "Hello world description",
///         "replication_scenario": azure_native.azuredatatransfer.DataClassType.FILES,
///         "rulesets": {
///             "antivirus": {
///                 "av_solutions": [
///                     azure_native.azuredatatransfer.AntivirusSolutions.DEFENDER,
///                     azure_native.azuredatatransfer.AntivirusSolutions.CLAM_AV,
///                 ],
///             },
///             "archives": {
///                 "maximum_compression_ratio_limit": 123,
///                 "maximum_depth_limit": 12,
///                 "maximum_expansion_size_limit": 123456,
///                 "minimum_size_for_expansion": 1,
///             },
///             "data_size": {
///                 "maximum": 123456789,
///                 "minimum": 1,
///             },
///             "mime_filters": {
///                 "filters": [{
///                     "extensions": [
///                         ".json",
///                         ".app",
///                         ".js",
///                     ],
///                     "media": "application/json",
///                 }],
///                 "type": azure_native.azuredatatransfer.FilterType.ALLOW,
///             },
///             "text_matching": {
///                 "deny": [
///                     {
///                         "case_sensitivity": azure_native.azuredatatransfer.Casing.INSENSITIVE,
///                         "match_type": azure_native.azuredatatransfer.MatchType.PARTIAL,
///                         "text": "hello world",
///                     },
///                     {
///                         "case_sensitivity": azure_native.azuredatatransfer.Casing.SENSITIVE,
///                         "match_type": azure_native.azuredatatransfer.MatchType.COMPLETE,
///                         "text": "hello",
///                     },
///                 ],
///             },
///             "xml_filters": {
///                 "default_namespace": "testnamespace",
///                 "reference": azure_native.azuredatatransfer.XmlReferenceType.INLINE,
///                 "schema": "<?xml version=\"1.0\" encoding=\"UTF-8\" ?> <xs:schema xmlns:xs=\"http://www.w3.org/2001/XMLSchema\"></xs:schema>",
///             },
///         },
///         "status": azure_native.azuredatatransfer.FlowProfileStatus.ENABLED,
///     },
///     resource_group_name="testRG")
///
/// ```
///
/// ```yaml
/// resources:
///   flowProfile:
///     type: azure-native:azuredatatransfer:FlowProfile
///     properties:
///       flowProfileName: testFlowProfile
///       location: East US
///       pipelineName: testPipeline
///       properties:
///         description: Hello world description
///         replicationScenario: Files
///         rulesets:
///           antivirus:
///             avSolutions:
///               - Defender
///               - ClamAv
///           archives:
///             maximumCompressionRatioLimit: 123
///             maximumDepthLimit: 12
///             maximumExpansionSizeLimit: 123456
///             minimumSizeForExpansion: 1
///           dataSize:
///             maximum: 1.23456789e+08
///             minimum: 1
///           mimeFilters:
///             filters:
///               - extensions:
///                   - .json
///                   - .app
///                   - .js
///                 media: application/json
///             type: Allow
///           textMatching:
///             deny:
///               - caseSensitivity: Insensitive
///                 matchType: Partial
///                 text: hello world
///               - caseSensitivity: Sensitive
///                 matchType: Complete
///                 text: hello
///           xmlFilters:
///             defaultNamespace: testnamespace
///             reference: Inline
///             schema: <?xml version="1.0" encoding="UTF-8" ?> <xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema"></xs:schema>
///         status: Enabled
///       resourceGroupName: testRG
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
/// $ pulumi import azure-native:azuredatatransfer:FlowProfile myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureDataTransfer/pipelines/{pipelineName}/flowProfiles/{flowProfileName}
/// ```
class FlowProfile extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The managed service identities assigned to this resource.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The set of configuration properties that define the behavior and rules of the FlowProfile.
  late final pulumi.Output<FlowProfilePropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [FlowProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FlowProfile]. {@macro pulumi_azuredatatransfer_flow_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FlowProfile(
    String name, {
    FlowProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azuredatatransfer:FlowProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.identity = registerOutput<ManagedServiceIdentityResponse?>('identity');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<FlowProfilePropertiesResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
