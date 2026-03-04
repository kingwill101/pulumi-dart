import 'package:pulumi/pulumi.dart' as pulumi;
import 'mesh_membership_args.dart';
import 'mesh_membership_properties_response.dart';
import 'system_data_response.dart';

/// Mesh membership of a managed cluster.
///
/// Uses Azure REST API version 2025-08-02-preview.
///
/// Other available API versions: 2025-09-02-preview, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update Mesh Membership
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var meshMembership = new AzureNative.ContainerService.MeshMembership("meshMembership", new()
///     {
///         MeshMembershipName = "meshmembership1",
///         Properties = new AzureNative.ContainerService.Inputs.MeshMembershipPropertiesArgs
///         {
///             ManagedMeshID = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.AppLink/applinks/applink1/appLinkMembers/member1",
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
/// 		_, err := containerservice.NewMeshMembership(ctx, "meshMembership", &containerservice.MeshMembershipArgs{
/// 			MeshMembershipName: pulumi.String("meshmembership1"),
/// 			Properties: &containerservice.MeshMembershipPropertiesArgs{
/// 				ManagedMeshID: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.AppLink/applinks/applink1/appLinkMembers/member1"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.containerservice.MeshMembership;
/// import com.pulumi.azurenative.containerservice.MeshMembershipArgs;
/// import com.pulumi.azurenative.containerservice.inputs.MeshMembershipPropertiesArgs;
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
///         var meshMembership = new MeshMembership("meshMembership", MeshMembershipArgs.builder()
///             .meshMembershipName("meshmembership1")
///             .properties(MeshMembershipPropertiesArgs.builder()
///                 .managedMeshID("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.AppLink/applinks/applink1/appLinkMembers/member1")
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
/// const meshMembership = new azure_native.containerservice.MeshMembership("meshMembership", {
///     meshMembershipName: "meshmembership1",
///     properties: {
///         managedMeshID: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.AppLink/applinks/applink1/appLinkMembers/member1",
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
/// mesh_membership = azure_native.containerservice.MeshMembership("meshMembership",
///     mesh_membership_name="meshmembership1",
///     properties={
///         "managed_mesh_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.AppLink/applinks/applink1/appLinkMembers/member1",
///     },
///     resource_group_name="rg1",
///     resource_name_="clustername1")
///
/// ```
///
/// ```yaml
/// resources:
///   meshMembership:
///     type: azure-native:containerservice:MeshMembership
///     properties:
///       meshMembershipName: meshmembership1
///       properties:
///         managedMeshID: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.AppLink/applinks/applink1/appLinkMembers/member1
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
/// $ pulumi import azure-native:containerservice:MeshMembership meshmembership1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/meshMemberships/{meshMembershipName}
/// ```
class MeshMembership extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Unique read-only string used to implement optimistic concurrency. The eTag value will change when the resource is updated. Specify an if-match or if-none-match header with the eTag value for a subsequent request to enable optimistic concurrency per the normal eTag convention.
  late final pulumi.Output<String> eTag;

  /// The fully qualified resource ID of the resource that manages this resource. Indicates if this resource is managed by another Azure resource. If this is present, complete mode deployment will not delete the resource if it is removed from the template since it is managed by another resource.
  late final pulumi.Output<String?> managedBy;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Mesh membership properties of a managed cluster.
  late final pulumi.Output<MeshMembershipPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [MeshMembership].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MeshMembership]. {@macro pulumi_containerservice_mesh_membership_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MeshMembership(
    String name, {
    MeshMembershipArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:containerservice:MeshMembership',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String>('eTag');
    managedBy = registerOutput<String?>('managedBy');
    this.name = registerOutput<String>('name');
    properties = registerOutput<MeshMembershipPropertiesResponse>('properties');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
