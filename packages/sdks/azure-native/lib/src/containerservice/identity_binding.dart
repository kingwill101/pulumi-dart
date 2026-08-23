import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_binding_args.dart';
import 'identity_binding_properties_response.dart';
import 'system_data_response.dart';

/// The IdentityBinding resource.
///
/// Uses Azure REST API version 2025-06-02-preview.
///
/// Other available API versions: 2025-07-02-preview, 2025-08-02-preview, 2025-09-02-preview, 2025-10-02-preview, 2026-01-02-preview, 2026-02-02-preview, 2026-03-02-preview, 2026-04-01, 2026-04-02-preview, 2026-05-01, 2026-05-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update Identity Binding
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var identityBinding = new AzureNative.ContainerService.IdentityBinding("identityBinding", new()
///     {
///         IdentityBindingName = "identitybinding1",
///         Properties = new AzureNative.ContainerService.Inputs.IdentityBindingPropertiesArgs
///         {
///             ManagedIdentity = new AzureNative.ContainerService.Inputs.IdentityBindingManagedIdentityProfileArgs
///             {
///                 ResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ManagedIdentity/userAssignedIdentities/identity1",
///             },
///         },
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewIdentityBinding(ctx, "identityBinding", &containerservice.IdentityBindingArgs{
/// 			IdentityBindingName: pulumi.String("identitybinding1"),
/// 			Properties: &containerservice.IdentityBindingPropertiesArgs{
/// 				ManagedIdentity: &containerservice.IdentityBindingManagedIdentityProfileArgs{
/// 					ResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ManagedIdentity/userAssignedIdentities/identity1"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ResourceName:      pulumi.String("clustername1"),
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
/// resource "azure-native_containerservice_identitybinding" "identityBinding" {
///   identity_binding_name = "identitybinding1"
///   properties = {
///     managed_identity = {
///       resource_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ManagedIdentity/userAssignedIdentities/identity1"
///     }
///   }
///   resource_group_name = "rg1"
///   resource_name       = "clustername1"
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
/// import com.pulumi.azurenative.containerservice.IdentityBinding;
/// import com.pulumi.azurenative.containerservice.IdentityBindingArgs;
/// import com.pulumi.azurenative.containerservice.inputs.IdentityBindingPropertiesArgs;
/// import com.pulumi.azurenative.containerservice.inputs.IdentityBindingManagedIdentityProfileArgs;
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
///         var identityBinding = new IdentityBinding("identityBinding", IdentityBindingArgs.builder()
///             .identityBindingName("identitybinding1")
///             .properties(IdentityBindingPropertiesArgs.builder()
///                 .managedIdentity(IdentityBindingManagedIdentityProfileArgs.builder()
///                     .resourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ManagedIdentity/userAssignedIdentities/identity1")
///                     .build())
///                 .build())
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
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
/// const identityBinding = new azure_native.containerservice.IdentityBinding("identityBinding", {
///     identityBindingName: "identitybinding1",
///     properties: {
///         managedIdentity: {
///             resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ManagedIdentity/userAssignedIdentities/identity1",
///         },
///     },
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// identity_binding = azure_native.containerservice.IdentityBinding("identityBinding",
///     identity_binding_name="identitybinding1",
///     properties={
///         "managed_identity": {
///             "resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ManagedIdentity/userAssignedIdentities/identity1",
///         },
///     },
///     resource_group_name="rg1",
///     resource_name_="clustername1")
///
/// ```
///
/// ```yaml
/// resources:
///   identityBinding:
///     type: azure-native:containerservice:IdentityBinding
///     properties:
///       identityBindingName: identitybinding1
///       properties:
///         managedIdentity:
///           resourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ManagedIdentity/userAssignedIdentities/identity1
///       resourceGroupName: rg1
///       resourceName: clustername1
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
/// $ pulumi import azure-native:containerservice:IdentityBinding identitybinding1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/identityBindings/{identityBindingName}
/// ```
class IdentityBinding extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Unique read-only string used to implement optimistic concurrency. The eTag value will change when the resource is updated. Specify an if-match or if-none-match header with the eTag value for a subsequent request to enable optimistic concurrency per the normal etag convention.
  late final pulumi.Output<String> eTag;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<IdentityBindingPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [IdentityBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IdentityBinding]. {@macro pulumi_containerservice_identity_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IdentityBinding(
    String name, {
    IdentityBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:containerservice:IdentityBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String>('eTag');
    this.name = registerOutput<String>('name');
    properties = registerOutput<IdentityBindingPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IdentityBindingPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
