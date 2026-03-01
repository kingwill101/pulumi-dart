import 'package:pulumi/pulumi.dart' as pulumi;
import 'eligible_role_assignment_args.dart';
import 'eligible_role_assignment_schedule.dart';
import 'eligible_role_assignment_ticket.dart';

/// Manages a PIM Eligible Role Assignment.
///
/// ## Example Usage
///
/// ### Subscription)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as time from "@pulumiverse/time";
///
/// const primary = azure.core.getSubscription({});
/// const example = azure.core.getClientConfig({});
/// const exampleGetRoleDefinition = azure.authorization.getRoleDefinition({
///     name: "Reader",
/// });
/// const exampleStatic = new time.Static("example", {});
/// const exampleEligibleRoleAssignment = new azure.pim.EligibleRoleAssignment("example", {
///     scope: primary.then(primary => primary.id),
///     roleDefinitionId: Promise.all([primary, exampleGetRoleDefinition]).then(([primary, exampleGetRoleDefinition]) => `${primary.id}${exampleGetRoleDefinition.id}`),
///     principalId: example.then(example => example.objectId),
///     schedule: {
///         startDateTime: exampleStatic.rfc3339,
///         expiration: {
///             durationHours: 8,
///         },
///     },
///     justification: "Expiration Duration Set",
///     ticket: {
///         number: "1",
///         system: "example ticket system",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumiverse_time as time
///
/// primary = azure.core.get_subscription()
/// example = azure.core.get_client_config()
/// example_get_role_definition = azure.authorization.get_role_definition(name="Reader")
/// example_static = time.Static("example")
/// example_eligible_role_assignment = azure.pim.EligibleRoleAssignment("example",
///     scope=primary.id,
///     role_definition_id=f"{primary.id}{example_get_role_definition.id}",
///     principal_id=example.object_id,
///     schedule={
///         "start_date_time": example_static.rfc3339,
///         "expiration": {
///             "duration_hours": 8,
///         },
///     },
///     justification="Expiration Duration Set",
///     ticket={
///         "number": "1",
///         "system": "example ticket system",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = Azure.Core.GetSubscription.Invoke();
///
///     var example = Azure.Core.GetClientConfig.Invoke();
///
///     var exampleGetRoleDefinition = Azure.Authorization.GetRoleDefinition.Invoke(new()
///     {
///         Name = "Reader",
///     });
///
///     var exampleStatic = new Time.Static("example");
///
///     var exampleEligibleRoleAssignment = new Azure.Pim.EligibleRoleAssignment("example", new()
///     {
///         Scope = primary.Apply(getSubscriptionResult => getSubscriptionResult.Id),
///         RoleDefinitionId = Output.Tuple(primary, exampleGetRoleDefinition).Apply(values =>
///         {
///             var primary = values.Item1;
///             var exampleGetRoleDefinition = values.Item2;
///             return $"{primary.Apply(getSubscriptionResult => getSubscriptionResult.Id)}{exampleGetRoleDefinition.Apply(getRoleDefinitionResult => getRoleDefinitionResult.Id)}";
///         }),
///         PrincipalId = example.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///         Schedule = new Azure.Pim.Inputs.EligibleRoleAssignmentScheduleArgs
///         {
///             StartDateTime = exampleStatic.Rfc3339,
///             Expiration = new Azure.Pim.Inputs.EligibleRoleAssignmentScheduleExpirationArgs
///             {
///                 DurationHours = 8,
///             },
///         },
///         Justification = "Expiration Duration Set",
///         Ticket = new Azure.Pim.Inputs.EligibleRoleAssignmentTicketArgs
///         {
///             Number = "1",
///             System = "example ticket system",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/pim"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		primary, err := core.LookupSubscription(ctx, &core.LookupSubscriptionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetRoleDefinition, err := authorization.LookupRoleDefinition(ctx, &authorization.LookupRoleDefinitionArgs{
/// 			Name: pulumi.StringRef("Reader"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleStatic, err := time.NewStatic(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pim.NewEligibleRoleAssignment(ctx, "example", &pim.EligibleRoleAssignmentArgs{
/// 			Scope:            pulumi.String(primary.Id),
/// 			RoleDefinitionId: pulumi.Sprintf("%v%v", primary.Id, exampleGetRoleDefinition.Id),
/// 			PrincipalId:      pulumi.String(example.ObjectId),
/// 			Schedule: &pim.EligibleRoleAssignmentScheduleArgs{
/// 				StartDateTime: exampleStatic.Rfc3339,
/// 				Expiration: &pim.EligibleRoleAssignmentScheduleExpirationArgs{
/// 					DurationHours: pulumi.Int(8),
/// 				},
/// 			},
/// 			Justification: pulumi.String("Expiration Duration Set"),
/// 			Ticket: &pim.EligibleRoleAssignmentTicketArgs{
/// 				Number: pulumi.String("1"),
/// 				System: pulumi.String("example ticket system"),
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.inputs.GetSubscriptionArgs;
/// import com.pulumi.azure.authorization.AuthorizationFunctions;
/// import com.pulumi.azure.authorization.inputs.GetRoleDefinitionArgs;
/// import com.pulumiverse.time.Static;
/// import com.pulumi.azure.pim.EligibleRoleAssignment;
/// import com.pulumi.azure.pim.EligibleRoleAssignmentArgs;
/// import com.pulumi.azure.pim.inputs.EligibleRoleAssignmentScheduleArgs;
/// import com.pulumi.azure.pim.inputs.EligibleRoleAssignmentScheduleExpirationArgs;
/// import com.pulumi.azure.pim.inputs.EligibleRoleAssignmentTicketArgs;
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
///         final var primary = CoreFunctions.getSubscription(GetSubscriptionArgs.builder()
///             .build());
///
///         final var example = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         final var exampleGetRoleDefinition = AuthorizationFunctions.getRoleDefinition(GetRoleDefinitionArgs.builder()
///             .name("Reader")
///             .build());
///
///         var exampleStatic = new Static("exampleStatic");
///
///         var exampleEligibleRoleAssignment = new EligibleRoleAssignment("exampleEligibleRoleAssignment", EligibleRoleAssignmentArgs.builder()
///             .scope(primary.id())
///             .roleDefinitionId(String.format("%s%s", primary.id(),exampleGetRoleDefinition.id()))
///             .principalId(example.objectId())
///             .schedule(EligibleRoleAssignmentScheduleArgs.builder()
///                 .startDateTime(exampleStatic.rfc3339())
///                 .expiration(EligibleRoleAssignmentScheduleExpirationArgs.builder()
///                     .durationHours(8)
///                     .build())
///                 .build())
///             .justification("Expiration Duration Set")
///             .ticket(EligibleRoleAssignmentTicketArgs.builder()
///                 .number("1")
///                 .system("example ticket system")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleStatic:
///     type: time:Static
///     name: example
///   exampleEligibleRoleAssignment:
///     type: azure:pim:EligibleRoleAssignment
///     name: example
///     properties:
///       scope: ${primary.id}
///       roleDefinitionId: ${primary.id}${exampleGetRoleDefinition.id}
///       principalId: ${example.objectId}
///       schedule:
///         startDateTime: ${exampleStatic.rfc3339}
///         expiration:
///           durationHours: 8
///       justification: Expiration Duration Set
///       ticket:
///         number: '1'
///         system: example ticket system
/// variables:
///   primary:
///     fn::invoke:
///       function: azure:core:getSubscription
///       arguments: {}
///   example:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
///   exampleGetRoleDefinition:
///     fn::invoke:
///       function: azure:authorization:getRoleDefinition
///       arguments:
///         name: Reader
/// ```
///
///
///
/// ### Management Group)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as time from "@pulumiverse/time";
///
/// const example = azure.core.getClientConfig({});
/// const exampleGetRoleDefinition = azure.authorization.getRoleDefinition({
///     name: "Reader",
/// });
/// const exampleGroup = new azure.management.Group("example", {name: "Example-Management-Group"});
/// const exampleStatic = new time.Static("example", {});
/// const exampleEligibleRoleAssignment = new azure.pim.EligibleRoleAssignment("example", {
///     scope: exampleGroup.id,
///     roleDefinitionId: exampleGetRoleDefinition.then(exampleGetRoleDefinition => exampleGetRoleDefinition.id),
///     principalId: example.then(example => example.objectId),
///     schedule: {
///         startDateTime: exampleStatic.rfc3339,
///         expiration: {
///             durationHours: 8,
///         },
///     },
///     justification: "Expiration Duration Set",
///     ticket: {
///         number: "1",
///         system: "example ticket system",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumiverse_time as time
///
/// example = azure.core.get_client_config()
/// example_get_role_definition = azure.authorization.get_role_definition(name="Reader")
/// example_group = azure.management.Group("example", name="Example-Management-Group")
/// example_static = time.Static("example")
/// example_eligible_role_assignment = azure.pim.EligibleRoleAssignment("example",
///     scope=example_group.id,
///     role_definition_id=example_get_role_definition.id,
///     principal_id=example.object_id,
///     schedule={
///         "start_date_time": example_static.rfc3339,
///         "expiration": {
///             "duration_hours": 8,
///         },
///     },
///     justification="Expiration Duration Set",
///     ticket={
///         "number": "1",
///         "system": "example ticket system",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Core.GetClientConfig.Invoke();
///
///     var exampleGetRoleDefinition = Azure.Authorization.GetRoleDefinition.Invoke(new()
///     {
///         Name = "Reader",
///     });
///
///     var exampleGroup = new Azure.Management.Group("example", new()
///     {
///         Name = "Example-Management-Group",
///     });
///
///     var exampleStatic = new Time.Static("example");
///
///     var exampleEligibleRoleAssignment = new Azure.Pim.EligibleRoleAssignment("example", new()
///     {
///         Scope = exampleGroup.Id,
///         RoleDefinitionId = exampleGetRoleDefinition.Apply(getRoleDefinitionResult => getRoleDefinitionResult.Id),
///         PrincipalId = example.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///         Schedule = new Azure.Pim.Inputs.EligibleRoleAssignmentScheduleArgs
///         {
///             StartDateTime = exampleStatic.Rfc3339,
///             Expiration = new Azure.Pim.Inputs.EligibleRoleAssignmentScheduleExpirationArgs
///             {
///                 DurationHours = 8,
///             },
///         },
///         Justification = "Expiration Duration Set",
///         Ticket = new Azure.Pim.Inputs.EligibleRoleAssignmentTicketArgs
///         {
///             Number = "1",
///             System = "example ticket system",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/management"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/pim"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetRoleDefinition, err := authorization.LookupRoleDefinition(ctx, &authorization.LookupRoleDefinitionArgs{
/// 			Name: pulumi.StringRef("Reader"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGroup, err := management.NewGroup(ctx, "example", &management.GroupArgs{
/// 			Name: pulumi.String("Example-Management-Group"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleStatic, err := time.NewStatic(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pim.NewEligibleRoleAssignment(ctx, "example", &pim.EligibleRoleAssignmentArgs{
/// 			Scope:            exampleGroup.ID(),
/// 			RoleDefinitionId: pulumi.String(exampleGetRoleDefinition.Id),
/// 			PrincipalId:      pulumi.String(example.ObjectId),
/// 			Schedule: &pim.EligibleRoleAssignmentScheduleArgs{
/// 				StartDateTime: exampleStatic.Rfc3339,
/// 				Expiration: &pim.EligibleRoleAssignmentScheduleExpirationArgs{
/// 					DurationHours: pulumi.Int(8),
/// 				},
/// 			},
/// 			Justification: pulumi.String("Expiration Duration Set"),
/// 			Ticket: &pim.EligibleRoleAssignmentTicketArgs{
/// 				Number: pulumi.String("1"),
/// 				System: pulumi.String("example ticket system"),
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.authorization.AuthorizationFunctions;
/// import com.pulumi.azure.authorization.inputs.GetRoleDefinitionArgs;
/// import com.pulumi.azure.management.Group;
/// import com.pulumi.azure.management.GroupArgs;
/// import com.pulumiverse.time.Static;
/// import com.pulumi.azure.pim.EligibleRoleAssignment;
/// import com.pulumi.azure.pim.EligibleRoleAssignmentArgs;
/// import com.pulumi.azure.pim.inputs.EligibleRoleAssignmentScheduleArgs;
/// import com.pulumi.azure.pim.inputs.EligibleRoleAssignmentScheduleExpirationArgs;
/// import com.pulumi.azure.pim.inputs.EligibleRoleAssignmentTicketArgs;
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
///         final var example = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         final var exampleGetRoleDefinition = AuthorizationFunctions.getRoleDefinition(GetRoleDefinitionArgs.builder()
///             .name("Reader")
///             .build());
///
///         var exampleGroup = new Group("exampleGroup", GroupArgs.builder()
///             .name("Example-Management-Group")
///             .build());
///
///         var exampleStatic = new Static("exampleStatic");
///
///         var exampleEligibleRoleAssignment = new EligibleRoleAssignment("exampleEligibleRoleAssignment", EligibleRoleAssignmentArgs.builder()
///             .scope(exampleGroup.id())
///             .roleDefinitionId(exampleGetRoleDefinition.id())
///             .principalId(example.objectId())
///             .schedule(EligibleRoleAssignmentScheduleArgs.builder()
///                 .startDateTime(exampleStatic.rfc3339())
///                 .expiration(EligibleRoleAssignmentScheduleExpirationArgs.builder()
///                     .durationHours(8)
///                     .build())
///                 .build())
///             .justification("Expiration Duration Set")
///             .ticket(EligibleRoleAssignmentTicketArgs.builder()
///                 .number("1")
///                 .system("example ticket system")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleGroup:
///     type: azure:management:Group
///     name: example
///     properties:
///       name: Example-Management-Group
///   exampleStatic:
///     type: time:Static
///     name: example
///   exampleEligibleRoleAssignment:
///     type: azure:pim:EligibleRoleAssignment
///     name: example
///     properties:
///       scope: ${exampleGroup.id}
///       roleDefinitionId: ${exampleGetRoleDefinition.id}
///       principalId: ${example.objectId}
///       schedule:
///         startDateTime: ${exampleStatic.rfc3339}
///         expiration:
///           durationHours: 8
///       justification: Expiration Duration Set
///       ticket:
///         number: '1'
///         system: example ticket system
/// variables:
///   example:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
///   exampleGetRoleDefinition:
///     fn::invoke:
///       function: azure:authorization:getRoleDefinition
///       arguments:
///         name: Reader
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Authorization` - 2020-10-01
///
/// ## Import
///
/// PIM Eligible Role Assignments can be imported using the following composite resource ID, e.g.
///
/// ```sh
/// $ pulumi import azure:pim/eligibleRoleAssignment:EligibleRoleAssignment example /subscriptions/00000000-0000-0000-0000-000000000000|/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.Authorization/roleDefinitions/00000000-0000-0000-0000-000000000000|00000000-0000-0000-0000-000000000000
/// ```
///
/// > **Note:** This ID is specific to Terraform - and is of the format `{scope}|{roleDefinitionId}|{principalId}`, where the first segment is the scope of the role assignment, the second segment is the role definition ID, and the last segment is the principal object ID.
class EligibleRoleAssignment extends pulumi.CustomResource {
  /// The condition that limits the resources that the role can be assigned to. See the [official conditions documentation](https://learn.microsoft.com/en-us/azure/role-based-access-control/conditions-overview#what-are-role-assignment-conditions) for details. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> condition;
  /// The version of the condition. Supported values include `2.0`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** `condition_version` is required when specifying `condition` and vice versa.
  late final pulumi.Output<String?> conditionVersion;
  /// The justification of the role assignment. Changing this forces a new resource to be created.
  late final pulumi.Output<String> justification;
  /// Object ID of the principal for this eligible role assignment. Changing this forces a new resource to be created.
  late final pulumi.Output<String> principalId;
  /// Type of principal to which the role will be assigned.
  late final pulumi.Output<String> principalType;
  /// The role definition ID for this eligible role assignment. Changing this forces a new resource to be created.
  late final pulumi.Output<String> roleDefinitionId;
  /// A `schedule` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<EligibleRoleAssignmentSchedule> schedule;
  /// The scope for this eligible role assignment, should be a valid resource ID. Changing this forces a new resource to be created.
  late final pulumi.Output<String> scope;
  /// A `ticket` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<EligibleRoleAssignmentTicket> ticket;

  /// Creates a new [EligibleRoleAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EligibleRoleAssignment]. {@macro pulumi_pim_eligible_role_assignment_eligible_role_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EligibleRoleAssignment(
    String name, {
    EligibleRoleAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:pim/eligibleRoleAssignment:EligibleRoleAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition = registerOutput<String?>('condition');
    this.conditionVersion = registerOutput<String?>('conditionVersion');
    this.justification = registerOutput<String>('justification');
    this.principalId = registerOutput<String>('principalId');
    this.principalType = registerOutput<String>('principalType');
    this.roleDefinitionId = registerOutput<String>('roleDefinitionId');
    this.schedule = registerOutput<EligibleRoleAssignmentSchedule>('schedule');
    this.scope = registerOutput<String>('scope');
    this.ticket = registerOutput<EligibleRoleAssignmentTicket>('ticket');
  }
}
