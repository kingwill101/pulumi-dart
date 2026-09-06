import 'package:pulumi/pulumi.dart' as pulumi;
import 'profile_args.dart';
import 'property_definition_response.dart';
import 'strong_id_response.dart';

/// The profile resource format.
///
/// Uses Azure REST API version 2017-04-26. In version 2.x of the Azure Native provider, it used API version 2017-04-26.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Profiles_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var profile = new AzureNative.CustomerInsights.Profile("profile", new()
///     {
///         ApiEntitySetName = "TestProfileType396",
///         Fields = new[]
///         {
///             new AzureNative.CustomerInsights.Inputs.PropertyDefinitionArgs
///             {
///                 FieldName = "Id",
///                 FieldType = "Edm.String",
///                 IsArray = false,
///                 IsRequired = true,
///             },
///             new AzureNative.CustomerInsights.Inputs.PropertyDefinitionArgs
///             {
///                 FieldName = "ProfileId",
///                 FieldType = "Edm.String",
///                 IsArray = false,
///                 IsRequired = true,
///             },
///             new AzureNative.CustomerInsights.Inputs.PropertyDefinitionArgs
///             {
///                 FieldName = "LastName",
///                 FieldType = "Edm.String",
///                 IsArray = false,
///                 IsRequired = true,
///             },
///             new AzureNative.CustomerInsights.Inputs.PropertyDefinitionArgs
///             {
///                 FieldName = "TestProfileType396",
///                 FieldType = "Edm.String",
///                 IsArray = false,
///                 IsRequired = true,
///             },
///             new AzureNative.CustomerInsights.Inputs.PropertyDefinitionArgs
///             {
///                 FieldName = "SavingAccountBalance",
///                 FieldType = "Edm.Int32",
///                 IsArray = false,
///                 IsRequired = true,
///             },
///         },
///         HubName = "sdkTestHub",
///         LargeImage = "\\\\Images\\\\LargeImage",
///         MediumImage = "\\\\Images\\\\MediumImage",
///         ProfileName = "TestProfileType396",
///         ResourceGroupName = "TestHubRG",
///         SchemaItemTypeLink = "SchemaItemTypeLink",
///         SmallImage = "\\\\Images\\\\smallImage",
///         StrongIds = new[]
///         {
///             new AzureNative.CustomerInsights.Inputs.StrongIdArgs
///             {
///                 KeyPropertyNames = new[]
///                 {
///                     "Id",
///                     "SavingAccountBalance",
///                 },
///                 StrongIdName = "Id",
///             },
///             new AzureNative.CustomerInsights.Inputs.StrongIdArgs
///             {
///                 KeyPropertyNames = new[]
///                 {
///                     "ProfileId",
///                     "LastName",
///                 },
///                 StrongIdName = "ProfileId",
///             },
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
/// 	customerinsights "github.com/pulumi/pulumi-azure-native-sdk/customerinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := customerinsights.NewProfile(ctx, "profile", &customerinsights.ProfileArgs{
/// 			ApiEntitySetName: pulumi.String("TestProfileType396"),
/// 			Fields: customerinsights.PropertyDefinitionArray{
/// 				&customerinsights.PropertyDefinitionArgs{
/// 					FieldName:  pulumi.String("Id"),
/// 					FieldType:  pulumi.String("Edm.String"),
/// 					IsArray:    pulumi.Bool(false),
/// 					IsRequired: pulumi.Bool(true),
/// 				},
/// 				&customerinsights.PropertyDefinitionArgs{
/// 					FieldName:  pulumi.String("ProfileId"),
/// 					FieldType:  pulumi.String("Edm.String"),
/// 					IsArray:    pulumi.Bool(false),
/// 					IsRequired: pulumi.Bool(true),
/// 				},
/// 				&customerinsights.PropertyDefinitionArgs{
/// 					FieldName:  pulumi.String("LastName"),
/// 					FieldType:  pulumi.String("Edm.String"),
/// 					IsArray:    pulumi.Bool(false),
/// 					IsRequired: pulumi.Bool(true),
/// 				},
/// 				&customerinsights.PropertyDefinitionArgs{
/// 					FieldName:  pulumi.String("TestProfileType396"),
/// 					FieldType:  pulumi.String("Edm.String"),
/// 					IsArray:    pulumi.Bool(false),
/// 					IsRequired: pulumi.Bool(true),
/// 				},
/// 				&customerinsights.PropertyDefinitionArgs{
/// 					FieldName:  pulumi.String("SavingAccountBalance"),
/// 					FieldType:  pulumi.String("Edm.Int32"),
/// 					IsArray:    pulumi.Bool(false),
/// 					IsRequired: pulumi.Bool(true),
/// 				},
/// 			},
/// 			HubName:            pulumi.String("sdkTestHub"),
/// 			LargeImage:         pulumi.String("\\\\Images\\\\LargeImage"),
/// 			MediumImage:        pulumi.String("\\\\Images\\\\MediumImage"),
/// 			ProfileName:        pulumi.String("TestProfileType396"),
/// 			ResourceGroupName:  pulumi.String("TestHubRG"),
/// 			SchemaItemTypeLink: pulumi.String("SchemaItemTypeLink"),
/// 			SmallImage:         pulumi.String("\\\\Images\\\\smallImage"),
/// 			StrongIds: customerinsights.StrongIdArray{
/// 				&customerinsights.StrongIdArgs{
/// 					KeyPropertyNames: pulumi.StringArray{
/// 						pulumi.String("Id"),
/// 						pulumi.String("SavingAccountBalance"),
/// 					},
/// 					StrongIdName: pulumi.String("Id"),
/// 				},
/// 				&customerinsights.StrongIdArgs{
/// 					KeyPropertyNames: pulumi.StringArray{
/// 						pulumi.String("ProfileId"),
/// 						pulumi.String("LastName"),
/// 					},
/// 					StrongIdName: pulumi.String("ProfileId"),
/// 				},
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
/// resource "azure-native_customerinsights_profile" "profile" {
///   api_entity_set_name = "TestProfileType396"
///   fields {
///     field_name  = "Id"
///     field_type  = "Edm.String"
///     is_array    = false
///     is_required = true
///   }
///   fields {
///     field_name  = "ProfileId"
///     field_type  = "Edm.String"
///     is_array    = false
///     is_required = true
///   }
///   fields {
///     field_name  = "LastName"
///     field_type  = "Edm.String"
///     is_array    = false
///     is_required = true
///   }
///   fields {
///     field_name  = "TestProfileType396"
///     field_type  = "Edm.String"
///     is_array    = false
///     is_required = true
///   }
///   fields {
///     field_name  = "SavingAccountBalance"
///     field_type  = "Edm.Int32"
///     is_array    = false
///     is_required = true
///   }
///   hub_name              = "sdkTestHub"
///   large_image           = "\\\\Images\\\\LargeImage"
///   medium_image          = "\\\\Images\\\\MediumImage"
///   profile_name          = "TestProfileType396"
///   resource_group_name   = "TestHubRG"
///   schema_item_type_link = "SchemaItemTypeLink"
///   small_image           = "\\\\Images\\\\smallImage"
///   strong_ids {
///     key_property_names = ["Id", "SavingAccountBalance"]
///     strong_id_name     = "Id"
///   }
///   strong_ids {
///     key_property_names = ["ProfileId", "LastName"]
///     strong_id_name     = "ProfileId"
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
/// import com.pulumi.azurenative.customerinsights.Profile;
/// import com.pulumi.azurenative.customerinsights.ProfileArgs;
/// import com.pulumi.azurenative.customerinsights.inputs.PropertyDefinitionArgs;
/// import com.pulumi.azurenative.customerinsights.inputs.StrongIdArgs;
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
///         var profile = new Profile("profile", ProfileArgs.builder()
///             .apiEntitySetName("TestProfileType396")
///             .fields(
///                 PropertyDefinitionArgs.builder()
///                     .fieldName("Id")
///                     .fieldType("Edm.String")
///                     .isArray(false)
///                     .isRequired(true)
///                     .build(),
///                 PropertyDefinitionArgs.builder()
///                     .fieldName("ProfileId")
///                     .fieldType("Edm.String")
///                     .isArray(false)
///                     .isRequired(true)
///                     .build(),
///                 PropertyDefinitionArgs.builder()
///                     .fieldName("LastName")
///                     .fieldType("Edm.String")
///                     .isArray(false)
///                     .isRequired(true)
///                     .build(),
///                 PropertyDefinitionArgs.builder()
///                     .fieldName("TestProfileType396")
///                     .fieldType("Edm.String")
///                     .isArray(false)
///                     .isRequired(true)
///                     .build(),
///                 PropertyDefinitionArgs.builder()
///                     .fieldName("SavingAccountBalance")
///                     .fieldType("Edm.Int32")
///                     .isArray(false)
///                     .isRequired(true)
///                     .build())
///             .hubName("sdkTestHub")
///             .largeImage("\\\\Images\\\\LargeImage")
///             .mediumImage("\\\\Images\\\\MediumImage")
///             .profileName("TestProfileType396")
///             .resourceGroupName("TestHubRG")
///             .schemaItemTypeLink("SchemaItemTypeLink")
///             .smallImage("\\\\Images\\\\smallImage")
///             .strongIds(
///                 StrongIdArgs.builder()
///                     .keyPropertyNames(
///                         "Id",
///                         "SavingAccountBalance")
///                     .strongIdName("Id")
///                     .build(),
///                 StrongIdArgs.builder()
///                     .keyPropertyNames(
///                         "ProfileId",
///                         "LastName")
///                     .strongIdName("ProfileId")
///                     .build())
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
/// const profile = new azure_native.customerinsights.Profile("profile", {
///     apiEntitySetName: "TestProfileType396",
///     fields: [
///         {
///             fieldName: "Id",
///             fieldType: "Edm.String",
///             isArray: false,
///             isRequired: true,
///         },
///         {
///             fieldName: "ProfileId",
///             fieldType: "Edm.String",
///             isArray: false,
///             isRequired: true,
///         },
///         {
///             fieldName: "LastName",
///             fieldType: "Edm.String",
///             isArray: false,
///             isRequired: true,
///         },
///         {
///             fieldName: "TestProfileType396",
///             fieldType: "Edm.String",
///             isArray: false,
///             isRequired: true,
///         },
///         {
///             fieldName: "SavingAccountBalance",
///             fieldType: "Edm.Int32",
///             isArray: false,
///             isRequired: true,
///         },
///     ],
///     hubName: "sdkTestHub",
///     largeImage: "\\\\Images\\\\LargeImage",
///     mediumImage: "\\\\Images\\\\MediumImage",
///     profileName: "TestProfileType396",
///     resourceGroupName: "TestHubRG",
///     schemaItemTypeLink: "SchemaItemTypeLink",
///     smallImage: "\\\\Images\\\\smallImage",
///     strongIds: [
///         {
///             keyPropertyNames: [
///                 "Id",
///                 "SavingAccountBalance",
///             ],
///             strongIdName: "Id",
///         },
///         {
///             keyPropertyNames: [
///                 "ProfileId",
///                 "LastName",
///             ],
///             strongIdName: "ProfileId",
///         },
///     ],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// profile = azure_native.customerinsights.Profile("profile",
///     api_entity_set_name="TestProfileType396",
///     fields=[
///         {
///             "field_name": "Id",
///             "field_type": "Edm.String",
///             "is_array": False,
///             "is_required": True,
///         },
///         {
///             "field_name": "ProfileId",
///             "field_type": "Edm.String",
///             "is_array": False,
///             "is_required": True,
///         },
///         {
///             "field_name": "LastName",
///             "field_type": "Edm.String",
///             "is_array": False,
///             "is_required": True,
///         },
///         {
///             "field_name": "TestProfileType396",
///             "field_type": "Edm.String",
///             "is_array": False,
///             "is_required": True,
///         },
///         {
///             "field_name": "SavingAccountBalance",
///             "field_type": "Edm.Int32",
///             "is_array": False,
///             "is_required": True,
///         },
///     ],
///     hub_name="sdkTestHub",
///     large_image="\\\\Images\\\\LargeImage",
///     medium_image="\\\\Images\\\\MediumImage",
///     profile_name="TestProfileType396",
///     resource_group_name="TestHubRG",
///     schema_item_type_link="SchemaItemTypeLink",
///     small_image="\\\\Images\\\\smallImage",
///     strong_ids=[
///         {
///             "key_property_names": [
///                 "Id",
///                 "SavingAccountBalance",
///             ],
///             "strong_id_name": "Id",
///         },
///         {
///             "key_property_names": [
///                 "ProfileId",
///                 "LastName",
///             ],
///             "strong_id_name": "ProfileId",
///         },
///     ])
///
/// ```
///
/// ```yaml
/// resources:
///   profile:
///     type: azure-native:customerinsights:Profile
///     properties:
///       apiEntitySetName: TestProfileType396
///       fields:
///         - fieldName: Id
///           fieldType: Edm.String
///           isArray: false
///           isRequired: true
///         - fieldName: ProfileId
///           fieldType: Edm.String
///           isArray: false
///           isRequired: true
///         - fieldName: LastName
///           fieldType: Edm.String
///           isArray: false
///           isRequired: true
///         - fieldName: TestProfileType396
///           fieldType: Edm.String
///           isArray: false
///           isRequired: true
///         - fieldName: SavingAccountBalance
///           fieldType: Edm.Int32
///           isArray: false
///           isRequired: true
///       hubName: sdkTestHub
///       largeImage: \\Images\\LargeImage
///       mediumImage: \\Images\\MediumImage
///       profileName: TestProfileType396
///       resourceGroupName: TestHubRG
///       schemaItemTypeLink: SchemaItemTypeLink
///       smallImage: \\Images\\smallImage
///       strongIds:
///         - keyPropertyNames:
///             - Id
///             - SavingAccountBalance
///           strongIdName: Id
///         - keyPropertyNames:
///             - ProfileId
///             - LastName
///           strongIdName: ProfileId
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
/// $ pulumi import azure-native:customerinsights:Profile azSdkTestHub/TestProfileType396 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CustomerInsights/hubs/{hubName}/profiles/{profileName}
/// ```
class Profile extends pulumi.CustomResource {
  /// The api entity set name. This becomes the odata entity set name for the entity Type being referred in this object.
  late final pulumi.Output<String?> apiEntitySetName;
  /// The attributes for the Type.
  late final pulumi.Output<Map<String, List<String>>?> attributes;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Localized descriptions for the property.
  late final pulumi.Output<Map<String, String>?> description;
  /// Localized display names for the property.
  late final pulumi.Output<Map<String, String>?> displayName;
  /// Type of entity.
  late final pulumi.Output<String?> entityType;
  /// The properties of the Profile.
  late final pulumi.Output<List<PropertyDefinitionResponse>?> fields;
  /// The instance count.
  late final pulumi.Output<int?> instancesCount;
  /// Large Image associated with the Property or EntityType.
  late final pulumi.Output<String?> largeImage;
  /// The last changed time for the type definition.
  late final pulumi.Output<String> lastChangedUtc;
  /// Any custom localized attributes for the Type.
  late final pulumi.Output<Map<String, Map<String, String>>?> localizedAttributes;
  /// Medium Image associated with the Property or EntityType.
  late final pulumi.Output<String?> mediumImage;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Provisioning state.
  late final pulumi.Output<String> provisioningState;
  /// The schema org link. This helps ACI identify and suggest semantic models.
  late final pulumi.Output<String?> schemaItemTypeLink;
  /// Small Image associated with the Property or EntityType.
  late final pulumi.Output<String?> smallImage;
  /// The strong IDs.
  late final pulumi.Output<List<StrongIdResponse>?> strongIds;
  /// The hub name.
  late final pulumi.Output<String> tenantId;
  /// The timestamp property name. Represents the time when the interaction or profile update happened.
  late final pulumi.Output<String?> timestampFieldName;
  /// Resource type.
  late final pulumi.Output<String> type;
  /// The name of the entity.
  late final pulumi.Output<String?> typeName;

