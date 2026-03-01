import 'package:pulumi/pulumi.dart' as pulumi;
import 'directory_role_eligibility_schedule_request_args.dart';

/// Manages a single directory role eligibility schedule request within Azure Active Directory.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// The calling principal requires one of the following application roles: `RoleEligibilitySchedule.ReadWrite.Directory` or `RoleManagement.ReadWrite.Directory`.
///
/// The calling principal requires one of the following directory roles: `Privileged Role Administrator` or `Global Administrator`.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = azuread.getUser({
///     userPrincipalName: "jdoe@example.com",
/// });
/// const exampleDirectoryRole = new azuread.DirectoryRole("example", {displayName: "Application Administrator"});
/// const exampleDirectoryRoleEligibilityScheduleRequest = new azuread.DirectoryRoleEligibilityScheduleRequest("example", {
///     roleDefinitionId: exampleDirectoryRole.templateId,
///     principalId: example.then(example => example.objectId),
///     directoryScopeId: "/",
///     justification: "Example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.get_user(user_principal_name="jdoe@example.com")
/// example_directory_role = azuread.DirectoryRole("example", display_name="Application Administrator")
/// example_directory_role_eligibility_schedule_request = azuread.DirectoryRoleEligibilityScheduleRequest("example",
///     role_definition_id=example_directory_role.template_id,
///     principal_id=example.object_id,
///     directory_scope_id="/",
///     justification="Example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AzureAD.GetUser.Invoke(new()
///     {
///         UserPrincipalName = "jdoe@example.com",
///     });
///
///     var exampleDirectoryRole = new AzureAD.DirectoryRole("example", new()
///     {
///         DisplayName = "Application Administrator",
///     });
///
///     var exampleDirectoryRoleEligibilityScheduleRequest = new AzureAD.DirectoryRoleEligibilityScheduleRequest("example", new()
///     {
///         RoleDefinitionId = exampleDirectoryRole.TemplateId,
///         PrincipalId = example.Apply(getUserResult => getUserResult.ObjectId),
///         DirectoryScopeId = "/",
///         Justification = "Example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azuread/sdk/v6/go/azuread"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := azuread.LookupUser(ctx, &azuread.LookupUserArgs{
/// 			UserPrincipalName: pulumi.StringRef("jdoe@example.com"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDirectoryRole, err := azuread.NewDirectoryRole(ctx, "example", &azuread.DirectoryRoleArgs{
/// 			DisplayName: pulumi.String("Application Administrator"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewDirectoryRoleEligibilityScheduleRequest(ctx, "example", &azuread.DirectoryRoleEligibilityScheduleRequestArgs{
/// 			RoleDefinitionId: exampleDirectoryRole.TemplateId,
/// 			PrincipalId:      pulumi.String(example.ObjectId),
/// 			DirectoryScopeId: pulumi.String("/"),
/// 			Justification:    pulumi.String("Example"),
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
/// import com.pulumi.azuread.AzureadFunctions;
/// import com.pulumi.azuread.inputs.GetUserArgs;
/// import com.pulumi.azuread.DirectoryRole;
/// import com.pulumi.azuread.DirectoryRoleArgs;
/// import com.pulumi.azuread.DirectoryRoleEligibilityScheduleRequest;
/// import com.pulumi.azuread.DirectoryRoleEligibilityScheduleRequestArgs;
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
///         final var example = AzureadFunctions.getUser(GetUserArgs.builder()
///             .userPrincipalName("jdoe@example.com")
///             .build());
///
///         var exampleDirectoryRole = new DirectoryRole("exampleDirectoryRole", DirectoryRoleArgs.builder()
///             .displayName("Application Administrator")
///             .build());
///
///         var exampleDirectoryRoleEligibilityScheduleRequest = new DirectoryRoleEligibilityScheduleRequest("exampleDirectoryRoleEligibilityScheduleRequest", DirectoryRoleEligibilityScheduleRequestArgs.builder()
///             .roleDefinitionId(exampleDirectoryRole.templateId())
///             .principalId(example.objectId())
///             .directoryScopeId("/")
///             .justification("Example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleDirectoryRole:
///     type: azuread:DirectoryRole
///     name: example
///     properties:
///       displayName: Application Administrator
///   exampleDirectoryRoleEligibilityScheduleRequest:
///     type: azuread:DirectoryRoleEligibilityScheduleRequest
///     name: example
///     properties:
///       roleDefinitionId: ${exampleDirectoryRole.templateId}
///       principalId: ${example.objectId}
///       directoryScopeId: /
///       justification: Example
/// variables:
///   example:
///     fn::invoke:
///       function: azuread:getUser
///       arguments:
///         userPrincipalName: jdoe@example.com
/// ```
///
///
/// > Note the use of the `template_id` attribute when referencing built-in roles.
///
/// ## Import
///
/// Directory role eligibility schedule requests can be imported using the ID of the assignment, e.g.
///
/// ```sh
/// $ pulumi import azuread:index/directoryRoleEligibilityScheduleRequest:DirectoryRoleEligibilityScheduleRequest example 822ec710-4c9f-4f71-a27a-451759cc7522
/// ```
class DirectoryRoleEligibilityScheduleRequest extends pulumi.CustomResource {
  /// Identifier of the directory object representing the scope of the role eligibility. Changing this forces a new resource to be created.
  late final pulumi.Output<String> directoryScopeId;
  /// Justification for why the principal is granted the role eligibility. Changing this forces a new resource to be created.
  late final pulumi.Output<String> justification;
  /// The object ID of the principal to granted the role eligibility. Changing this forces a new resource to be created.
  late final pulumi.Output<String> principalId;
  /// The template ID (in the case of built-in roles) or object ID (in the case of custom roles) of the directory role you want to assign. Changing this forces a new resource to be created.
  late final pulumi.Output<String> roleDefinitionId;

  /// Creates a new [DirectoryRoleEligibilityScheduleRequest].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DirectoryRoleEligibilityScheduleRequest]. {@macro pulumi_index_directory_role_eligibility_schedule_request_directory_role_eligibility_schedule_request_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DirectoryRoleEligibilityScheduleRequest(
    String name, {
    DirectoryRoleEligibilityScheduleRequestArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/directoryRoleEligibilityScheduleRequest:DirectoryRoleEligibilityScheduleRequest',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.directoryScopeId = registerOutput<String>('directoryScopeId');
    this.justification = registerOutput<String>('justification');
    this.principalId = registerOutput<String>('principalId');
    this.roleDefinitionId = registerOutput<String>('roleDefinitionId');
  }
}
