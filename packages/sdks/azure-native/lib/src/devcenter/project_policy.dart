import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_policy_args.dart';
import 'system_data_response.dart';

/// Represents an project policy resource.
///
/// Uses Azure REST API version 2024-10-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-10-01-preview.
///
/// Other available API versions: 2025-02-01, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devcenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ProjectPolicies_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var projectPolicy = new AzureNative.DevCenter.ProjectPolicy("projectPolicy", new()
///     {
///         DevCenterName = "Contoso",
///         ProjectPolicyName = "DevOnlyResources",
///         ResourceGroupName = "rg1",
///         ResourcePolicies = new[]
///         {
///             new AzureNative.DevCenter.Inputs.ResourcePolicyArgs
///             {
///                 Resources = "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff1/resourceGroups/rg1/providers/Microsoft.DevCenter/devcenters/Contoso/attachednetworks/network-westus3",
///             },
///         },
///         Scopes = new[]
///         {
///             "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff1/resourceGroups/rg1/providers/Microsoft.DevCenter/projects/DevProject",
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
/// 	devcenter "github.com/pulumi/pulumi-azure-native-sdk/devcenter/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devcenter.NewProjectPolicy(ctx, "projectPolicy", &devcenter.ProjectPolicyArgs{
/// 			DevCenterName:     pulumi.String("Contoso"),
/// 			ProjectPolicyName: pulumi.String("DevOnlyResources"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ResourcePolicies: devcenter.ResourcePolicyArray{
/// 				&devcenter.ResourcePolicyArgs{
/// 					Resources: pulumi.String("/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff1/resourceGroups/rg1/providers/Microsoft.DevCenter/devcenters/Contoso/attachednetworks/network-westus3"),
/// 				},
/// 			},
/// 			Scopes: pulumi.StringArray{
/// 				pulumi.String("/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff1/resourceGroups/rg1/providers/Microsoft.DevCenter/projects/DevProject"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.devcenter.ProjectPolicy;
/// import com.pulumi.azurenative.devcenter.ProjectPolicyArgs;
/// import com.pulumi.azurenative.devcenter.inputs.ResourcePolicyArgs;
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
///         var projectPolicy = new ProjectPolicy("projectPolicy", ProjectPolicyArgs.builder()
///             .devCenterName("Contoso")
///             .projectPolicyName("DevOnlyResources")
///             .resourceGroupName("rg1")
///             .resourcePolicies(ResourcePolicyArgs.builder()
///                 .resources("/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff1/resourceGroups/rg1/providers/Microsoft.DevCenter/devcenters/Contoso/attachednetworks/network-westus3")
///                 .build())
///             .scopes("/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff1/resourceGroups/rg1/providers/Microsoft.DevCenter/projects/DevProject")
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
/// const projectPolicy = new azure_native.devcenter.ProjectPolicy("projectPolicy", {
///     devCenterName: "Contoso",
///     projectPolicyName: "DevOnlyResources",
///     resourceGroupName: "rg1",
///     resourcePolicies: [{
///         resources: "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff1/resourceGroups/rg1/providers/Microsoft.DevCenter/devcenters/Contoso/attachednetworks/network-westus3",
///     }],
///     scopes: ["/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff1/resourceGroups/rg1/providers/Microsoft.DevCenter/projects/DevProject"],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// project_policy = azure_native.devcenter.ProjectPolicy("projectPolicy",
///     dev_center_name="Contoso",
///     project_policy_name="DevOnlyResources",
///     resource_group_name="rg1",
///     resource_policies=[{
///         "resources": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff1/resourceGroups/rg1/providers/Microsoft.DevCenter/devcenters/Contoso/attachednetworks/network-westus3",
///     }],
///     scopes=["/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff1/resourceGroups/rg1/providers/Microsoft.DevCenter/projects/DevProject"])
///
/// ```
///
/// ```yaml
/// resources:
///   projectPolicy:
///     type: azure-native:devcenter:ProjectPolicy
///     properties:
///       devCenterName: Contoso
///       projectPolicyName: DevOnlyResources
///       resourceGroupName: rg1
///       resourcePolicies:
///         - resources: /subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff1/resourceGroups/rg1/providers/Microsoft.DevCenter/devcenters/Contoso/attachednetworks/network-westus3
///       scopes:
///         - /subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff1/resourceGroups/rg1/providers/Microsoft.DevCenter/projects/DevProject
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
/// $ pulumi import azure-native:devcenter:ProjectPolicy DevOnlyResources /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevCenter/devcenters/{devCenterName}/projectPolicies/{projectPolicyName}
/// ```
class ProjectPolicy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;

  /// Resource policies that are a part of this project policy.
  late final pulumi.Output<List<Map<String, dynamic>>?> resourcePolicies;

  /// Resources that have access to the shared resources that are a part of this project policy.
  late final pulumi.Output<List<String>?> scopes;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ProjectPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProjectPolicy]. {@macro pulumi_devcenter_project_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProjectPolicy(
    String name, {
    ProjectPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:devcenter:ProjectPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    resourcePolicies = registerOutput<List<Map<String, dynamic>>?>(
      'resourcePolicies',
    );
    scopes = registerOutput<List<String>?>('scopes');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
