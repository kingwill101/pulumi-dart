import 'package:pulumi/pulumi.dart' as pulumi;
import 'privileged_access_group_eligibility_schedule_args.dart';

/// Manages an eligible assignment to a privileged access group.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// When authenticated with a service principal, this resource requires the `PrivilegedEligibilitySchedule.ReadWrite.AzureADGroup` Microsoft Graph API permissions.
///
/// When authenticated with a user principal, this resource requires `Global Administrator` directory role, or the `Privileged Role Administrator` role in Identity Governance.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = new azuread.Group("example", {
///     displayName: "group-name",
///     securityEnabled: true,
/// });
/// const member = new azuread.User("member", {
///     userPrincipalName: "jdoe@example.com",
///     displayName: "J. Doe",
///     mailNickname: "jdoe",
///     password: "SecretP@sswd99!",
/// });
/// const examplePrivilegedAccessGroupEligibilitySchedule = new azuread.PrivilegedAccessGroupEligibilitySchedule("example", {
///     groupId: pim.id,
///     principalId: member.id,
///     assignmentType: "member",
///     duration: "P30D",
///     justification: "as requested",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.Group("example",
///     display_name="group-name",
///     security_enabled=True)
/// member = azuread.User("member",
///     user_principal_name="jdoe@example.com",
///     display_name="J. Doe",
///     mail_nickname="jdoe",
///     password="SecretP@sswd99!")
/// example_privileged_access_group_eligibility_schedule = azuread.PrivilegedAccessGroupEligibilitySchedule("example",
///     group_id=pim["id"],
///     principal_id=member.id,
///     assignment_type="member",
///     duration="P30D",
///     justification="as requested")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AzureAD.Group("example", new()
///     {
///         DisplayName = "group-name",
///         SecurityEnabled = true,
///     });
///
///     var member = new AzureAD.User("member", new()
///     {
///         UserPrincipalName = "jdoe@example.com",
///         DisplayName = "J. Doe",
///         MailNickname = "jdoe",
///         Password = "SecretP@sswd99!",
///     });
///
///     var examplePrivilegedAccessGroupEligibilitySchedule = new AzureAD.PrivilegedAccessGroupEligibilitySchedule("example", new()
///     {
///         GroupId = pim.Id,
///         PrincipalId = member.Id,
///         AssignmentType = "member",
///         Duration = "P30D",
///         Justification = "as requested",
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
/// 		_, err := azuread.NewGroup(ctx, "example", &azuread.GroupArgs{
/// 			DisplayName:     pulumi.String("group-name"),
/// 			SecurityEnabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		member, err := azuread.NewUser(ctx, "member", &azuread.UserArgs{
/// 			UserPrincipalName: pulumi.String("jdoe@example.com"),
/// 			DisplayName:       pulumi.String("J. Doe"),
/// 			MailNickname:      pulumi.String("jdoe"),
/// 			Password:          pulumi.String("SecretP@sswd99!"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewPrivilegedAccessGroupEligibilitySchedule(ctx, "example", &azuread.PrivilegedAccessGroupEligibilityScheduleArgs{
/// 			GroupId:        pulumi.Any(pim.Id),
/// 			PrincipalId:    member.ID(),
/// 			AssignmentType: pulumi.String("member"),
/// 			Duration:       pulumi.String("P30D"),
/// 			Justification:  pulumi.String("as requested"),
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
/// import com.pulumi.azuread.Group;
/// import com.pulumi.azuread.GroupArgs;
/// import com.pulumi.azuread.User;
/// import com.pulumi.azuread.UserArgs;
/// import com.pulumi.azuread.PrivilegedAccessGroupEligibilitySchedule;
/// import com.pulumi.azuread.PrivilegedAccessGroupEligibilityScheduleArgs;
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
///         var example = new Group("example", GroupArgs.builder()
///             .displayName("group-name")
///             .securityEnabled(true)
///             .build());
///
///         var member = new User("member", UserArgs.builder()
///             .userPrincipalName("jdoe@example.com")
///             .displayName("J. Doe")
///             .mailNickname("jdoe")
///             .password("SecretP@sswd99!")
///             .build());
///
///         var examplePrivilegedAccessGroupEligibilitySchedule = new PrivilegedAccessGroupEligibilitySchedule("examplePrivilegedAccessGroupEligibilitySchedule", PrivilegedAccessGroupEligibilityScheduleArgs.builder()
///             .groupId(pim.id())
///             .principalId(member.id())
///             .assignmentType("member")
///             .duration("P30D")
///             .justification("as requested")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azuread:Group
///     properties:
///       displayName: group-name
///       securityEnabled: true
///   member:
///     type: azuread:User
///     properties:
///       userPrincipalName: jdoe@example.com
///       displayName: J. Doe
///       mailNickname: jdoe
///       password: SecretP@sswd99!
///   examplePrivilegedAccessGroupEligibilitySchedule:
///     type: azuread:PrivilegedAccessGroupEligibilitySchedule
///     name: example
///     properties:
///       groupId: ${pim.id}
///       principalId: ${member.id}
///       assignmentType: member
///       duration: P30D
///       justification: as requested
/// ```
///
///
/// ## Import
///
/// An assignment schedule can be imported using the schedule ID, e.g.
///
/// ```sh
/// $ pulumi import azuread:index/privilegedAccessGroupEligibilitySchedule:PrivilegedAccessGroupEligibilitySchedule example 00000000-0000-0000-0000-000000000000_member_00000000-0000-0000-0000-000000000000
/// ```
class PrivilegedAccessGroupEligibilitySchedule extends pulumi.CustomResource {
  /// The type of assignment to the group. Can be either `member` or `owner`.
  late final pulumi.Output<String> assignmentType;
  /// The duration that this assignment is valid for, formatted as an ISO8601 duration (e.g. P30D for 30 days, PT3H for three hours).
  late final pulumi.Output<String?> duration;
  /// The date that this assignment expires, formatted as an RFC3339 date string (e.g. 2018-01-01T01:02:03Z).
  late final pulumi.Output<String> expirationDate;
  /// The Object ID of the Azure AD group to which the principal will be assigned.
  late final pulumi.Output<String> groupId;
  /// The justification for this assignment. May be required by the role policy.
  late final pulumi.Output<String?> justification;
  /// Is this assigment permanently valid.
  ///
  /// At least one of `expiration_date`, `duration`, or `permanent_assignment` must be supplied. The role policy may limit the maximum duration which can be supplied.
  late final pulumi.Output<bool> permanentAssignment;
  /// The Object ID of the principal to be assigned to the above group. Can be either a user or a group.
  late final pulumi.Output<String> principalId;
  /// The date from which this assignment is valid, formatted as an RFC3339 date string (e.g. 2018-01-01T01:02:03Z). If not provided, the assignment is immediately valid.
  late final pulumi.Output<String> startDate;
  /// (String) The provisioning status of this request.
  late final pulumi.Output<String> status;
  /// The ticket number in the ticket system approving this assignment. May be required by the role policy.
  late final pulumi.Output<String?> ticketNumber;
  /// The ticket system containing the ticket number approving this assignment. May be required by the role policy.
  late final pulumi.Output<String?> ticketSystem;

  /// Creates a new [PrivilegedAccessGroupEligibilitySchedule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivilegedAccessGroupEligibilitySchedule]. {@macro pulumi_index_privileged_access_group_eligibility_schedule_privileged_access_group_eligibility_schedule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivilegedAccessGroupEligibilitySchedule(
    String name, {
    PrivilegedAccessGroupEligibilityScheduleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/privilegedAccessGroupEligibilitySchedule:PrivilegedAccessGroupEligibilitySchedule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.assignmentType = registerOutput<String>('assignmentType');
    this.duration = registerOutput<String?>('duration');
    this.expirationDate = registerOutput<String>('expirationDate');
    this.groupId = registerOutput<String>('groupId');
    this.justification = registerOutput<String?>('justification');
    this.permanentAssignment = registerOutput<bool>('permanentAssignment');
    this.principalId = registerOutput<String>('principalId');
    this.startDate = registerOutput<String>('startDate');
    this.status = registerOutput<String>('status');
    this.ticketNumber = registerOutput<String?>('ticketNumber');
    this.ticketSystem = registerOutput<String?>('ticketSystem');
  }
}
