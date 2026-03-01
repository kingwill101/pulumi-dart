import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_response.dart';
import 'registration_definition_args.dart';
import 'registration_definition_properties_response.dart';
import 'system_data_response.dart';

/// The registration definition.
///
/// Uses Azure REST API version 2022-10-01. In version 2.x of the Azure Native provider, it used API version 2022-10-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Put Registration Definition
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var registrationDefinition = new AzureNative.ManagedServices.RegistrationDefinition("registrationDefinition", new()
///     {
///         Plan = new AzureNative.ManagedServices.Inputs.PlanArgs
///         {
///             Name = "addesai-plan",
///             Product = "test",
///             Publisher = "marketplace-test",
///             Version = "1.0.0",
///         },
///         Properties = new AzureNative.ManagedServices.Inputs.RegistrationDefinitionPropertiesArgs
///         {
///             Authorizations = new[]
///             {
///                 new AzureNative.ManagedServices.Inputs.AuthorizationArgs
///                 {
///                     PrincipalId = "f98d86a2-4cc4-4e9d-ad47-b3e80a1bcdfc",
///                     PrincipalIdDisplayName = "Support User",
///                     RoleDefinitionId = "acdd72a7-3385-48ef-bd42-f606fba81ae7",
///                 },
///                 new AzureNative.ManagedServices.Inputs.AuthorizationArgs
///                 {
///                     DelegatedRoleDefinitionIds = new[]
///                     {
///                         "b24988ac-6180-42a0-ab88-20f7382dd24c",
///                     },
///                     PrincipalId = "f98d86a2-4cc4-4e9d-ad47-b3e80a1bcdfc",
///                     PrincipalIdDisplayName = "User Access Administrator",
///                     RoleDefinitionId = "18d7d88d-d35e-4fb5-a5c3-7773c20a72d9",
///                 },
///             },
///             Description = "Tes1t",
///             EligibleAuthorizations = new[]
///             {
///                 new AzureNative.ManagedServices.Inputs.EligibleAuthorizationArgs
///                 {
///                     JustInTimeAccessPolicy = new AzureNative.ManagedServices.Inputs.JustInTimeAccessPolicyArgs
///                     {
///                         ManagedByTenantApprovers = new[]
///                         {
///                             new AzureNative.ManagedServices.Inputs.EligibleApproverArgs
///                             {
///                                 PrincipalId = "d9b22cd6-6407-43cc-8c60-07c56df0b51a",
///                                 PrincipalIdDisplayName = "Approver Group",
///                             },
///                         },
///                         MaximumActivationDuration = "PT8H",
///                         MultiFactorAuthProvider = AzureNative.ManagedServices.MultiFactorAuthProvider.Azure,
///                     },
///                     PrincipalId = "3e0ed8c6-e902-4fc5-863c-e3ddbb2ae2a2",
///                     PrincipalIdDisplayName = "Support User",
///                     RoleDefinitionId = "ae349356-3a1b-4a5e-921d-050484c6347e",
///                 },
///             },
///             ManagedByTenantId = "83abe5cd-bcc3-441a-bd86-e6a75360cecc",
///             RegistrationDefinitionName = "DefinitionName",
///         },
///         RegistrationDefinitionId = "26c128c2-fefa-4340-9bb1-6e081c90ada2",
///         Scope = "subscription/0afefe50-734e-4610-8a82-a144ahf49dea",
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
/// 	managedservices "github.com/pulumi/pulumi-azure-native-sdk/managedservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := managedservices.NewRegistrationDefinition(ctx, "registrationDefinition", &managedservices.RegistrationDefinitionArgs{
/// 			Plan: &managedservices.PlanArgs{
/// 				Name:      pulumi.String("addesai-plan"),
/// 				Product:   pulumi.String("test"),
/// 				Publisher: pulumi.String("marketplace-test"),
/// 				Version:   pulumi.String("1.0.0"),
/// 			},
/// 			Properties: &managedservices.RegistrationDefinitionPropertiesArgs{
/// 				Authorizations: managedservices.AuthorizationArray{
/// 					&managedservices.AuthorizationArgs{
/// 						PrincipalId:            pulumi.String("f98d86a2-4cc4-4e9d-ad47-b3e80a1bcdfc"),
/// 						PrincipalIdDisplayName: pulumi.String("Support User"),
/// 						RoleDefinitionId:       pulumi.String("acdd72a7-3385-48ef-bd42-f606fba81ae7"),
/// 					},
/// 					&managedservices.AuthorizationArgs{
/// 						DelegatedRoleDefinitionIds: pulumi.StringArray{
/// 							pulumi.String("b24988ac-6180-42a0-ab88-20f7382dd24c"),
/// 						},
/// 						PrincipalId:            pulumi.String("f98d86a2-4cc4-4e9d-ad47-b3e80a1bcdfc"),
/// 						PrincipalIdDisplayName: pulumi.String("User Access Administrator"),
/// 						RoleDefinitionId:       pulumi.String("18d7d88d-d35e-4fb5-a5c3-7773c20a72d9"),
/// 					},
/// 				},
/// 				Description: pulumi.String("Tes1t"),
/// 				EligibleAuthorizations: managedservices.EligibleAuthorizationArray{
/// 					&managedservices.EligibleAuthorizationArgs{
/// 						JustInTimeAccessPolicy: &managedservices.JustInTimeAccessPolicyArgs{
/// 							ManagedByTenantApprovers: managedservices.EligibleApproverArray{
/// 								&managedservices.EligibleApproverArgs{
/// 									PrincipalId:            pulumi.String("d9b22cd6-6407-43cc-8c60-07c56df0b51a"),
/// 									PrincipalIdDisplayName: pulumi.String("Approver Group"),
/// 								},
/// 							},
/// 							MaximumActivationDuration: pulumi.String("PT8H"),
/// 							MultiFactorAuthProvider:   pulumi.String(managedservices.MultiFactorAuthProviderAzure),
/// 						},
/// 						PrincipalId:            pulumi.String("3e0ed8c6-e902-4fc5-863c-e3ddbb2ae2a2"),
/// 						PrincipalIdDisplayName: pulumi.String("Support User"),
/// 						RoleDefinitionId:       pulumi.String("ae349356-3a1b-4a5e-921d-050484c6347e"),
/// 					},
/// 				},
/// 				ManagedByTenantId:          pulumi.String("83abe5cd-bcc3-441a-bd86-e6a75360cecc"),
/// 				RegistrationDefinitionName: pulumi.String("DefinitionName"),
/// 			},
/// 			RegistrationDefinitionId: pulumi.String("26c128c2-fefa-4340-9bb1-6e081c90ada2"),
/// 			Scope:                    pulumi.String("subscription/0afefe50-734e-4610-8a82-a144ahf49dea"),
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
/// import com.pulumi.azurenative.managedservices.RegistrationDefinition;
/// import com.pulumi.azurenative.managedservices.RegistrationDefinitionArgs;
/// import com.pulumi.azurenative.managedservices.inputs.PlanArgs;
/// import com.pulumi.azurenative.managedservices.inputs.RegistrationDefinitionPropertiesArgs;
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
///         var registrationDefinition = new RegistrationDefinition("registrationDefinition", RegistrationDefinitionArgs.builder()
///             .plan(PlanArgs.builder()
///                 .name("addesai-plan")
///                 .product("test")
///                 .publisher("marketplace-test")
///                 .version("1.0.0")
///                 .build())
///             .properties(RegistrationDefinitionPropertiesArgs.builder()
///                 .authorizations(
///                     AuthorizationArgs.builder()
///                         .principalId("f98d86a2-4cc4-4e9d-ad47-b3e80a1bcdfc")
///                         .principalIdDisplayName("Support User")
///                         .roleDefinitionId("acdd72a7-3385-48ef-bd42-f606fba81ae7")
///                         .build(),
///                     AuthorizationArgs.builder()
///                         .delegatedRoleDefinitionIds("b24988ac-6180-42a0-ab88-20f7382dd24c")
///                         .principalId("f98d86a2-4cc4-4e9d-ad47-b3e80a1bcdfc")
///                         .principalIdDisplayName("User Access Administrator")
///                         .roleDefinitionId("18d7d88d-d35e-4fb5-a5c3-7773c20a72d9")
///                         .build())
///                 .description("Tes1t")
///                 .eligibleAuthorizations(EligibleAuthorizationArgs.builder()
///                     .justInTimeAccessPolicy(JustInTimeAccessPolicyArgs.builder()
///                         .managedByTenantApprovers(EligibleApproverArgs.builder()
///                             .principalId("d9b22cd6-6407-43cc-8c60-07c56df0b51a")
///                             .principalIdDisplayName("Approver Group")
///                             .build())
///                         .maximumActivationDuration("PT8H")
///                         .multiFactorAuthProvider("Azure")
///                         .build())
///                     .principalId("3e0ed8c6-e902-4fc5-863c-e3ddbb2ae2a2")
///                     .principalIdDisplayName("Support User")
///                     .roleDefinitionId("ae349356-3a1b-4a5e-921d-050484c6347e")
///                     .build())
///                 .managedByTenantId("83abe5cd-bcc3-441a-bd86-e6a75360cecc")
///                 .registrationDefinitionName("DefinitionName")
///                 .build())
///             .registrationDefinitionId("26c128c2-fefa-4340-9bb1-6e081c90ada2")
///             .scope("subscription/0afefe50-734e-4610-8a82-a144ahf49dea")
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
/// const registrationDefinition = new azure_native.managedservices.RegistrationDefinition("registrationDefinition", {
///     plan: {
///         name: "addesai-plan",
///         product: "test",
///         publisher: "marketplace-test",
///         version: "1.0.0",
///     },
///     properties: {
///         authorizations: [
///             {
///                 principalId: "f98d86a2-4cc4-4e9d-ad47-b3e80a1bcdfc",
///                 principalIdDisplayName: "Support User",
///                 roleDefinitionId: "acdd72a7-3385-48ef-bd42-f606fba81ae7",
///             },
///             {
///                 delegatedRoleDefinitionIds: ["b24988ac-6180-42a0-ab88-20f7382dd24c"],
///                 principalId: "f98d86a2-4cc4-4e9d-ad47-b3e80a1bcdfc",
///                 principalIdDisplayName: "User Access Administrator",
///                 roleDefinitionId: "18d7d88d-d35e-4fb5-a5c3-7773c20a72d9",
///             },
///         ],
///         description: "Tes1t",
///         eligibleAuthorizations: [{
///             justInTimeAccessPolicy: {
///                 managedByTenantApprovers: [{
///                     principalId: "d9b22cd6-6407-43cc-8c60-07c56df0b51a",
///                     principalIdDisplayName: "Approver Group",
///                 }],
///                 maximumActivationDuration: "PT8H",
///                 multiFactorAuthProvider: azure_native.managedservices.MultiFactorAuthProvider.Azure,
///             },
///             principalId: "3e0ed8c6-e902-4fc5-863c-e3ddbb2ae2a2",
///             principalIdDisplayName: "Support User",
///             roleDefinitionId: "ae349356-3a1b-4a5e-921d-050484c6347e",
///         }],
///         managedByTenantId: "83abe5cd-bcc3-441a-bd86-e6a75360cecc",
///         registrationDefinitionName: "DefinitionName",
///     },
///     registrationDefinitionId: "26c128c2-fefa-4340-9bb1-6e081c90ada2",
///     scope: "subscription/0afefe50-734e-4610-8a82-a144ahf49dea",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// registration_definition = azure_native.managedservices.RegistrationDefinition("registrationDefinition",
///     plan={
///         "name": "addesai-plan",
///         "product": "test",
///         "publisher": "marketplace-test",
///         "version": "1.0.0",
///     },
///     properties={
///         "authorizations": [
///             {
///                 "principal_id": "f98d86a2-4cc4-4e9d-ad47-b3e80a1bcdfc",
///                 "principal_id_display_name": "Support User",
///                 "role_definition_id": "acdd72a7-3385-48ef-bd42-f606fba81ae7",
///             },
///             {
///                 "delegated_role_definition_ids": ["b24988ac-6180-42a0-ab88-20f7382dd24c"],
///                 "principal_id": "f98d86a2-4cc4-4e9d-ad47-b3e80a1bcdfc",
///                 "principal_id_display_name": "User Access Administrator",
///                 "role_definition_id": "18d7d88d-d35e-4fb5-a5c3-7773c20a72d9",
///             },
///         ],
///         "description": "Tes1t",
///         "eligible_authorizations": [{
///             "just_in_time_access_policy": {
///                 "managed_by_tenant_approvers": [{
///                     "principal_id": "d9b22cd6-6407-43cc-8c60-07c56df0b51a",
///                     "principal_id_display_name": "Approver Group",
///                 }],
///                 "maximum_activation_duration": "PT8H",
///                 "multi_factor_auth_provider": azure_native.managedservices.MultiFactorAuthProvider.AZURE,
///             },
///             "principal_id": "3e0ed8c6-e902-4fc5-863c-e3ddbb2ae2a2",
///             "principal_id_display_name": "Support User",
///             "role_definition_id": "ae349356-3a1b-4a5e-921d-050484c6347e",
///         }],
///         "managed_by_tenant_id": "83abe5cd-bcc3-441a-bd86-e6a75360cecc",
///         "registration_definition_name": "DefinitionName",
///     },
///     registration_definition_id="26c128c2-fefa-4340-9bb1-6e081c90ada2",
///     scope="subscription/0afefe50-734e-4610-8a82-a144ahf49dea")
///
/// ```
///
/// ```yaml
/// resources:
///   registrationDefinition:
///     type: azure-native:managedservices:RegistrationDefinition
///     properties:
///       plan:
///         name: addesai-plan
///         product: test
///         publisher: marketplace-test
///         version: 1.0.0
///       properties:
///         authorizations:
///           - principalId: f98d86a2-4cc4-4e9d-ad47-b3e80a1bcdfc
///             principalIdDisplayName: Support User
///             roleDefinitionId: acdd72a7-3385-48ef-bd42-f606fba81ae7
///           - delegatedRoleDefinitionIds:
///               - b24988ac-6180-42a0-ab88-20f7382dd24c
///             principalId: f98d86a2-4cc4-4e9d-ad47-b3e80a1bcdfc
///             principalIdDisplayName: User Access Administrator
///             roleDefinitionId: 18d7d88d-d35e-4fb5-a5c3-7773c20a72d9
///         description: Tes1t
///         eligibleAuthorizations:
///           - justInTimeAccessPolicy:
///               managedByTenantApprovers:
///                 - principalId: d9b22cd6-6407-43cc-8c60-07c56df0b51a
///                   principalIdDisplayName: Approver Group
///               maximumActivationDuration: PT8H
///               multiFactorAuthProvider: Azure
///             principalId: 3e0ed8c6-e902-4fc5-863c-e3ddbb2ae2a2
///             principalIdDisplayName: Support User
///             roleDefinitionId: ae349356-3a1b-4a5e-921d-050484c6347e
///         managedByTenantId: 83abe5cd-bcc3-441a-bd86-e6a75360cecc
///         registrationDefinitionName: DefinitionName
///       registrationDefinitionId: 26c128c2-fefa-4340-9bb1-6e081c90ada2
///       scope: subscription/0afefe50-734e-4610-8a82-a144ahf49dea
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
/// $ pulumi import azure-native:managedservices:RegistrationDefinition 26c128c2-fefa-4340-9bb1-6e081c90ada2 /{scope}/providers/Microsoft.ManagedServices/registrationDefinitions/{registrationDefinitionId}
/// ```
class RegistrationDefinition extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the registration definition.
  late final pulumi.Output<String> name;
  /// The details for the Managed Services offer’s plan in Azure Marketplace.
  late final pulumi.Output<PlanResponse?> plan;
  /// The properties of a registration definition.
  late final pulumi.Output<RegistrationDefinitionPropertiesResponse> properties;
  /// The metadata for the registration assignment resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the Azure resource (Microsoft.ManagedServices/registrationDefinitions).
  late final pulumi.Output<String> type;

  /// Creates a new [RegistrationDefinition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegistrationDefinition]. {@macro pulumi_managedservices_registration_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegistrationDefinition(
    String name, {
    RegistrationDefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:managedservices:RegistrationDefinition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    this.plan = registerOutput<PlanResponse?>('plan');
    this.properties = registerOutput<RegistrationDefinitionPropertiesResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
