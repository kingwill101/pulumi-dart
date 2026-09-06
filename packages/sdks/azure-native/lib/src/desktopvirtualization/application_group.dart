import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_group_args.dart';
import 'resource_model_with_allowed_property_set_response_identity.dart';
import 'resource_model_with_allowed_property_set_response_plan.dart';
import 'resource_model_with_allowed_property_set_response_sku.dart';
import 'system_data_response.dart';

/// Represents a ApplicationGroup definition.
///
/// Uses Azure REST API version 2024-04-03. In version 2.x of the Azure Native provider, it used API version 2022-09-09.
///
/// Other available API versions: 2022-09-09, 2022-10-14-preview, 2023-09-05, 2023-10-04-preview, 2023-11-01-preview, 2024-01-16-preview, 2024-03-06-preview, 2024-04-08-preview, 2024-08-08-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-04-01-preview, 2025-08-01-preview, 2025-09-01-preview, 2025-10-10, 2025-11-01-preview, 2026-01-01-preview, 2026-03-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native desktopvirtualization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApplicationGroup_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var applicationGroup = new AzureNative.DesktopVirtualization.ApplicationGroup("applicationGroup", new()
///     {
///         ApplicationGroupName = "applicationGroup1",
///         ApplicationGroupType = AzureNative.DesktopVirtualization.ApplicationGroupType.RemoteApp,
///         Description = "des1",
///         FriendlyName = "friendly",
///         HostPoolArmPath = "/subscriptions/daefabc0-95b4-48b3-b645-8a753a63c4fa/resourceGroups/resourceGroup1/providers/Microsoft.DesktopVirtualization/hostPools/hostPool1",
///         Location = "centralus",
///         ResourceGroupName = "resourceGroup1",
///         ShowInFeed = true,
///         Tags =
///         {
///             { "tag1", "value1" },
///             { "tag2", "value2" },
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
/// 	desktopvirtualization "github.com/pulumi/pulumi-azure-native-sdk/desktopvirtualization/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := desktopvirtualization.NewApplicationGroup(ctx, "applicationGroup", &desktopvirtualization.ApplicationGroupArgs{
/// 			ApplicationGroupName: pulumi.String("applicationGroup1"),
/// 			ApplicationGroupType: pulumi.String(desktopvirtualization.ApplicationGroupTypeRemoteApp),
/// 			Description:          pulumi.String("des1"),
/// 			FriendlyName:         pulumi.String("friendly"),
/// 			HostPoolArmPath:      pulumi.String("/subscriptions/daefabc0-95b4-48b3-b645-8a753a63c4fa/resourceGroups/resourceGroup1/providers/Microsoft.DesktopVirtualization/hostPools/hostPool1"),
/// 			Location:             pulumi.String("centralus"),
/// 			ResourceGroupName:    pulumi.String("resourceGroup1"),
/// 			ShowInFeed:           pulumi.Bool(true),
/// 			Tags: pulumi.StringMap{
/// 				"tag1": pulumi.String("value1"),
/// 				"tag2": pulumi.String("value2"),
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
/// resource "azure-native_desktopvirtualization_applicationgroup" "applicationGroup" {
///   application_group_name = "applicationGroup1"
///   application_group_type = "RemoteApp"
///   description            = "des1"
///   friendly_name          = "friendly"
///   host_pool_arm_path     = "/subscriptions/daefabc0-95b4-48b3-b645-8a753a63c4fa/resourceGroups/resourceGroup1/providers/Microsoft.DesktopVirtualization/hostPools/hostPool1"
///   location               = "centralus"
///   resource_group_name    = "resourceGroup1"
///   show_in_feed           = true
///   tags = {
///     "tag1" = "value1"
///     "tag2" = "value2"
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
/// import com.pulumi.azurenative.desktopvirtualization.ApplicationGroup;
/// import com.pulumi.azurenative.desktopvirtualization.ApplicationGroupArgs;
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
///         var applicationGroup = new ApplicationGroup("applicationGroup", ApplicationGroupArgs.builder()
///             .applicationGroupName("applicationGroup1")
///             .applicationGroupType("RemoteApp")
///             .description("des1")
///             .friendlyName("friendly")
///             .hostPoolArmPath("/subscriptions/daefabc0-95b4-48b3-b645-8a753a63c4fa/resourceGroups/resourceGroup1/providers/Microsoft.DesktopVirtualization/hostPools/hostPool1")
///             .location("centralus")
///             .resourceGroupName("resourceGroup1")
///             .showInFeed(true)
///             .tags(Map.ofEntries(
///                 Map.entry("tag1", "value1"),
///                 Map.entry("tag2", "value2")
///             ))
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
/// const applicationGroup = new azure_native.desktopvirtualization.ApplicationGroup("applicationGroup", {
///     applicationGroupName: "applicationGroup1",
///     applicationGroupType: azure_native.desktopvirtualization.ApplicationGroupType.RemoteApp,
///     description: "des1",
///     friendlyName: "friendly",
///     hostPoolArmPath: "/subscriptions/daefabc0-95b4-48b3-b645-8a753a63c4fa/resourceGroups/resourceGroup1/providers/Microsoft.DesktopVirtualization/hostPools/hostPool1",
///     location: "centralus",
///     resourceGroupName: "resourceGroup1",
///     showInFeed: true,
///     tags: {
///         tag1: "value1",
///         tag2: "value2",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// application_group = azure_native.desktopvirtualization.ApplicationGroup("applicationGroup",
///     application_group_name="applicationGroup1",
///     application_group_type=azure_native.desktopvirtualization.ApplicationGroupType.REMOTE_APP,
///     description="des1",
///     friendly_name="friendly",
///     host_pool_arm_path="/subscriptions/daefabc0-95b4-48b3-b645-8a753a63c4fa/resourceGroups/resourceGroup1/providers/Microsoft.DesktopVirtualization/hostPools/hostPool1",
///     location="centralus",
///     resource_group_name="resourceGroup1",
///     show_in_feed=True,
///     tags={
///         "tag1": "value1",
///         "tag2": "value2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   applicationGroup:
///     type: azure-native:desktopvirtualization:ApplicationGroup
///     properties:
///       applicationGroupName: applicationGroup1
///       applicationGroupType: RemoteApp
///       description: des1
///       friendlyName: friendly
///       hostPoolArmPath: /subscriptions/daefabc0-95b4-48b3-b645-8a753a63c4fa/resourceGroups/resourceGroup1/providers/Microsoft.DesktopVirtualization/hostPools/hostPool1
///       location: centralus
///       resourceGroupName: resourceGroup1
///       showInFeed: true
///       tags:
///         tag1: value1
///         tag2: value2
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
/// $ pulumi import azure-native:desktopvirtualization:ApplicationGroup applicationGroup1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DesktopVirtualization/applicationGroups/{applicationGroupName}
/// ```
class ApplicationGroup extends pulumi.CustomResource {
  /// Resource Type of ApplicationGroup.
  late final pulumi.Output<String> applicationGroupType;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Is cloud pc resource.
  late final pulumi.Output<bool> cloudPcResource;
  /// Description of ApplicationGroup.
  late final pulumi.Output<String?> description;
  /// The etag field is *not* required. If it is provided in the response body, it must also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  late final pulumi.Output<String> etag;
  /// Friendly name of ApplicationGroup.
  late final pulumi.Output<String?> friendlyName;
  /// HostPool arm path of ApplicationGroup.
  late final pulumi.Output<String> hostPoolArmPath;
  late final pulumi.Output<ResourceModelWithAllowedPropertySetResponseIdentity?> identity;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type. E.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  late final pulumi.Output<String?> kind;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The fully qualified resource ID of the resource that manages this resource. Indicates if this resource is managed by another Azure resource. If this is present, complete mode deployment will not delete the resource if it is removed from the template since it is managed by another resource.
  late final pulumi.Output<String?> managedBy;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// ObjectId of ApplicationGroup. (internal use)
  late final pulumi.Output<String> objectId;
  late final pulumi.Output<ResourceModelWithAllowedPropertySetResponsePlan?> plan;
  /// Boolean representing whether the applicationGroup is show in the feed.
  late final pulumi.Output<bool?> showInFeed;
  late final pulumi.Output<ResourceModelWithAllowedPropertySetResponseSku?> sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Workspace arm path of ApplicationGroup.
  late final pulumi.Output<String> workspaceArmPath;

