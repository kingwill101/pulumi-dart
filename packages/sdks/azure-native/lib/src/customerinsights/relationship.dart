import 'package:pulumi/pulumi.dart' as pulumi;
import 'relationship_args.dart';

/// The relationship resource format.
///
/// Uses Azure REST API version 2017-04-26. In version 2.x of the Azure Native provider, it used API version 2017-04-26.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Relationships_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var relationship = new AzureNative.CustomerInsights.Relationship("relationship", new()
///     {
///         Cardinality = AzureNative.CustomerInsights.CardinalityTypes.OneToOne,
///         Description =
///         {
///             { "en-us", "Relationship Description" },
///         },
///         DisplayName =
///         {
///             { "en-us", "Relationship DisplayName" },
///         },
///         Fields = new[] {},
///         HubName = "sdkTestHub",
///         ProfileType = "testProfile2326994",
///         RelatedProfileType = "testProfile2326994",
///         RelationshipName = "SomeRelationship",
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
/// 		_, err := customerinsights.NewRelationship(ctx, "relationship", &customerinsights.RelationshipArgs{
/// 			Cardinality: customerinsights.CardinalityTypesOneToOne,
/// 			Description: pulumi.StringMap{
/// 				"en-us": pulumi.String("Relationship Description"),
/// 			},
/// 			DisplayName: pulumi.StringMap{
/// 				"en-us": pulumi.String("Relationship DisplayName"),
/// 			},
/// 			Fields:             customerinsights.PropertyDefinitionArray{},
/// 			HubName:            pulumi.String("sdkTestHub"),
/// 			ProfileType:        pulumi.String("testProfile2326994"),
/// 			RelatedProfileType: pulumi.String("testProfile2326994"),
/// 			RelationshipName:   pulumi.String("SomeRelationship"),
/// 			ResourceGroupName:  pulumi.String("TestHubRG"),
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
/// import com.pulumi.azurenative.customerinsights.Relationship;
/// import com.pulumi.azurenative.customerinsights.RelationshipArgs;
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
///         var relationship = new Relationship("relationship", RelationshipArgs.builder()
///             .cardinality("OneToOne")
///             .description(Map.of("en-us", "Relationship Description"))
///             .displayName(Map.of("en-us", "Relationship DisplayName"))
///             .fields()
///             .hubName("sdkTestHub")
///             .profileType("testProfile2326994")
///             .relatedProfileType("testProfile2326994")
///             .relationshipName("SomeRelationship")
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
/// const relationship = new azure_native.customerinsights.Relationship("relationship", {
///     cardinality: azure_native.customerinsights.CardinalityTypes.OneToOne,
///     description: {
///         "en-us": "Relationship Description",
///     },
///     displayName: {
///         "en-us": "Relationship DisplayName",
///     },
///     fields: [],
///     hubName: "sdkTestHub",
///     profileType: "testProfile2326994",
///     relatedProfileType: "testProfile2326994",
///     relationshipName: "SomeRelationship",
///     resourceGroupName: "TestHubRG",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// relationship = azure_native.customerinsights.Relationship("relationship",
///     cardinality=azure_native.customerinsights.CardinalityTypes.ONE_TO_ONE,
///     description={
///         "en-us": "Relationship Description",
///     },
///     display_name={
///         "en-us": "Relationship DisplayName",
///     },
///     fields=[],
///     hub_name="sdkTestHub",
///     profile_type="testProfile2326994",
///     related_profile_type="testProfile2326994",
///     relationship_name="SomeRelationship",
///     resource_group_name="TestHubRG")
///
/// ```
///
/// ```yaml
/// resources:
///   relationship:
///     type: azure-native:customerinsights:Relationship
///     properties:
///       cardinality: OneToOne
///       description:
///         en-us: Relationship Description
///       displayName:
///         en-us: Relationship DisplayName
///       fields: []
///       hubName: sdkTestHub
///       profileType: testProfile2326994
///       relatedProfileType: testProfile2326994
///       relationshipName: SomeRelationship
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
/// $ pulumi import azure-native:customerinsights:Relationship sdkTestHub/testProfile2326994 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CustomerInsights/hubs/{hubName}/relationships/{relationshipName}
/// ```
class Relationship extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The Relationship Cardinality.
  late final pulumi.Output<String?> cardinality;

  /// Localized descriptions for the Relationship.
  late final pulumi.Output<Map<String, String>?> description;

  /// Localized display name for the Relationship.
  late final pulumi.Output<Map<String, String>?> displayName;

  /// The expiry date time in UTC.
  late final pulumi.Output<String?> expiryDateTimeUtc;

  /// The properties of the Relationship.
  late final pulumi.Output<List<Map<String, dynamic>>?> fields;

  /// Optional property to be used to map fields in profile to their strong ids in related profile.
  late final pulumi.Output<List<Map<String, dynamic>>?> lookupMappings;

  /// Resource name.
  late final pulumi.Output<String> name;

  /// Profile type.
  late final pulumi.Output<String> profileType;

  /// Provisioning state.
  late final pulumi.Output<String> provisioningState;

  /// Related profile being referenced.
  late final pulumi.Output<String> relatedProfileType;

  /// The relationship guid id.
  late final pulumi.Output<String> relationshipGuidId;

  /// The Relationship name.
  late final pulumi.Output<String> relationshipName;

  /// The hub name.
  late final pulumi.Output<String> tenantId;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [Relationship].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Relationship]. {@macro pulumi_customerinsights_relationship_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Relationship(
    String name, {
    RelationshipArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:customerinsights:Relationship',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    cardinality = registerOutput<String?>('cardinality');
    description = registerOutput<Map<String, String>?>('description');
    displayName = registerOutput<Map<String, String>?>('displayName');
    expiryDateTimeUtc = registerOutput<String?>('expiryDateTimeUtc');
    fields = registerOutput<List<Map<String, dynamic>>?>('fields');
    lookupMappings = registerOutput<List<Map<String, dynamic>>?>(
      'lookupMappings',
    );
    this.name = registerOutput<String>('name');
    profileType = registerOutput<String>('profileType');
    provisioningState = registerOutput<String>('provisioningState');
    relatedProfileType = registerOutput<String>('relatedProfileType');
    relationshipGuidId = registerOutput<String>('relationshipGuidId');
    relationshipName = registerOutput<String>('relationshipName');
    tenantId = registerOutput<String>('tenantId');
    type = registerOutput<String>('type');
  }
}
