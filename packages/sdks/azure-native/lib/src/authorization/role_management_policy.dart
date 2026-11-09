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
///                     Operations =
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
///                 NotificationRecipients =
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
///                     Operations =
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
/// 				&authorization.RoleManagementPolicyExpirationRuleArgs{
/// 					Id:                   pulumi.String("Expiration_Admin_Eligibility"),
/// 					IsExpirationRequired: pulumi.Bool(false),
/// 					MaximumDuration:      pulumi.String("P180D"),
/// 					RuleType:             pulumi.String("RoleManagementPolicyExpirationRule"),
/// 					Target: &authorization.RoleManagementPolicyRuleTargetArgs{
/// 						Caller: pulumi.String("Admin"),
/// 						Level:  pulumi.String("Eligibility"),
/// 						Operations: pulumi.StringArray{
/// 							pulumi.String("All"),
/// 						},
/// 					},
/// 				},
/// 				&authorization.RoleManagementPolicyNotificationRuleArgs{
/// 					Id:                         pulumi.String("Notification_Admin_Admin_Eligibility"),
/// 					IsDefaultRecipientsEnabled: pulumi.Bool(false),
/// 					NotificationLevel:          pulumi.String(authorization.NotificationLevelCritical),
/// 					NotificationRecipients: pulumi.StringArray{
/// 						pulumi.String("admin_admin_eligible@test.com"),
/// 					},
/// 					NotificationType: pulumi.String(authorization.NotificationDeliveryMechanismEmail),
/// 					RecipientType:    pulumi.String(authorization.RecipientTypeAdmin),
/// 					RuleType:         pulumi.String("RoleManagementPolicyNotificationRule"),
/// 					Target: &authorization.RoleManagementPolicyRuleTargetArgs{
/// 						Caller: pulumi.String("Admin"),
/// 						Level:  pulumi.String("Eligibility"),
/// 						Operations: pulumi.StringArray{
/// 							pulumi.String("All"),
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
/// terraform {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_authorization_role_management_policy" "roleManagementPolicy" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   role_management_policy_name = "570c3619-7688-4b34-b290-2b8bb3ccab2a"
///   rules = [{
///     id                     = "Expiration_Admin_Eligibility"
///     is_expiration_required = false
///     maximum_duration       = "P180D"
///     rule_type              = "RoleManagementPolicyExpirationRule"
///     target = {
///       caller     = "Admin"
///       level      = "Eligibility"
///       operations = ["All"]
///     }
///     }, {
///     id                            = "Notification_Admin_Admin_Eligibility"
///     is_default_recipients_enabled = false
///     notification_level            = "Critical"
///     notification_recipients       = ["admin_admin_eligible@test.com"]
///     notification_type             = "Email"
///     recipient_type                = "Admin"
///     rule_type                     = "RoleManagementPolicyNotificationRule"
///     target = {
///       caller     = "Admin"
///       level      = "Eligibility"
///       operations = ["All"]
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
/// import com.pulumi.azurenative.authorization.inputs.RoleManagementPolicyApprovalRuleArgs;
/// import com.pulumi.azurenative.authorization.inputs.RoleManagementPolicyRuleTargetArgs;
/// import com.pulumi.azurenative.authorization.inputs.RoleManagementPolicyAuthenticationContextRuleArgs;
/// import com.pulumi.azurenative.authorization.inputs.RoleManagementPolicyEnablementRuleArgs;
/// import com.pulumi.azurenative.authorization.inputs.RoleManagementPolicyExpirationRuleArgs;
/// import com.pulumi.azurenative.authorization.inputs.RoleManagementPolicyNotificationRuleArgs;
/// import com.pulumi.azurenative.authorization.inputs.RoleManagementPolicyPimOnlyModeRuleArgs;
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
///                     Operations =
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
///                 NotificationRecipients =
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
///                     Operations =
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
///                 NotificationRecipients =
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
///                     Operations =
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
///                 NotificationRecipients =
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
///                     Operations =
///                     {
///                         "All",
///                     },
///                 },
///             },
///             new AzureNative.Authorization.Inputs.RoleManagementPolicyEnablementRuleArgs
///             {
///                 EnabledRules =  {},
///                 Id = "Enablement_Admin_Eligibility",
///                 RuleType = "RoleManagementPolicyEnablementRule",
///                 Target = new AzureNative.Authorization.Inputs.RoleManagementPolicyRuleTargetArgs
///                 {
///                     Caller = "Admin",
///                     Level = "Eligibility",
///                     Operations =
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
///                     Operations =
///                     {
///                         "All",
///                     },
///                 },
///             },
///             new AzureNative.Authorization.Inputs.RoleManagementPolicyEnablementRuleArgs
///             {
///                 EnabledRules =
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
///                     Operations =
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
///                 NotificationRecipients =
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
///                     Operations =
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
///                 NotificationRecipients =
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
///                     Operations =
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
///                 NotificationRecipients =
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
///                     Operations =
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
///                     Operations =
///                     {
///                         "All",
///                     },
///                 },
///             },
///             new AzureNative.Authorization.Inputs.RoleManagementPolicyEnablementRuleArgs
///             {
///                 EnabledRules =
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
///                     Operations =
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
///                     ApprovalStages =
///                     {
///                         new AzureNative.Authorization.Inputs.ApprovalStageArgs
///                         {
///                             ApprovalStageTimeOutInDays = 1,
///                             EscalationTimeInMinutes = 0,
///                             IsApproverJustificationRequired = true,
///                             IsEscalationEnabled = false,
///                             PrimaryApprovers =
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
///                     Operations =
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
///                     Operations =
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
///                 NotificationRecipients =
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
///                     Operations =
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
///                 NotificationRecipients =
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
///                     Operations =
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
///                     Operations =
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
///                     ExcludedAssignmentTypes =
///                     {
///                         AzureNative.Authorization.ExcludedPrincipalTypes.ServicePrincipalsAsTarget,
///                     },
///                     Excludes =
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
///                     EnforcedSettings =
///                     {
///                         "all",
///                     },
///                     InheritableSettings =
///                     {
///                         "all",
///                     },
///                     Level = "Assignment",
///                     Operations =
///                     {
///                         "all",
///                     },
///                     TargetObjects =  {},
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
/// 				&authorization.RoleManagementPolicyExpirationRuleArgs{
/// 					Id:                   pulumi.String("Expiration_Admin_Eligibility"),
/// 					IsExpirationRequired: pulumi.Bool(false),
/// 					MaximumDuration:      pulumi.String("P180D"),
/// 					RuleType:             pulumi.String("RoleManagementPolicyExpirationRule"),
/// 					Target: &authorization.RoleManagementPolicyRuleTargetArgs{
/// 						Caller: pulumi.String("Admin"),
/// 						Level:  pulumi.String("Eligibility"),
/// 						Operations: pulumi.StringArray{
/// 							pulumi.String("All"),
/// 						},
/// 					},
/// 				},
/// 				&authorization.RoleManagementPolicyNotificationRuleArgs{
/// 					Id:                         pulumi.String("Notification_Admin_Admin_Eligibility"),
/// 					IsDefaultRecipientsEnabled: pulumi.Bool(false),
/// 					NotificationLevel:          pulumi.String(authorization.NotificationLevelCritical),
/// 					NotificationRecipients: pulumi.StringArray{
/// 						pulumi.String("admin_admin_eligible@test.com"),
/// 					},
/// 					NotificationType: pulumi.String(authorization.NotificationDeliveryMechanismEmail),
/// 					RecipientType:    pulumi.String(authorization.RecipientTypeAdmin),
/// 					RuleType:         pulumi.String("RoleManagementPolicyNotificationRule"),
/// 					Target: &authorization.RoleManagementPolicyRuleTargetArgs{
/// 						Caller: pulumi.String("Admin"),
/// 						Level:  pulumi.String("Eligibility"),
/// 						Operations: pulumi.StringArray{
/// 							pulumi.String("All"),
/// 						},
/// 					},
/// 				},
/// 				&authorization.RoleManagementPolicyNotificationRuleArgs{
/// 					Id:                         pulumi.String("Notification_Requestor_Admin_Eligibility"),
/// 					IsDefaultRecipientsEnabled: pulumi.Bool(false),
/// 					NotificationLevel:          pulumi.String(authorization.NotificationLevelCritical),
/// 					NotificationRecipients: pulumi.StringArray{
/// 						pulumi.String("requestor_admin_eligible@test.com"),
/// 					},
/// 					NotificationType: pulumi.String(authorization.NotificationDeliveryMechanismEmail),
/// 					RecipientType:    pulumi.String(authorization.RecipientTypeRequestor),
/// 					RuleType:         pulumi.String("RoleManagementPolicyNotificationRule"),
/// 					Target: &authorization.RoleManagementPolicyRuleTargetArgs{
/// 						Caller: pulumi.String("Admin"),
/// 						Level:  pulumi.String("Eligibility"),
/// 						Operations: pulumi.StringArray{
/// 							pulumi.String("All"),
/// 						},
/// 					},
/// 				},
/// 				&authorization.RoleManagementPolicyNotificationRuleArgs{
/// 					Id:                         pulumi.String("Notification_Approver_Admin_Eligibility"),
/// 					IsDefaultRecipientsEnabled: pulumi.Bool(false),
/// 					NotificationLevel:          pulumi.String(authorization.NotificationLevelCritical),
/// 					NotificationRecipients: pulumi.StringArray{
/// 						pulumi.String("approver_admin_eligible@test.com"),
/// 					},
/// 					NotificationType: pulumi.String(authorization.NotificationDeliveryMechanismEmail),
/// 					RecipientType:    pulumi.String(authorization.RecipientTypeApprover),
/// 					RuleType:         pulumi.String("RoleManagementPolicyNotificationRule"),
/// 					Target: &authorization.RoleManagementPolicyRuleTargetArgs{
/// 						Caller: pulumi.String("Admin"),
/// 						Level:  pulumi.String("Eligibility"),
/// 						Operations: pulumi.StringArray{
/// 							pulumi.String("All"),
/// 						},
/// 					},
/// 				},
/// 				&authorization.RoleManagementPolicyEnablementRuleArgs{
/// 					EnabledRules: pulumi.StringArray{},
/// 					Id:           pulumi.String("Enablement_Admin_Eligibility"),
/// 					RuleType:     pulumi.String("RoleManagementPolicyEnablementRule"),
/// 					Target: &authorization.RoleManagementPolicyRuleTargetArgs{
/// 						Caller: pulumi.String("Admin"),
/// 						Level:  pulumi.String("Eligibility"),
/// 						Operations: pulumi.StringArray{
/// 							pulumi.String("All"),
/// 						},
/// 					},
/// 				},
/// 				&authorization.RoleManagementPolicyExpirationRuleArgs{
/// 					Id:                   pulumi.String("Expiration_Admin_Assignment"),
/// 					IsExpirationRequired: pulumi.Bool(false),
/// 					MaximumDuration:      pulumi.String("P90D"),
/// 					RuleType:             pulumi.String("RoleManagementPolicyExpirationRule"),
/// 					Target: &authorization.RoleManagementPolicyRuleTargetArgs{
/// 						Caller: pulumi.String("Admin"),
/// 						Level:  pulumi.String("Assignment"),
/// 						Operations: pulumi.StringArray{
/// 							pulumi.String("All"),
/// 						},
/// 					},
/// 				},
/// 				&authorization.RoleManagementPolicyEnablementRuleArgs{
/// 					EnabledRules: pulumi.StringArray{
/// 						pulumi.String(authorization.EnablementRulesJustification),
/// 						pulumi.String(authorization.EnablementRulesMultiFactorAuthentication),
/// 					},
/// 					Id:       pulumi.String("Enablement_Admin_Assignment"),
/// 					RuleType: pulumi.String("RoleManagementPolicyEnablementRule"),
/// 					Target: &authorization.RoleManagementPolicyRuleTargetArgs{
/// 						Caller: pulumi.String("Admin"),
/// 						Level:  pulumi.String("Assignment"),
/// 						Operations: pulumi.StringArray{
/// 							pulumi.String("All"),
/// 						},
/// 					},
/// 				},
/// 				&authorization.RoleManagementPolicyNotificationRuleArgs{
/// 					Id:                         pulumi.String("Notification_Admin_Admin_Assignment"),
/// 					IsDefaultRecipientsEnabled: pulumi.Bool(false),
/// 					NotificationLevel:          pulumi.String(authorization.NotificationLevelCritical),
/// 					NotificationRecipients: pulumi.StringArray{
/// 						pulumi.String("admin_admin_member@test.com"),
/// 					},
/// 					NotificationType: pulumi.String(authorization.NotificationDeliveryMechanismEmail),
/// 					RecipientType:    pulumi.String(authorization.RecipientTypeAdmin),
/// 					RuleType:         pulumi.String("RoleManagementPolicyNotificationRule"),
/// 					Target: &authorization.RoleManagementPolicyRuleTargetArgs{
/// 						Caller: pulumi.String("Admin"),
/// 						Level:  pulumi.String("Assignment"),
/// 						Operations: pulumi.StringArray{
/// 							pulumi.String("All"),
/// 						},
/// 					},
/// 				},
/// 				&authorization.RoleManagementPolicyNotificationRuleArgs{
/// 					Id:                         pulumi.String("Notification_Requestor_Admin_Assignment"),
/// 					IsDefaultRecipientsEnabled: pulumi.Bool(false),
/// 					NotificationLevel:          pulumi.String(authorization.NotificationLevelCritical),
/// 					NotificationRecipients: pulumi.StringArray{
/// 						pulumi.String("requestor_admin_member@test.com"),
/// 					},
/// 					NotificationType: pulumi.String(authorization.NotificationDeliveryMechanismEmail),
/// 					RecipientType:    pulumi.String(authorization.RecipientTypeRequestor),
/// 					RuleType:         pulumi.String("RoleManagementPolicyNotificationRule"),
/// 					Target: &authorization.RoleManagementPolicyRuleTargetArgs{
/// 						Caller: pulumi.String("Admin"),
/// 						Level:  pulumi.String("Assignment"),
/// 						Operations: pulumi.StringArray{
/// 							pulumi.String("All"),
/// 						},
/// 					},
/// 				},
/// 				&authorization.RoleManagementPolicyNotificationRuleArgs{
/// 					Id:                         pulumi.String("Notification_Approver_Admin_Assignment"),
/// 					IsDefaultRecipientsEnabled: pulumi.Bool(false),
/// 					NotificationLevel:          pulumi.String(authorization.NotificationLevelCritical),
/// 					NotificationRecipients: pulumi.StringArray{
/// 						pulumi.String("approver_admin_member@test.com"),
/// 					},
/// 					NotificationType: pulumi.String(authorization.NotificationDeliveryMechanismEmail),
/// 					RecipientType:    pulumi.String(authorization.RecipientTypeApprover),
/// 					RuleType:         pulumi.String("RoleManagementPolicyNotificationRule"),
/// 					Target: &authorization.RoleManagementPolicyRuleTargetArgs{
/// 						Caller: pulumi.String("Admin"),
/// 						Level:  pulumi.String("Assignment"),
/// 						Operations: pulumi.StringArray{
/// 							pulumi.String("All"),
/// 						},
/// 					},
/// 				},
/// 				&authorization.RoleManagementPolicyExpirationRuleArgs{
/// 					Id:                   pulumi.String("Expiration_EndUser_Assignment"),
/// 					IsExpirationRequired: pulumi.Bool(true),
/// 					MaximumDuration:      pulumi.String("PT7H"),
/// 					RuleType:             pulumi.String("RoleManagementPolicyExpirationRule"),
/// 					Target: &authorization.RoleManagementPolicyRuleTargetArgs{
/// 						Caller: pulumi.String("EndUser"),
/// 						Level:  pulumi.String("Assignment"),
/// 						Operations: pulumi.StringArray{
/// 							pulumi.String("All"),
/// 						},
/// 					},
/// 				},
/// 				&authorization.RoleManagementPolicyEnablementRuleArgs{
/// 					EnabledRules: pulumi.StringArray{
/// 						pulumi.String(authorization.EnablementRulesJustification),
/// 						pulumi.String(authorization.EnablementRulesMultiFactorAuthentication),
/// 						pulumi.String(authorization.EnablementRulesTicketing),
/// 					},
/// 					Id:       pulumi.String("Enablement_EndUser_Assignment"),
/// 					RuleType: pulumi.String("RoleManagementPolicyEnablementRule"),
/// 					Target: &authorization.RoleManagementPolicyRuleTargetArgs{
/// 						Caller: pulumi.String("EndUser"),
/// 						Level:  pulumi.String("Assignment"),
/// 						Operations: pulumi.StringArray{
/// 							pulumi.String("All"),
/// 						},
/// 					},
/// 				},
/// 				&authorization.RoleManagementPolicyApprovalRuleArgs{
/// 					Id:       pulumi.String("Approval_EndUser_Assignment"),
/// 					RuleType: pulumi.String("RoleManagementPolicyApprovalRule"),
/// 					Setting: &authorization.ApprovalSettingsArgs{
/// 						ApprovalMode: pulumi.String(authorization.ApprovalModeSingleStage),
/// 						ApprovalStages: authorization.ApprovalStageArray{
/// 							&authorization.ApprovalStageArgs{
/// 								ApprovalStageTimeOutInDays:      pulumi.Int(1),
/// 								EscalationTimeInMinutes:         pulumi.Int(0),
/// 								IsApproverJustificationRequired: pulumi.Bool(true),
/// 								IsEscalationEnabled:             pulumi.Bool(false),
/// 								PrimaryApprovers: authorization.UserSetArray{
/// 									&authorization.UserSetArgs{
/// 										Description: pulumi.String("amansw_new_group"),
/// 										Id:          pulumi.String("2385b0f3-5fa9-43cf-8ca4-b01dc97298cd"),
/// 										IsBackup:    pulumi.Bool(false),
/// 										UserType:    pulumi.String(authorization.UserTypeGroup),
/// 									},
/// 									&authorization.UserSetArgs{
/// 										Description: pulumi.String("amansw_group"),
/// 										Id:          pulumi.String("2f4913c9-d15b-406a-9946-1d66a28f2690"),
/// 										IsBackup:    pulumi.Bool(false),
/// 										UserType:    pulumi.String(authorization.UserTypeGroup),
/// 									},
/// 								},
/// 							},
/// 						},
/// 						IsApprovalRequired:               pulumi.Bool(true),
/// 						IsApprovalRequiredForExtension:   pulumi.Bool(false),
/// 						IsRequestorJustificationRequired: pulumi.Bool(true),
/// 					},
/// 					Target: &authorization.RoleManagementPolicyRuleTargetArgs{
/// 						Caller: pulumi.String("EndUser"),
/// 						Level:  pulumi.String("Assignment"),
/// 						Operations: pulumi.StringArray{
/// 							pulumi.String("All"),
/// 						},
/// 					},
/// 				},
/// 				&authorization.RoleManagementPolicyAuthenticationContextRuleArgs{
/// 					ClaimValue: pulumi.String(""),
/// 					Id:         pulumi.String("AuthenticationContext_EndUser_Assignment"),
/// 					IsEnabled:  pulumi.Bool(false),
/// 					RuleType:   pulumi.String("RoleManagementPolicyAuthenticationContextRule"),
/// 					Target: &authorization.RoleManagementPolicyRuleTargetArgs{
/// 						Caller: pulumi.String("EndUser"),
/// 						Level:  pulumi.String("Assignment"),
/// 						Operations: pulumi.StringArray{
/// 							pulumi.String("All"),
/// 						},
/// 					},
/// 				},
/// 				&authorization.RoleManagementPolicyNotificationRuleArgs{
/// 					Id:                         pulumi.String("Notification_Admin_EndUser_Assignment"),
/// 					IsDefaultRecipientsEnabled: pulumi.Bool(false),
/// 					NotificationLevel:          pulumi.String(authorization.NotificationLevelCritical),
/// 					NotificationRecipients: pulumi.StringArray{
/// 						pulumi.String("admin_enduser_member@test.com"),
/// 					},
/// 					NotificationType: pulumi.String(authorization.NotificationDeliveryMechanismEmail),
/// 					RecipientType:    pulumi.String(authorization.RecipientTypeAdmin),
/// 					RuleType:         pulumi.String("RoleManagementPolicyNotificationRule"),
/// 					Target: &authorization.RoleManagementPolicyRuleTargetArgs{
/// 						Caller: pulumi.String("EndUser"),
/// 						Level:  pulumi.String("Assignment"),
/// 						Operations: pulumi.StringArray{
/// 							pulumi.String("All"),
/// 						},
/// 					},
/// 				},
/// 				&authorization.RoleManagementPolicyNotificationRuleArgs{
/// 					Id:                         pulumi.String("Notification_Requestor_EndUser_Assignment"),
/// 					IsDefaultRecipientsEnabled: pulumi.Bool(false),
/// 					NotificationLevel:          pulumi.String(authorization.NotificationLevelCritical),
/// 					NotificationRecipients: pulumi.StringArray{
/// 						pulumi.String("requestor_enduser_member@test.com"),
/// 					},
/// 					NotificationType: pulumi.String(authorization.NotificationDeliveryMechanismEmail),
/// 					RecipientType:    pulumi.String(authorization.RecipientTypeRequestor),
/// 					RuleType:         pulumi.String("RoleManagementPolicyNotificationRule"),
/// 					Target: &authorization.RoleManagementPolicyRuleTargetArgs{
/// 						Caller: pulumi.String("EndUser"),
/// 						Level:  pulumi.String("Assignment"),
/// 						Operations: pulumi.StringArray{
/// 							pulumi.String("All"),
/// 						},
/// 					},
/// 				},
/// 				&authorization.RoleManagementPolicyNotificationRuleArgs{
/// 					Id:                         pulumi.String("Notification_Approver_EndUser_Assignment"),
/// 					IsDefaultRecipientsEnabled: pulumi.Bool(true),
/// 					NotificationLevel:          pulumi.String(authorization.NotificationLevelCritical),
/// 					NotificationType:           pulumi.String(authorization.NotificationDeliveryMechanismEmail),
/// 					RecipientType:              pulumi.String(authorization.RecipientTypeApprover),
/// 					RuleType:                   pulumi.String("RoleManagementPolicyNotificationRule"),
/// 					Target: &authorization.RoleManagementPolicyRuleTargetArgs{
/// 						Caller: pulumi.String("EndUser"),
/// 						Level:  pulumi.String("Assignment"),
/// 						Operations: pulumi.StringArray{
/// 							pulumi.String("All"),
/// 						},
/// 					},
/// 				},
/// 				&authorization.RoleManagementPolicyPimOnlyModeRuleArgs{
/// 					Id: pulumi.String("PIMOnlyMode_Admin_Assignment"),
/// 					PimOnlyModeSettings: &authorization.PIMOnlyModeSettingsArgs{
/// 						ExcludedAssignmentTypes: pulumi.StringArray{
/// 							pulumi.String(authorization.ExcludedPrincipalTypesServicePrincipalsAsTarget),
/// 						},
/// 						Excludes: authorization.UsersOrServicePrincipalSetArray{
/// 							&authorization.UsersOrServicePrincipalSetArgs{
/// 								Id:   pulumi.String("ec42a424-a0c0-4418-8788-d19bdeb03704"),
/// 								Type: pulumi.String(authorization.UsersOrServicePrincipalSetUserTypeUser),
/// 							},
/// 							&authorization.UsersOrServicePrincipalSetArgs{
/// 								Id:   pulumi.String("00029dfb-0218-4e7a-9a85-c15dc0c880bc"),
/// 								Type: pulumi.String(authorization.UsersOrServicePrincipalSetUserTypeGroup),
/// 							},
/// 							&authorization.UsersOrServicePrincipalSetArgs{
/// 								Id:   pulumi.String("0000103d-1fc2-4ac8-81de-71517765655c"),
/// 								Type: pulumi.String(authorization.UsersOrServicePrincipalSetUserTypeServicePrincipal),
/// 							},
/// 						},
/// 						Mode: pulumi.String(authorization.PIMOnlyModeEnabled),
/// 					},
/// 					RuleType: pulumi.String("RoleManagementPolicyPimOnlyModeRule"),
/// 					Target: &authorization.RoleManagementPolicyRuleTargetArgs{
/// 						Caller: pulumi.String("Admin"),
/// 						EnforcedSettings: pulumi.StringArray{
/// 							pulumi.String("all"),
/// 						},
/// 						InheritableSettings: pulumi.StringArray{
/// 							pulumi.String("all"),
/// 						},
/// 						Level: pulumi.String("Assignment"),
/// 						Operations: pulumi.StringArray{
/// 							pulumi.String("all"),
/// 						},
/// 						TargetObjects: pulumi.StringArray{},
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
/// terraform {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_authorization_role_management_policy" "roleManagementPolicy" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   role_management_policy_name = "570c3619-7688-4b34-b290-2b8bb3ccab2a"
///   rules = [{
///     id                     = "Expiration_Admin_Eligibility"
///     is_expiration_required = false
///     maximum_duration       = "P180D"
///     rule_type              = "RoleManagementPolicyExpirationRule"
///     target = {
///       caller     = "Admin"
///       level      = "Eligibility"
///       operations = ["All"]
///     }
///     }, {
///     id                            = "Notification_Admin_Admin_Eligibility"
///     is_default_recipients_enabled = false
///     notification_level            = "Critical"
///     notification_recipients       = ["admin_admin_eligible@test.com"]
///     notification_type             = "Email"
///     recipient_type                = "Admin"
///     rule_type                     = "RoleManagementPolicyNotificationRule"
///     target = {
///       caller     = "Admin"
///       level      = "Eligibility"
///       operations = ["All"]
///     }
///     }, {
///     id                            = "Notification_Requestor_Admin_Eligibility"
///     is_default_recipients_enabled = false
///     notification_level            = "Critical"
///     notification_recipients       = ["requestor_admin_eligible@test.com"]
///     notification_type             = "Email"
///     recipient_type                = "Requestor"
///     rule_type                     = "RoleManagementPolicyNotificationRule"
///     target = {
///       caller     = "Admin"
///       level      = "Eligibility"
///       operations = ["All"]
///     }
///     }, {
///     id                            = "Notification_Approver_Admin_Eligibility"
///     is_default_recipients_enabled = false
///     notification_level            = "Critical"
///     notification_recipients       = ["approver_admin_eligible@test.com"]
///     notification_type             = "Email"
///     recipient_type                = "Approver"
///     rule_type                     = "RoleManagementPolicyNotificationRule"
///     target = {
///       caller     = "Admin"
///       level      = "Eligibility"
///       operations = ["All"]
///     }
///     }, {
///     enabled_rules = []
///     id            = "Enablement_Admin_Eligibility"
///     rule_type     = "RoleManagementPolicyEnablementRule"
///     target = {
///       caller     = "Admin"
///       level      = "Eligibility"
///       operations = ["All"]
///     }
///     }, {
///     id                     = "Expiration_Admin_Assignment"
///     is_expiration_required = false
///     maximum_duration       = "P90D"
///     rule_type              = "RoleManagementPolicyExpirationRule"
///     target = {
///       caller     = "Admin"
///       level      = "Assignment"
///       operations = ["All"]
///     }
///     }, {
///     enabled_rules = ["Justification", "MultiFactorAuthentication"]
///     id            = "Enablement_Admin_Assignment"
///     rule_type     = "RoleManagementPolicyEnablementRule"
///     target = {
///       caller     = "Admin"
///       level      = "Assignment"
///       operations = ["All"]
///     }
///     }, {
///     id                            = "Notification_Admin_Admin_Assignment"
///     is_default_recipients_enabled = false
///     notification_level            = "Critical"
///     notification_recipients       = ["admin_admin_member@test.com"]
///     notification_type             = "Email"
///     recipient_type                = "Admin"
///     rule_type                     = "RoleManagementPolicyNotificationRule"
///     target = {
///       caller     = "Admin"
///       level      = "Assignment"
///       operations = ["All"]
///     }
///     }, {
///     id                            = "Notification_Requestor_Admin_Assignment"
///     is_default_recipients_enabled = false
///     notification_level            = "Critical"
///     notification_recipients       = ["requestor_admin_member@test.com"]
///     notification_type             = "Email"
///     recipient_type                = "Requestor"
///     rule_type                     = "RoleManagementPolicyNotificationRule"
///     target = {
///       caller     = "Admin"
///       level      = "Assignment"
///       operations = ["All"]
///     }
///     }, {
///     id                            = "Notification_Approver_Admin_Assignment"
///     is_default_recipients_enabled = false
///     notification_level            = "Critical"
///     notification_recipients       = ["approver_admin_member@test.com"]
///     notification_type             = "Email"
///     recipient_type                = "Approver"
///     rule_type                     = "RoleManagementPolicyNotificationRule"
///     target = {
///       caller     = "Admin"
///       level      = "Assignment"
///       operations = ["All"]
///     }
///     }, {
///     id                     = "Expiration_EndUser_Assignment"
///     is_expiration_required = true
///     maximum_duration       = "PT7H"
///     rule_type              = "RoleManagementPolicyExpirationRule"
///     target = {
///       caller     = "EndUser"
///       level      = "Assignment"
///       operations = ["All"]
///     }
///     }, {
///     enabled_rules = ["Justification", "MultiFactorAuthentication", "Ticketing"]
///     id            = "Enablement_EndUser_Assignment"
///     rule_type     = "RoleManagementPolicyEnablementRule"
///     target = {
///       caller     = "EndUser"
///       level      = "Assignment"
///       operations = ["All"]
///     }
///     }, {
///     id        = "Approval_EndUser_Assignment"
///     rule_type = "RoleManagementPolicyApprovalRule"
///     setting = {
///       approval_mode = "SingleStage"
///       approval_stages = [{
///         approval_stage_time_out_in_days    = 1
///         escalation_time_in_minutes         = 0
///         is_approver_justification_required = true
///         is_escalation_enabled              = false
///         primary_approvers = [{
///           description = "amansw_new_group"
///           id          = "2385b0f3-5fa9-43cf-8ca4-b01dc97298cd"
///           is_backup   = false
///           user_type   = "Group"
///           }, {
///           description = "amansw_group"
///           id          = "2f4913c9-d15b-406a-9946-1d66a28f2690"
///           is_backup   = false
///           user_type   = "Group"
///         }]
///       }]
///       is_approval_required                = true
///       is_approval_required_for_extension  = false
///       is_requestor_justification_required = true
///     }
///     target = {
///       caller     = "EndUser"
///       level      = "Assignment"
///       operations = ["All"]
///     }
///     }, {
///     claim_value = ""
///     id          = "AuthenticationContext_EndUser_Assignment"
///     is_enabled  = false
///     rule_type   = "RoleManagementPolicyAuthenticationContextRule"
///     target = {
///       caller     = "EndUser"
///       level      = "Assignment"
///       operations = ["All"]
///     }
///     }, {
///     id                            = "Notification_Admin_EndUser_Assignment"
///     is_default_recipients_enabled = false
///     notification_level            = "Critical"
///     notification_recipients       = ["admin_enduser_member@test.com"]
///     notification_type             = "Email"
///     recipient_type                = "Admin"
///     rule_type                     = "RoleManagementPolicyNotificationRule"
///     target = {
///       caller     = "EndUser"
///       level      = "Assignment"
///       operations = ["All"]
///     }
///     }, {
///     id                            = "Notification_Requestor_EndUser_Assignment"
///     is_default_recipients_enabled = false
///     notification_level            = "Critical"
///     notification_recipients       = ["requestor_enduser_member@test.com"]
///     notification_type             = "Email"
///     recipient_type                = "Requestor"
///     rule_type                     = "RoleManagementPolicyNotificationRule"
///     target = {
///       caller     = "EndUser"
///       level      = "Assignment"
///       operations = ["All"]
///     }
///     }, {
///     id                            = "Notification_Approver_EndUser_Assignment"
///     is_default_recipients_enabled = true
///     notification_level            = "Critical"
///     notification_type             = "Email"
///     recipient_type                = "Approver"
///     rule_type                     = "RoleManagementPolicyNotificationRule"
///     target = {
///       caller     = "EndUser"
///       level      = "Assignment"
///       operations = ["All"]
///     }
///     }, {
///     id = "PIMOnlyMode_Admin_Assignment"
///     pim_only_mode_settings = {
///       excluded_assignment_types = ["ServicePrincipalsAsTarget"]
///       excludes = [{
///         id   = "ec42a424-a0c0-4418-8788-d19bdeb03704"
///         type = "User"
///         }, {
///         id   = "00029dfb-0218-4e7a-9a85-c15dc0c880bc"
///         type = "Group"
///         }, {
///         id   = "0000103d-1fc2-4ac8-81de-71517765655c"
///         type = "ServicePrincipal"
///       }]
///       mode = "Enabled"
///     }
///     rule_type = "RoleManagementPolicyPimOnlyModeRule"
///     target = {
///       caller               = "Admin"
///       enforced_settings    = ["all"]
///       inheritable_settings = ["all"]
///       level                = "Assignment"
///       operations           = ["all"]
///       target_objects       = []
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
/// import com.pulumi.azurenative.authorization.inputs.RoleManagementPolicyApprovalRuleArgs;
/// import com.pulumi.azurenative.authorization.inputs.RoleManagementPolicyRuleTargetArgs;
/// import com.pulumi.azurenative.authorization.inputs.RoleManagementPolicyAuthenticationContextRuleArgs;
/// import com.pulumi.azurenative.authorization.inputs.RoleManagementPolicyEnablementRuleArgs;
/// import com.pulumi.azurenative.authorization.inputs.RoleManagementPolicyExpirationRuleArgs;
/// import com.pulumi.azurenative.authorization.inputs.RoleManagementPolicyNotificationRuleArgs;
/// import com.pulumi.azurenative.authorization.inputs.RoleManagementPolicyPimOnlyModeRuleArgs;
/// import com.pulumi.azurenative.authorization.inputs.ApprovalSettingsArgs;
/// import com.pulumi.azurenative.authorization.inputs.ApprovalStageArgs;
/// import com.pulumi.azurenative.authorization.inputs.UserSetArgs;
/// import com.pulumi.azurenative.authorization.inputs.PIMOnlyModeSettingsArgs;
/// import com.pulumi.azurenative.authorization.inputs.UsersOrServicePrincipalSetArgs;
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
///                     .target(RoleManagementPolicyRuleTargetArgs.builder()
///                         .caller("Admin")
///                         .level("Eligibility")
///                         .operations("All")
///                         .build())
///                     .build(),
///                 RoleManagementPolicyEnablementRuleArgs.builder()
///                     .enabledRules()
///                     .id("Enablement_Admin_Eligibility")
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
///                     .target(RoleManagementPolicyRuleTargetArgs.builder()
///                         .caller("EndUser")
///                         .level("Assignment")
///                         .operations("All")
///                         .build())
///                     .build(),
///                 RoleManagementPolicyApprovalRuleArgs.builder()
///                     .id("Approval_EndUser_Assignment")
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
///         Rules =
///         {
///             new AzureNative.Authorization.Inputs.RoleManagementPolicyPimOnlyModeRuleArgs
///             {
///                 Id = "PIMOnlyMode_Admin_Assignment",
///                 PimOnlyModeSettings = new AzureNative.Authorization.Inputs.PIMOnlyModeSettingsArgs
///                 {
///                     ExcludedAssignmentTypes =
///                     {
///                         AzureNative.Authorization.ExcludedPrincipalTypes.ServicePrincipalsAsTarget,
///                     },
///                     Excludes =
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
///                     EnforcedSettings =
///                     {
///                         "all",
///                     },
///                     InheritableSettings =
///                     {
///                         "all",
///                     },
///                     Level = "Assignment",
///                     Operations =
///                     {
///                         "all",
///                     },
///                     TargetObjects =  {},
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
/// 				&authorization.RoleManagementPolicyPimOnlyModeRuleArgs{
/// 					Id: pulumi.String("PIMOnlyMode_Admin_Assignment"),
/// 					PimOnlyModeSettings: &authorization.PIMOnlyModeSettingsArgs{
/// 						ExcludedAssignmentTypes: pulumi.StringArray{
/// 							pulumi.String(authorization.ExcludedPrincipalTypesServicePrincipalsAsTarget),
/// 						},
/// 						Excludes: authorization.UsersOrServicePrincipalSetArray{
/// 							&authorization.UsersOrServicePrincipalSetArgs{
/// 								Id:   pulumi.String("ec42a424-a0c0-4418-8788-d19bdeb03704"),
/// 								Type: pulumi.String(authorization.UsersOrServicePrincipalSetUserTypeUser),
/// 							},
/// 							&authorization.UsersOrServicePrincipalSetArgs{
/// 								Id:   pulumi.String("00029dfb-0218-4e7a-9a85-c15dc0c880bc"),
/// 								Type: pulumi.String(authorization.UsersOrServicePrincipalSetUserTypeGroup),
/// 							},
/// 							&authorization.UsersOrServicePrincipalSetArgs{
/// 								Id:   pulumi.String("0000103d-1fc2-4ac8-81de-71517765655c"),
/// 								Type: pulumi.String(authorization.UsersOrServicePrincipalSetUserTypeServicePrincipal),
/// 							},
/// 						},
/// 						Mode: pulumi.String(authorization.PIMOnlyModeEnabled),
/// 					},
/// 					RuleType: pulumi.String("RoleManagementPolicyPimOnlyModeRule"),
/// 					Target: &authorization.RoleManagementPolicyRuleTargetArgs{
/// 						Caller: pulumi.String("Admin"),
/// 						EnforcedSettings: pulumi.StringArray{
/// 							pulumi.String("all"),
/// 						},
/// 						InheritableSettings: pulumi.StringArray{
/// 							pulumi.String("all"),
/// 						},
/// 						Level: pulumi.String("Assignment"),
/// 						Operations: pulumi.StringArray{
/// 							pulumi.String("all"),
/// 						},
/// 						TargetObjects: pulumi.StringArray{},
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
/// terraform {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_authorization_role_management_policy" "roleManagementPolicy" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   role_management_policy_name = "570c3619-7688-4b34-b290-2b8bb3ccab2a"
///   rules = [{
///     id = "PIMOnlyMode_Admin_Assignment"
///     pim_only_mode_settings = {
///       excluded_assignment_types = ["ServicePrincipalsAsTarget"]
///       excludes = [{
///         id   = "ec42a424-a0c0-4418-8788-d19bdeb03704"
///         type = "User"
///         }, {
///         id   = "00029dfb-0218-4e7a-9a85-c15dc0c880bc"
///         type = "Group"
///         }, {
///         id   = "0000103d-1fc2-4ac8-81de-71517765655c"
///         type = "ServicePrincipal"
///       }]
///       mode = "Enabled"
///     }
///     rule_type = "RoleManagementPolicyPimOnlyModeRule"
///     target = {
///       caller               = "Admin"
///       enforced_settings    = ["all"]
///       inheritable_settings = ["all"]
///       level                = "Assignment"
///       operations           = ["all"]
///       target_objects       = []
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
/// import com.pulumi.azurenative.authorization.inputs.RoleManagementPolicyApprovalRuleArgs;
/// import com.pulumi.azurenative.authorization.inputs.RoleManagementPolicyRuleTargetArgs;
/// import com.pulumi.azurenative.authorization.inputs.RoleManagementPolicyAuthenticationContextRuleArgs;
/// import com.pulumi.azurenative.authorization.inputs.RoleManagementPolicyEnablementRuleArgs;
/// import com.pulumi.azurenative.authorization.inputs.RoleManagementPolicyExpirationRuleArgs;
/// import com.pulumi.azurenative.authorization.inputs.RoleManagementPolicyNotificationRuleArgs;
/// import com.pulumi.azurenative.authorization.inputs.RoleManagementPolicyPimOnlyModeRuleArgs;
/// import com.pulumi.azurenative.authorization.inputs.PIMOnlyModeSettingsArgs;
/// import com.pulumi.azurenative.authorization.inputs.UsersOrServicePrincipalSetArgs;
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
  late final pulumi.Output<List<dynamic>> effectiveRules;
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
  late final pulumi.Output<List<dynamic>?> rules;
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
    effectiveRules = registerOutput<List<dynamic>>('effectiveRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); });
    isOrganizationDefault = registerOutput<bool?>('isOrganizationDefault');
    lastModifiedBy = registerOutput<PrincipalResponse>('lastModifiedBy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrincipalResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lastModifiedDateTime = registerOutput<String>('lastModifiedDateTime');
    this.name = registerOutput<String>('name');
    policyProperties = registerOutput<PolicyPropertiesResponse>('policyProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicyPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rules = registerOutput<List<dynamic>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); });
    scope = registerOutput<String?>('scope');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [RoleManagementPolicy] resource.
  RoleManagementPolicy.reference(String urn)
    : super(
        'azure-native:authorization:RoleManagementPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    effectiveRules = registerOutput<List<dynamic>>('effectiveRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); });
    isOrganizationDefault = registerOutput<bool?>('isOrganizationDefault');
    lastModifiedBy = registerOutput<PrincipalResponse>('lastModifiedBy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrincipalResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lastModifiedDateTime = registerOutput<String>('lastModifiedDateTime');
    this.name = registerOutput<String>('name');
    policyProperties = registerOutput<PolicyPropertiesResponse>('policyProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicyPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rules = registerOutput<List<dynamic>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); });
    scope = registerOutput<String?>('scope');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
