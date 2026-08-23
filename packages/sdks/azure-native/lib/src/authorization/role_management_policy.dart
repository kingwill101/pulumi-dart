import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_properties_response.dart';
import 'principal_response.dart';
import 'role_management_policy_args.dart';
import 'system_data_response.dart';

/// Role management policy
///
/// Uses Azure REST API version 2024-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-09-01-preview.
///
/// Other available API versions: 2020-10-01, 2020-10-01-preview, 2024-02-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native authorization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PatchPartialRoleManagementPolicy
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var roleManagementPolicy = new AzureNative.Authorization.RoleManagementPolicy("roleManagementPolicy", new()
///     {
///         RoleManagementPolicyName = "570c3619-7688-4b34-b290-2b8bb3ccab2a",
///         Rules =
///         {
///             new AzureNative.Authorization.Inputs.RoleManagementPolicyExpirationRuleArgs
///             {
///                 Id = "Expiration_Admin_Eligibility",
///                 IsExpirationRequired = false,
///                 MaximumDuration = "P180D",
///                 RuleType = "RoleManagementPolicyExpirationRule",
///                 Target = new AzureNative.Authorization.Inputs.RoleManagementPolicyRuleTargetArgs
///                 {
///                     Caller = "Admin",
///                     Level = "Eligibility",
///                     Operations = new[]
///                     {
///                         "All",
///                     },
///                 },
///             },
///             new AzureNative.Authorization.Inputs.RoleManagementPolicyNotificationRuleArgs
///             {
///                 Id = "Notification_Admin_Admin_Eligibility",
///                 IsDefaultRecipientsEnabled = false,
///                 NotificationLevel = AzureNative.Authorization.NotificationLevel.Critical,
///                 NotificationRecipients = new[]
///                 {
///                     "admin_admin_eligible@test.com",
///                 },
///                 NotificationType = AzureNative.Authorization.NotificationDeliveryMechanism.Email,
///                 RecipientType = AzureNative.Authorization.RecipientType.Admin,
///                 RuleType = "RoleManagementPolicyNotificationRule",
///                 Target = new AzureNative.Authorization.Inputs.RoleManagementPolicyRuleTargetArgs
///                 {
///                     Caller = "Admin",
///                     Level = "Eligibility",
///                     Operations = new[]
///                     {
///                         "All",
///                     },
///                 },
///             },
///         },
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
/// 		_, err := authorization.NewRoleManagementPolicy(ctx, "roleManagementPolicy", &authorization.RoleManagementPolicyArgs{
/// 			RoleManagementPolicyName: pulumi.String("570c3619-7688-4b34-b290-2b8bb3ccab2a"),
/// 			Rules: pulumi.Array{
/// 				authorization.RoleManagementPolicyExpirationRule{
/// 					Id:                   "Expiration_Admin_Eligibility",
/// 					IsExpirationRequired: false,
/// 					MaximumDuration:      "P180D",
/// 					RuleType:             "RoleManagementPolicyExpirationRule",
/// 					Target: authorization.RoleManagementPolicyRuleTarget{
/// 						Caller: "Admin",
/// 						Level:  "Eligibility",
/// 						Operations: []string{
/// 							"All",
/// 						},
/// 					},
/// 				},
/// 				authorization.RoleManagementPolicyNotificationRule{
/// 					Id:                         "Notification_Admin_Admin_Eligibility",
/// 					IsDefaultRecipientsEnabled: false,
/// 					NotificationLevel:          authorization.NotificationLevelCritical,
/// 					NotificationRecipients: []string{
/// 						"admin_admin_eligible@test.com",
/// 					},
/// 					NotificationType: authorization.NotificationDeliveryMechanismEmail,
/// 					RecipientType:    authorization.RecipientTypeAdmin,
/// 					RuleType:         "RoleManagementPolicyNotificationRule",
/// 					Target: authorization.RoleManagementPolicyRuleTarget{
/// 						Caller: "Admin",
/// 						Level:  "Eligibility",
/// 						Operations: []string{
/// 							"All",
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Scope: pulumi.String("providers/Microsoft.Subscription/subscriptions/129ff972-28f8-46b8-a726-e497be039368"),
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
/// resource "azure-native_authorization_rolemanagementpolicy" "roleManagementPolicy" {
///   role_management_policy_name = "570c3619-7688-4b34-b290-2b8bb3ccab2a"
///   rules = [{
///     "id"                   = "Expiration_Admin_Eligibility"
///     "isExpirationRequired" = false
///     "maximumDuration"      = "P180D"
///     "ruleType"             = "RoleManagementPolicyExpirationRule"
///     "target" = {
///       "caller"     = "Admin"
///       "level"      = "Eligibility"
///       "operations" = ["All"]
///     }
///     }, {
///     "id"                         = "Notification_Admin_Admin_Eligibility"
///     "isDefaultRecipientsEnabled" = false
///     "notificationLevel"          = "Critical"
///     "notificationRecipients"     = ["admin_admin_eligible@test.com"]
///     "notificationType"           = "Email"
///     "recipientType"              = "Admin"
///     "ruleType"                   = "RoleManagementPolicyNotificationRule"
///     "target" = {
///       "caller"     = "Admin"
///       "level"      = "Eligibility"
///       "operations" = ["All"]
///     }
///   }]
///   scope = "providers/Microsoft.Subscription/subscriptions/129ff972-28f8-46b8-a726-e497be039368"
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
/// import com.pulumi.azurenative.authorization.RoleManagementPolicy;
/// import com.pulumi.azurenative.authorization.RoleManagementPolicyArgs;
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
///         var roleManagementPolicy = new RoleManagementPolicy("roleManagementPolicy", RoleManagementPolicyArgs.builder()
///             .roleManagementPolicyName("570c3619-7688-4b34-b290-2b8bb3ccab2a")
///             .rules(
///                 RoleManagementPolicyExpirationRuleArgs.builder()
///                     .id("Expiration_Admin_Eligibility")
///                     .isExpirationRequired(false)
///                     .maximumDuration("P180D")
///                     .ruleType("RoleManagementPolicyExpirationRule")
///                     .target(RoleManagementPolicyRuleTargetArgs.builder()
///                         .caller("Admin")
///                         .level("Eligibility")
///                         .operations("All")
///                         .build())
///                     .build(),
///                 RoleManagementPolicyNotificationRuleArgs.builder()
///                     .id("Notification_Admin_Admin_Eligibility")
///                     .isDefaultRecipientsEnabled(false)
///                     .notificationLevel("Critical")
///                     .notificationRecipients("admin_admin_eligible@test.com")
///                     .notificationType("Email")
///                     .recipientType("Admin")
///                     .ruleType("RoleManagementPolicyNotificationRule")
///                     .target(RoleManagementPolicyRuleTargetArgs.builder()
///                         .caller("Admin")
///                         .level("Eligibility")
///                         .operations("All")
///                         .build())
///                     .build())
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
/// const roleManagementPolicy = new azure_native.authorization.RoleManagementPolicy("roleManagementPolicy", {
///     roleManagementPolicyName: "570c3619-7688-4b34-b290-2b8bb3ccab2a",
///     rules: [
///         {
///             id: "Expiration_Admin_Eligibility",
///             isExpirationRequired: false,
///             maximumDuration: "P180D",
///             ruleType: "RoleManagementPolicyExpirationRule",
///             target: {
///                 caller: "Admin",
///                 level: "Eligibility",
///                 operations: ["All"],
///             },
///         },
///         {
///             id: "Notification_Admin_Admin_Eligibility",
///             isDefaultRecipientsEnabled: false,
///             notificationLevel: azure_native.authorization.NotificationLevel.Critical,
///             notificationRecipients: ["admin_admin_eligible@test.com"],
///             notificationType: azure_native.authorization.NotificationDeliveryMechanism.Email,
///             recipientType: azure_native.authorization.RecipientType.Admin,
///             ruleType: "RoleManagementPolicyNotificationRule",
///             target: {
///                 caller: "Admin",
///                 level: "Eligibility",
///                 operations: ["All"],
///             },
///         },
///     ],
///     scope: "providers/Microsoft.Subscription/subscriptions/129ff972-28f8-46b8-a726-e497be039368",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// role_management_policy = azure_native.authorization.RoleManagementPolicy("roleManagementPolicy",
///     role_management_policy_name="570c3619-7688-4b34-b290-2b8bb3ccab2a",
///     rules=[
///         {
///             "id": "Expiration_Admin_Eligibility",
///             "is_expiration_required": False,
///             "maximum_duration": "P180D",
///             "rule_type": "RoleManagementPolicyExpirationRule",
///             "target": {
///                 "caller": "Admin",
///                 "level": "Eligibility",
///                 "operations": ["All"],
///             },
///         },
///         {
///             "id": "Notification_Admin_Admin_Eligibility",
///             "is_default_recipients_enabled": False,
///             "notification_level": azure_native.authorization.NotificationLevel.CRITICAL,
///             "notification_recipients": ["admin_admin_eligible@test.com"],
///             "notification_type": azure_native.authorization.NotificationDeliveryMechanism.EMAIL,
///             "recipient_type": azure_native.authorization.RecipientType.ADMIN,
///             "rule_type": "RoleManagementPolicyNotificationRule",
///             "target": {
///                 "caller": "Admin",
///                 "level": "Eligibility",
///                 "operations": ["All"],
///             },
///         },
///     ],
///     scope="providers/Microsoft.Subscription/subscriptions/129ff972-28f8-46b8-a726-e497be039368")
///
/// ```
///
/// ```yaml
/// resources:
///   roleManagementPolicy:
///     type: azure-native:authorization:RoleManagementPolicy
///     properties:
///       roleManagementPolicyName: 570c3619-7688-4b34-b290-2b8bb3ccab2a
///       rules:
///         - id: Expiration_Admin_Eligibility
///           isExpirationRequired: false
///           maximumDuration: P180D
///           ruleType: RoleManagementPolicyExpirationRule
///           target:
///             caller: Admin
///             level: Eligibility
///             operations:
///               - All
///         - id: Notification_Admin_Admin_Eligibility
///           isDefaultRecipientsEnabled: false
///           notificationLevel: Critical
///           notificationRecipients:
///             - admin_admin_eligible@test.com
///           notificationType: Email
///           recipientType: Admin
///           ruleType: RoleManagementPolicyNotificationRule
///           target:
///             caller: Admin
///             level: Eligibility
///             operations:
///               - All
///       scope: providers/Microsoft.Subscription/subscriptions/129ff972-28f8-46b8-a726-e497be039368
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### PatchRoleManagementPolicy
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var roleManagementPolicy = new AzureNative.Authorization.RoleManagementPolicy("roleManagementPolicy", new()
///     {
///         RoleManagementPolicyName = "570c3619-7688-4b34-b290-2b8bb3ccab2a",
///         Rules =
///         {
///             new AzureNative.Authorization.Inputs.RoleManagementPolicyExpirationRuleArgs
///             {
///                 Id = "Expiration_Admin_Eligibility",
///                 IsExpirationRequired = false,
///                 MaximumDuration = "P180D",
///                 RuleType = "RoleManagementPolicyExpirationRule",
///                 Target = new AzureNative.Authorization.Inputs.RoleManagementPolicyRuleTargetArgs
///                 {
///                     Caller = "Admin",
///                     Level = "Eligibility",
///                     Operations = new[]
///                     {
///                         "All",
///                     },
///                 },
///             },
///             new AzureNative.Authorization.Inputs.RoleManagementPolicyNotificationRuleArgs
///             {
///                 Id = "Notification_Admin_Admin_Eligibility",
///                 IsDefaultRecipientsEnabled = false,
///                 NotificationLevel = AzureNative.Authorization.NotificationLevel.Critical,
///                 NotificationRecipients = new[]
///                 {
///                     "admin_admin_eligible@test.com",
///                 },
///                 NotificationType = AzureNative.Authorization.NotificationDeliveryMechanism.Email,
///                 RecipientType = AzureNative.Authorization.RecipientType.Admin,
///                 RuleType = "RoleManagementPolicyNotificationRule",
///                 Target = new AzureNative.Authorization.Inputs.RoleManagementPolicyRuleTargetArgs
///                 {
///                     Caller = "Admin",
///                     Level = "Eligibility",
///                     Operations = new[]
///                     {
///                         "All",
///                     },
///                 },
///             },
///             new AzureNative.Authorization.Inputs.RoleManagementPolicyNotificationRuleArgs
///             {
///                 Id = "Notification_Requestor_Admin_Eligibility",
///                 IsDefaultRecipientsEnabled = false,
///                 NotificationLevel = AzureNative.Authorization.NotificationLevel.Critical,
///                 NotificationRecipients = new[]
///                 {
///                     "requestor_admin_eligible@test.com",
///                 },
///                 NotificationType = AzureNative.Authorization.NotificationDeliveryMechanism.Email,
///                 RecipientType = AzureNative.Authorization.RecipientType.Requestor,
///                 RuleType = "RoleManagementPolicyNotificationRule",
///                 Target = new AzureNative.Authorization.Inputs.RoleManagementPolicyRuleTargetArgs
///                 {
///                     Caller = "Admin",
///                     Level = "Eligibility",
///                     Operations = new[]
///                     {
///                         "All",
///                     },
///                 },
///             },
///             new AzureNative.Authorization.Inputs.RoleManagementPolicyNotificationRuleArgs
///             {
///                 Id = "Notification_Approver_Admin_Eligibility",
///                 IsDefaultRecipientsEnabled = false,
///                 NotificationLevel = AzureNative.Authorization.NotificationLevel.Critical,
///                 NotificationRecipients = new[]
///                 {
///                     "approver_admin_eligible@test.com",
///                 },
///                 NotificationType = AzureNative.Authorization.NotificationDeliveryMechanism.Email,
///                 RecipientType = AzureNative.Authorization.RecipientType.Approver,
///                 RuleType = "RoleManagementPolicyNotificationRule",
///                 Target = new AzureNative.Authorization.Inputs.RoleManagementPolicyRuleTargetArgs
///                 {
///                     Caller = "Admin",
///                     Level = "Eligibility",
///                     Operations = new[]
///                     {
///                         "All",
///                     },
///                 },
///             },
///             new AzureNative.Authorization.Inputs.RoleManagementPolicyEnablementRuleArgs
///             {
///                 EnabledRules = new() { },
///                 Id = "Enablement_Admin_Eligibility",
///                 RuleType = "RoleManagementPolicyEnablementRule",
///                 Target = new AzureNative.Authorization.Inputs.RoleManagementPolicyRuleTargetArgs
///                 {
///                     Caller = "Admin",
///                     Level = "Eligibility",
///                     Operations = new[]
///                     {
///                         "All",
///                     },
///                 },
///             },
///             new AzureNative.Authorization.Inputs.RoleManagementPolicyExpirationRuleArgs
///             {
///                 Id = "Expiration_Admin_Assignment",
///                 IsExpirationRequired = false,
///                 MaximumDuration = "P90D",
///                 RuleType = "RoleManagementPolicyExpirationRule",
///                 Target = new AzureNative.Authorization.Inputs.RoleManagementPolicyRuleTargetArgs
///                 {
///                     Caller = "Admin",
///                     Level = "Assignment",
///                     Operations = new[]
///                     {
///                         "All",
///                     },
///                 },
///             },
///             new AzureNative.Authorization.Inputs.RoleManagementPolicyEnablementRuleArgs
///             {
///                 EnabledRules = new[]
///                 {
///                     AzureNative.Authorization.EnablementRules.Justification,
///                     AzureNative.Authorization.EnablementRules.MultiFactorAuthentication,
///                 },
///                 Id = "Enablement_Admin_Assignment",
///                 RuleType = "RoleManagementPolicyEnablementRule",
///                 Target = new AzureNative.Authorization.Inputs.RoleManagementPolicyRuleTargetArgs
///                 {
///                     Caller = "Admin",
///                     Level = "Assignment",
///                     Operations = new[]
///                     {
///                         "All",
///                     },
///                 },
///             },
///             new AzureNative.Authorization.Inputs.RoleManagementPolicyNotificationRuleArgs
///             {
///                 Id = "Notification_Admin_Admin_Assignment",
///                 IsDefaultRecipientsEnabled = false,
///                 NotificationLevel = AzureNative.Authorization.NotificationLevel.Critical,
///                 NotificationRecipients = new[]
///                 {
///                     "admin_admin_member@test.com",
///                 },
///                 NotificationType = AzureNative.Authorization.NotificationDeliveryMechanism.Email,
///                 RecipientType = AzureNative.Authorization.RecipientType.Admin,
///                 RuleType = "RoleManagementPolicyNotificationRule",
///                 Target = new AzureNative.Authorization.Inputs.RoleManagementPolicyRuleTargetArgs
///                 {
///                     Caller = "Admin",
///                     Level = "Assignment",
///                     Operations = new[]
///                     {
///                         "All",
///                     },
///                 },
///             },
///             new AzureNative.Authorization.Inputs.RoleManagementPolicyNotificationRuleArgs
///             {
///                 Id = "Notification_Requestor_Admin_Assignment",
///                 IsDefaultRecipientsEnabled = false,
///                 NotificationLevel = AzureNative.Authorization.NotificationLevel.Critical,
///                 NotificationRecipients = new[]
///                 {
///                     "requestor_admin_member@test.com",
///                 },
///                 NotificationType = AzureNative.Authorization.NotificationDeliveryMechanism.Email,
///                 RecipientType = AzureNative.Authorization.RecipientType.Requestor,
///                 RuleType = "RoleManagementPolicyNotificationRule",
///                 Target = new AzureNative.Authorization.Inputs.RoleManagementPolicyRuleTargetArgs
///                 {
///                     Caller = "Admin",
///                     Level = "Assignment",
///                     Operations = new[]
///                     {
///                         "All",
///                     },
///                 },
///             },
///             new AzureNative.Authorization.Inputs.RoleManagementPolicyNotificationRuleArgs
///             {
///                 Id = "Notification_Approver_Admin_Assignment",
///                 IsDefaultRecipientsEnabled = false,
///                 NotificationLevel = AzureNative.Authorization.NotificationLevel.Critical,
///                 NotificationRecipients = new[]
///                 {
///                     "approver_admin_member@test.com",
///                 },
///                 NotificationType = AzureNative.Authorization.NotificationDeliveryMechanism.Email,
///                 RecipientType = AzureNative.Authorization.RecipientType.Approver,
///                 RuleType = "RoleManagementPolicyNotificationRule",
///                 Target = new AzureNative.Authorization.Inputs.RoleManagementPolicyRuleTargetArgs
///                 {
///                     Caller = "Admin",
///                     Level = "Assignment",
///                     Operations = new[]
///                     {
///                         "All",
///                     },
///                 },
///             },
///             new AzureNative.Authorization.Inputs.RoleManagementPolicyExpirationRuleArgs
///             {
///                 Id = "Expiration_EndUser_Assignment",
///                 IsExpirationRequired = true,
///                 MaximumDuration = "PT7H",
///                 RuleType = "RoleManagementPolicyExpirationRule",
///                 Target = new AzureNative.Authorization.Inputs.RoleManagementPolicyRuleTargetArgs
///                 {
///                     Caller = "EndUser",
///                     Level = "Assignment",
///                     Operations = new[]
///                     {
///                         "All",
///                     },
///                 },
///             },
///             new AzureNative.Authorization.Inputs.RoleManagementPolicyEnablementRuleArgs
///             {
///                 EnabledRules = new[]
///                 {
///                     AzureNative.Authorization.EnablementRules.Justification,
///                     AzureNative.Authorization.EnablementRules.MultiFactorAuthentication,
///                     AzureNative.Authorization.EnablementRules.Ticketing,
///                 },
///                 Id = "Enablement_EndUser_Assignment",
///                 RuleType = "RoleManagementPolicyEnablementRule",
///                 Target = new AzureNative.Authorization.Inputs.RoleManagementPolicyRuleTargetArgs
///                 {
///                     Caller = "EndUser",
///                     Level = "Assignment",
///                     Operations = new[]
///                     {
///                         "All",
///                     },
///                 },
///             },
///             new AzureNative.Authorization.Inputs.RoleManagementPolicyApprovalRuleArgs
///             {
///                 Id = "Approval_EndUser_Assignment",
///                 RuleType = "RoleManagementPolicyApprovalRule",
///                 Setting = new AzureNative.Authorization.Inputs.ApprovalSettingsArgs
///                 {
///                     ApprovalMode = AzureNative.Authorization.ApprovalMode.SingleStage,
///                     ApprovalStages = new[]
///                     {
///                         new AzureNative.Authorization.Inputs.ApprovalStageArgs
///                         {
///                             ApprovalStageTimeOutInDays = 1,
///                             EscalationTimeInMinutes = 0,
///                             IsApproverJustificationRequired = true,
///                             IsEscalationEnabled = false,
///                             PrimaryApprovers = new[]
///                             {
///                                 new AzureNative.Authorization.Inputs.UserSetArgs
///                                 {
///                                     Description = "amansw_new_group",
///                                     Id = "2385b0f3-5fa9-43cf-8ca4-b01dc97298cd",
///                                     IsBackup = false,
///                                     UserType = AzureNative.Authorization.UserType.Group,
///                                 },
///                                 new AzureNative.Authorization.Inputs.UserSetArgs
///                                 {
///                                     Description = "amansw_group",
///                                     Id = "2f4913c9-d15b-406a-9946-1d66a28f2690",
///                                     IsBackup = false,
///                                     UserType = AzureNative.Authorization.UserType.Group,
///                                 },
///                             },
///                         },
///                     },
///                     IsApprovalRequired = true,
///                     IsApprovalRequiredForExtension = false,
///                     IsRequestorJustificationRequired = true,
///                 },
///                 Target = new AzureNative.Authorization.Inputs.RoleManagementPolicyRuleTargetArgs
///                 {
///                     Caller = "EndUser",
///                     Level = "Assignment",
///                     Operations = new[]
///                     {
///                         "All",
///                     },
///                 },
///             },
///             new AzureNative.Authorization.Inputs.RoleManagementPolicyAuthenticationContextRuleArgs
///             {
///                 ClaimValue = "",
///                 Id = "AuthenticationContext_EndUser_Assignment",
///                 IsEnabled = false,
///                 RuleType = "RoleManagementPolicyAuthenticationContextRule",
///                 Target = new AzureNative.Authorization.Inputs.RoleManagementPolicyRuleTargetArgs
///                 {
///                     Caller = "EndUser",
///                     Level = "Assignment",
///                     Operations = new[]
///                     {
///                         "All",
///                     },
///                 },
///             },
///             new AzureNative.Authorization.Inputs.RoleManagementPolicyNotificationRuleArgs
///             {
///                 Id = "Notification_Admin_EndUser_Assignment",
///                 IsDefaultRecipientsEnabled = false,
///                 NotificationLevel = AzureNative.Authorization.NotificationLevel.Critical,
///                 NotificationRecipients = new[]
///                 {
///                     "admin_enduser_member@test.com",
///                 },
///                 NotificationType = AzureNative.Authorization.NotificationDeliveryMechanism.Email,
///                 RecipientType = AzureNative.Authorization.RecipientType.Admin,
///                 RuleType = "RoleManagementPolicyNotificationRule",
///                 Target = new AzureNative.Authorization.Inputs.RoleManagementPolicyRuleTargetArgs
///                 {
///                     Caller = "EndUser",
///                     Level = "Assignment",
///                     Operations = new[]
///                     {
///                         "All",
///                     },
///                 },
///             },
///             new AzureNative.Authorization.Inputs.RoleManagementPolicyNotificationRuleArgs
///             {
///                 Id = "Notification_Requestor_EndUser_Assignment",
///                 IsDefaultRecipientsEnabled = false,
///                 NotificationLevel = AzureNative.Authorization.NotificationLevel.Critical,
///                 NotificationRecipients = new[]
///                 {
///                     "requestor_enduser_member@test.com",
///                 },
///                 NotificationType = AzureNative.Authorization.NotificationDeliveryMechanism.Email,
///                 RecipientType = AzureNative.Authorization.RecipientType.Requestor,
///                 RuleType = "RoleManagementPolicyNotificationRule",
///                 Target = new AzureNative.Authorization.Inputs.RoleManagementPolicyRuleTargetArgs
///                 {
///                     Caller = "EndUser",
///                     Level = "Assignment",
///                     Operations = new[]
///                     {
///                         "All",
///                     },
///                 },
///             },
///             new AzureNative.Authorization.Inputs.RoleManagementPolicyNotificationRuleArgs
///             {
///                 Id = "Notification_Approver_EndUser_Assignment",
///                 IsDefaultRecipientsEnabled = true,
///                 NotificationLevel = AzureNative.Authorization.NotificationLevel.Critical,
///                 NotificationType = AzureNative.Authorization.NotificationDeliveryMechanism.Email,
///                 RecipientType = AzureNative.Authorization.RecipientType.Approver,
///                 RuleType = "RoleManagementPolicyNotificationRule",
///                 Target = new AzureNative.Authorization.Inputs.RoleManagementPolicyRuleTargetArgs
///                 {
///                     Caller = "EndUser",
///                     Level = "Assignment",
///                     Operations = new[]
///                     {
///                         "All",
///                     },
///                 },
///             },
///             new AzureNative.Authorization.Inputs.RoleManagementPolicyPimOnlyModeRuleArgs
///             {
///                 Id = "PIMOnlyMode_Admin_Assignment",
///                 PimOnlyModeSettings = new AzureNative.Authorization.Inputs.PIMOnlyModeSettingsArgs
///                 {
///                     ExcludedAssignmentTypes = new[]
///                     {
///                         AzureNative.Authorization.ExcludedPrincipalTypes.ServicePrincipalsAsTarget,
///                     },
///                     Excludes = new[]
///                     {
///                         new AzureNative.Authorization.Inputs.UsersOrServicePrincipalSetArgs
///                         {
///                             Id = "ec42a424-a0c0-4418-8788-d19bdeb03704",
///                             Type = AzureNative.Authorization.UsersOrServicePrincipalSetUserType.User,
///                         },
///                         new AzureNative.Authorization.Inputs.UsersOrServicePrincipalSetArgs
///                         {
///                             Id = "00029dfb-0218-4e7a-9a85-c15dc0c880bc",
///                             Type = AzureNative.Authorization.UsersOrServicePrincipalSetUserType.Group,
///                         },
///                         new AzureNative.Authorization.Inputs.UsersOrServicePrincipalSetArgs
///                         {
///                             Id = "0000103d-1fc2-4ac8-81de-71517765655c",
///                             Type = AzureNative.Authorization.UsersOrServicePrincipalSetUserType.ServicePrincipal,
///                         },
///                     },
///                     Mode = AzureNative.Authorization.PIMOnlyMode.Enabled,
///                 },
///                 RuleType = "RoleManagementPolicyPimOnlyModeRule",
///                 Target = new AzureNative.Authorization.Inputs.RoleManagementPolicyRuleTargetArgs
///                 {
///                     Caller = "Admin",
///                     EnforcedSettings = new[]
///                     {
///                         "all",
///                     },
///                     InheritableSettings = new[]
///                     {
///                         "all",
///                     },
///                     Level = "Assignment",
///                     Operations = new[]
///                     {
///                         "all",
///                     },
///                     TargetObjects = new() { },
///                 },
///             },
///         },
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
/// 		_, err := authorization.NewRoleManagementPolicy(ctx, "roleManagementPolicy", &authorization.RoleManagementPolicyArgs{
/// 			RoleManagementPolicyName: pulumi.String("570c3619-7688-4b34-b290-2b8bb3ccab2a"),
/// 			Rules: pulumi.Array{
/// 				authorization.RoleManagementPolicyExpirationRule{
/// 					Id:                   "Expiration_Admin_Eligibility",
/// 					IsExpirationRequired: false,
/// 					MaximumDuration:      "P180D",
/// 					RuleType:             "RoleManagementPolicyExpirationRule",
/// 					Target: authorization.RoleManagementPolicyRuleTarget{
/// 						Caller: "Admin",
/// 						Level:  "Eligibility",
/// 						Operations: []string{
/// 							"All",
/// 						},
/// 					},
/// 				},
/// 				authorization.RoleManagementPolicyNotificationRule{
/// 					Id:                         "Notification_Admin_Admin_Eligibility",
/// 					IsDefaultRecipientsEnabled: false,
/// 					NotificationLevel:          authorization.NotificationLevelCritical,
/// 					NotificationRecipients: []string{
/// 						"admin_admin_eligible@test.com",
/// 					},
/// 					NotificationType: authorization.NotificationDeliveryMechanismEmail,
/// 					RecipientType:    authorization.RecipientTypeAdmin,
/// 					RuleType:         "RoleManagementPolicyNotificationRule",
/// 					Target: authorization.RoleManagementPolicyRuleTarget{
/// 						Caller: "Admin",
/// 						Level:  "Eligibility",
/// 						Operations: []string{
/// 							"All",
/// 						},
/// 					},
/// 				},
/// 				authorization.RoleManagementPolicyNotificationRule{
/// 					Id:                         "Notification_Requestor_Admin_Eligibility",
/// 					IsDefaultRecipientsEnabled: false,
/// 					NotificationLevel:          authorization.NotificationLevelCritical,
/// 					NotificationRecipients: []string{
/// 						"requestor_admin_eligible@test.com",
/// 					},
/// 					NotificationType: authorization.NotificationDeliveryMechanismEmail,
/// 					RecipientType:    authorization.RecipientTypeRequestor,
/// 					RuleType:         "RoleManagementPolicyNotificationRule",
/// 					Target: authorization.RoleManagementPolicyRuleTarget{
/// 						Caller: "Admin",
/// 						Level:  "Eligibility",
/// 						Operations: []string{
/// 							"All",
/// 						},
/// 					},
/// 				},
/// 				authorization.RoleManagementPolicyNotificationRule{
/// 					Id:                         "Notification_Approver_Admin_Eligibility",
/// 					IsDefaultRecipientsEnabled: false,
/// 					NotificationLevel:          authorization.NotificationLevelCritical,
/// 					NotificationRecipients: []string{
/// 						"approver_admin_eligible@test.com",
/// 					},
/// 					NotificationType: authorization.NotificationDeliveryMechanismEmail,
/// 					RecipientType:    authorization.RecipientTypeApprover,
/// 					RuleType:         "RoleManagementPolicyNotificationRule",
/// 					Target: authorization.RoleManagementPolicyRuleTarget{
/// 						Caller: "Admin",
/// 						Level:  "Eligibility",
/// 						Operations: []string{
/// 							"All",
/// 						},
/// 					},
/// 				},
/// 				authorization.RoleManagementPolicyEnablementRule{
/// 					EnabledRules: []authorization.EnablementRules{},
/// 					Id:           "Enablement_Admin_Eligibility",
/// 					RuleType:     "RoleManagementPolicyEnablementRule",
/// 					Target: authorization.RoleManagementPolicyRuleTarget{
/// 						Caller: "Admin",
/// 						Level:  "Eligibility",
/// 						Operations: []string{
/// 							"All",
/// 						},
/// 					},
/// 				},
/// 				authorization.RoleManagementPolicyExpirationRule{
/// 					Id:                   "Expiration_Admin_Assignment",
/// 					IsExpirationRequired: false,
/// 					MaximumDuration:      "P90D",
/// 					RuleType:             "RoleManagementPolicyExpirationRule",
/// 					Target: authorization.RoleManagementPolicyRuleTarget{
/// 						Caller: "Admin",
/// 						Level:  "Assignment",
/// 						Operations: []string{
/// 							"All",
/// 						},
/// 					},
/// 				},
/// 				authorization.RoleManagementPolicyEnablementRule{
/// 					EnabledRules: []authorization.EnablementRules{
/// 						authorization.EnablementRulesJustification,
/// 						authorization.EnablementRulesMultiFactorAuthentication,
/// 					},
/// 					Id:       "Enablement_Admin_Assignment",
/// 					RuleType: "RoleManagementPolicyEnablementRule",
/// 					Target: authorization.RoleManagementPolicyRuleTarget{
/// 						Caller: "Admin",
/// 						Level:  "Assignment",
/// 						Operations: []string{
/// 							"All",
/// 						},
/// 					},
/// 				},
/// 				authorization.RoleManagementPolicyNotificationRule{
/// 					Id:                         "Notification_Admin_Admin_Assignment",
/// 					IsDefaultRecipientsEnabled: false,
/// 					NotificationLevel:          authorization.NotificationLevelCritical,
/// 					NotificationRecipients: []string{
/// 						"admin_admin_member@test.com",
/// 					},
/// 					NotificationType: authorization.NotificationDeliveryMechanismEmail,
/// 					RecipientType:    authorization.RecipientTypeAdmin,
/// 					RuleType:         "RoleManagementPolicyNotificationRule",
/// 					Target: authorization.RoleManagementPolicyRuleTarget{
/// 						Caller: "Admin",
/// 						Level:  "Assignment",
/// 						Operations: []string{
/// 							"All",
/// 						},
/// 					},
/// 				},
/// 				authorization.RoleManagementPolicyNotificationRule{
/// 					Id:                         "Notification_Requestor_Admin_Assignment",
/// 					IsDefaultRecipientsEnabled: false,
/// 					NotificationLevel:          authorization.NotificationLevelCritical,
/// 					NotificationRecipients: []string{
/// 						"requestor_admin_member@test.com",
/// 					},
/// 					NotificationType: authorization.NotificationDeliveryMechanismEmail,
/// 					RecipientType:    authorization.RecipientTypeRequestor,
/// 					RuleType:         "RoleManagementPolicyNotificationRule",
/// 					Target: authorization.RoleManagementPolicyRuleTarget{
/// 						Caller: "Admin",
/// 						Level:  "Assignment",
/// 						Operations: []string{
/// 							"All",
/// 						},
/// 					},
/// 				},
/// 				authorization.RoleManagementPolicyNotificationRule{
/// 					Id:                         "Notification_Approver_Admin_Assignment",
/// 					IsDefaultRecipientsEnabled: false,
/// 					NotificationLevel:          authorization.NotificationLevelCritical,
/// 					NotificationRecipients: []string{
/// 						"approver_admin_member@test.com",
/// 					},
/// 					NotificationType: authorization.NotificationDeliveryMechanismEmail,
/// 					RecipientType:    authorization.RecipientTypeApprover,
/// 					RuleType:         "RoleManagementPolicyNotificationRule",
/// 					Target: authorization.RoleManagementPolicyRuleTarget{
/// 						Caller: "Admin",
/// 						Level:  "Assignment",
/// 						Operations: []string{
/// 							"All",
/// 						},
/// 					},
/// 				},
/// 				authorization.RoleManagementPolicyExpirationRule{
/// 					Id:                   "Expiration_EndUser_Assignment",
/// 					IsExpirationRequired: true,
/// 					MaximumDuration:      "PT7H",
/// 					RuleType:             "RoleManagementPolicyExpirationRule",
/// 					Target: authorization.RoleManagementPolicyRuleTarget{
/// 						Caller: "EndUser",
/// 						Level:  "Assignment",
/// 						Operations: []string{
/// 							"All",
/// 						},
/// 					},
/// 				},
/// 				authorization.RoleManagementPolicyEnablementRule{
/// 					EnabledRules: []authorization.EnablementRules{
/// 						authorization.EnablementRulesJustification,
/// 						authorization.EnablementRulesMultiFactorAuthentication,
/// 						authorization.EnablementRulesTicketing,
/// 					},
/// 					Id:       "Enablement_EndUser_Assignment",
/// 					RuleType: "RoleManagementPolicyEnablementRule",
/// 					Target: authorization.RoleManagementPolicyRuleTarget{
/// 						Caller: "EndUser",
/// 						Level:  "Assignment",
/// 						Operations: []string{
/// 							"All",
/// 						},
/// 					},
/// 				},
/// 				authorization.RoleManagementPolicyApprovalRule{
/// 					Id:       "Approval_EndUser_Assignment",
/// 					RuleType: "RoleManagementPolicyApprovalRule",
/// 					Setting: authorization.ApprovalSettings{
/// 						ApprovalMode: authorization.ApprovalModeSingleStage,
/// 						ApprovalStages: []authorization.ApprovalStage{
/// 							{
/// 								ApprovalStageTimeOutInDays:      1,
/// 								EscalationTimeInMinutes:         0,
/// 								IsApproverJustificationRequired: true,
/// 								IsEscalationEnabled:             false,
/// 								PrimaryApprovers: []authorization.UserSet{
/// 									{
/// 										Description: "amansw_new_group",
/// 										Id:          "2385b0f3-5fa9-43cf-8ca4-b01dc97298cd",
/// 										IsBackup:    false,
/// 										UserType:    authorization.UserTypeGroup,
/// 									},
/// 									{
/// 										Description: "amansw_group",
/// 										Id:          "2f4913c9-d15b-406a-9946-1d66a28f2690",
/// 										IsBackup:    false,
/// 										UserType:    authorization.UserTypeGroup,
/// 									},
/// 								},
/// 							},
/// 						},
/// 						IsApprovalRequired:               true,
/// 						IsApprovalRequiredForExtension:   false,
/// 						IsRequestorJustificationRequired: true,
/// 					},
/// 					Target: authorization.RoleManagementPolicyRuleTarget{
/// 						Caller: "EndUser",
/// 						Level:  "Assignment",
/// 						Operations: []string{
/// 							"All",
/// 						},
/// 					},
/// 				},
/// 				authorization.RoleManagementPolicyAuthenticationContextRule{
/// 					ClaimValue: "",
/// 					Id:         "AuthenticationContext_EndUser_Assignment",
/// 					IsEnabled:  false,
/// 					RuleType:   "RoleManagementPolicyAuthenticationContextRule",
/// 					Target: authorization.RoleManagementPolicyRuleTarget{
/// 						Caller: "EndUser",
/// 						Level:  "Assignment",
/// 						Operations: []string{
/// 							"All",
/// 						},
/// 					},
/// 				},
/// 				authorization.RoleManagementPolicyNotificationRule{
/// 					Id:                         "Notification_Admin_EndUser_Assignment",
/// 					IsDefaultRecipientsEnabled: false,
/// 					NotificationLevel:          authorization.NotificationLevelCritical,
/// 					NotificationRecipients: []string{
/// 						"admin_enduser_member@test.com",
/// 					},
/// 					NotificationType: authorization.NotificationDeliveryMechanismEmail,
/// 					RecipientType:    authorization.RecipientTypeAdmin,
/// 					RuleType:         "RoleManagementPolicyNotificationRule",
/// 					Target: authorization.RoleManagementPolicyRuleTarget{
/// 						Caller: "EndUser",
/// 						Level:  "Assignment",
/// 						Operations: []string{
/// 							"All",
/// 						},
/// 					},
/// 				},
/// 				authorization.RoleManagementPolicyNotificationRule{
/// 					Id:                         "Notification_Requestor_EndUser_Assignment",
/// 					IsDefaultRecipientsEnabled: false,
/// 					NotificationLevel:          authorization.NotificationLevelCritical,
/// 					NotificationRecipients: []string{
/// 						"requestor_enduser_member@test.com",
/// 					},
/// 					NotificationType: authorization.NotificationDeliveryMechanismEmail,
/// 					RecipientType:    authorization.RecipientTypeRequestor,
/// 					RuleType:         "RoleManagementPolicyNotificationRule",
/// 					Target: authorization.RoleManagementPolicyRuleTarget{
/// 						Caller: "EndUser",
/// 						Level:  "Assignment",
/// 						Operations: []string{
/// 							"All",
/// 						},
/// 					},
/// 				},
/// 				authorization.RoleManagementPolicyNotificationRule{
/// 					Id:                         "Notification_Approver_EndUser_Assignment",
/// 					IsDefaultRecipientsEnabled: true,
/// 					NotificationLevel:          authorization.NotificationLevelCritical,
/// 					NotificationType:           authorization.NotificationDeliveryMechanismEmail,
/// 					RecipientType:              authorization.RecipientTypeApprover,
/// 					RuleType:                   "RoleManagementPolicyNotificationRule",
/// 					Target: authorization.RoleManagementPolicyRuleTarget{
/// 						Caller: "EndUser",
/// 						Level:  "Assignment",
/// 						Operations: []string{
/// 							"All",
/// 						},
/// 					},
/// 				},
/// 				authorization.RoleManagementPolicyPimOnlyModeRule{
/// 					Id: "PIMOnlyMode_Admin_Assignment",
/// 					PimOnlyModeSettings: authorization.PIMOnlyModeSettings{
/// 						ExcludedAssignmentTypes: []authorization.ExcludedPrincipalTypes{
/// 							authorization.ExcludedPrincipalTypesServicePrincipalsAsTarget,
/// 						},
/// 						Excludes: []authorization.UsersOrServicePrincipalSet{
/// 							{
/// 								Id:   "ec42a424-a0c0-4418-8788-d19bdeb03704",
/// 								Type: authorization.UsersOrServicePrincipalSetUserTypeUser,
/// 							},
/// 							{
/// 								Id:   "00029dfb-0218-4e7a-9a85-c15dc0c880bc",
/// 								Type: authorization.UsersOrServicePrincipalSetUserTypeGroup,
/// 							},
/// 							{
/// 								Id:   "0000103d-1fc2-4ac8-81de-71517765655c",
/// 								Type: authorization.UsersOrServicePrincipalSetUserTypeServicePrincipal,
/// 							},
/// 						},
/// 						Mode: authorization.PIMOnlyModeEnabled,
/// 					},
/// 					RuleType: "RoleManagementPolicyPimOnlyModeRule",
/// 					Target: authorization.RoleManagementPolicyRuleTarget{
/// 						Caller: "Admin",
/// 						EnforcedSettings: []string{
/// 							"all",
/// 						},
/// 						InheritableSettings: []string{
/// 							"all",
/// 						},
/// 						Level: "Assignment",
/// 						Operations: []string{
/// 							"all",
/// 						},
/// 						TargetObjects: []interface{}{},
/// 					},
/// 				},
/// 			},
/// 			Scope: pulumi.String("providers/Microsoft.Subscription/subscriptions/129ff972-28f8-46b8-a726-e497be039368"),
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
/// resource "azure-native_authorization_rolemanagementpolicy" "roleManagementPolicy" {
///   role_management_policy_name = "570c3619-7688-4b34-b290-2b8bb3ccab2a"
///   rules = [{
///     "id"                   = "Expiration_Admin_Eligibility"
///     "isExpirationRequired" = false
///     "maximumDuration"      = "P180D"
///     "ruleType"             = "RoleManagementPolicyExpirationRule"
///     "target" = {
///       "caller"     = "Admin"
///       "level"      = "Eligibility"
///       "operations" = ["All"]
///     }
///     }, {
///     "id"                         = "Notification_Admin_Admin_Eligibility"
///     "isDefaultRecipientsEnabled" = false
///     "notificationLevel"          = "Critical"
///     "notificationRecipients"     = ["admin_admin_eligible@test.com"]
///     "notificationType"           = "Email"
///     "recipientType"              = "Admin"
///     "ruleType"                   = "RoleManagementPolicyNotificationRule"
///     "target" = {
///       "caller"     = "Admin"
///       "level"      = "Eligibility"
///       "operations" = ["All"]
///     }
///     }, {
///     "id"                         = "Notification_Requestor_Admin_Eligibility"
///     "isDefaultRecipientsEnabled" = false
///     "notificationLevel"          = "Critical"
///     "notificationRecipients"     = ["requestor_admin_eligible@test.com"]
///     "notificationType"           = "Email"
///     "recipientType"              = "Requestor"
///     "ruleType"                   = "RoleManagementPolicyNotificationRule"
///     "target" = {
///       "caller"     = "Admin"
///       "level"      = "Eligibility"
///       "operations" = ["All"]
///     }
///     }, {
///     "id"                         = "Notification_Approver_Admin_Eligibility"
///     "isDefaultRecipientsEnabled" = false
///     "notificationLevel"          = "Critical"
///     "notificationRecipients"     = ["approver_admin_eligible@test.com"]
///     "notificationType"           = "Email"
///     "recipientType"              = "Approver"
///     "ruleType"                   = "RoleManagementPolicyNotificationRule"
///     "target" = {
///       "caller"     = "Admin"
///       "level"      = "Eligibility"
///       "operations" = ["All"]
///     }
///     }, {
///     "enabledRules" = []
///     "id"           = "Enablement_Admin_Eligibility"
///     "ruleType"     = "RoleManagementPolicyEnablementRule"
///     "target" = {
///       "caller"     = "Admin"
///       "level"      = "Eligibility"
///       "operations" = ["All"]
///     }
///     }, {
///     "id"                   = "Expiration_Admin_Assignment"
///     "isExpirationRequired" = false
///     "maximumDuration"      = "P90D"
///     "ruleType"             = "RoleManagementPolicyExpirationRule"
///     "target" = {
///       "caller"     = "Admin"
///       "level"      = "Assignment"
///       "operations" = ["All"]
///     }
///     }, {
///     "enabledRules" = ["Justification", "MultiFactorAuthentication"]
///     "id"           = "Enablement_Admin_Assignment"
///     "ruleType"     = "RoleManagementPolicyEnablementRule"
///     "target" = {
///       "caller"     = "Admin"
///       "level"      = "Assignment"
///       "operations" = ["All"]
///     }
///     }, {
///     "id"                         = "Notification_Admin_Admin_Assignment"
///     "isDefaultRecipientsEnabled" = false
///     "notificationLevel"          = "Critical"
///     "notificationRecipients"     = ["admin_admin_member@test.com"]
///     "notificationType"           = "Email"
///     "recipientType"              = "Admin"
///     "ruleType"                   = "RoleManagementPolicyNotificationRule"
///     "target" = {
///       "caller"     = "Admin"
///       "level"      = "Assignment"
///       "operations" = ["All"]
///     }
///     }, {
///     "id"                         = "Notification_Requestor_Admin_Assignment"
///     "isDefaultRecipientsEnabled" = false
///     "notificationLevel"          = "Critical"
///     "notificationRecipients"     = ["requestor_admin_member@test.com"]
///     "notificationType"           = "Email"
///     "recipientType"              = "Requestor"
///     "ruleType"                   = "RoleManagementPolicyNotificationRule"
///     "target" = {
///       "caller"     = "Admin"
///       "level"      = "Assignment"
///       "operations" = ["All"]
///     }
///     }, {
///     "id"                         = "Notification_Approver_Admin_Assignment"
///     "isDefaultRecipientsEnabled" = false
///     "notificationLevel"          = "Critical"
///     "notificationRecipients"     = ["approver_admin_member@test.com"]
///     "notificationType"           = "Email"
///     "recipientType"              = "Approver"
///     "ruleType"                   = "RoleManagementPolicyNotificationRule"
///     "target" = {
///       "caller"     = "Admin"
///       "level"      = "Assignment"
///       "operations" = ["All"]
///     }
///     }, {
///     "id"                   = "Expiration_EndUser_Assignment"
///     "isExpirationRequired" = true
///     "maximumDuration"      = "PT7H"
///     "ruleType"             = "RoleManagementPolicyExpirationRule"
///     "target" = {
///       "caller"     = "EndUser"
///       "level"      = "Assignment"
///       "operations" = ["All"]
///     }
///     }, {
///     "enabledRules" = ["Justification", "MultiFactorAuthentication", "Ticketing"]
///     "id"           = "Enablement_EndUser_Assignment"
///     "ruleType"     = "RoleManagementPolicyEnablementRule"
///     "target" = {
///       "caller"     = "EndUser"
///       "level"      = "Assignment"
///       "operations" = ["All"]
///     }
///     }, {
///     "id"       = "Approval_EndUser_Assignment"
///     "ruleType" = "RoleManagementPolicyApprovalRule"
///     "setting" = {
///       "approvalMode" = "SingleStage"
///       "approvalStages" = [{
///         "approvalStageTimeOutInDays"      = 1
///         "escalationTimeInMinutes"         = 0
///         "isApproverJustificationRequired" = true
///         "isEscalationEnabled"             = false
///         "primaryApprovers" = [{
///           "description" = "amansw_new_group"
///           "id"          = "2385b0f3-5fa9-43cf-8ca4-b01dc97298cd"
///           "isBackup"    = false
///           "userType"    = "Group"
///           }, {
///           "description" = "amansw_group"
///           "id"          = "2f4913c9-d15b-406a-9946-1d66a28f2690"
///           "isBackup"    = false
///           "userType"    = "Group"
///         }]
///       }]
///       "isApprovalRequired"               = true
///       "isApprovalRequiredForExtension"   = false
///       "isRequestorJustificationRequired" = true
///     }
///     "target" = {
///       "caller"     = "EndUser"
///       "level"      = "Assignment"
///       "operations" = ["All"]
///     }
///     }, {
///     "claimValue" = ""
///     "id"         = "AuthenticationContext_EndUser_Assignment"
///     "isEnabled"  = false
///     "ruleType"   = "RoleManagementPolicyAuthenticationContextRule"
///     "target" = {
///       "caller"     = "EndUser"
///       "level"      = "Assignment"
///       "operations" = ["All"]
///     }
///     }, {
///     "id"                         = "Notification_Admin_EndUser_Assignment"
///     "isDefaultRecipientsEnabled" = false
///     "notificationLevel"          = "Critical"
///     "notificationRecipients"     = ["admin_enduser_member@test.com"]
///     "notificationType"           = "Email"
///     "recipientType"              = "Admin"
///     "ruleType"                   = "RoleManagementPolicyNotificationRule"
///     "target" = {
///       "caller"     = "EndUser"
///       "level"      = "Assignment"
///       "operations" = ["All"]
///     }
///     }, {
///     "id"                         = "Notification_Requestor_EndUser_Assignment"
///     "isDefaultRecipientsEnabled" = false
///     "notificationLevel"          = "Critical"
///     "notificationRecipients"     = ["requestor_enduser_member@test.com"]
///     "notificationType"           = "Email"
///     "recipientType"              = "Requestor"
///     "ruleType"                   = "RoleManagementPolicyNotificationRule"
///     "target" = {
///       "caller"     = "EndUser"
///       "level"      = "Assignment"
///       "operations" = ["All"]
///     }
///     }, {
///     "id"                         = "Notification_Approver_EndUser_Assignment"
///     "isDefaultRecipientsEnabled" = true
///     "notificationLevel"          = "Critical"
///     "notificationType"           = "Email"
///     "recipientType"              = "Approver"
///     "ruleType"                   = "RoleManagementPolicyNotificationRule"
///     "target" = {
///       "caller"     = "EndUser"
///       "level"      = "Assignment"
///       "operations" = ["All"]
///     }
///     }, {
///     "id" = "PIMOnlyMode_Admin_Assignment"
///     "pimOnlyModeSettings" = {
///       "excludedAssignmentTypes" = ["ServicePrincipalsAsTarget"]
///       "excludes" = [{
///         "id"   = "ec42a424-a0c0-4418-8788-d19bdeb03704"
///         "type" = "User"
///         }, {
///         "id"   = "00029dfb-0218-4e7a-9a85-c15dc0c880bc"
///         "type" = "Group"
///         }, {
///         "id"   = "0000103d-1fc2-4ac8-81de-71517765655c"
///         "type" = "ServicePrincipal"
///       }]
///       "mode" = "Enabled"
///     }
///     "ruleType" = "RoleManagementPolicyPimOnlyModeRule"
///     "target" = {
///       "caller"              = "Admin"
///       "enforcedSettings"    = ["all"]
///       "inheritableSettings" = ["all"]
///       "level"               = "Assignment"
///       "operations"          = ["all"]
///       "targetObjects"       = []
///     }
///   }]
///   scope = "providers/Microsoft.Subscription/subscriptions/129ff972-28f8-46b8-a726-e497be039368"
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
/// import com.pulumi.azurenative.authorization.RoleManagementPolicy;
/// import com.pulumi.azurenative.authorization.RoleManagementPolicyArgs;
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
///         var roleManagementPolicy = new RoleManagementPolicy("roleManagementPolicy", RoleManagementPolicyArgs.builder()
///             .roleManagementPolicyName("570c3619-7688-4b34-b290-2b8bb3ccab2a")
///             .rules(
///                 RoleManagementPolicyExpirationRuleArgs.builder()
///                     .id("Expiration_Admin_Eligibility")
///                     .isExpirationRequired(false)
///                     .maximumDuration("P180D")
///                     .ruleType("RoleManagementPolicyExpirationRule")
///                     .target(RoleManagementPolicyRuleTargetArgs.builder()
///                         .caller("Admin")
///                         .level("Eligibility")
///                         .operations("All")
///                         .build())
///                     .build(),
///                 RoleManagementPolicyNotificationRuleArgs.builder()
///                     .id("Notification_Admin_Admin_Eligibility")
///                     .isDefaultRecipientsEnabled(false)
///                     .notificationLevel("Critical")
///                     .notificationRecipients("admin_admin_eligible@test.com")
///                     .notificationType("Email")
///                     .recipientType("Admin")
///                     .ruleType("RoleManagementPolicyNotificationRule")
///                     .target(RoleManagementPolicyRuleTargetArgs.builder()
///                         .caller("Admin")
///                         .level("Eligibility")
///                         .operations("All")
///                         .build())
///                     .build(),
///                 RoleManagementPolicyNotificationRuleArgs.builder()
///                     .id("Notification_Requestor_Admin_Eligibility")
///                     .isDefaultRecipientsEnabled(false)
///                     .notificationLevel("Critical")
///                     .notificationRecipients("requestor_admin_eligible@test.com")
///                     .notificationType("Email")
///                     .recipientType("Requestor")
///                     .ruleType("RoleManagementPolicyNotificationRule")
///                     .target(RoleManagementPolicyRuleTargetArgs.builder()
///                         .caller("Admin")
///                         .level("Eligibility")
///                         .operations("All")
///                         .build())
///                     .build(),
///                 RoleManagementPolicyNotificationRuleArgs.builder()
///                     .id("Notification_Approver_Admin_Eligibility")
///                     .isDefaultRecipientsEnabled(false)
///                     .notificationLevel("Critical")
///                     .notificationRecipients("approver_admin_eligible@test.com")
///                     .notificationType("Email")
///                     .recipientType("Approver")
///                     .ruleType("RoleManagementPolicyNotificationRule")
///                     .target(RoleManagementPolicyRuleTargetArgs.builder()
///                         .caller("Admin")
///                         .level("Eligibility")
///                         .operations("All")
///                         .build())
///                     .build(),
///                 RoleManagementPolicyEnablementRuleArgs.builder()
///                     .enabledRules()
///                     .id("Enablement_Admin_Eligibility")
///                     .ruleType("RoleManagementPolicyEnablementRule")
///                     .target(RoleManagementPolicyRuleTargetArgs.builder()
///                         .caller("Admin")
///                         .level("Eligibility")
///                         .operations("All")
///                         .build())
///                     .build(),
///                 RoleManagementPolicyExpirationRuleArgs.builder()
///                     .id("Expiration_Admin_Assignment")
///                     .isExpirationRequired(false)
///                     .maximumDuration("P90D")
///                     .ruleType("RoleManagementPolicyExpirationRule")
///                     .target(RoleManagementPolicyRuleTargetArgs.builder()
///                         .caller("Admin")
///                         .level("Assignment")
///                         .operations("All")
///                         .build())
///                     .build(),
///                 RoleManagementPolicyEnablementRuleArgs.builder()
///                     .enabledRules(
///                         "Justification",
///                         "MultiFactorAuthentication")
///                     .id("Enablement_Admin_Assignment")
///                     .ruleType("RoleManagementPolicyEnablementRule")
///                     .target(RoleManagementPolicyRuleTargetArgs.builder()
///                         .caller("Admin")
///                         .level("Assignment")
///                         .operations("All")
///                         .build())
///                     .build(),
///                 RoleManagementPolicyNotificationRuleArgs.builder()
///                     .id("Notification_Admin_Admin_Assignment")
///                     .isDefaultRecipientsEnabled(false)
///                     .notificationLevel("Critical")
///                     .notificationRecipients("admin_admin_member@test.com")
///                     .notificationType("Email")
///                     .recipientType("Admin")
///                     .ruleType("RoleManagementPolicyNotificationRule")
///                     .target(RoleManagementPolicyRuleTargetArgs.builder()
///                         .caller("Admin")
///                         .level("Assignment")
///                         .operations("All")
///                         .build())
///                     .build(),
///                 RoleManagementPolicyNotificationRuleArgs.builder()
///                     .id("Notification_Requestor_Admin_Assignment")
///                     .isDefaultRecipientsEnabled(false)
///                     .notificationLevel("Critical")
///                     .notificationRecipients("requestor_admin_member@test.com")
///                     .notificationType("Email")
///                     .recipientType("Requestor")
///                     .ruleType("RoleManagementPolicyNotificationRule")
///                     .target(RoleManagementPolicyRuleTargetArgs.builder()
///                         .caller("Admin")
///                         .level("Assignment")
///                         .operations("All")
///                         .build())
///                     .build(),
///                 RoleManagementPolicyNotificationRuleArgs.builder()
///                     .id("Notification_Approver_Admin_Assignment")
///                     .isDefaultRecipientsEnabled(false)
///                     .notificationLevel("Critical")
///                     .notificationRecipients("approver_admin_member@test.com")
///                     .notificationType("Email")
///                     .recipientType("Approver")
///                     .ruleType("RoleManagementPolicyNotificationRule")
///                     .target(RoleManagementPolicyRuleTargetArgs.builder()
///                         .caller("Admin")
///                         .level("Assignment")
///                         .operations("All")
///                         .build())
///                     .build(),
///                 RoleManagementPolicyExpirationRuleArgs.builder()
///                     .id("Expiration_EndUser_Assignment")
///                     .isExpirationRequired(true)
///                     .maximumDuration("PT7H")
///                     .ruleType("RoleManagementPolicyExpirationRule")
///                     .target(RoleManagementPolicyRuleTargetArgs.builder()
///                         .caller("EndUser")
///                         .level("Assignment")
///                         .operations("All")
///                         .build())
///                     .build(),
///                 RoleManagementPolicyEnablementRuleArgs.builder()
///                     .enabledRules(
///                         "Justification",
///                         "MultiFactorAuthentication",
///                         "Ticketing")
///                     .id("Enablement_EndUser_Assignment")
///                     .ruleType("RoleManagementPolicyEnablementRule")
///                     .target(RoleManagementPolicyRuleTargetArgs.builder()
///                         .caller("EndUser")
///                         .level("Assignment")
///                         .operations("All")
///                         .build())
///                     .build(),
///                 RoleManagementPolicyApprovalRuleArgs.builder()
///                     .id("Approval_EndUser_Assignment")
///                     .ruleType("RoleManagementPolicyApprovalRule")
///                     .setting(ApprovalSettingsArgs.builder()
///                         .approvalMode("SingleStage")
///                         .approvalStages(ApprovalStageArgs.builder()
///                             .approvalStageTimeOutInDays(1)
///                             .escalationTimeInMinutes(0)
///                             .isApproverJustificationRequired(true)
///                             .isEscalationEnabled(false)
///                             .primaryApprovers(
///                                 UserSetArgs.builder()
///                                     .description("amansw_new_group")
///                                     .id("2385b0f3-5fa9-43cf-8ca4-b01dc97298cd")
///                                     .isBackup(false)
///                                     .userType("Group")
///                                     .build(),
///                                 UserSetArgs.builder()
///                                     .description("amansw_group")
///                                     .id("2f4913c9-d15b-406a-9946-1d66a28f2690")
///                                     .isBackup(false)
///                                     .userType("Group")
///                                     .build())
///                             .build())
///                         .isApprovalRequired(true)
///                         .isApprovalRequiredForExtension(false)
///                         .isRequestorJustificationRequired(true)
///                         .build())
///                     .target(RoleManagementPolicyRuleTargetArgs.builder()
///                         .caller("EndUser")
///                         .level("Assignment")
///                         .operations("All")
///                         .build())
///                     .build(),
///                 RoleManagementPolicyAuthenticationContextRuleArgs.builder()
///                     .claimValue("")
///                     .id("AuthenticationContext_EndUser_Assignment")
///                     .isEnabled(false)
///                     .ruleType("RoleManagementPolicyAuthenticationContextRule")
///                     .target(RoleManagementPolicyRuleTargetArgs.builder()
///                         .caller("EndUser")
///                         .level("Assignment")
///                         .operations("All")
///                         .build())
///                     .build(),
///                 RoleManagementPolicyNotificationRuleArgs.builder()
///                     .id("Notification_Admin_EndUser_Assignment")
///                     .isDefaultRecipientsEnabled(false)
///                     .notificationLevel("Critical")
///                     .notificationRecipients("admin_enduser_member@test.com")
///                     .notificationType("Email")
///                     .recipientType("Admin")
///                     .ruleType("RoleManagementPolicyNotificationRule")
///                     .target(RoleManagementPolicyRuleTargetArgs.builder()
///                         .caller("EndUser")
///                         .level("Assignment")
///                         .operations("All")
///                         .build())
///                     .build(),
///                 RoleManagementPolicyNotificationRuleArgs.builder()
///                     .id("Notification_Requestor_EndUser_Assignment")
///                     .isDefaultRecipientsEnabled(false)
///                     .notificationLevel("Critical")
///                     .notificationRecipients("requestor_enduser_member@test.com")
///                     .notificationType("Email")
///                     .recipientType("Requestor")
///                     .ruleType("RoleManagementPolicyNotificationRule")
///                     .target(RoleManagementPolicyRuleTargetArgs.builder()
///                         .caller("EndUser")
///                         .level("Assignment")
///                         .operations("All")
///                         .build())
///                     .build(),
///                 RoleManagementPolicyNotificationRuleArgs.builder()
///                     .id("Notification_Approver_EndUser_Assignment")
///                     .isDefaultRecipientsEnabled(true)
///                     .notificationLevel("Critical")
///                     .notificationType("Email")
///                     .recipientType("Approver")
///                     .ruleType("RoleManagementPolicyNotificationRule")
///                     .target(RoleManagementPolicyRuleTargetArgs.builder()
///                         .caller("EndUser")
///                         .level("Assignment")
///                         .operations("All")
///                         .build())
///                     .build(),
///                 RoleManagementPolicyPimOnlyModeRuleArgs.builder()
///                     .id("PIMOnlyMode_Admin_Assignment")
///                     .pimOnlyModeSettings(PIMOnlyModeSettingsArgs.builder()
///                         .excludedAssignmentTypes("ServicePrincipalsAsTarget")
///                         .excludes(
///                             UsersOrServicePrincipalSetArgs.builder()
///                                 .id("ec42a424-a0c0-4418-8788-d19bdeb03704")
///                                 .type("User")
///                                 .build(),
///                             UsersOrServicePrincipalSetArgs.builder()
///                                 .id("00029dfb-0218-4e7a-9a85-c15dc0c880bc")
///                                 .type("Group")
///                                 .build(),
///                             UsersOrServicePrincipalSetArgs.builder()
///                                 .id("0000103d-1fc2-4ac8-81de-71517765655c")
///                                 .type("ServicePrincipal")
///                                 .build())
///                         .mode("Enabled")
///                         .build())
///                     .ruleType("RoleManagementPolicyPimOnlyModeRule")
///                     .target(RoleManagementPolicyRuleTargetArgs.builder()
///                         .caller("Admin")
///                         .enforcedSettings("all")
///                         .inheritableSettings("all")
///                         .level("Assignment")
///                         .operations("all")
///                         .targetObjects()
///                         .build())
///                     .build())
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
/// const roleManagementPolicy = new azure_native.authorization.RoleManagementPolicy("roleManagementPolicy", {
///     roleManagementPolicyName: "570c3619-7688-4b34-b290-2b8bb3ccab2a",
///     rules: [
///         {
///             id: "Expiration_Admin_Eligibility",
///             isExpirationRequired: false,
///             maximumDuration: "P180D",
///             ruleType: "RoleManagementPolicyExpirationRule",
///             target: {
///                 caller: "Admin",
///                 level: "Eligibility",
///                 operations: ["All"],
///             },
///         },
///         {
///             id: "Notification_Admin_Admin_Eligibility",
///             isDefaultRecipientsEnabled: false,
///             notificationLevel: azure_native.authorization.NotificationLevel.Critical,
///             notificationRecipients: ["admin_admin_eligible@test.com"],
///             notificationType: azure_native.authorization.NotificationDeliveryMechanism.Email,
///             recipientType: azure_native.authorization.RecipientType.Admin,
///             ruleType: "RoleManagementPolicyNotificationRule",
///             target: {
///                 caller: "Admin",
///                 level: "Eligibility",
///                 operations: ["All"],
///             },
///         },
///         {
///             id: "Notification_Requestor_Admin_Eligibility",
///             isDefaultRecipientsEnabled: false,
///             notificationLevel: azure_native.authorization.NotificationLevel.Critical,
///             notificationRecipients: ["requestor_admin_eligible@test.com"],
///             notificationType: azure_native.authorization.NotificationDeliveryMechanism.Email,
///             recipientType: azure_native.authorization.RecipientType.Requestor,
///             ruleType: "RoleManagementPolicyNotificationRule",
///             target: {
///                 caller: "Admin",
///                 level: "Eligibility",
///                 operations: ["All"],
///             },
///         },
///         {
///             id: "Notification_Approver_Admin_Eligibility",
///             isDefaultRecipientsEnabled: false,
///             notificationLevel: azure_native.authorization.NotificationLevel.Critical,
///             notificationRecipients: ["approver_admin_eligible@test.com"],
///             notificationType: azure_native.authorization.NotificationDeliveryMechanism.Email,
///             recipientType: azure_native.authorization.RecipientType.Approver,
///             ruleType: "RoleManagementPolicyNotificationRule",
///             target: {
///                 caller: "Admin",
///                 level: "Eligibility",
///                 operations: ["All"],
///             },
///         },
///         {
///             enabledRules: [],
///             id: "Enablement_Admin_Eligibility",
///             ruleType: "RoleManagementPolicyEnablementRule",
///             target: {
///                 caller: "Admin",
///                 level: "Eligibility",
///                 operations: ["All"],
///             },
///         },
///         {
///             id: "Expiration_Admin_Assignment",
///             isExpirationRequired: false,
///             maximumDuration: "P90D",
///             ruleType: "RoleManagementPolicyExpirationRule",
///             target: {
///                 caller: "Admin",
///                 level: "Assignment",
///                 operations: ["All"],
///             },
///         },
///         {
///             enabledRules: [
///                 azure_native.authorization.EnablementRules.Justification,
///                 azure_native.authorization.EnablementRules.MultiFactorAuthentication,
///             ],
///             id: "Enablement_Admin_Assignment",
///             ruleType: "RoleManagementPolicyEnablementRule",
///             target: {
///                 caller: "Admin",
///                 level: "Assignment",
///                 operations: ["All"],
///             },
///         },
///         {
///             id: "Notification_Admin_Admin_Assignment",
///             isDefaultRecipientsEnabled: false,
///             notificationLevel: azure_native.authorization.NotificationLevel.Critical,
///             notificationRecipients: ["admin_admin_member@test.com"],
///             notificationType: azure_native.authorization.NotificationDeliveryMechanism.Email,
///             recipientType: azure_native.authorization.RecipientType.Admin,
///             ruleType: "RoleManagementPolicyNotificationRule",
///             target: {
///                 caller: "Admin",
///                 level: "Assignment",
///                 operations: ["All"],
///             },
///         },
///         {
///             id: "Notification_Requestor_Admin_Assignment",
///             isDefaultRecipientsEnabled: false,
///             notificationLevel: azure_native.authorization.NotificationLevel.Critical,
///             notificationRecipients: ["requestor_admin_member@test.com"],
///             notificationType: azure_native.authorization.NotificationDeliveryMechanism.Email,
///             recipientType: azure_native.authorization.RecipientType.Requestor,
///             ruleType: "RoleManagementPolicyNotificationRule",
///             target: {
///                 caller: "Admin",
///                 level: "Assignment",
///                 operations: ["All"],
///             },
///         },
///         {
///             id: "Notification_Approver_Admin_Assignment",
///             isDefaultRecipientsEnabled: false,
///             notificationLevel: azure_native.authorization.NotificationLevel.Critical,
///             notificationRecipients: ["approver_admin_member@test.com"],
///             notificationType: azure_native.authorization.NotificationDeliveryMechanism.Email,
///             recipientType: azure_native.authorization.RecipientType.Approver,
///             ruleType: "RoleManagementPolicyNotificationRule",
///             target: {
///                 caller: "Admin",
///                 level: "Assignment",
///                 operations: ["All"],
///             },
///         },
///         {
///             id: "Expiration_EndUser_Assignment",
///             isExpirationRequired: true,
///             maximumDuration: "PT7H",
///             ruleType: "RoleManagementPolicyExpirationRule",
///             target: {
///                 caller: "EndUser",
///                 level: "Assignment",
///                 operations: ["All"],
///             },
///         },
///         {
///             enabledRules: [
///                 azure_native.authorization.EnablementRules.Justification,
///                 azure_native.authorization.EnablementRules.MultiFactorAuthentication,
///                 azure_native.authorization.EnablementRules.Ticketing,
///             ],
///             id: "Enablement_EndUser_Assignment",
///             ruleType: "RoleManagementPolicyEnablementRule",
///             target: {
///                 caller: "EndUser",
///                 level: "Assignment",
///                 operations: ["All"],
///             },
///         },
///         {
///             id: "Approval_EndUser_Assignment",
///             ruleType: "RoleManagementPolicyApprovalRule",
///             setting: {
///                 approvalMode: azure_native.authorization.ApprovalMode.SingleStage,
///                 approvalStages: [{
///                     approvalStageTimeOutInDays: 1,
///                     escalationTimeInMinutes: 0,
///                     isApproverJustificationRequired: true,
///                     isEscalationEnabled: false,
///                     primaryApprovers: [
///                         {
///                             description: "amansw_new_group",
///                             id: "2385b0f3-5fa9-43cf-8ca4-b01dc97298cd",
///                             isBackup: false,
///                             userType: azure_native.authorization.UserType.Group,
///                         },
///                         {
///                             description: "amansw_group",
///                             id: "2f4913c9-d15b-406a-9946-1d66a28f2690",
///                             isBackup: false,
///                             userType: azure_native.authorization.UserType.Group,
///                         },
///                     ],
///                 }],
///                 isApprovalRequired: true,
///                 isApprovalRequiredForExtension: false,
///                 isRequestorJustificationRequired: true,
///             },
///             target: {
///                 caller: "EndUser",
///                 level: "Assignment",
///                 operations: ["All"],
///             },
///         },
///         {
///             claimValue: "",
///             id: "AuthenticationContext_EndUser_Assignment",
///             isEnabled: false,
///             ruleType: "RoleManagementPolicyAuthenticationContextRule",
///             target: {
///                 caller: "EndUser",
///                 level: "Assignment",
///                 operations: ["All"],
///             },
///         },
///         {
///             id: "Notification_Admin_EndUser_Assignment",
///             isDefaultRecipientsEnabled: false,
///             notificationLevel: azure_native.authorization.NotificationLevel.Critical,
///             notificationRecipients: ["admin_enduser_member@test.com"],
///             notificationType: azure_native.authorization.NotificationDeliveryMechanism.Email,
///             recipientType: azure_native.authorization.RecipientType.Admin,
///             ruleType: "RoleManagementPolicyNotificationRule",
///             target: {
///                 caller: "EndUser",
///                 level: "Assignment",
///                 operations: ["All"],
///             },
///         },
///         {
///             id: "Notification_Requestor_EndUser_Assignment",
///             isDefaultRecipientsEnabled: false,
///             notificationLevel: azure_native.authorization.NotificationLevel.Critical,
///             notificationRecipients: ["requestor_enduser_member@test.com"],
///             notificationType: azure_native.authorization.NotificationDeliveryMechanism.Email,
///             recipientType: azure_native.authorization.RecipientType.Requestor,
///             ruleType: "RoleManagementPolicyNotificationRule",
///             target: {
///                 caller: "EndUser",
///                 level: "Assignment",
///                 operations: ["All"],
///             },
///         },
///         {
///             id: "Notification_Approver_EndUser_Assignment",
///             isDefaultRecipientsEnabled: true,
///             notificationLevel: azure_native.authorization.NotificationLevel.Critical,
///             notificationType: azure_native.authorization.NotificationDeliveryMechanism.Email,
///             recipientType: azure_native.authorization.RecipientType.Approver,
///             ruleType: "RoleManagementPolicyNotificationRule",
///             target: {
///                 caller: "EndUser",
///                 level: "Assignment",
///                 operations: ["All"],
///             },
///         },
///         {
///             id: "PIMOnlyMode_Admin_Assignment",
///             pimOnlyModeSettings: {
///                 excludedAssignmentTypes: [azure_native.authorization.ExcludedPrincipalTypes.ServicePrincipalsAsTarget],
///                 excludes: [
///                     {
///                         id: "ec42a424-a0c0-4418-8788-d19bdeb03704",
///                         type: azure_native.authorization.UsersOrServicePrincipalSetUserType.User,
///                     },
///                     {
///                         id: "00029dfb-0218-4e7a-9a85-c15dc0c880bc",
///                         type: azure_native.authorization.UsersOrServicePrincipalSetUserType.Group,
///                     },
///                     {
///                         id: "0000103d-1fc2-4ac8-81de-71517765655c",
///                         type: azure_native.authorization.UsersOrServicePrincipalSetUserType.ServicePrincipal,
///                     },
///                 ],
///                 mode: azure_native.authorization.PIMOnlyMode.Enabled,
///             },
///             ruleType: "RoleManagementPolicyPimOnlyModeRule",
///             target: {
///                 caller: "Admin",
///                 enforcedSettings: ["all"],
///                 inheritableSettings: ["all"],
///                 level: "Assignment",
///                 operations: ["all"],
///                 targetObjects: [],
///             },
///         },
///     ],
///     scope: "providers/Microsoft.Subscription/subscriptions/129ff972-28f8-46b8-a726-e497be039368",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// role_management_policy = azure_native.authorization.RoleManagementPolicy("roleManagementPolicy",
///     role_management_policy_name="570c3619-7688-4b34-b290-2b8bb3ccab2a",
///     rules=[
///         {
///             "id": "Expiration_Admin_Eligibility",
///             "is_expiration_required": False,
///             "maximum_duration": "P180D",
///             "rule_type": "RoleManagementPolicyExpirationRule",
///             "target": {
///                 "caller": "Admin",
///                 "level": "Eligibility",
///                 "operations": ["All"],
///             },
///         },
///         {
///             "id": "Notification_Admin_Admin_Eligibility",
///             "is_default_recipients_enabled": False,
///             "notification_level": azure_native.authorization.NotificationLevel.CRITICAL,
///             "notification_recipients": ["admin_admin_eligible@test.com"],
///             "notification_type": azure_native.authorization.NotificationDeliveryMechanism.EMAIL,
///             "recipient_type": azure_native.authorization.RecipientType.ADMIN,
///             "rule_type": "RoleManagementPolicyNotificationRule",
///             "target": {
///                 "caller": "Admin",
///                 "level": "Eligibility",
///                 "operations": ["All"],
///             },
///         },
///         {
///             "id": "Notification_Requestor_Admin_Eligibility",
///             "is_default_recipients_enabled": False,
///             "notification_level": azure_native.authorization.NotificationLevel.CRITICAL,
///             "notification_recipients": ["requestor_admin_eligible@test.com"],
///             "notification_type": azure_native.authorization.NotificationDeliveryMechanism.EMAIL,
///             "recipient_type": azure_native.authorization.RecipientType.REQUESTOR,
///             "rule_type": "RoleManagementPolicyNotificationRule",
///             "target": {
///                 "caller": "Admin",
///                 "level": "Eligibility",
///                 "operations": ["All"],
///             },
///         },
///         {
///             "id": "Notification_Approver_Admin_Eligibility",
///             "is_default_recipients_enabled": False,
///             "notification_level": azure_native.authorization.NotificationLevel.CRITICAL,
///             "notification_recipients": ["approver_admin_eligible@test.com"],
///             "notification_type": azure_native.authorization.NotificationDeliveryMechanism.EMAIL,
///             "recipient_type": azure_native.authorization.RecipientType.APPROVER,
///             "rule_type": "RoleManagementPolicyNotificationRule",
///             "target": {
///                 "caller": "Admin",
///                 "level": "Eligibility",
///                 "operations": ["All"],
///             },
///         },
///         {
///             "enabled_rules": [],
///             "id": "Enablement_Admin_Eligibility",
///             "rule_type": "RoleManagementPolicyEnablementRule",
///             "target": {
///                 "caller": "Admin",
///                 "level": "Eligibility",
///                 "operations": ["All"],
///             },
///         },
///         {
///             "id": "Expiration_Admin_Assignment",
///             "is_expiration_required": False,
///             "maximum_duration": "P90D",
///             "rule_type": "RoleManagementPolicyExpirationRule",
///             "target": {
///                 "caller": "Admin",
///                 "level": "Assignment",
///                 "operations": ["All"],
///             },
///         },
///         {
///             "enabled_rules": [
///                 azure_native.authorization.EnablementRules.JUSTIFICATION,
///                 azure_native.authorization.EnablementRules.MULTI_FACTOR_AUTHENTICATION,
///             ],
///             "id": "Enablement_Admin_Assignment",
///             "rule_type": "RoleManagementPolicyEnablementRule",
///             "target": {
///                 "caller": "Admin",
///                 "level": "Assignment",
///                 "operations": ["All"],
///             },
///         },
///         {
///             "id": "Notification_Admin_Admin_Assignment",
///             "is_default_recipients_enabled": False,
///             "notification_level": azure_native.authorization.NotificationLevel.CRITICAL,
///             "notification_recipients": ["admin_admin_member@test.com"],
///             "notification_type": azure_native.authorization.NotificationDeliveryMechanism.EMAIL,
///             "recipient_type": azure_native.authorization.RecipientType.ADMIN,
///             "rule_type": "RoleManagementPolicyNotificationRule",
///             "target": {
///                 "caller": "Admin",
///                 "level": "Assignment",
///                 "operations": ["All"],
///             },
///         },
///         {
///             "id": "Notification_Requestor_Admin_Assignment",
///             "is_default_recipients_enabled": False,
///             "notification_level": azure_native.authorization.NotificationLevel.CRITICAL,
///             "notification_recipients": ["requestor_admin_member@test.com"],
///             "notification_type": azure_native.authorization.NotificationDeliveryMechanism.EMAIL,
///             "recipient_type": azure_native.authorization.RecipientType.REQUESTOR,
///             "rule_type": "RoleManagementPolicyNotificationRule",
///             "target": {
///                 "caller": "Admin",
///                 "level": "Assignment",
///                 "operations": ["All"],
///             },
///         },
///         {
///             "id": "Notification_Approver_Admin_Assignment",
///             "is_default_recipients_enabled": False,
///             "notification_level": azure_native.authorization.NotificationLevel.CRITICAL,
///             "notification_recipients": ["approver_admin_member@test.com"],
///             "notification_type": azure_native.authorization.NotificationDeliveryMechanism.EMAIL,
///             "recipient_type": azure_native.authorization.RecipientType.APPROVER,
///             "rule_type": "RoleManagementPolicyNotificationRule",
///             "target": {
///                 "caller": "Admin",
///                 "level": "Assignment",
///                 "operations": ["All"],
///             },
///         },
///         {
///             "id": "Expiration_EndUser_Assignment",
///             "is_expiration_required": True,
///             "maximum_duration": "PT7H",
///             "rule_type": "RoleManagementPolicyExpirationRule",
///             "target": {
///                 "caller": "EndUser",
///                 "level": "Assignment",
///                 "operations": ["All"],
///             },
///         },
///         {
///             "enabled_rules": [
///                 azure_native.authorization.EnablementRules.JUSTIFICATION,
///                 azure_native.authorization.EnablementRules.MULTI_FACTOR_AUTHENTICATION,
///                 azure_native.authorization.EnablementRules.TICKETING,
///             ],
///             "id": "Enablement_EndUser_Assignment",
///             "rule_type": "RoleManagementPolicyEnablementRule",
///             "target": {
///                 "caller": "EndUser",
///                 "level": "Assignment",
///                 "operations": ["All"],
///             },
///         },
///         {
///             "id": "Approval_EndUser_Assignment",
///             "rule_type": "RoleManagementPolicyApprovalRule",
///             "setting": {
///                 "approval_mode": azure_native.authorization.ApprovalMode.SINGLE_STAGE,
///                 "approval_stages": [{
///                     "approval_stage_time_out_in_days": 1,
///                     "escalation_time_in_minutes": 0,
///                     "is_approver_justification_required": True,
///                     "is_escalation_enabled": False,
///                     "primary_approvers": [
///                         {
///                             "description": "amansw_new_group",
///                             "id": "2385b0f3-5fa9-43cf-8ca4-b01dc97298cd",
///                             "is_backup": False,
///                             "user_type": azure_native.authorization.UserType.GROUP,
///                         },
///                         {
///                             "description": "amansw_group",
///                             "id": "2f4913c9-d15b-406a-9946-1d66a28f2690",
///                             "is_backup": False,
///                             "user_type": azure_native.authorization.UserType.GROUP,
///                         },
///                     ],
///                 }],
///                 "is_approval_required": True,
///                 "is_approval_required_for_extension": False,
///                 "is_requestor_justification_required": True,
///             },
///             "target": {
///                 "caller": "EndUser",
///                 "level": "Assignment",
///                 "operations": ["All"],
///             },
///         },
///         {
///             "claim_value": "",
///             "id": "AuthenticationContext_EndUser_Assignment",
///             "is_enabled": False,
///             "rule_type": "RoleManagementPolicyAuthenticationContextRule",
///             "target": {
///                 "caller": "EndUser",
///                 "level": "Assignment",
///                 "operations": ["All"],
///             },
///         },
///         {
///             "id": "Notification_Admin_EndUser_Assignment",
///             "is_default_recipients_enabled": False,
///             "notification_level": azure_native.authorization.NotificationLevel.CRITICAL,
///             "notification_recipients": ["admin_enduser_member@test.com"],
///             "notification_type": azure_native.authorization.NotificationDeliveryMechanism.EMAIL,
///             "recipient_type": azure_native.authorization.RecipientType.ADMIN,
///             "rule_type": "RoleManagementPolicyNotificationRule",
///             "target": {
///                 "caller": "EndUser",
///                 "level": "Assignment",
///                 "operations": ["All"],
///             },
///         },
///         {
///             "id": "Notification_Requestor_EndUser_Assignment",
///             "is_default_recipients_enabled": False,
///             "notification_level": azure_native.authorization.NotificationLevel.CRITICAL,
///             "notification_recipients": ["requestor_enduser_member@test.com"],
///             "notification_type": azure_native.authorization.NotificationDeliveryMechanism.EMAIL,
///             "recipient_type": azure_native.authorization.RecipientType.REQUESTOR,
///             "rule_type": "RoleManagementPolicyNotificationRule",
///             "target": {
///                 "caller": "EndUser",
///                 "level": "Assignment",
///                 "operations": ["All"],
///             },
///         },
///         {
///             "id": "Notification_Approver_EndUser_Assignment",
///             "is_default_recipients_enabled": True,
///             "notification_level": azure_native.authorization.NotificationLevel.CRITICAL,
///             "notification_type": azure_native.authorization.NotificationDeliveryMechanism.EMAIL,
///             "recipient_type": azure_native.authorization.RecipientType.APPROVER,
///             "rule_type": "RoleManagementPolicyNotificationRule",
///             "target": {
///                 "caller": "EndUser",
///                 "level": "Assignment",
///                 "operations": ["All"],
///             },
///         },
///         {
///             "id": "PIMOnlyMode_Admin_Assignment",
///             "pim_only_mode_settings": {
///                 "excluded_assignment_types": [azure_native.authorization.ExcludedPrincipalTypes.SERVICE_PRINCIPALS_AS_TARGET],
///                 "excludes": [
///                     {
///                         "id": "ec42a424-a0c0-4418-8788-d19bdeb03704",
///                         "type": azure_native.authorization.UsersOrServicePrincipalSetUserType.USER,
///                     },
///                     {
///                         "id": "00029dfb-0218-4e7a-9a85-c15dc0c880bc",
///                         "type": azure_native.authorization.UsersOrServicePrincipalSetUserType.GROUP,
///                     },
///                     {
///                         "id": "0000103d-1fc2-4ac8-81de-71517765655c",
///                         "type": azure_native.authorization.UsersOrServicePrincipalSetUserType.SERVICE_PRINCIPAL,
///                     },
///                 ],
///                 "mode": azure_native.authorization.PIMOnlyMode.ENABLED,
///             },
///             "rule_type": "RoleManagementPolicyPimOnlyModeRule",
///             "target": {
///                 "caller": "Admin",
///                 "enforced_settings": ["all"],
///                 "inheritable_settings": ["all"],
///                 "level": "Assignment",
///                 "operations": ["all"],
///                 "target_objects": [],
///             },
///         },
///     ],
///     scope="providers/Microsoft.Subscription/subscriptions/129ff972-28f8-46b8-a726-e497be039368")
///
/// ```
///
/// ```yaml
/// resources:
///   roleManagementPolicy:
///     type: azure-native:authorization:RoleManagementPolicy
///     properties:
///       roleManagementPolicyName: 570c3619-7688-4b34-b290-2b8bb3ccab2a
///       rules:
///         - id: Expiration_Admin_Eligibility
///           isExpirationRequired: false
///           maximumDuration: P180D
///           ruleType: RoleManagementPolicyExpirationRule
///           target:
///             caller: Admin
///             level: Eligibility
///             operations:
///               - All
///         - id: Notification_Admin_Admin_Eligibility
///           isDefaultRecipientsEnabled: false
///           notificationLevel: Critical
///           notificationRecipients:
///             - admin_admin_eligible@test.com
///           notificationType: Email
///           recipientType: Admin
///           ruleType: RoleManagementPolicyNotificationRule
///           target:
///             caller: Admin
///             level: Eligibility
///             operations:
///               - All
///         - id: Notification_Requestor_Admin_Eligibility
///           isDefaultRecipientsEnabled: false
///           notificationLevel: Critical
///           notificationRecipients:
///             - requestor_admin_eligible@test.com
///           notificationType: Email
///           recipientType: Requestor
///           ruleType: RoleManagementPolicyNotificationRule
///           target:
///             caller: Admin
///             level: Eligibility
///             operations:
///               - All
///         - id: Notification_Approver_Admin_Eligibility
///           isDefaultRecipientsEnabled: false
///           notificationLevel: Critical
///           notificationRecipients:
///             - approver_admin_eligible@test.com
///           notificationType: Email
///           recipientType: Approver
///           ruleType: RoleManagementPolicyNotificationRule
///           target:
///             caller: Admin
///             level: Eligibility
///             operations:
///               - All
///         - enabledRules: []
///           id: Enablement_Admin_Eligibility
///           ruleType: RoleManagementPolicyEnablementRule
///           target:
///             caller: Admin
///             level: Eligibility
///             operations:
///               - All
///         - id: Expiration_Admin_Assignment
///           isExpirationRequired: false
///           maximumDuration: P90D
///           ruleType: RoleManagementPolicyExpirationRule
///           target:
///             caller: Admin
///             level: Assignment
///             operations:
///               - All
///         - enabledRules:
///             - Justification
///             - MultiFactorAuthentication
///           id: Enablement_Admin_Assignment
///           ruleType: RoleManagementPolicyEnablementRule
///           target:
///             caller: Admin
///             level: Assignment
///             operations:
///               - All
///         - id: Notification_Admin_Admin_Assignment
///           isDefaultRecipientsEnabled: false
///           notificationLevel: Critical
///           notificationRecipients:
///             - admin_admin_member@test.com
///           notificationType: Email
///           recipientType: Admin
///           ruleType: RoleManagementPolicyNotificationRule
///           target:
///             caller: Admin
///             level: Assignment
///             operations:
///               - All
///         - id: Notification_Requestor_Admin_Assignment
///           isDefaultRecipientsEnabled: false
///           notificationLevel: Critical
///           notificationRecipients:
///             - requestor_admin_member@test.com
///           notificationType: Email
///           recipientType: Requestor
///           ruleType: RoleManagementPolicyNotificationRule
///           target:
///             caller: Admin
///             level: Assignment
///             operations:
///               - All
///         - id: Notification_Approver_Admin_Assignment
///           isDefaultRecipientsEnabled: false
///           notificationLevel: Critical
///           notificationRecipients:
///             - approver_admin_member@test.com
///           notificationType: Email
///           recipientType: Approver
///           ruleType: RoleManagementPolicyNotificationRule
///           target:
///             caller: Admin
///             level: Assignment
///             operations:
///               - All
///         - id: Expiration_EndUser_Assignment
///           isExpirationRequired: true
///           maximumDuration: PT7H
///           ruleType: RoleManagementPolicyExpirationRule
///           target:
///             caller: EndUser
///             level: Assignment
///             operations:
///               - All
///         - enabledRules:
///             - Justification
///             - MultiFactorAuthentication
///             - Ticketing
///           id: Enablement_EndUser_Assignment
///           ruleType: RoleManagementPolicyEnablementRule
///           target:
///             caller: EndUser
///             level: Assignment
///             operations:
///               - All
///         - id: Approval_EndUser_Assignment
///           ruleType: RoleManagementPolicyApprovalRule
///           setting:
///             approvalMode: SingleStage
///             approvalStages:
///               - approvalStageTimeOutInDays: 1
///                 escalationTimeInMinutes: 0
///                 isApproverJustificationRequired: true
///                 isEscalationEnabled: false
///                 primaryApprovers:
///                   - description: amansw_new_group
///                     id: 2385b0f3-5fa9-43cf-8ca4-b01dc97298cd
///                     isBackup: false
///                     userType: Group
///                   - description: amansw_group
///                     id: 2f4913c9-d15b-406a-9946-1d66a28f2690
///                     isBackup: false
///                     userType: Group
///             isApprovalRequired: true
///             isApprovalRequiredForExtension: false
///             isRequestorJustificationRequired: true
///           target:
///             caller: EndUser
///             level: Assignment
///             operations:
///               - All
///         - claimValue: ""
///           id: AuthenticationContext_EndUser_Assignment
///           isEnabled: false
///           ruleType: RoleManagementPolicyAuthenticationContextRule
///           target:
///             caller: EndUser
///             level: Assignment
///             operations:
///               - All
///         - id: Notification_Admin_EndUser_Assignment
///           isDefaultRecipientsEnabled: false
///           notificationLevel: Critical
///           notificationRecipients:
///             - admin_enduser_member@test.com
///           notificationType: Email
///           recipientType: Admin
///           ruleType: RoleManagementPolicyNotificationRule
///           target:
///             caller: EndUser
///             level: Assignment
///             operations:
///               - All
///         - id: Notification_Requestor_EndUser_Assignment
///           isDefaultRecipientsEnabled: false
///           notificationLevel: Critical
///           notificationRecipients:
///             - requestor_enduser_member@test.com
///           notificationType: Email
///           recipientType: Requestor
///           ruleType: RoleManagementPolicyNotificationRule
///           target:
///             caller: EndUser
///             level: Assignment
///             operations:
///               - All
///         - id: Notification_Approver_EndUser_Assignment
///           isDefaultRecipientsEnabled: true
///           notificationLevel: Critical
///           notificationType: Email
///           recipientType: Approver
///           ruleType: RoleManagementPolicyNotificationRule
///           target:
///             caller: EndUser
///             level: Assignment
///             operations:
///               - All
///         - id: PIMOnlyMode_Admin_Assignment
///           pimOnlyModeSettings:
///             excludedAssignmentTypes:
///               - ServicePrincipalsAsTarget
///             excludes:
///               - id: ec42a424-a0c0-4418-8788-d19bdeb03704
///                 type: User
///               - id: 00029dfb-0218-4e7a-9a85-c15dc0c880bc
///                 type: Group
///               - id: 0000103d-1fc2-4ac8-81de-71517765655c
///                 type: ServicePrincipal
///             mode: Enabled
///           ruleType: RoleManagementPolicyPimOnlyModeRule
///           target:
///             caller: Admin
///             enforcedSettings:
///               - all
///             inheritableSettings:
///               - all
///             level: Assignment
///             operations:
///               - all
///             targetObjects: []
///       scope: providers/Microsoft.Subscription/subscriptions/129ff972-28f8-46b8-a726-e497be039368
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### PatchRoleManagementPolicyToEnablePIMOnlyMode
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var roleManagementPolicy = new AzureNative.Authorization.RoleManagementPolicy("roleManagementPolicy", new()
///     {
///         RoleManagementPolicyName = "570c3619-7688-4b34-b290-2b8bb3ccab2a",
///         Rules = new[]
///         {
///             new AzureNative.Authorization.Inputs.RoleManagementPolicyPimOnlyModeRuleArgs
///             {
///                 Id = "PIMOnlyMode_Admin_Assignment",
///                 PimOnlyModeSettings = new AzureNative.Authorization.Inputs.PIMOnlyModeSettingsArgs
///                 {
///                     ExcludedAssignmentTypes = new[]
///                     {
///                         AzureNative.Authorization.ExcludedPrincipalTypes.ServicePrincipalsAsTarget,
///                     },
///                     Excludes = new[]
///                     {
///                         new AzureNative.Authorization.Inputs.UsersOrServicePrincipalSetArgs
///                         {
///                             Id = "ec42a424-a0c0-4418-8788-d19bdeb03704",
///                             Type = AzureNative.Authorization.UsersOrServicePrincipalSetUserType.User,
///                         },
///                         new AzureNative.Authorization.Inputs.UsersOrServicePrincipalSetArgs
///                         {
///                             Id = "00029dfb-0218-4e7a-9a85-c15dc0c880bc",
///                             Type = AzureNative.Authorization.UsersOrServicePrincipalSetUserType.Group,
///                         },
///                         new AzureNative.Authorization.Inputs.UsersOrServicePrincipalSetArgs
///                         {
///                             Id = "0000103d-1fc2-4ac8-81de-71517765655c",
///                             Type = AzureNative.Authorization.UsersOrServicePrincipalSetUserType.ServicePrincipal,
///                         },
///                     },
///                     Mode = AzureNative.Authorization.PIMOnlyMode.Enabled,
///                 },
///                 RuleType = "RoleManagementPolicyPimOnlyModeRule",
///                 Target = new AzureNative.Authorization.Inputs.RoleManagementPolicyRuleTargetArgs
///                 {
///                     Caller = "Admin",
///                     EnforcedSettings = new[]
///                     {
///                         "all",
///                     },
///                     InheritableSettings = new[]
///                     {
///                         "all",
///                     },
///                     Level = "Assignment",
///                     Operations = new[]
///                     {
///                         "all",
///                     },
///                     TargetObjects = new() { },
///                 },
///             },
///         },
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
/// 		_, err := authorization.NewRoleManagementPolicy(ctx, "roleManagementPolicy", &authorization.RoleManagementPolicyArgs{
/// 			RoleManagementPolicyName: pulumi.String("570c3619-7688-4b34-b290-2b8bb3ccab2a"),
/// 			Rules: pulumi.Array{
/// 				authorization.RoleManagementPolicyPimOnlyModeRule{
/// 					Id: "PIMOnlyMode_Admin_Assignment",
/// 					PimOnlyModeSettings: authorization.PIMOnlyModeSettings{
/// 						ExcludedAssignmentTypes: []authorization.ExcludedPrincipalTypes{
/// 							authorization.ExcludedPrincipalTypesServicePrincipalsAsTarget,
/// 						},
/// 						Excludes: []authorization.UsersOrServicePrincipalSet{
/// 							{
/// 								Id:   "ec42a424-a0c0-4418-8788-d19bdeb03704",
/// 								Type: authorization.UsersOrServicePrincipalSetUserTypeUser,
/// 							},
/// 							{
/// 								Id:   "00029dfb-0218-4e7a-9a85-c15dc0c880bc",
/// 								Type: authorization.UsersOrServicePrincipalSetUserTypeGroup,
/// 							},
/// 							{
/// 								Id:   "0000103d-1fc2-4ac8-81de-71517765655c",
/// 								Type: authorization.UsersOrServicePrincipalSetUserTypeServicePrincipal,
/// 							},
/// 						},
/// 						Mode: authorization.PIMOnlyModeEnabled,
/// 					},
/// 					RuleType: "RoleManagementPolicyPimOnlyModeRule",
/// 					Target: authorization.RoleManagementPolicyRuleTarget{
/// 						Caller: "Admin",
/// 						EnforcedSettings: []string{
/// 							"all",
/// 						},
/// 						InheritableSettings: []string{
/// 							"all",
/// 						},
/// 						Level: "Assignment",
/// 						Operations: []string{
/// 							"all",
/// 						},
/// 						TargetObjects: []interface{}{},
/// 					},
/// 				},
/// 			},
/// 			Scope: pulumi.String("providers/Microsoft.Subscription/subscriptions/129ff972-28f8-46b8-a726-e497be039368"),
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
/// resource "azure-native_authorization_rolemanagementpolicy" "roleManagementPolicy" {
///   role_management_policy_name = "570c3619-7688-4b34-b290-2b8bb3ccab2a"
///   rules = [{
///     "id" = "PIMOnlyMode_Admin_Assignment"
///     "pimOnlyModeSettings" = {
///       "excludedAssignmentTypes" = ["ServicePrincipalsAsTarget"]
///       "excludes" = [{
///         "id"   = "ec42a424-a0c0-4418-8788-d19bdeb03704"
///         "type" = "User"
///         }, {
///         "id"   = "00029dfb-0218-4e7a-9a85-c15dc0c880bc"
///         "type" = "Group"
///         }, {
///         "id"   = "0000103d-1fc2-4ac8-81de-71517765655c"
///         "type" = "ServicePrincipal"
///       }]
///       "mode" = "Enabled"
///     }
///     "ruleType" = "RoleManagementPolicyPimOnlyModeRule"
///     "target" = {
///       "caller"              = "Admin"
///       "enforcedSettings"    = ["all"]
///       "inheritableSettings" = ["all"]
///       "level"               = "Assignment"
///       "operations"          = ["all"]
///       "targetObjects"       = []
///     }
///   }]
///   scope = "providers/Microsoft.Subscription/subscriptions/129ff972-28f8-46b8-a726-e497be039368"
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
/// import com.pulumi.azurenative.authorization.RoleManagementPolicy;
/// import com.pulumi.azurenative.authorization.RoleManagementPolicyArgs;
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
///         var roleManagementPolicy = new RoleManagementPolicy("roleManagementPolicy", RoleManagementPolicyArgs.builder()
///             .roleManagementPolicyName("570c3619-7688-4b34-b290-2b8bb3ccab2a")
///             .rules(RoleManagementPolicyPimOnlyModeRuleArgs.builder()
///                 .id("PIMOnlyMode_Admin_Assignment")
///                 .pimOnlyModeSettings(PIMOnlyModeSettingsArgs.builder()
///                     .excludedAssignmentTypes("ServicePrincipalsAsTarget")
///                     .excludes(
///                         UsersOrServicePrincipalSetArgs.builder()
///                             .id("ec42a424-a0c0-4418-8788-d19bdeb03704")
///                             .type("User")
///                             .build(),
///                         UsersOrServicePrincipalSetArgs.builder()
///                             .id("00029dfb-0218-4e7a-9a85-c15dc0c880bc")
///                             .type("Group")
///                             .build(),
///                         UsersOrServicePrincipalSetArgs.builder()
///                             .id("0000103d-1fc2-4ac8-81de-71517765655c")
///                             .type("ServicePrincipal")
///                             .build())
///                     .mode("Enabled")
///                     .build())
///                 .ruleType("RoleManagementPolicyPimOnlyModeRule")
///                 .target(RoleManagementPolicyRuleTargetArgs.builder()
///                     .caller("Admin")
///                     .enforcedSettings("all")
///                     .inheritableSettings("all")
///                     .level("Assignment")
///                     .operations("all")
///                     .targetObjects()
///                     .build())
///                 .build())
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
/// const roleManagementPolicy = new azure_native.authorization.RoleManagementPolicy("roleManagementPolicy", {
///     roleManagementPolicyName: "570c3619-7688-4b34-b290-2b8bb3ccab2a",
///     rules: [{
///         id: "PIMOnlyMode_Admin_Assignment",
///         pimOnlyModeSettings: {
///             excludedAssignmentTypes: [azure_native.authorization.ExcludedPrincipalTypes.ServicePrincipalsAsTarget],
///             excludes: [
///                 {
///                     id: "ec42a424-a0c0-4418-8788-d19bdeb03704",
///                     type: azure_native.authorization.UsersOrServicePrincipalSetUserType.User,
///                 },
///                 {
///                     id: "00029dfb-0218-4e7a-9a85-c15dc0c880bc",
///                     type: azure_native.authorization.UsersOrServicePrincipalSetUserType.Group,
///                 },
///                 {
///                     id: "0000103d-1fc2-4ac8-81de-71517765655c",
///                     type: azure_native.authorization.UsersOrServicePrincipalSetUserType.ServicePrincipal,
///                 },
///             ],
///             mode: azure_native.authorization.PIMOnlyMode.Enabled,
///         },
///         ruleType: "RoleManagementPolicyPimOnlyModeRule",
///         target: {
///             caller: "Admin",
///             enforcedSettings: ["all"],
///             inheritableSettings: ["all"],
///             level: "Assignment",
///             operations: ["all"],
///             targetObjects: [],
///         },
///     }],
///     scope: "providers/Microsoft.Subscription/subscriptions/129ff972-28f8-46b8-a726-e497be039368",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// role_management_policy = azure_native.authorization.RoleManagementPolicy("roleManagementPolicy",
///     role_management_policy_name="570c3619-7688-4b34-b290-2b8bb3ccab2a",
///     rules=[{
///         "id": "PIMOnlyMode_Admin_Assignment",
///         "pim_only_mode_settings": {
///             "excluded_assignment_types": [azure_native.authorization.ExcludedPrincipalTypes.SERVICE_PRINCIPALS_AS_TARGET],
///             "excludes": [
///                 {
///                     "id": "ec42a424-a0c0-4418-8788-d19bdeb03704",
///                     "type": azure_native.authorization.UsersOrServicePrincipalSetUserType.USER,
///                 },
///                 {
///                     "id": "00029dfb-0218-4e7a-9a85-c15dc0c880bc",
///                     "type": azure_native.authorization.UsersOrServicePrincipalSetUserType.GROUP,
///                 },
///                 {
///                     "id": "0000103d-1fc2-4ac8-81de-71517765655c",
///                     "type": azure_native.authorization.UsersOrServicePrincipalSetUserType.SERVICE_PRINCIPAL,
///                 },
///             ],
///             "mode": azure_native.authorization.PIMOnlyMode.ENABLED,
///         },
///         "rule_type": "RoleManagementPolicyPimOnlyModeRule",
///         "target": {
///             "caller": "Admin",
///             "enforced_settings": ["all"],
///             "inheritable_settings": ["all"],
///             "level": "Assignment",
///             "operations": ["all"],
///             "target_objects": [],
///         },
///     }],
///     scope="providers/Microsoft.Subscription/subscriptions/129ff972-28f8-46b8-a726-e497be039368")
///
/// ```
///
/// ```yaml
/// resources:
///   roleManagementPolicy:
///     type: azure-native:authorization:RoleManagementPolicy
///     properties:
///       roleManagementPolicyName: 570c3619-7688-4b34-b290-2b8bb3ccab2a
///       rules:
///         - id: PIMOnlyMode_Admin_Assignment
///           pimOnlyModeSettings:
///             excludedAssignmentTypes:
///               - ServicePrincipalsAsTarget
///             excludes:
///               - id: ec42a424-a0c0-4418-8788-d19bdeb03704
///                 type: User
///               - id: 00029dfb-0218-4e7a-9a85-c15dc0c880bc
///                 type: Group
///               - id: 0000103d-1fc2-4ac8-81de-71517765655c
///                 type: ServicePrincipal
///             mode: Enabled
///           ruleType: RoleManagementPolicyPimOnlyModeRule
///           target:
///             caller: Admin
///             enforcedSettings:
///               - all
///             inheritableSettings:
///               - all
///             level: Assignment
///             operations:
///               - all
///             targetObjects: []
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
/// $ pulumi import azure-native:authorization:RoleManagementPolicy 570c3619-7688-4b34-b290-2b8bb3ccab2a /{scope}/providers/Microsoft.Authorization/roleManagementPolicies/{roleManagementPolicyName}
/// ```
class RoleManagementPolicy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The role management policy description.
  late final pulumi.Output<String?> description;
  /// The role management policy display name.
  late final pulumi.Output<String?> displayName;
  /// The readonly computed rule applied to the policy.
  late final pulumi.Output<List<Map<String, dynamic>>> effectiveRules;
  /// The role management policy is default policy.
  late final pulumi.Output<bool?> isOrganizationDefault;
  /// The name of the entity last modified it
  late final pulumi.Output<PrincipalResponse> lastModifiedBy;
  /// The last modified date time.
  late final pulumi.Output<String> lastModifiedDateTime;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Additional properties of scope
  late final pulumi.Output<PolicyPropertiesResponse> policyProperties;
  /// The rule applied to the policy.
  late final pulumi.Output<List<Map<String, dynamic>>?> rules;
  /// The role management policy scope.
  late final pulumi.Output<String?> scope;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [RoleManagementPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RoleManagementPolicy]. {@macro pulumi_authorization_role_management_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RoleManagementPolicy(
    String name, {
    RoleManagementPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:authorization:RoleManagementPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    effectiveRules = registerOutput<List<Map<String, dynamic>>>('effectiveRules');
    isOrganizationDefault = registerOutput<bool?>('isOrganizationDefault');
    lastModifiedBy = registerOutput<PrincipalResponse>('lastModifiedBy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrincipalResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lastModifiedDateTime = registerOutput<String>('lastModifiedDateTime');
    this.name = registerOutput<String>('name');
    policyProperties = registerOutput<PolicyPropertiesResponse>('policyProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicyPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rules = registerOutput<List<Map<String, dynamic>>?>('rules');
    scope = registerOutput<String?>('scope');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
