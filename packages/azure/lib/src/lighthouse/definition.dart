import 'package:pulumi/pulumi.dart' as pulumi;
import 'definition_args.dart';
import 'definition_authorization.dart';
import 'definition_eligible_authorization.dart';
import 'definition_plan.dart';

/// Manages a [Lighthouse](https://docs.microsoft.com/azure/lighthouse) Definition.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const contributor = azure.authorization.getRoleDefinition({
///     roleDefinitionId: "b24988ac-6180-42a0-ab88-20f7382dd24c",
/// });
/// const example = new azure.lighthouse.Definition("example", {
///     name: "Sample definition",
///     description: "This is a lighthouse definition created IaC",
///     managingTenantId: "00000000-0000-0000-0000-000000000000",
///     scope: "/subscriptions/00000000-0000-0000-0000-000000000000",
///     authorizations: [{
///         principalId: "00000000-0000-0000-0000-000000000000",
///         roleDefinitionId: contributor.then(contributor => contributor.roleDefinitionId),
///         principalDisplayName: "Tier 1 Support",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// contributor = azure.authorization.get_role_definition(role_definition_id="b24988ac-6180-42a0-ab88-20f7382dd24c")
/// example = azure.lighthouse.Definition("example",
///     name="Sample definition",
///     description="This is a lighthouse definition created IaC",
///     managing_tenant_id="00000000-0000-0000-0000-000000000000",
///     scope="/subscriptions/00000000-0000-0000-0000-000000000000",
///     authorizations=[{
///         "principal_id": "00000000-0000-0000-0000-000000000000",
///         "role_definition_id": contributor.role_definition_id,
///         "principal_display_name": "Tier 1 Support",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var contributor = Azure.Authorization.GetRoleDefinition.Invoke(new()
///     {
///         RoleDefinitionId = "b24988ac-6180-42a0-ab88-20f7382dd24c",
///     });
///
///     var example = new Azure.Lighthouse.Definition("example", new()
///     {
///         Name = "Sample definition",
///         Description = "This is a lighthouse definition created IaC",
///         ManagingTenantId = "00000000-0000-0000-0000-000000000000",
///         Scope = "/subscriptions/00000000-0000-0000-0000-000000000000",
///         Authorizations = new[]
///         {
///             new Azure.Lighthouse.Inputs.DefinitionAuthorizationArgs
///             {
///                 PrincipalId = "00000000-0000-0000-0000-000000000000",
///                 RoleDefinitionId = contributor.Apply(getRoleDefinitionResult => getRoleDefinitionResult.RoleDefinitionId),
///                 PrincipalDisplayName = "Tier 1 Support",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/lighthouse"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		contributor, err := authorization.LookupRoleDefinition(ctx, &authorization.LookupRoleDefinitionArgs{
/// 			RoleDefinitionId: pulumi.StringRef("b24988ac-6180-42a0-ab88-20f7382dd24c"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lighthouse.NewDefinition(ctx, "example", &lighthouse.DefinitionArgs{
/// 			Name:             pulumi.String("Sample definition"),
/// 			Description:      pulumi.String("This is a lighthouse definition created IaC"),
/// 			ManagingTenantId: pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			Scope:            pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000"),
/// 			Authorizations: lighthouse.DefinitionAuthorizationArray{
/// 				&lighthouse.DefinitionAuthorizationArgs{
/// 					PrincipalId:          pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 					RoleDefinitionId:     pulumi.String(contributor.RoleDefinitionId),
/// 					PrincipalDisplayName: pulumi.String("Tier 1 Support"),
/// 				},
/// 			},
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
/// import com.pulumi.azure.authorization.AuthorizationFunctions;
/// import com.pulumi.azure.authorization.inputs.GetRoleDefinitionArgs;
/// import com.pulumi.azure.lighthouse.Definition;
/// import com.pulumi.azure.lighthouse.DefinitionArgs;
/// import com.pulumi.azure.lighthouse.inputs.DefinitionAuthorizationArgs;
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
///         final var contributor = AuthorizationFunctions.getRoleDefinition(GetRoleDefinitionArgs.builder()
///             .roleDefinitionId("b24988ac-6180-42a0-ab88-20f7382dd24c")
///             .build());
///
///         var example = new Definition("example", DefinitionArgs.builder()
///             .name("Sample definition")
///             .description("This is a lighthouse definition created IaC")
///             .managingTenantId("00000000-0000-0000-0000-000000000000")
///             .scope("/subscriptions/00000000-0000-0000-0000-000000000000")
///             .authorizations(DefinitionAuthorizationArgs.builder()
///                 .principalId("00000000-0000-0000-0000-000000000000")
///                 .roleDefinitionId(contributor.roleDefinitionId())
///                 .principalDisplayName("Tier 1 Support")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:lighthouse:Definition
///     properties:
///       name: Sample definition
///       description: This is a lighthouse definition created IaC
///       managingTenantId: 00000000-0000-0000-0000-000000000000
///       scope: /subscriptions/00000000-0000-0000-0000-000000000000
///       authorizations:
///         - principalId: 00000000-0000-0000-0000-000000000000
///           roleDefinitionId: ${contributor.roleDefinitionId}
///           principalDisplayName: Tier 1 Support
/// variables:
///   contributor:
///     fn::invoke:
///       function: azure:authorization:getRoleDefinition
///       arguments:
///         roleDefinitionId: b24988ac-6180-42a0-ab88-20f7382dd24c
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ManagedServices` - 2022-10-01
///
/// ## Import
///
/// Lighthouse Definitions can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:lighthouse/definition:Definition example /subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.ManagedServices/registrationDefinitions/00000000-0000-0000-0000-000000000000
/// ```
class Definition extends pulumi.CustomResource {
  /// An `authorization` block as defined below.
  late final pulumi.Output<List<DefinitionAuthorization>> authorizations;
  /// A description of the Lighthouse Definition.
  late final pulumi.Output<String?> description;
  /// An `eligible_authorization` block as defined below.
  late final pulumi.Output<List<DefinitionEligibleAuthorization>?> eligibleAuthorizations;
  /// A unique UUID/GUID which identifies this lighthouse definition - one will be generated if not specified. Changing this forces a new resource to be created.
  late final pulumi.Output<String> lighthouseDefinitionId;
  /// The ID of the managing tenant. Changing this forces a new resource to be created.
  late final pulumi.Output<String> managingTenantId;
  /// The name of the Lighthouse Definition. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// A `plan` block as defined below.
  late final pulumi.Output<DefinitionPlan?> plan;
  /// The ID of the managed subscription. Changing this forces a new resource to be created.
  late final pulumi.Output<String> scope;

  /// Creates a new [Definition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Definition]. {@macro pulumi_lighthouse_definition_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Definition(
    String name, {
    DefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:lighthouse/definition:Definition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authorizations = registerOutput<List<DefinitionAuthorization>>('authorizations');
    this.description = registerOutput<String?>('description');
    this.eligibleAuthorizations = registerOutput<List<DefinitionEligibleAuthorization>?>('eligibleAuthorizations');
    this.lighthouseDefinitionId = registerOutput<String>('lighthouseDefinitionId');
    this.managingTenantId = registerOutput<String>('managingTenantId');
    this.name = registerOutput<String>('name');
    this.plan = registerOutput<DefinitionPlan?>('plan');
    this.scope = registerOutput<String>('scope');
  }
}
