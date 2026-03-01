import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_hardware_security_module_role_assignment_args.dart';

/// Manages a Managed Hardware Security Module Role Assignment.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const user = azure.keyvault.getManagedHardwareSecurityModuleRoleDefinition({
///     managedHsmId: exampleAzurermKeyVaultManagedHardwareSecurityModule.id,
///     name: "21dbd100-6940-42c2-9190-5d6cb909625b",
/// });
/// const example = new azure.keyvault.ManagedHardwareSecurityModuleRoleAssignment("example", {
///     name: "a9dbe818-56e7-5878-c0ce-a1477692c1d6",
///     managedHsmId: exampleAzurermKeyVaultManagedHardwareSecurityModule.id,
///     scope: user.then(user => user.scope),
///     roleDefinitionId: user.then(user => user.resourceManagerId),
///     principalId: current.objectId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// user = azure.keyvault.get_managed_hardware_security_module_role_definition(managed_hsm_id=example_azurerm_key_vault_managed_hardware_security_module["id"],
///     name="21dbd100-6940-42c2-9190-5d6cb909625b")
/// example = azure.keyvault.ManagedHardwareSecurityModuleRoleAssignment("example",
///     name="a9dbe818-56e7-5878-c0ce-a1477692c1d6",
///     managed_hsm_id=example_azurerm_key_vault_managed_hardware_security_module["id"],
///     scope=user.scope,
///     role_definition_id=user.resource_manager_id,
///     principal_id=current["objectId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var user = Azure.KeyVault.GetManagedHardwareSecurityModuleRoleDefinition.Invoke(new()
///     {
///         ManagedHsmId = exampleAzurermKeyVaultManagedHardwareSecurityModule.Id,
///         Name = "21dbd100-6940-42c2-9190-5d6cb909625b",
///     });
///
///     var example = new Azure.KeyVault.ManagedHardwareSecurityModuleRoleAssignment("example", new()
///     {
///         Name = "a9dbe818-56e7-5878-c0ce-a1477692c1d6",
///         ManagedHsmId = exampleAzurermKeyVaultManagedHardwareSecurityModule.Id,
///         Scope = user.Apply(getManagedHardwareSecurityModuleRoleDefinitionResult => getManagedHardwareSecurityModuleRoleDefinitionResult.Scope),
///         RoleDefinitionId = user.Apply(getManagedHardwareSecurityModuleRoleDefinitionResult => getManagedHardwareSecurityModuleRoleDefinitionResult.ResourceManagerId),
///         PrincipalId = current.ObjectId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		user, err := keyvault.LookupManagedHardwareSecurityModuleRoleDefinition(ctx, &keyvault.LookupManagedHardwareSecurityModuleRoleDefinitionArgs{
/// 			ManagedHsmId: exampleAzurermKeyVaultManagedHardwareSecurityModule.Id,
/// 			Name:         "21dbd100-6940-42c2-9190-5d6cb909625b",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = keyvault.NewManagedHardwareSecurityModuleRoleAssignment(ctx, "example", &keyvault.ManagedHardwareSecurityModuleRoleAssignmentArgs{
/// 			Name:             pulumi.String("a9dbe818-56e7-5878-c0ce-a1477692c1d6"),
/// 			ManagedHsmId:     pulumi.Any(exampleAzurermKeyVaultManagedHardwareSecurityModule.Id),
/// 			Scope:            pulumi.Any(user.Scope),
/// 			RoleDefinitionId: pulumi.String(user.ResourceManagerId),
/// 			PrincipalId:      pulumi.Any(current.ObjectId),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.keyvault.KeyvaultFunctions;
/// import com.pulumi.azure.keyvault.inputs.GetManagedHardwareSecurityModuleRoleDefinitionArgs;
/// import com.pulumi.azure.keyvault.ManagedHardwareSecurityModuleRoleAssignment;
/// import com.pulumi.azure.keyvault.ManagedHardwareSecurityModuleRoleAssignmentArgs;
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
///         final var user = KeyvaultFunctions.getManagedHardwareSecurityModuleRoleDefinition(GetManagedHardwareSecurityModuleRoleDefinitionArgs.builder()
///             .managedHsmId(exampleAzurermKeyVaultManagedHardwareSecurityModule.id())
///             .name("21dbd100-6940-42c2-9190-5d6cb909625b")
///             .build());
///
///         var example = new ManagedHardwareSecurityModuleRoleAssignment("example", ManagedHardwareSecurityModuleRoleAssignmentArgs.builder()
///             .name("a9dbe818-56e7-5878-c0ce-a1477692c1d6")
///             .managedHsmId(exampleAzurermKeyVaultManagedHardwareSecurityModule.id())
///             .scope(user.scope())
///             .roleDefinitionId(user.resourceManagerId())
///             .principalId(current.objectId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:keyvault:ManagedHardwareSecurityModuleRoleAssignment
///     properties:
///       name: a9dbe818-56e7-5878-c0ce-a1477692c1d6
///       managedHsmId: ${exampleAzurermKeyVaultManagedHardwareSecurityModule.id}
///       scope: ${user.scope}
///       roleDefinitionId: ${user.resourceManagerId}
///       principalId: ${current.objectId}
/// variables:
///   user:
///     fn::invoke:
///       function: azure:keyvault:getManagedHardwareSecurityModuleRoleDefinition
///       arguments:
///         managedHsmId: ${exampleAzurermKeyVaultManagedHardwareSecurityModule.id}
///         name: 21dbd100-6940-42c2-9190-5d6cb909625b
/// ```
///
///
/// ## Import
///
/// Managed Hardware Security Modules can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:keyvault/managedHardwareSecurityModuleRoleAssignment:ManagedHardwareSecurityModuleRoleAssignment example https://0000.managedhsm.azure.net///RoleAssignment/00000000-0000-0000-0000-000000000000
/// ```
class ManagedHardwareSecurityModuleRoleAssignment extends pulumi.CustomResource {
  /// The ID of a Managed Hardware Security Module resource. Changing this forces a new Managed Hardware Security Module to be created.
  late final pulumi.Output<String> managedHsmId;
  /// The name in GUID notation which should be used for this Managed Hardware Security Module Role Assignment. Changing this forces a new Managed Hardware Security Module to be created.
  late final pulumi.Output<String> name;
  /// The principal ID to be assigned to this role. It can point to a user, service principal, or security group. Changing this forces a new Managed Hardware Security Module to be created.
  late final pulumi.Output<String> principalId;
  /// (Deprecated) The resource id of created assignment resource.
  late final pulumi.Output<String> resourceId;
  /// The resource ID of the role definition to assign. Changing this forces a new Managed Hardware Security Module to be created.
  late final pulumi.Output<String> roleDefinitionId;
  /// Specifies the scope to create the role assignment. Changing this forces a new Managed Hardware Security Module to be created.
  late final pulumi.Output<String> scope;

  /// Creates a new [ManagedHardwareSecurityModuleRoleAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedHardwareSecurityModuleRoleAssignment]. {@macro pulumi_keyvault_managed_hardware_security_module_role_assignment_managed_hardware_security_module_role_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedHardwareSecurityModuleRoleAssignment(
    String name, {
    ManagedHardwareSecurityModuleRoleAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:keyvault/managedHardwareSecurityModuleRoleAssignment:ManagedHardwareSecurityModuleRoleAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.managedHsmId = registerOutput<String>('managedHsmId');
    this.name = registerOutput<String>('name');
    this.principalId = registerOutput<String>('principalId');
    this.resourceId = registerOutput<String>('resourceId');
    this.roleDefinitionId = registerOutput<String>('roleDefinitionId');
    this.scope = registerOutput<String>('scope');
  }
}
