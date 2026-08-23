import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_set_description_response.dart';
import 'role_assignment_args.dart';

/// The Role Assignment resource format.
///
/// Uses Azure REST API version 2017-04-26. In version 2.x of the Azure Native provider, it used API version 2017-04-26.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### RoleAssignments_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var roleAssignment = new AzureNative.CustomerInsights.RoleAssignment("roleAssignment", new()
///     {
///         AssignmentName = "assignmentName8976",
///         HubName = "sdkTestHub",
///         Principals = new[]
///         {
///             new AzureNative.CustomerInsights.Inputs.AssignmentPrincipalArgs
///             {
///                 PrincipalId = "4c54c38ffa9b416ba5a6d6c8a20cbe7e",
///                 PrincipalType = "User",
///             },
///             new AzureNative.CustomerInsights.Inputs.AssignmentPrincipalArgs
///             {
///                 PrincipalId = "93061d15a5054f2b9948ae25724cf9d5",
///                 PrincipalType = "User",
///             },
///         },
///         ResourceGroupName = "TestHubRG",
///         Role = AzureNative.CustomerInsights.RoleTypes.Admin,
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
/// 	customerinsights "github.com/pulumi/pulumi-azure-native-sdk/customerinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := customerinsights.NewRoleAssignment(ctx, "roleAssignment", &customerinsights.RoleAssignmentArgs{
/// 			AssignmentName: pulumi.String("assignmentName8976"),
/// 			HubName:        pulumi.String("sdkTestHub"),
/// 			Principals: customerinsights.AssignmentPrincipalArray{
/// 				&customerinsights.AssignmentPrincipalArgs{
/// 					PrincipalId:   pulumi.String("4c54c38ffa9b416ba5a6d6c8a20cbe7e"),
/// 					PrincipalType: pulumi.String("User"),
/// 				},
/// 				&customerinsights.AssignmentPrincipalArgs{
/// 					PrincipalId:   pulumi.String("93061d15a5054f2b9948ae25724cf9d5"),
/// 					PrincipalType: pulumi.String("User"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("TestHubRG"),
/// 			Role:              customerinsights.RoleTypesAdmin,
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
/// resource "azure-native_customerinsights_roleassignment" "roleAssignment" {
///   assignment_name = "assignmentName8976"
///   hub_name        = "sdkTestHub"
///   principals {
///     principal_id   = "4c54c38ffa9b416ba5a6d6c8a20cbe7e"
///     principal_type = "User"
///   }
///   principals {
///     principal_id   = "93061d15a5054f2b9948ae25724cf9d5"
///     principal_type = "User"
///   }
///   resource_group_name = "TestHubRG"
///   role                = "Admin"
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
/// import com.pulumi.azurenative.customerinsights.RoleAssignment;
/// import com.pulumi.azurenative.customerinsights.RoleAssignmentArgs;
/// import com.pulumi.azurenative.customerinsights.inputs.AssignmentPrincipalArgs;
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
///         var roleAssignment = new RoleAssignment("roleAssignment", RoleAssignmentArgs.builder()
///             .assignmentName("assignmentName8976")
///             .hubName("sdkTestHub")
///             .principals(
///                 AssignmentPrincipalArgs.builder()
///                     .principalId("4c54c38ffa9b416ba5a6d6c8a20cbe7e")
///                     .principalType("User")
///                     .build(),
///                 AssignmentPrincipalArgs.builder()
///                     .principalId("93061d15a5054f2b9948ae25724cf9d5")
///                     .principalType("User")
///                     .build())
///             .resourceGroupName("TestHubRG")
///             .role("Admin")
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
/// const roleAssignment = new azure_native.customerinsights.RoleAssignment("roleAssignment", {
///     assignmentName: "assignmentName8976",
///     hubName: "sdkTestHub",
///     principals: [
///         {
///             principalId: "4c54c38ffa9b416ba5a6d6c8a20cbe7e",
///             principalType: "User",
///         },
///         {
///             principalId: "93061d15a5054f2b9948ae25724cf9d5",
///             principalType: "User",
///         },
///     ],
///     resourceGroupName: "TestHubRG",
///     role: azure_native.customerinsights.RoleTypes.Admin,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// role_assignment = azure_native.customerinsights.RoleAssignment("roleAssignment",
///     assignment_name="assignmentName8976",
///     hub_name="sdkTestHub",
///     principals=[
///         {
///             "principal_id": "4c54c38ffa9b416ba5a6d6c8a20cbe7e",
///             "principal_type": "User",
///         },
///         {
///             "principal_id": "93061d15a5054f2b9948ae25724cf9d5",
///             "principal_type": "User",
///         },
///     ],
///     resource_group_name="TestHubRG",
///     role=azure_native.customerinsights.RoleTypes.ADMIN)
///
/// ```
///
/// ```yaml
/// resources:
///   roleAssignment:
///     type: azure-native:customerinsights:RoleAssignment
///     properties:
///       assignmentName: assignmentName8976
///       hubName: sdkTestHub
///       principals:
///         - principalId: 4c54c38ffa9b416ba5a6d6c8a20cbe7e
///           principalType: User
///         - principalId: 93061d15a5054f2b9948ae25724cf9d5
///           principalType: User
///       resourceGroupName: TestHubRG
///       role: Admin
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
/// $ pulumi import azure-native:customerinsights:RoleAssignment azSdkTestHub/assignmentName8976 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CustomerInsights/hubs/{hubName}/roleAssignments/{assignmentName}
/// ```
class RoleAssignment extends pulumi.CustomResource {
  /// The name of the metadata object.
  late final pulumi.Output<String> assignmentName;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Widget types set for the assignment.
  late final pulumi.Output<ResourceSetDescriptionResponse?> conflationPolicies;
  /// Connectors set for the assignment.
  late final pulumi.Output<ResourceSetDescriptionResponse?> connectors;
  /// Localized description for the metadata.
  late final pulumi.Output<Map<String, String>?> description;
  /// Localized display names for the metadata.
  late final pulumi.Output<Map<String, String>?> displayName;
  /// Interactions set for the assignment.
  late final pulumi.Output<ResourceSetDescriptionResponse?> interactions;
  /// Kpis set for the assignment.
  late final pulumi.Output<ResourceSetDescriptionResponse?> kpis;
  /// Links set for the assignment.
  late final pulumi.Output<ResourceSetDescriptionResponse?> links;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The principals being assigned to.
  late final pulumi.Output<List<Map<String, dynamic>>> principals;
  /// Profiles set for the assignment.
  late final pulumi.Output<ResourceSetDescriptionResponse?> profiles;
  /// Provisioning state.
  late final pulumi.Output<String> provisioningState;
  /// The Role assignments set for the relationship links.
  late final pulumi.Output<ResourceSetDescriptionResponse?> relationshipLinks;
  /// The Role assignments set for the relationships.
  late final pulumi.Output<ResourceSetDescriptionResponse?> relationships;
  /// Type of roles.
  late final pulumi.Output<String> role;
  /// The Role assignments set for the assignment.
  late final pulumi.Output<ResourceSetDescriptionResponse?> roleAssignments;
  /// Sas Policies set for the assignment.
  late final pulumi.Output<ResourceSetDescriptionResponse?> sasPolicies;
  /// The Role assignments set for the assignment.
  late final pulumi.Output<ResourceSetDescriptionResponse?> segments;
  /// The hub name.
  late final pulumi.Output<String> tenantId;
  /// Resource type.
  late final pulumi.Output<String> type;
  /// Views set for the assignment.
  late final pulumi.Output<ResourceSetDescriptionResponse?> views;
  /// Widget types set for the assignment.
  late final pulumi.Output<ResourceSetDescriptionResponse?> widgetTypes;

