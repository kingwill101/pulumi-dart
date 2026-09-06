import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_assignment_properties_response.dart';
import 'role_management_policy_assignment_args.dart';
import 'system_data_response.dart';

/// Role management policy
///
/// Uses Azure REST API version 2024-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2020-10-01.
///
/// Other available API versions: 2020-10-01, 2020-10-01-preview, 2024-02-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native authorization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PutRoleManagementPolicyAssignment
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var roleManagementPolicyAssignment = new AzureNative.Authorization.RoleManagementPolicyAssignment("roleManagementPolicyAssignment", new()
///     {
///         PolicyId = "/subscriptions/129ff972-28f8-46b8-a726-e497be039368/providers/Microsoft.Authorization/roleManagementPolicies/b959d571-f0b5-4042-88a7-01be6cb22db9",
///         RoleDefinitionId = "/subscriptions/129ff972-28f8-46b8-a726-e497be039368/providers/Microsoft.Authorization/roleDefinitions/a1705bd2-3a8f-45a5-8683-466fcfd5cc24",
///         RoleManagementPolicyAssignmentName = "b959d571-f0b5-4042-88a7-01be6cb22db9_a1705bd2-3a8f-45a5-8683-466fcfd5cc24",
///         Scope = "providers/Microsoft.Subscription/subscriptions/129ff972-28f8-46b8-a726-e497be039368",
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
/// 	authorization "github.com/pulumi/pulumi-azure-native-sdk/authorization/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := authorization.NewRoleManagementPolicyAssignment(ctx, "roleManagementPolicyAssignment", &authorization.RoleManagementPolicyAssignmentArgs{
/// 			PolicyId:                           pulumi.String("/subscriptions/129ff972-28f8-46b8-a726-e497be039368/providers/Microsoft.Authorization/roleManagementPolicies/b959d571-f0b5-4042-88a7-01be6cb22db9"),
/// 			RoleDefinitionId:                   pulumi.String("/subscriptions/129ff972-28f8-46b8-a726-e497be039368/providers/Microsoft.Authorization/roleDefinitions/a1705bd2-3a8f-45a5-8683-466fcfd5cc24"),
/// 			RoleManagementPolicyAssignmentName: pulumi.String("b959d571-f0b5-4042-88a7-01be6cb22db9_a1705bd2-3a8f-45a5-8683-466fcfd5cc24"),
/// 			Scope:                              pulumi.String("providers/Microsoft.Subscription/subscriptions/129ff972-28f8-46b8-a726-e497be039368"),
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
/// resource "azure-native_authorization_rolemanagementpolicyassignment" "roleManagementPolicyAssignment" {
///   policy_id                              = "/subscriptions/129ff972-28f8-46b8-a726-e497be039368/providers/Microsoft.Authorization/roleManagementPolicies/b959d571-f0b5-4042-88a7-01be6cb22db9"
///   role_definition_id                     = "/subscriptions/129ff972-28f8-46b8-a726-e497be039368/providers/Microsoft.Authorization/roleDefinitions/a1705bd2-3a8f-45a5-8683-466fcfd5cc24"
///   role_management_policy_assignment_name = "b959d571-f0b5-4042-88a7-01be6cb22db9_a1705bd2-3a8f-45a5-8683-466fcfd5cc24"
///   scope                                  = "providers/Microsoft.Subscription/subscriptions/129ff972-28f8-46b8-a726-e497be039368"
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
/// import com.pulumi.azurenative.authorization.RoleManagementPolicyAssignment;
/// import com.pulumi.azurenative.authorization.RoleManagementPolicyAssignmentArgs;
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
///         var roleManagementPolicyAssignment = new RoleManagementPolicyAssignment("roleManagementPolicyAssignment", RoleManagementPolicyAssignmentArgs.builder()
///             .policyId("/subscriptions/129ff972-28f8-46b8-a726-e497be039368/providers/Microsoft.Authorization/roleManagementPolicies/b959d571-f0b5-4042-88a7-01be6cb22db9")
///             .roleDefinitionId("/subscriptions/129ff972-28f8-46b8-a726-e497be039368/providers/Microsoft.Authorization/roleDefinitions/a1705bd2-3a8f-45a5-8683-466fcfd5cc24")
///             .roleManagementPolicyAssignmentName("b959d571-f0b5-4042-88a7-01be6cb22db9_a1705bd2-3a8f-45a5-8683-466fcfd5cc24")
///             .scope("providers/Microsoft.Subscription/subscriptions/129ff972-28f8-46b8-a726-e497be039368")
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
/// const roleManagementPolicyAssignment = new azure_native.authorization.RoleManagementPolicyAssignment("roleManagementPolicyAssignment", {
///     policyId: "/subscriptions/129ff972-28f8-46b8-a726-e497be039368/providers/Microsoft.Authorization/roleManagementPolicies/b959d571-f0b5-4042-88a7-01be6cb22db9",
///     roleDefinitionId: "/subscriptions/129ff972-28f8-46b8-a726-e497be039368/providers/Microsoft.Authorization/roleDefinitions/a1705bd2-3a8f-45a5-8683-466fcfd5cc24",
///     roleManagementPolicyAssignmentName: "b959d571-f0b5-4042-88a7-01be6cb22db9_a1705bd2-3a8f-45a5-8683-466fcfd5cc24",
///     scope: "providers/Microsoft.Subscription/subscriptions/129ff972-28f8-46b8-a726-e497be039368",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// role_management_policy_assignment = azure_native.authorization.RoleManagementPolicyAssignment("roleManagementPolicyAssignment",
///     policy_id="/subscriptions/129ff972-28f8-46b8-a726-e497be039368/providers/Microsoft.Authorization/roleManagementPolicies/b959d571-f0b5-4042-88a7-01be6cb22db9",
///     role_definition_id="/subscriptions/129ff972-28f8-46b8-a726-e497be039368/providers/Microsoft.Authorization/roleDefinitions/a1705bd2-3a8f-45a5-8683-466fcfd5cc24",
///     role_management_policy_assignment_name="b959d571-f0b5-4042-88a7-01be6cb22db9_a1705bd2-3a8f-45a5-8683-466fcfd5cc24",
///     scope="providers/Microsoft.Subscription/subscriptions/129ff972-28f8-46b8-a726-e497be039368")
///
/// ```
///
/// ```yaml
/// resources:
///   roleManagementPolicyAssignment:
///     type: azure-native:authorization:RoleManagementPolicyAssignment
///     properties:
///       policyId: /subscriptions/129ff972-28f8-46b8-a726-e497be039368/providers/Microsoft.Authorization/roleManagementPolicies/b959d571-f0b5-4042-88a7-01be6cb22db9
///       roleDefinitionId: /subscriptions/129ff972-28f8-46b8-a726-e497be039368/providers/Microsoft.Authorization/roleDefinitions/a1705bd2-3a8f-45a5-8683-466fcfd5cc24
///       roleManagementPolicyAssignmentName: b959d571-f0b5-4042-88a7-01be6cb22db9_a1705bd2-3a8f-45a5-8683-466fcfd5cc24
///       scope: providers/Microsoft.Subscription/subscriptions/129ff972-28f8-46b8-a726-e497be039368
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
/// $ pulumi import azure-native:authorization:RoleManagementPolicyAssignment b959d571-f0b5-4042-88a7-01be6cb22db9_a1705bd2-3a8f-45a5-8683-466fcfd5cc24 /{scope}/providers/Microsoft.Authorization/roleManagementPolicyAssignments/{roleManagementPolicyAssignmentName}
/// ```
class RoleManagementPolicyAssignment extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The readonly computed rule applied to the policy.
  late final pulumi.Output<List<dynamic>> effectiveRules;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Additional properties of scope, role definition and policy
  late final pulumi.Output<PolicyAssignmentPropertiesResponse> policyAssignmentProperties;
  /// The policy id role management policy assignment.
  late final pulumi.Output<String?> policyId;
  /// The role definition of management policy assignment.
  late final pulumi.Output<String?> roleDefinitionId;
  /// The role management policy scope.
  late final pulumi.Output<String?> scope;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [RoleManagementPolicyAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RoleManagementPolicyAssignment]. {@macro pulumi_authorization_role_management_policy_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RoleManagementPolicyAssignment(
    String name, {
    RoleManagementPolicyAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:authorization:RoleManagementPolicyAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    effectiveRules = registerOutput<List<dynamic>>('effectiveRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); });
    this.name = registerOutput<String>('name');
    policyAssignmentProperties = registerOutput<PolicyAssignmentPropertiesResponse>('policyAssignmentProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicyAssignmentPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    policyId = registerOutput<String?>('policyId');
    roleDefinitionId = registerOutput<String?>('roleDefinitionId');
    scope = registerOutput<String?>('scope');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [RoleManagementPolicyAssignment] resource.
  RoleManagementPolicyAssignment.reference(String urn)
    : super(
        'azure-native:authorization:RoleManagementPolicyAssignment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    effectiveRules = registerOutput<List<dynamic>>('effectiveRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); });
    this.name = registerOutput<String>('name');
    policyAssignmentProperties = registerOutput<PolicyAssignmentPropertiesResponse>('policyAssignmentProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicyAssignmentPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    policyId = registerOutput<String?>('policyId');
    roleDefinitionId = registerOutput<String?>('roleDefinitionId');
    scope = registerOutput<String?>('scope');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
