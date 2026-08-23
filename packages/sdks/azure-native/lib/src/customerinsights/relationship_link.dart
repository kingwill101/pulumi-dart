import 'package:pulumi/pulumi.dart' as pulumi;
import 'relationship_link_args.dart';

/// The relationship link resource format.
///
/// Uses Azure REST API version 2017-04-26. In version 2.x of the Azure Native provider, it used API version 2017-04-26.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### RelationshipLinks_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var relationshipLink = new AzureNative.CustomerInsights.RelationshipLink("relationshipLink", new()
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
///         InteractionType = "testInteraction4332",
///         ProfilePropertyReferences = new[]
///         {
///             new AzureNative.CustomerInsights.Inputs.ParticipantProfilePropertyReferenceArgs
///             {
///                 InteractionPropertyName = "profile1",
///                 ProfilePropertyName = "ProfileId",
///             },
///         },
///         RelatedProfilePropertyReferences = new[]
///         {
///             new AzureNative.CustomerInsights.Inputs.ParticipantProfilePropertyReferenceArgs
///             {
///                 InteractionPropertyName = "profile1",
///                 ProfilePropertyName = "ProfileId",
///             },
///         },
///         RelationshipLinkName = "Somelink",
///         RelationshipName = "testProfile2326994",
///         ResourceGroupName = "TestHubRG",
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
/// 		_, err := customerinsights.NewRelationshipLink(ctx, "relationshipLink", &customerinsights.RelationshipLinkArgs{
/// 			Description: pulumi.StringMap{
/// 				"en-us": pulumi.String("Link Description"),
/// 			},
/// 			DisplayName: pulumi.StringMap{
/// 				"en-us": pulumi.String("Link DisplayName"),
/// 			},
/// 			HubName:         pulumi.String("sdkTestHub"),
/// 			InteractionType: pulumi.String("testInteraction4332"),
/// 			ProfilePropertyReferences: customerinsights.ParticipantProfilePropertyReferenceArray{
/// 				&customerinsights.ParticipantProfilePropertyReferenceArgs{
/// 					InteractionPropertyName: pulumi.String("profile1"),
/// 					ProfilePropertyName:     pulumi.String("ProfileId"),
/// 				},
/// 			},
/// 			RelatedProfilePropertyReferences: customerinsights.ParticipantProfilePropertyReferenceArray{
/// 				&customerinsights.ParticipantProfilePropertyReferenceArgs{
/// 					InteractionPropertyName: pulumi.String("profile1"),
/// 					ProfilePropertyName:     pulumi.String("ProfileId"),
/// 				},
/// 			},
/// 			RelationshipLinkName: pulumi.String("Somelink"),
/// 			RelationshipName:     pulumi.String("testProfile2326994"),
/// 			ResourceGroupName:    pulumi.String("TestHubRG"),
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
/// resource "azure-native_customerinsights_relationshiplink" "relationshipLink" {
///   description = {
///     "en-us" = "Link Description"
///   }
///   display_name = {
///     "en-us" = "Link DisplayName"
///   }
///   hub_name         = "sdkTestHub"
///   interaction_type = "testInteraction4332"
///   profile_property_references {
///     interaction_property_name = "profile1"
///     profile_property_name     = "ProfileId"
///   }
///   related_profile_property_references {
///     interaction_property_name = "profile1"
///     profile_property_name     = "ProfileId"
///   }
///   relationship_link_name = "Somelink"
///   relationship_name      = "testProfile2326994"
///   resource_group_name    = "TestHubRG"
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
/// import com.pulumi.azurenative.customerinsights.RelationshipLink;
/// import com.pulumi.azurenative.customerinsights.RelationshipLinkArgs;
/// import com.pulumi.azurenative.customerinsights.inputs.ParticipantProfilePropertyReferenceArgs;
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
///         var relationshipLink = new RelationshipLink("relationshipLink", RelationshipLinkArgs.builder()
///             .description(Map.of("en-us", "Link Description"))
///             .displayName(Map.of("en-us", "Link DisplayName"))
///             .hubName("sdkTestHub")
///             .interactionType("testInteraction4332")
///             .profilePropertyReferences(ParticipantProfilePropertyReferenceArgs.builder()
///                 .interactionPropertyName("profile1")
///                 .profilePropertyName("ProfileId")
///                 .build())
///             .relatedProfilePropertyReferences(ParticipantProfilePropertyReferenceArgs.builder()
///                 .interactionPropertyName("profile1")
///                 .profilePropertyName("ProfileId")
///                 .build())
///             .relationshipLinkName("Somelink")
///             .relationshipName("testProfile2326994")
///             .resourceGroupName("TestHubRG")
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
/// const relationshipLink = new azure_native.customerinsights.RelationshipLink("relationshipLink", {
///     description: {
///         "en-us": "Link Description",
///     },
///     displayName: {
///         "en-us": "Link DisplayName",
///     },
///     hubName: "sdkTestHub",
///     interactionType: "testInteraction4332",
///     profilePropertyReferences: [{
///         interactionPropertyName: "profile1",
///         profilePropertyName: "ProfileId",
///     }],
///     relatedProfilePropertyReferences: [{
///         interactionPropertyName: "profile1",
///         profilePropertyName: "ProfileId",
///     }],
///     relationshipLinkName: "Somelink",
///     relationshipName: "testProfile2326994",
///     resourceGroupName: "TestHubRG",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// relationship_link = azure_native.customerinsights.RelationshipLink("relationshipLink",
///     description={
///         "en-us": "Link Description",
///     },
///     display_name={
///         "en-us": "Link DisplayName",
///     },
///     hub_name="sdkTestHub",
///     interaction_type="testInteraction4332",
///     profile_property_references=[{
///         "interaction_property_name": "profile1",
///         "profile_property_name": "ProfileId",
///     }],
///     related_profile_property_references=[{
///         "interaction_property_name": "profile1",
///         "profile_property_name": "ProfileId",
///     }],
///     relationship_link_name="Somelink",
///     relationship_name="testProfile2326994",
///     resource_group_name="TestHubRG")
///
/// ```
///
/// ```yaml
/// resources:
///   relationshipLink:
///     type: azure-native:customerinsights:RelationshipLink
///     properties:
///       description:
///         en-us: Link Description
///       displayName:
///         en-us: Link DisplayName
///       hubName: sdkTestHub
///       interactionType: testInteraction4332
///       profilePropertyReferences:
///         - interactionPropertyName: profile1
///           profilePropertyName: ProfileId
///       relatedProfilePropertyReferences:
///         - interactionPropertyName: profile1
///           profilePropertyName: ProfileId
///       relationshipLinkName: Somelink
///       relationshipName: testProfile2326994
///       resourceGroupName: TestHubRG
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
/// $ pulumi import azure-native:customerinsights:RelationshipLink sdkTestHub/Somelink /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CustomerInsights/hubs/{hubName}/relationshipLinks/{relationshipLinkName}
/// ```
class RelationshipLink extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Localized descriptions for the Relationship Link.
  late final pulumi.Output<Map<String, String>?> description;
  /// Localized display name for the Relationship Link.
  late final pulumi.Output<Map<String, String>?> displayName;
  /// The InteractionType associated with the Relationship Link.
  late final pulumi.Output<String> interactionType;
  /// The name of the Relationship Link.
  late final pulumi.Output<String> linkName;
  /// The mappings between Interaction and Relationship fields.
  late final pulumi.Output<List<Map<String, dynamic>>?> mappings;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The property references for the Profile of the Relationship.
  late final pulumi.Output<List<Map<String, dynamic>>> profilePropertyReferences;
  /// Provisioning state.
  late final pulumi.Output<String> provisioningState;
  /// The property references for the Related Profile of the Relationship.
  late final pulumi.Output<List<Map<String, dynamic>>> relatedProfilePropertyReferences;
  /// The relationship guid id.
  late final pulumi.Output<String> relationshipGuidId;
  /// The Relationship associated with the Link.
  late final pulumi.Output<String> relationshipName;
  /// The hub name.
  late final pulumi.Output<String> tenantId;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [RelationshipLink].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RelationshipLink]. {@macro pulumi_customerinsights_relationship_link_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RelationshipLink(
    String name, {
    RelationshipLinkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:customerinsights:RelationshipLink',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<Map<String, String>?>('description');
    displayName = registerOutput<Map<String, String>?>('displayName');
    interactionType = registerOutput<String>('interactionType');
    linkName = registerOutput<String>('linkName');
    mappings = registerOutput<List<Map<String, dynamic>>?>('mappings');
    this.name = registerOutput<String>('name');
    profilePropertyReferences = registerOutput<List<Map<String, dynamic>>>('profilePropertyReferences');
    provisioningState = registerOutput<String>('provisioningState');
    relatedProfilePropertyReferences = registerOutput<List<Map<String, dynamic>>>('relatedProfilePropertyReferences');
    relationshipGuidId = registerOutput<String>('relationshipGuidId');
    relationshipName = registerOutput<String>('relationshipName');
    tenantId = registerOutput<String>('tenantId');
    type = registerOutput<String>('type');
  }
}