  /// Creates a new [RoleAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RoleAssignment]. {@macro pulumi_customerinsights_role_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RoleAssignment(
    String name, {
    RoleAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:customerinsights:RoleAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    assignmentName = registerOutput<String>('assignmentName');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    conflationPolicies = registerOutput<ResourceSetDescriptionResponse?>('conflationPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceSetDescriptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    connectors = registerOutput<ResourceSetDescriptionResponse?>('connectors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceSetDescriptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<Map<String, String>?>('description');
    displayName = registerOutput<Map<String, String>?>('displayName');
    interactions = registerOutput<ResourceSetDescriptionResponse?>('interactions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceSetDescriptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kpis = registerOutput<ResourceSetDescriptionResponse?>('kpis', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceSetDescriptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    links = registerOutput<ResourceSetDescriptionResponse?>('links', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceSetDescriptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    principals = registerOutput<List<Map<String, dynamic>>>('principals');
    profiles = registerOutput<ResourceSetDescriptionResponse?>('profiles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceSetDescriptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    relationshipLinks = registerOutput<ResourceSetDescriptionResponse?>('relationshipLinks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceSetDescriptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    relationships = registerOutput<ResourceSetDescriptionResponse?>('relationships', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceSetDescriptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    role = registerOutput<String>('role');
    roleAssignments = registerOutput<ResourceSetDescriptionResponse?>('roleAssignments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceSetDescriptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sasPolicies = registerOutput<ResourceSetDescriptionResponse?>('sasPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceSetDescriptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    segments = registerOutput<ResourceSetDescriptionResponse?>('segments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceSetDescriptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tenantId = registerOutput<String>('tenantId');
    type = registerOutput<String>('type');
    views = registerOutput<ResourceSetDescriptionResponse?>('views', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceSetDescriptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    widgetTypes = registerOutput<ResourceSetDescriptionResponse?>('widgetTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceSetDescriptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
