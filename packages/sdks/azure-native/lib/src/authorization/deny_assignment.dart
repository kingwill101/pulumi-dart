import 'package:pulumi/pulumi.dart' as pulumi;
import 'deny_assignment_args.dart';
import 'deny_assignment_permission_response.dart';
import 'deny_assignment_principal_response.dart';
import 'system_data_response.dart';

/// Deny Assignment
///
/// Uses Azure REST API version 2024-07-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create deny assignment for subscription
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var denyAssignment = new AzureNative.Authorization.DenyAssignment("denyAssignment", new()
///     {
///         DenyAssignmentEffect = AzureNative.Authorization.DenyAssignmentEffect.Enforced,
///         DenyAssignmentId = "64b75d79-7a26-4341-944e-4f1a19f0e6ca",
///         DenyAssignmentName = "Deny delete on critical resources",
///         Description = "Prevent all users from deleting critical resources in the subscription.",
///         DoNotApplyToChildScopes = false,
///         ExcludePrincipals = new[]
///         {
///             new AzureNative.Authorization.Inputs.DenyAssignmentPrincipalArgs
///             {
///                 Id = "ce2ce14e-85d7-4629-bdbc-454d0519d987",
///                 Type = "ServicePrincipal",
///             },
///         },
///         Permissions = new[]
///         {
///             new AzureNative.Authorization.Inputs.DenyAssignmentPermissionArgs
///             {
///                 Actions = new[]
///                 {
///                     "*/delete",
///                 },
///                 DataActions = new() { },
///                 NotActions = new() { },
///                 NotDataActions = new() { },
///             },
///         },
///         Principals = new[]
///         {
///             new AzureNative.Authorization.Inputs.DenyAssignmentPrincipalArgs
///             {
///                 Id = "00000000-0000-0000-0000-000000000000",
///                 Type = "SystemDefined",
///             },
///         },
///         Scope = "subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2",
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
/// 		_, err := authorization.NewDenyAssignment(ctx, "denyAssignment", &authorization.DenyAssignmentArgs{
/// 			DenyAssignmentEffect:    pulumi.String(authorization.DenyAssignmentEffectEnforced),
/// 			DenyAssignmentId:        pulumi.String("64b75d79-7a26-4341-944e-4f1a19f0e6ca"),
/// 			DenyAssignmentName:      pulumi.String("Deny delete on critical resources"),
/// 			Description:             pulumi.String("Prevent all users from deleting critical resources in the subscription."),
/// 			DoNotApplyToChildScopes: pulumi.Bool(false),
/// 			ExcludePrincipals: authorization.DenyAssignmentPrincipalArray{
/// 				&authorization.DenyAssignmentPrincipalArgs{
/// 					Id:   pulumi.String("ce2ce14e-85d7-4629-bdbc-454d0519d987"),
/// 					Type: pulumi.String("ServicePrincipal"),
/// 				},
/// 			},
/// 			Permissions: authorization.DenyAssignmentPermissionArray{
/// 				&authorization.DenyAssignmentPermissionArgs{
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("*/delete"),
/// 					},
/// 					DataActions:    pulumi.StringArray{},
/// 					NotActions:     pulumi.StringArray{},
/// 					NotDataActions: pulumi.StringArray{},
/// 				},
/// 			},
/// 			Principals: authorization.DenyAssignmentPrincipalArray{
/// 				&authorization.DenyAssignmentPrincipalArgs{
/// 					Id:   pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 					Type: pulumi.String("SystemDefined"),
/// 				},
/// 			},
/// 			Scope: pulumi.String("subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2"),
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
/// resource "azure-native_authorization_denyassignment" "denyAssignment" {
///   deny_assignment_effect       = "enforced"
///   deny_assignment_id           = "64b75d79-7a26-4341-944e-4f1a19f0e6ca"
///   deny_assignment_name         = "Deny delete on critical resources"
///   description                  = "Prevent all users from deleting critical resources in the subscription."
///   do_not_apply_to_child_scopes = false
///   exclude_principals {
///     id   = "ce2ce14e-85d7-4629-bdbc-454d0519d987"
///     type = "ServicePrincipal"
///   }
///   permissions {
///     actions          = ["*/delete"]
///     data_actions     = []
///     not_actions      = []
///     not_data_actions = []
///   }
///   principals {
///     id   = "00000000-0000-0000-0000-000000000000"
///     type = "SystemDefined"
///   }
///   scope = "subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2"
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
/// import com.pulumi.azurenative.authorization.DenyAssignment;
/// import com.pulumi.azurenative.authorization.DenyAssignmentArgs;
/// import com.pulumi.azurenative.authorization.inputs.DenyAssignmentPrincipalArgs;
/// import com.pulumi.azurenative.authorization.inputs.DenyAssignmentPermissionArgs;
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
///         var denyAssignment = new DenyAssignment("denyAssignment", DenyAssignmentArgs.builder()
///             .denyAssignmentEffect("enforced")
///             .denyAssignmentId("64b75d79-7a26-4341-944e-4f1a19f0e6ca")
///             .denyAssignmentName("Deny delete on critical resources")
///             .description("Prevent all users from deleting critical resources in the subscription.")
///             .doNotApplyToChildScopes(false)
///             .excludePrincipals(DenyAssignmentPrincipalArgs.builder()
///                 .id("ce2ce14e-85d7-4629-bdbc-454d0519d987")
///                 .type("ServicePrincipal")
///                 .build())
///             .permissions(DenyAssignmentPermissionArgs.builder()
///                 .actions("*/delete")
///                 .dataActions()
///                 .notActions()
///                 .notDataActions()
///                 .build())
///             .principals(DenyAssignmentPrincipalArgs.builder()
///                 .id("00000000-0000-0000-0000-000000000000")
///                 .type("SystemDefined")
///                 .build())
///             .scope("subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2")
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
/// const denyAssignment = new azure_native.authorization.DenyAssignment("denyAssignment", {
///     denyAssignmentEffect: azure_native.authorization.DenyAssignmentEffect.Enforced,
///     denyAssignmentId: "64b75d79-7a26-4341-944e-4f1a19f0e6ca",
///     denyAssignmentName: "Deny delete on critical resources",
///     description: "Prevent all users from deleting critical resources in the subscription.",
///     doNotApplyToChildScopes: false,
///     excludePrincipals: [{
///         id: "ce2ce14e-85d7-4629-bdbc-454d0519d987",
///         type: "ServicePrincipal",
///     }],
///     permissions: [{
///         actions: ["*/delete"],
///         dataActions: [],
///         notActions: [],
///         notDataActions: [],
///     }],
///     principals: [{
///         id: "00000000-0000-0000-0000-000000000000",
///         type: "SystemDefined",
///     }],
///     scope: "subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// deny_assignment = azure_native.authorization.DenyAssignment("denyAssignment",
///     deny_assignment_effect=azure_native.authorization.DenyAssignmentEffect.ENFORCED,
///     deny_assignment_id="64b75d79-7a26-4341-944e-4f1a19f0e6ca",
///     deny_assignment_name="Deny delete on critical resources",
///     description="Prevent all users from deleting critical resources in the subscription.",
///     do_not_apply_to_child_scopes=False,
///     exclude_principals=[{
///         "id": "ce2ce14e-85d7-4629-bdbc-454d0519d987",
///         "type": "ServicePrincipal",
///     }],
///     permissions=[{
///         "actions": ["*/delete"],
///         "data_actions": [],
///         "not_actions": [],
///         "not_data_actions": [],
///     }],
///     principals=[{
///         "id": "00000000-0000-0000-0000-000000000000",
///         "type": "SystemDefined",
///     }],
///     scope="subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2")
///
/// ```
///
/// ```yaml
/// resources:
///   denyAssignment:
///     type: azure-native:authorization:DenyAssignment
///     properties:
///       denyAssignmentEffect: enforced
///       denyAssignmentId: 64b75d79-7a26-4341-944e-4f1a19f0e6ca
///       denyAssignmentName: Deny delete on critical resources
///       description: Prevent all users from deleting critical resources in the subscription.
///       doNotApplyToChildScopes: false
///       excludePrincipals:
///         - id: ce2ce14e-85d7-4629-bdbc-454d0519d987
///           type: ServicePrincipal
///       permissions:
///         - actions:
///             - '*/delete'
///           dataActions: []
///           notActions: []
///           notDataActions: []
///       principals:
///         - id: 00000000-0000-0000-0000-000000000000
///           type: SystemDefined
///       scope: subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2
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
/// $ pulumi import azure-native:authorization:DenyAssignment 64b75d79-7a26-4341-944e-4f1a19f0e6ca /{scope}/providers/Microsoft.Authorization/denyAssignments/{denyAssignmentId}
/// ```
class DenyAssignment extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The conditions on the deny assignment. This limits the resources it can be assigned to. e.g.: @Resource[Microsoft.Storage/storageAccounts/blobServices/containers:ContainerName] StringEqualsIgnoreCase 'foo_storage_container'
  late final pulumi.Output<String?> condition;
  /// Version of the condition.
  late final pulumi.Output<String?> conditionVersion;
  /// Id of the user who created the assignment
  late final pulumi.Output<String> createdBy;
  /// Time it was created
  late final pulumi.Output<String> createdOn;
  /// The effect of the deny assignment. 'enforced' blocks access, 'audit' logs without blocking.
  late final pulumi.Output<String?> denyAssignmentEffect;
  /// The display name of the deny assignment.
  late final pulumi.Output<String?> denyAssignmentName;
  /// The description of the deny assignment.
  late final pulumi.Output<String?> description;
  /// Determines if the deny assignment applies to child scopes. Default value is false.
  late final pulumi.Output<bool?> doNotApplyToChildScopes;
  /// Array of principals to which the deny assignment does not apply.
  late final pulumi.Output<List<DenyAssignmentPrincipalResponse>?> excludePrincipals;
  /// Specifies whether this deny assignment was created by Azure and cannot be edited or deleted.
  late final pulumi.Output<bool?> isSystemProtected;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// An array of permissions that are denied by the deny assignment.
  late final pulumi.Output<List<DenyAssignmentPermissionResponse>?> permissions;
  /// Array of principals to which the deny assignment applies.
  late final pulumi.Output<List<DenyAssignmentPrincipalResponse>?> principals;
  /// The deny assignment scope.
  late final pulumi.Output<String> scope;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Id of the user who updated the assignment
  late final pulumi.Output<String> updatedBy;
  /// Time it was updated
  late final pulumi.Output<String> updatedOn;

  /// Creates a new [DenyAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DenyAssignment]. {@macro pulumi_authorization_deny_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DenyAssignment(
    String name, {
    DenyAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:authorization:DenyAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    condition = registerOutput<String?>('condition');
    conditionVersion = registerOutput<String?>('conditionVersion');
    createdBy = registerOutput<String>('createdBy');
    createdOn = registerOutput<String>('createdOn');
    denyAssignmentEffect = registerOutput<String?>('denyAssignmentEffect');
    denyAssignmentName = registerOutput<String?>('denyAssignmentName');
    description = registerOutput<String?>('description');
    doNotApplyToChildScopes = registerOutput<bool?>('doNotApplyToChildScopes');
    excludePrincipals = registerOutput<List<DenyAssignmentPrincipalResponse>?>('excludePrincipals', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DenyAssignmentPrincipalResponse>(guardedValue, (value) => DenyAssignmentPrincipalResponse.fromMap((value as Map).cast<String, dynamic>())); });
    isSystemProtected = registerOutput<bool?>('isSystemProtected');
    this.name = registerOutput<String>('name');
    permissions = registerOutput<List<DenyAssignmentPermissionResponse>?>('permissions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DenyAssignmentPermissionResponse>(guardedValue, (value) => DenyAssignmentPermissionResponse.fromMap((value as Map).cast<String, dynamic>())); });
    principals = registerOutput<List<DenyAssignmentPrincipalResponse>?>('principals', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DenyAssignmentPrincipalResponse>(guardedValue, (value) => DenyAssignmentPrincipalResponse.fromMap((value as Map).cast<String, dynamic>())); });
    scope = registerOutput<String>('scope');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    updatedBy = registerOutput<String>('updatedBy');
    updatedOn = registerOutput<String>('updatedOn');
  }

  /// Creates a typed reference to an existing [DenyAssignment] resource.
  DenyAssignment.reference(String urn)
    : super(
        'azure-native:authorization:DenyAssignment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    condition = registerOutput<String?>('condition');
    conditionVersion = registerOutput<String?>('conditionVersion');
    createdBy = registerOutput<String>('createdBy');
    createdOn = registerOutput<String>('createdOn');
    denyAssignmentEffect = registerOutput<String?>('denyAssignmentEffect');
    denyAssignmentName = registerOutput<String?>('denyAssignmentName');
    description = registerOutput<String?>('description');
    doNotApplyToChildScopes = registerOutput<bool?>('doNotApplyToChildScopes');
    excludePrincipals = registerOutput<List<DenyAssignmentPrincipalResponse>?>('excludePrincipals', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DenyAssignmentPrincipalResponse>(guardedValue, (value) => DenyAssignmentPrincipalResponse.fromMap((value as Map).cast<String, dynamic>())); });
    isSystemProtected = registerOutput<bool?>('isSystemProtected');
    this.name = registerOutput<String>('name');
    permissions = registerOutput<List<DenyAssignmentPermissionResponse>?>('permissions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DenyAssignmentPermissionResponse>(guardedValue, (value) => DenyAssignmentPermissionResponse.fromMap((value as Map).cast<String, dynamic>())); });
    principals = registerOutput<List<DenyAssignmentPrincipalResponse>?>('principals', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DenyAssignmentPrincipalResponse>(guardedValue, (value) => DenyAssignmentPrincipalResponse.fromMap((value as Map).cast<String, dynamic>())); });
    scope = registerOutput<String>('scope');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    updatedBy = registerOutput<String>('updatedBy');
    updatedOn = registerOutput<String>('updatedOn');
  }
}
