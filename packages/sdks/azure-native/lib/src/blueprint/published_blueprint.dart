import 'package:pulumi/pulumi.dart' as pulumi;
import 'blueprint_status_response.dart';
import 'parameter_definition_response.dart';
import 'published_blueprint_args.dart';
import 'resource_group_definition_response.dart';

/// Represents a published blueprint.
///
/// Uses Azure REST API version 2018-11-01-preview. In version 2.x of the Azure Native provider, it used API version 2018-11-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PublishedManagementGroupBlueprint_Publish
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var publishedBlueprint = new AzureNative.Blueprint.PublishedBlueprint("publishedBlueprint", new()
///     {
///         BlueprintName = "simpleBlueprint",
///         ResourceScope = "providers/Microsoft.Management/managementGroups/ContosoOnlineGroup",
///         VersionId = "v2",
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
/// 	blueprint "github.com/pulumi/pulumi-azure-native-sdk/blueprint/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := blueprint.NewPublishedBlueprint(ctx, "publishedBlueprint", &blueprint.PublishedBlueprintArgs{
/// 			BlueprintName: pulumi.String("simpleBlueprint"),
/// 			ResourceScope: pulumi.String("providers/Microsoft.Management/managementGroups/ContosoOnlineGroup"),
/// 			VersionId:     pulumi.String("v2"),
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
/// resource "azure-native_blueprint_publishedblueprint" "publishedBlueprint" {
///   blueprint_name = "simpleBlueprint"
///   resource_scope = "providers/Microsoft.Management/managementGroups/ContosoOnlineGroup"
///   version_id     = "v2"
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
/// import com.pulumi.azurenative.blueprint.PublishedBlueprint;
/// import com.pulumi.azurenative.blueprint.PublishedBlueprintArgs;
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
///         var publishedBlueprint = new PublishedBlueprint("publishedBlueprint", PublishedBlueprintArgs.builder()
///             .blueprintName("simpleBlueprint")
///             .resourceScope("providers/Microsoft.Management/managementGroups/ContosoOnlineGroup")
///             .versionId("v2")
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
/// const publishedBlueprint = new azure_native.blueprint.PublishedBlueprint("publishedBlueprint", {
///     blueprintName: "simpleBlueprint",
///     resourceScope: "providers/Microsoft.Management/managementGroups/ContosoOnlineGroup",
///     versionId: "v2",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// published_blueprint = azure_native.blueprint.PublishedBlueprint("publishedBlueprint",
///     blueprint_name="simpleBlueprint",
///     resource_scope="providers/Microsoft.Management/managementGroups/ContosoOnlineGroup",
///     version_id="v2")
///
/// ```
///
/// ```yaml
/// resources:
///   publishedBlueprint:
///     type: azure-native:blueprint:PublishedBlueprint
///     properties:
///       blueprintName: simpleBlueprint
///       resourceScope: providers/Microsoft.Management/managementGroups/ContosoOnlineGroup
///       versionId: v2
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### PublishedSubscriptionBlueprint_Publish
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var publishedBlueprint = new AzureNative.Blueprint.PublishedBlueprint("publishedBlueprint", new()
///     {
///         BlueprintName = "simpleBlueprint",
///         ResourceScope = "subscriptions/00000000-0000-0000-0000-000000000000",
///         VersionId = "v2",
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
/// 	blueprint "github.com/pulumi/pulumi-azure-native-sdk/blueprint/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := blueprint.NewPublishedBlueprint(ctx, "publishedBlueprint", &blueprint.PublishedBlueprintArgs{
/// 			BlueprintName: pulumi.String("simpleBlueprint"),
/// 			ResourceScope: pulumi.String("subscriptions/00000000-0000-0000-0000-000000000000"),
/// 			VersionId:     pulumi.String("v2"),
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
/// resource "azure-native_blueprint_publishedblueprint" "publishedBlueprint" {
///   blueprint_name = "simpleBlueprint"
///   resource_scope = "subscriptions/00000000-0000-0000-0000-000000000000"
///   version_id     = "v2"
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
/// import com.pulumi.azurenative.blueprint.PublishedBlueprint;
/// import com.pulumi.azurenative.blueprint.PublishedBlueprintArgs;
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
///         var publishedBlueprint = new PublishedBlueprint("publishedBlueprint", PublishedBlueprintArgs.builder()
///             .blueprintName("simpleBlueprint")
///             .resourceScope("subscriptions/00000000-0000-0000-0000-000000000000")
///             .versionId("v2")
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
/// const publishedBlueprint = new azure_native.blueprint.PublishedBlueprint("publishedBlueprint", {
///     blueprintName: "simpleBlueprint",
///     resourceScope: "subscriptions/00000000-0000-0000-0000-000000000000",
///     versionId: "v2",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// published_blueprint = azure_native.blueprint.PublishedBlueprint("publishedBlueprint",
///     blueprint_name="simpleBlueprint",
///     resource_scope="subscriptions/00000000-0000-0000-0000-000000000000",
///     version_id="v2")
///
/// ```
///
/// ```yaml
/// resources:
///   publishedBlueprint:
///     type: azure-native:blueprint:PublishedBlueprint
///     properties:
///       blueprintName: simpleBlueprint
///       resourceScope: subscriptions/00000000-0000-0000-0000-000000000000
///       versionId: v2
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
/// $ pulumi import azure-native:blueprint:PublishedBlueprint v2 /{resourceScope}/providers/Microsoft.Blueprint/blueprints/{blueprintName}/versions/{versionId}
/// ```
class PublishedBlueprint extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Name of the published blueprint definition.
  late final pulumi.Output<String?> blueprintName;
  /// Version-specific change notes.
  late final pulumi.Output<String?> changeNotes;
  /// Multi-line explain this resource.
  late final pulumi.Output<String?> description;
  /// One-liner string explain this resource.
  late final pulumi.Output<String?> displayName;
  /// Name of this resource.
  late final pulumi.Output<String> name;
  /// Parameters required by this blueprint definition.
  late final pulumi.Output<Map<String, ParameterDefinitionResponse>?> parameters;
  /// Resource group placeholders defined by this blueprint definition.
  late final pulumi.Output<Map<String, ResourceGroupDefinitionResponse>?> resourceGroups;
  /// Status of the blueprint. This field is readonly.
  late final pulumi.Output<BlueprintStatusResponse> status;
  /// The scope where this blueprint definition can be assigned.
  late final pulumi.Output<String?> targetScope;
  /// Type of this resource.
  late final pulumi.Output<String> type;

  /// Creates a new [PublishedBlueprint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PublishedBlueprint]. {@macro pulumi_blueprint_published_blueprint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PublishedBlueprint(
    String name, {
    PublishedBlueprintArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:blueprint:PublishedBlueprint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    blueprintName = registerOutput<String?>('blueprintName');
    changeNotes = registerOutput<String?>('changeNotes');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, ParameterDefinitionResponse>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<ParameterDefinitionResponse>(guardedValue, (value) => ParameterDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())); });
    resourceGroups = registerOutput<Map<String, ResourceGroupDefinitionResponse>?>('resourceGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<ResourceGroupDefinitionResponse>(guardedValue, (value) => ResourceGroupDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())); });
    status = registerOutput<BlueprintStatusResponse>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BlueprintStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    targetScope = registerOutput<String?>('targetScope');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [PublishedBlueprint] resource.
  PublishedBlueprint.reference(String urn)
    : super(
        'azure-native:blueprint:PublishedBlueprint',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    blueprintName = registerOutput<String?>('blueprintName');
    changeNotes = registerOutput<String?>('changeNotes');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, ParameterDefinitionResponse>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<ParameterDefinitionResponse>(guardedValue, (value) => ParameterDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())); });
    resourceGroups = registerOutput<Map<String, ResourceGroupDefinitionResponse>?>('resourceGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<ResourceGroupDefinitionResponse>(guardedValue, (value) => ResourceGroupDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())); });
    status = registerOutput<BlueprintStatusResponse>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BlueprintStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    targetScope = registerOutput<String?>('targetScope');
    type = registerOutput<String>('type');
  }
}