  /// Creates a new [ApplicationGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApplicationGroup]. {@macro pulumi_desktopvirtualization_application_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApplicationGroup(
    String name, {
    ApplicationGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:desktopvirtualization:ApplicationGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationGroupType = registerOutput<String>('applicationGroupType');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    cloudPcResource = registerOutput<bool>('cloudPcResource');
    description = registerOutput<String?>('description');
    etag = registerOutput<String>('etag');
    friendlyName = registerOutput<String?>('friendlyName');
    hostPoolArmPath = registerOutput<String>('hostPoolArmPath');
    identity = registerOutput<ResourceModelWithAllowedPropertySetResponseIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceModelWithAllowedPropertySetResponseIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String?>('kind');
    location = registerOutput<String>('location');
    managedBy = registerOutput<String?>('managedBy');
    this.name = registerOutput<String>('name');
    objectId = registerOutput<String>('objectId');
    plan = registerOutput<ResourceModelWithAllowedPropertySetResponsePlan?>('plan', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceModelWithAllowedPropertySetResponsePlan.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    showInFeed = registerOutput<bool?>('showInFeed');
    sku = registerOutput<ResourceModelWithAllowedPropertySetResponseSku?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceModelWithAllowedPropertySetResponseSku.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    workspaceArmPath = registerOutput<String>('workspaceArmPath');
  }

  /// Creates a typed reference to an existing [ApplicationGroup] resource.
  ApplicationGroup.reference(String urn)
    : super(
        'azure-native:desktopvirtualization:ApplicationGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    applicationGroupType = registerOutput<String>('applicationGroupType');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    cloudPcResource = registerOutput<bool>('cloudPcResource');
    description = registerOutput<String?>('description');
    etag = registerOutput<String>('etag');
    friendlyName = registerOutput<String?>('friendlyName');
    hostPoolArmPath = registerOutput<String>('hostPoolArmPath');
    identity = registerOutput<ResourceModelWithAllowedPropertySetResponseIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceModelWithAllowedPropertySetResponseIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String?>('kind');
    location = registerOutput<String>('location');
    managedBy = registerOutput<String?>('managedBy');
    this.name = registerOutput<String>('name');
    objectId = registerOutput<String>('objectId');
    plan = registerOutput<ResourceModelWithAllowedPropertySetResponsePlan?>('plan', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceModelWithAllowedPropertySetResponsePlan.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    showInFeed = registerOutput<bool?>('showInFeed');
    sku = registerOutput<ResourceModelWithAllowedPropertySetResponseSku?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceModelWithAllowedPropertySetResponseSku.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    workspaceArmPath = registerOutput<String>('workspaceArmPath');
  }
}
