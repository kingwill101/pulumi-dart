import 'package:pulumi/pulumi.dart' as pulumi;
import 'link_args.dart';
import 'participant_property_reference_response.dart';
import 'type_properties_mapping_response.dart';

/// The link resource format.
///
/// Uses Azure REST API version 2017-04-26. In version 2.x of the Azure Native provider, it used API version 2017-04-26.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Links_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var link = new AzureNative.CustomerInsights.Link("link", new()
///     {
///         Description =
///         {
///             { "en-us", "Link Description" },
///         },
///         DisplayName =
///         {
///             { "en-us", "Link DisplayName" },
///         },
///         HubName = "sdkTestHub",
///         LinkName = "linkTest4806",
///         Mappings = new[]
///         {
///             new AzureNative.CustomerInsights.Inputs.TypePropertiesMappingArgs
///             {
///                 LinkType = AzureNative.CustomerInsights.LinkTypes.UpdateAlways,
///                 SourcePropertyName = "testInteraction1949",
///                 TargetPropertyName = "testProfile1446",
///             },
///         },
///         ParticipantPropertyReferences = new[]
///         {
///             new AzureNative.CustomerInsights.Inputs.ParticipantPropertyReferenceArgs
///             {
///                 SourcePropertyName = "testInteraction1949",
///                 TargetPropertyName = "ProfileId",
///             },
///         },
///         ResourceGroupName = "TestHubRG",
///         SourceEntityType = AzureNative.CustomerInsights.EntityType.Interaction,
///         SourceEntityTypeName = "testInteraction1949",
///         TargetEntityType = AzureNative.CustomerInsights.EntityType.Profile,
///         TargetEntityTypeName = "testProfile1446",
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
/// 	customerinsights "github.com/pulumi/pulumi-azure-native-sdk/customerinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := customerinsights.NewLink(ctx, "link", &customerinsights.LinkArgs{
/// 			Description: pulumi.StringMap{
/// 				"en-us": pulumi.String("Link Description"),
/// 			},
/// 			DisplayName: pulumi.StringMap{
/// 				"en-us": pulumi.String("Link DisplayName"),
/// 			},
/// 			HubName:  pulumi.String("sdkTestHub"),
/// 			LinkName: pulumi.String("linkTest4806"),
/// 			Mappings: customerinsights.TypePropertiesMappingArray{
/// 				&customerinsights.TypePropertiesMappingArgs{
/// 					LinkType:           customerinsights.LinkTypesUpdateAlways,
/// 					SourcePropertyName: pulumi.String("testInteraction1949"),
/// 					TargetPropertyName: pulumi.String("testProfile1446"),
/// 				},
/// 			},
/// 			ParticipantPropertyReferences: customerinsights.ParticipantPropertyReferenceArray{
/// 				&customerinsights.ParticipantPropertyReferenceArgs{
/// 					SourcePropertyName: pulumi.String("testInteraction1949"),
/// 					TargetPropertyName: pulumi.String("ProfileId"),
/// 				},
/// 			},
/// 			ResourceGroupName:    pulumi.String("TestHubRG"),
/// 			SourceEntityType:     customerinsights.EntityTypeInteraction,
/// 			SourceEntityTypeName: pulumi.String("testInteraction1949"),
/// 			TargetEntityType:     customerinsights.EntityTypeProfile,
/// 			TargetEntityTypeName: pulumi.String("testProfile1446"),
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
/// resource "azure-native_customerinsights_link" "link" {
///   description = {
///     "en-us" = "Link Description"
///   }
///   display_name = {
///     "en-us" = "Link DisplayName"
///   }
///   hub_name  = "sdkTestHub"
///   link_name = "linkTest4806"
///   mappings {
///     link_type            = "UpdateAlways"
///     source_property_name = "testInteraction1949"
///     target_property_name = "testProfile1446"
///   }
///   participant_property_references {
///     source_property_name = "testInteraction1949"
///     target_property_name = "ProfileId"
///   }
///   resource_group_name     = "TestHubRG"
///   source_entity_type      = "Interaction"
///   source_entity_type_name = "testInteraction1949"
///   target_entity_type      = "Profile"
///   target_entity_type_name = "testProfile1446"
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
/// import com.pulumi.azurenative.customerinsights.Link;
/// import com.pulumi.azurenative.customerinsights.LinkArgs;
/// import com.pulumi.azurenative.customerinsights.inputs.TypePropertiesMappingArgs;
/// import com.pulumi.azurenative.customerinsights.inputs.ParticipantPropertyReferenceArgs;
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
///         var link = new Link("link", LinkArgs.builder()
///             .description(Map.of("en-us", "Link Description"))
///             .displayName(Map.of("en-us", "Link DisplayName"))
///             .hubName("sdkTestHub")
///             .linkName("linkTest4806")
///             .mappings(TypePropertiesMappingArgs.builder()
///                 .linkType("UpdateAlways")
///                 .sourcePropertyName("testInteraction1949")
///                 .targetPropertyName("testProfile1446")
///                 .build())
///             .participantPropertyReferences(ParticipantPropertyReferenceArgs.builder()
///                 .sourcePropertyName("testInteraction1949")
///                 .targetPropertyName("ProfileId")
///                 .build())
///             .resourceGroupName("TestHubRG")
///             .sourceEntityType("Interaction")
///             .sourceEntityTypeName("testInteraction1949")
///             .targetEntityType("Profile")
///             .targetEntityTypeName("testProfile1446")
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
/// const link = new azure_native.customerinsights.Link("link", {
///     description: {
///         "en-us": "Link Description",
///     },
///     displayName: {
///         "en-us": "Link DisplayName",
///     },
///     hubName: "sdkTestHub",
///     linkName: "linkTest4806",
///     mappings: [{
///         linkType: azure_native.customerinsights.LinkTypes.UpdateAlways,
///         sourcePropertyName: "testInteraction1949",
///         targetPropertyName: "testProfile1446",
///     }],
///     participantPropertyReferences: [{
///         sourcePropertyName: "testInteraction1949",
///         targetPropertyName: "ProfileId",
///     }],
///     resourceGroupName: "TestHubRG",
///     sourceEntityType: azure_native.customerinsights.EntityType.Interaction,
///     sourceEntityTypeName: "testInteraction1949",
///     targetEntityType: azure_native.customerinsights.EntityType.Profile,
///     targetEntityTypeName: "testProfile1446",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// link = azure_native.customerinsights.Link("link",
///     description={
///         "en-us": "Link Description",
///     },
///     display_name={
///         "en-us": "Link DisplayName",
///     },
///     hub_name="sdkTestHub",
///     link_name="linkTest4806",
///     mappings=[{
///         "link_type": azure_native.customerinsights.LinkTypes.UPDATE_ALWAYS,
///         "source_property_name": "testInteraction1949",
///         "target_property_name": "testProfile1446",
///     }],
///     participant_property_references=[{
///         "source_property_name": "testInteraction1949",
///         "target_property_name": "ProfileId",
///     }],
///     resource_group_name="TestHubRG",
///     source_entity_type=azure_native.customerinsights.EntityType.INTERACTION,
///     source_entity_type_name="testInteraction1949",
///     target_entity_type=azure_native.customerinsights.EntityType.PROFILE,
///     target_entity_type_name="testProfile1446")
///
/// ```
///
/// ```yaml
/// resources:
///   link:
///     type: azure-native:customerinsights:Link
///     properties:
///       description:
///         en-us: Link Description
///       displayName:
///         en-us: Link DisplayName
///       hubName: sdkTestHub
///       linkName: linkTest4806
///       mappings:
///         - linkType: UpdateAlways
///           sourcePropertyName: testInteraction1949
///           targetPropertyName: testProfile1446
///       participantPropertyReferences:
///         - sourcePropertyName: testInteraction1949
///           targetPropertyName: ProfileId
///       resourceGroupName: TestHubRG
///       sourceEntityType: Interaction
///       sourceEntityTypeName: testInteraction1949
///       targetEntityType: Profile
///       targetEntityTypeName: testProfile1446
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
/// $ pulumi import azure-native:customerinsights:Link azSdkTestHub/linkTest4806 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CustomerInsights/hubs/{hubName}/links/{linkName}
/// ```
class Link extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Localized descriptions for the Link.
  late final pulumi.Output<Map<String, String>?> description;
  /// Localized display name for the Link.
  late final pulumi.Output<Map<String, String>?> displayName;
  /// The link name.
  late final pulumi.Output<String> linkName;
  /// The set of properties mappings between the source and target Types.
  late final pulumi.Output<List<TypePropertiesMappingResponse>?> mappings;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Determines whether this link is supposed to create or delete instances if Link is NOT Reference Only.
  late final pulumi.Output<String?> operationType;
  /// The properties that represent the participating profile.
  late final pulumi.Output<List<ParticipantPropertyReferenceResponse>> participantPropertyReferences;
  /// Provisioning state.
  late final pulumi.Output<String> provisioningState;
  /// Indicating whether the link is reference only link. This flag is ignored if the Mappings are defined. If the mappings are not defined and it is set to true, links processing will not create or update profiles.
  late final pulumi.Output<bool?> referenceOnly;
  /// Type of source entity.
  late final pulumi.Output<String> sourceEntityType;
  /// Name of the source Entity Type.
  late final pulumi.Output<String> sourceEntityTypeName;
  /// Type of target entity.
  late final pulumi.Output<String> targetEntityType;
  /// Name of the target Entity Type.
  late final pulumi.Output<String> targetEntityTypeName;
  /// The hub name.
  late final pulumi.Output<String> tenantId;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [Link].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Link]. {@macro pulumi_customerinsights_link_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Link(
    String name, {
    LinkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:customerinsights:Link',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<Map<String, String>?>('description', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    displayName = registerOutput<Map<String, String>?>('displayName', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    linkName = registerOutput<String>('linkName');
    mappings = registerOutput<List<TypePropertiesMappingResponse>?>('mappings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TypePropertiesMappingResponse>(guardedValue, (value) => TypePropertiesMappingResponse.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    operationType = registerOutput<String?>('operationType');
    participantPropertyReferences = registerOutput<List<ParticipantPropertyReferenceResponse>>('participantPropertyReferences', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ParticipantPropertyReferenceResponse>(guardedValue, (value) => ParticipantPropertyReferenceResponse.fromMap((value as Map).cast<String, dynamic>())); });
    provisioningState = registerOutput<String>('provisioningState');
    referenceOnly = registerOutput<bool?>('referenceOnly');
    sourceEntityType = registerOutput<String>('sourceEntityType');
    sourceEntityTypeName = registerOutput<String>('sourceEntityTypeName');
    targetEntityType = registerOutput<String>('targetEntityType');
    targetEntityTypeName = registerOutput<String>('targetEntityTypeName');
    tenantId = registerOutput<String>('tenantId');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Link] resource.
  Link.reference(String urn)
    : super(
        'azure-native:customerinsights:Link',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<Map<String, String>?>('description', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    displayName = registerOutput<Map<String, String>?>('displayName', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    linkName = registerOutput<String>('linkName');
    mappings = registerOutput<List<TypePropertiesMappingResponse>?>('mappings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TypePropertiesMappingResponse>(guardedValue, (value) => TypePropertiesMappingResponse.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    operationType = registerOutput<String?>('operationType');
    participantPropertyReferences = registerOutput<List<ParticipantPropertyReferenceResponse>>('participantPropertyReferences', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ParticipantPropertyReferenceResponse>(guardedValue, (value) => ParticipantPropertyReferenceResponse.fromMap((value as Map).cast<String, dynamic>())); });
    provisioningState = registerOutput<String>('provisioningState');
    referenceOnly = registerOutput<bool?>('referenceOnly');
    sourceEntityType = registerOutput<String>('sourceEntityType');
    sourceEntityTypeName = registerOutput<String>('sourceEntityTypeName');
    targetEntityType = registerOutput<String>('targetEntityType');
    targetEntityTypeName = registerOutput<String>('targetEntityTypeName');
    tenantId = registerOutput<String>('tenantId');
    type = registerOutput<String>('type');
  }
}