  /// Creates a new [Profile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Profile]. {@macro pulumi_customerinsights_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Profile(
    String name, {
    ProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:customerinsights:Profile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiEntitySetName = registerOutput<String?>('apiEntitySetName');
    attributes = registerOutput<Map<String, List<String>>?>('attributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<Map<String, String>?>('description', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    displayName = registerOutput<Map<String, String>?>('displayName', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    entityType = registerOutput<String?>('entityType');
    fields = registerOutput<List<PropertyDefinitionResponse>?>('fields', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PropertyDefinitionResponse>(guardedValue, (value) => PropertyDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())); });
    instancesCount = registerOutput<int?>('instancesCount');
    largeImage = registerOutput<String?>('largeImage');
    lastChangedUtc = registerOutput<String>('lastChangedUtc');
    localizedAttributes = registerOutput<Map<String, Map<String, String>>?>('localizedAttributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<Map<String, String>>(guardedValue, (value) => (value as Map).cast<String, String>()); });
    mediumImage = registerOutput<String?>('mediumImage');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    schemaItemTypeLink = registerOutput<String?>('schemaItemTypeLink');
    smallImage = registerOutput<String?>('smallImage');
    strongIds = registerOutput<List<StrongIdResponse>?>('strongIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StrongIdResponse>(guardedValue, (value) => StrongIdResponse.fromMap((value as Map).cast<String, dynamic>())); });
    tenantId = registerOutput<String>('tenantId');
    timestampFieldName = registerOutput<String?>('timestampFieldName');
    type = registerOutput<String>('type');
    typeName = registerOutput<String?>('typeName');
  }

  /// Creates a typed reference to an existing [Profile] resource.
  Profile.reference(String urn)
    : super(
        'azure-native:customerinsights:Profile',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiEntitySetName = registerOutput<String?>('apiEntitySetName');
    attributes = registerOutput<Map<String, List<String>>?>('attributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<Map<String, String>?>('description', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    displayName = registerOutput<Map<String, String>?>('displayName', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    entityType = registerOutput<String?>('entityType');
    fields = registerOutput<List<PropertyDefinitionResponse>?>('fields', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PropertyDefinitionResponse>(guardedValue, (value) => PropertyDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())); });
    instancesCount = registerOutput<int?>('instancesCount');
    largeImage = registerOutput<String?>('largeImage');
    lastChangedUtc = registerOutput<String>('lastChangedUtc');
    localizedAttributes = registerOutput<Map<String, Map<String, String>>?>('localizedAttributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<Map<String, String>>(guardedValue, (value) => (value as Map).cast<String, String>()); });
    mediumImage = registerOutput<String?>('mediumImage');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    schemaItemTypeLink = registerOutput<String?>('schemaItemTypeLink');
    smallImage = registerOutput<String?>('smallImage');
    strongIds = registerOutput<List<StrongIdResponse>?>('strongIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StrongIdResponse>(guardedValue, (value) => StrongIdResponse.fromMap((value as Map).cast<String, dynamic>())); });
    tenantId = registerOutput<String>('tenantId');
    timestampFieldName = registerOutput<String?>('timestampFieldName');
    type = registerOutput<String>('type');
    typeName = registerOutput<String?>('typeName');
  }
}
