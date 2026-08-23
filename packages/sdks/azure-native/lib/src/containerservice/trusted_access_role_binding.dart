import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'trusted_access_role_binding_args.dart';

/// Defines binding between a resource and role
///
/// Uses Azure REST API version 2025-09-01. In version 2.x of the Azure Native provider, it used API version 2023-05-02-preview.
///
/// Other available API versions: 2022-04-02-preview, 2022-05-02-preview, 2022-06-02-preview, 2022-07-02-preview, 2022-08-02-preview, 2022-08-03-preview, 2022-09-02-preview, 2022-10-02-preview, 2022-11-02-preview, 2023-01-02-preview, 2023-02-02-preview, 2023-03-02-preview, 2023-04-02-preview, 2023-05-02-preview, 2023-06-02-preview, 2023-07-02-preview, 2023-08-02-preview, 2023-09-01, 2023-09-02-preview, 2023-10-01, 2023-10-02-preview, 2023-11-01, 2023-11-02-preview, 2024-01-01, 2024-01-02-preview, 2024-02-01, 2024-02-02-preview, 2024-03-02-preview, 2024-04-02-preview, 2024-05-01, 2024-05-02-preview, 2024-06-02-preview, 2024-07-01, 2024-07-02-preview, 2024-08-01, 2024-09-01, 2024-09-02-preview, 2024-10-01, 2024-10-02-preview, 2025-01-01, 2025-01-02-preview, 2025-02-01, 2025-02-02-preview, 2025-03-01, 2025-03-02-preview, 2025-04-01, 2025-04-02-preview, 2025-05-01, 2025-05-02-preview, 2025-06-02-preview, 2025-07-01, 2025-07-02-preview, 2025-08-01, 2025-08-02-preview, 2025-09-02-preview, 2025-10-01, 2025-10-02-preview, 2026-01-01, 2026-01-02-preview, 2026-02-01, 2026-02-02-preview, 2026-03-01, 2026-03-02-preview, 2026-04-01, 2026-04-02-preview, 2026-05-01, 2026-05-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a trusted access role binding
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var trustedAccessRoleBinding = new AzureNative.ContainerService.TrustedAccessRoleBinding("trustedAccessRoleBinding", new()
///     {
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
///         Roles = new[]
///         {
///             "Microsoft.MachineLearningServices/workspaces/reader",
///             "Microsoft.MachineLearningServices/workspaces/writer",
///         },
///         SourceResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/b/providers/Microsoft.MachineLearningServices/workspaces/c",
///         TrustedAccessRoleBindingName = "binding1",
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
/// 		_, err := containerservice.NewTrustedAccessRoleBinding(ctx, "trustedAccessRoleBinding", &containerservice.TrustedAccessRoleBindingArgs{
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ResourceName:      pulumi.String("clustername1"),
/// 			Roles: pulumi.StringArray{
/// 				pulumi.String("Microsoft.MachineLearningServices/workspaces/reader"),
/// 				pulumi.String("Microsoft.MachineLearningServices/workspaces/writer"),
/// 			},
/// 			SourceResourceId:             pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/b/providers/Microsoft.MachineLearningServices/workspaces/c"),
/// 			TrustedAccessRoleBindingName: pulumi.String("binding1"),
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
/// resource "azure-native_containerservice_trustedaccessrolebinding" "trustedAccessRoleBinding" {
///   resource_group_name              = "rg1"
///   resource_name                    = "clustername1"
///   roles                            = ["Microsoft.MachineLearningServices/workspaces/reader", "Microsoft.MachineLearningServices/workspaces/writer"]
///   source_resource_id               = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/b/providers/Microsoft.MachineLearningServices/workspaces/c"
///   trusted_access_role_binding_name = "binding1"
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
/// import com.pulumi.azurenative.containerservice.TrustedAccessRoleBinding;
/// import com.pulumi.azurenative.containerservice.TrustedAccessRoleBindingArgs;
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
///         var trustedAccessRoleBinding = new TrustedAccessRoleBinding("trustedAccessRoleBinding", TrustedAccessRoleBindingArgs.builder()
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
///             .roles(
///                 "Microsoft.MachineLearningServices/workspaces/reader",
///                 "Microsoft.MachineLearningServices/workspaces/writer")
///             .sourceResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/b/providers/Microsoft.MachineLearningServices/workspaces/c")
///             .trustedAccessRoleBindingName("binding1")
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
/// const trustedAccessRoleBinding = new azure_native.containerservice.TrustedAccessRoleBinding("trustedAccessRoleBinding", {
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
///     roles: [
///         "Microsoft.MachineLearningServices/workspaces/reader",
///         "Microsoft.MachineLearningServices/workspaces/writer",
///     ],
///     sourceResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/b/providers/Microsoft.MachineLearningServices/workspaces/c",
///     trustedAccessRoleBindingName: "binding1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// trusted_access_role_binding = azure_native.containerservice.TrustedAccessRoleBinding("trustedAccessRoleBinding",
///     resource_group_name="rg1",
///     resource_name_="clustername1",
///     roles=[
///         "Microsoft.MachineLearningServices/workspaces/reader",
///         "Microsoft.MachineLearningServices/workspaces/writer",
///     ],
///     source_resource_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/b/providers/Microsoft.MachineLearningServices/workspaces/c",
///     trusted_access_role_binding_name="binding1")
///
/// ```
///
/// ```yaml
/// resources:
///   trustedAccessRoleBinding:
///     type: azure-native:containerservice:TrustedAccessRoleBinding
///     properties:
///       resourceGroupName: rg1
///       resourceName: clustername1
///       roles:
///         - Microsoft.MachineLearningServices/workspaces/reader
///         - Microsoft.MachineLearningServices/workspaces/writer
///       sourceResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/b/providers/Microsoft.MachineLearningServices/workspaces/c
///       trustedAccessRoleBindingName: binding1
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
/// $ pulumi import azure-native:containerservice:TrustedAccessRoleBinding binding1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/trustedAccessRoleBindings/{trustedAccessRoleBindingName}
/// ```
class TrustedAccessRoleBinding extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The current provisioning state of trusted access role binding.
  late final pulumi.Output<String> provisioningState;
  /// A list of roles to bind, each item is a resource type qualified role name. For example: 'Microsoft.MachineLearningServices/workspaces/reader'.
  late final pulumi.Output<List<String>> roles;
  /// The ARM resource ID of source resource that trusted access is configured for.
  late final pulumi.Output<String> sourceResourceId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [TrustedAccessRoleBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TrustedAccessRoleBinding]. {@macro pulumi_containerservice_trusted_access_role_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TrustedAccessRoleBinding(
    String name, {
    TrustedAccessRoleBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:containerservice:TrustedAccessRoleBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    roles = registerOutput<List<String>>('roles');
    sourceResourceId = registerOutput<String>('sourceResourceId');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
