import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_all_updates_rule.dart';
import 'budget_amount.dart';
import 'budget_args.dart';
import 'budget_budget_filter.dart';
import 'budget_threshold_rule.dart';

/// Budget configuration for a billing account.
///
///
/// To get more information about Budget, see:
///
/// * [API documentation](https://cloud.google.com/billing/docs/reference/budget/rest/v1/billingAccounts.budgets)
/// * How-to Guides
/// * [Creating a budget](https://cloud.google.com/billing/docs/how-to/budgets)
///
/// > **Warning:** If you are using User ADCs (Application Default Credentials) with this resource,
/// you must specify a `billing_project` and set `user_project_override` to true
/// in the provider configuration. Otherwise the Billing Budgets API will return a 403 error.
/// Your account must have the `serviceusage.services.use` permission on the
/// `billing_project` you defined.
///
/// ## Example Usage
///
/// ### Billing Budget Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const account = gcp.organizations.getBillingAccount({
///     billingAccount: "000000-0000000-0000000-000000",
/// });
/// const budget = new gcp.billing.Budget("budget", {
///     billingAccount: account.then(account => account.id),
///     displayName: "Example Billing Budget",
///     amount: {
///         specifiedAmount: {
///             currencyCode: "USD",
///             units: "100000",
///         },
///     },
///     thresholdRules: [{
///         thresholdPercent: 0.5,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// account = gcp.organizations.get_billing_account(billing_account="000000-0000000-0000000-000000")
/// budget = gcp.billing.Budget("budget",
///     billing_account=account.id,
///     display_name="Example Billing Budget",
///     amount={
///         "specified_amount": {
///             "currency_code": "USD",
///             "units": "100000",
///         },
///     },
///     threshold_rules=[{
///         "threshold_percent": 0.5,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var account = Gcp.Organizations.GetBillingAccount.Invoke(new()
///     {
///         BillingAccount = "000000-0000000-0000000-000000",
///     });
///
///     var budget = new Gcp.Billing.Budget("budget", new()
///     {
///         BillingAccount = account.Apply(getBillingAccountResult => getBillingAccountResult.Id),
///         DisplayName = "Example Billing Budget",
///         Amount = new Gcp.Billing.Inputs.BudgetAmountArgs
///         {
///             SpecifiedAmount = new Gcp.Billing.Inputs.BudgetAmountSpecifiedAmountArgs
///             {
///                 CurrencyCode = "USD",
///                 Units = "100000",
///             },
///         },
///         ThresholdRules = new[]
///         {
///             new Gcp.Billing.Inputs.BudgetThresholdRuleArgs
///             {
///                 ThresholdPercent = 0.5,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/billing"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		account, err := organizations.GetBillingAccount(ctx, &organizations.GetBillingAccountArgs{
/// 			BillingAccount: pulumi.StringRef("000000-0000000-0000000-000000"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = billing.NewBudget(ctx, "budget", &billing.BudgetArgs{
/// 			BillingAccount: pulumi.String(account.Id),
/// 			DisplayName:    pulumi.String("Example Billing Budget"),
/// 			Amount: &billing.BudgetAmountArgs{
/// 				SpecifiedAmount: &billing.BudgetAmountSpecifiedAmountArgs{
/// 					CurrencyCode: pulumi.String("USD"),
/// 					Units:        pulumi.String("100000"),
/// 				},
/// 			},
/// 			ThresholdRules: billing.BudgetThresholdRuleArray{
/// 				&billing.BudgetThresholdRuleArgs{
/// 					ThresholdPercent: pulumi.Float64(0.5),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetBillingAccountArgs;
/// import com.pulumi.gcp.billing.Budget;
/// import com.pulumi.gcp.billing.BudgetArgs;
/// import com.pulumi.gcp.billing.inputs.BudgetAmountArgs;
/// import com.pulumi.gcp.billing.inputs.BudgetAmountSpecifiedAmountArgs;
/// import com.pulumi.gcp.billing.inputs.BudgetThresholdRuleArgs;
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
///         final var account = OrganizationsFunctions.getBillingAccount(GetBillingAccountArgs.builder()
///             .billingAccount("000000-0000000-0000000-000000")
///             .build());
///
///         var budget = new Budget("budget", BudgetArgs.builder()
///             .billingAccount(account.id())
///             .displayName("Example Billing Budget")
///             .amount(BudgetAmountArgs.builder()
///                 .specifiedAmount(BudgetAmountSpecifiedAmountArgs.builder()
///                     .currencyCode("USD")
///                     .units("100000")
///                     .build())
///                 .build())
///             .thresholdRules(BudgetThresholdRuleArgs.builder()
///                 .thresholdPercent(0.5)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   budget:
///     type: gcp:billing:Budget
///     properties:
///       billingAccount: ${account.id}
///       displayName: Example Billing Budget
///       amount:
///         specifiedAmount:
///           currencyCode: USD
///           units: '100000'
///       thresholdRules:
///         - thresholdPercent: 0.5
/// variables:
///   account:
///     fn::invoke:
///       function: gcp:organizations:getBillingAccount
///       arguments:
///         billingAccount: 000000-0000000-0000000-000000
/// ```
///
/// ### Billing Budget Lastperiod
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const account = gcp.organizations.getBillingAccount({
///     billingAccount: "000000-0000000-0000000-000000",
/// });
/// const project = gcp.organizations.getProject({});
/// const budget = new gcp.billing.Budget("budget", {
///     billingAccount: account.then(account => account.id),
///     displayName: "Example Billing Budget",
///     budgetFilter: {
///         projects: [project.then(project => `projects/${project.number}`)],
///     },
///     amount: {
///         lastPeriodAmount: true,
///     },
///     thresholdRules: [{
///         thresholdPercent: 10,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// account = gcp.organizations.get_billing_account(billing_account="000000-0000000-0000000-000000")
/// project = gcp.organizations.get_project()
/// budget = gcp.billing.Budget("budget",
///     billing_account=account.id,
///     display_name="Example Billing Budget",
///     budget_filter={
///         "projects": [f"projects/{project.number}"],
///     },
///     amount={
///         "last_period_amount": True,
///     },
///     threshold_rules=[{
///         "threshold_percent": 10,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var account = Gcp.Organizations.GetBillingAccount.Invoke(new()
///     {
///         BillingAccount = "000000-0000000-0000000-000000",
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var budget = new Gcp.Billing.Budget("budget", new()
///     {
///         BillingAccount = account.Apply(getBillingAccountResult => getBillingAccountResult.Id),
///         DisplayName = "Example Billing Budget",
///         BudgetFilter = new Gcp.Billing.Inputs.BudgetBudgetFilterArgs
///         {
///             Projects = new[]
///             {
///                 $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}",
///             },
///         },
///         Amount = new Gcp.Billing.Inputs.BudgetAmountArgs
///         {
///             LastPeriodAmount = true,
///         },
///         ThresholdRules = new[]
///         {
///             new Gcp.Billing.Inputs.BudgetThresholdRuleArgs
///             {
///                 ThresholdPercent = 10,
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/billing"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		account, err := organizations.GetBillingAccount(ctx, &organizations.GetBillingAccountArgs{
/// 			BillingAccount: pulumi.StringRef("000000-0000000-0000000-000000"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = billing.NewBudget(ctx, "budget", &billing.BudgetArgs{
/// 			BillingAccount: pulumi.String(account.Id),
/// 			DisplayName:    pulumi.String("Example Billing Budget"),
/// 			BudgetFilter: &billing.BudgetBudgetFilterArgs{
/// 				Projects: pulumi.StringArray{
/// 					pulumi.Sprintf("projects/%v", project.Number),
/// 				},
/// 			},
/// 			Amount: &billing.BudgetAmountArgs{
/// 				LastPeriodAmount: pulumi.Bool(true),
/// 			},
/// 			ThresholdRules: billing.BudgetThresholdRuleArray{
/// 				&billing.BudgetThresholdRuleArgs{
/// 					ThresholdPercent: pulumi.Float64(10),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetBillingAccountArgs;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.billing.Budget;
/// import com.pulumi.gcp.billing.BudgetArgs;
/// import com.pulumi.gcp.billing.inputs.BudgetBudgetFilterArgs;
/// import com.pulumi.gcp.billing.inputs.BudgetAmountArgs;
/// import com.pulumi.gcp.billing.inputs.BudgetThresholdRuleArgs;
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
///         final var account = OrganizationsFunctions.getBillingAccount(GetBillingAccountArgs.builder()
///             .billingAccount("000000-0000000-0000000-000000")
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var budget = new Budget("budget", BudgetArgs.builder()
///             .billingAccount(account.id())
///             .displayName("Example Billing Budget")
///             .budgetFilter(BudgetBudgetFilterArgs.builder()
///                 .projects(String.format("projects/%s", project.number()))
///                 .build())
///             .amount(BudgetAmountArgs.builder()
///                 .lastPeriodAmount(true)
///                 .build())
///             .thresholdRules(BudgetThresholdRuleArgs.builder()
///                 .thresholdPercent(10.0)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   budget:
///     type: gcp:billing:Budget
///     properties:
///       billingAccount: ${account.id}
///       displayName: Example Billing Budget
///       budgetFilter:
///         projects:
///           - projects/${project.number}
///       amount:
///         lastPeriodAmount: true
///       thresholdRules:
///         - thresholdPercent: 10
/// variables:
///   account:
///     fn::invoke:
///       function: gcp:organizations:getBillingAccount
///       arguments:
///         billingAccount: 000000-0000000-0000000-000000
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Billing Budget Filter
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const account = gcp.organizations.getBillingAccount({
///     billingAccount: "000000-0000000-0000000-000000",
/// });
/// const project = gcp.organizations.getProject({});
/// const budget = new gcp.billing.Budget("budget", {
///     billingAccount: account.then(account => account.id),
///     displayName: "Example Billing Budget",
///     budgetFilter: {
///         projects: [project.then(project => `projects/${project.number}`)],
///         creditTypesTreatment: "INCLUDE_SPECIFIED_CREDITS",
///         services: ["services/24E6-581D-38E5"],
///         creditTypes: [
///             "PROMOTION",
///             "FREE_TIER",
///         ],
///         resourceAncestors: ["organizations/123456789"],
///     },
///     amount: {
///         specifiedAmount: {
///             currencyCode: "USD",
///             units: "100000",
///         },
///     },
///     thresholdRules: [
///         {
///             thresholdPercent: 0.5,
///         },
///         {
///             thresholdPercent: 0.9,
///             spendBasis: "FORECASTED_SPEND",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// account = gcp.organizations.get_billing_account(billing_account="000000-0000000-0000000-000000")
/// project = gcp.organizations.get_project()
/// budget = gcp.billing.Budget("budget",
///     billing_account=account.id,
///     display_name="Example Billing Budget",
///     budget_filter={
///         "projects": [f"projects/{project.number}"],
///         "credit_types_treatment": "INCLUDE_SPECIFIED_CREDITS",
///         "services": ["services/24E6-581D-38E5"],
///         "credit_types": [
///             "PROMOTION",
///             "FREE_TIER",
///         ],
///         "resource_ancestors": ["organizations/123456789"],
///     },
///     amount={
///         "specified_amount": {
///             "currency_code": "USD",
///             "units": "100000",
///         },
///     },
///     threshold_rules=[
///         {
///             "threshold_percent": 0.5,
///         },
///         {
///             "threshold_percent": 0.9,
///             "spend_basis": "FORECASTED_SPEND",
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var account = Gcp.Organizations.GetBillingAccount.Invoke(new()
///     {
///         BillingAccount = "000000-0000000-0000000-000000",
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var budget = new Gcp.Billing.Budget("budget", new()
///     {
///         BillingAccount = account.Apply(getBillingAccountResult => getBillingAccountResult.Id),
///         DisplayName = "Example Billing Budget",
///         BudgetFilter = new Gcp.Billing.Inputs.BudgetBudgetFilterArgs
///         {
///             Projects = new[]
///             {
///                 $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}",
///             },
///             CreditTypesTreatment = "INCLUDE_SPECIFIED_CREDITS",
///             Services = new[]
///             {
///                 "services/24E6-581D-38E5",
///             },
///             CreditTypes = new[]
///             {
///                 "PROMOTION",
///                 "FREE_TIER",
///             },
///             ResourceAncestors = new[]
///             {
///                 "organizations/123456789",
///             },
///         },
///         Amount = new Gcp.Billing.Inputs.BudgetAmountArgs
///         {
///             SpecifiedAmount = new Gcp.Billing.Inputs.BudgetAmountSpecifiedAmountArgs
///             {
///                 CurrencyCode = "USD",
///                 Units = "100000",
///             },
///         },
///         ThresholdRules = new[]
///         {
///             new Gcp.Billing.Inputs.BudgetThresholdRuleArgs
///             {
///                 ThresholdPercent = 0.5,
///             },
///             new Gcp.Billing.Inputs.BudgetThresholdRuleArgs
///             {
///                 ThresholdPercent = 0.9,
///                 SpendBasis = "FORECASTED_SPEND",
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/billing"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		account, err := organizations.GetBillingAccount(ctx, &organizations.GetBillingAccountArgs{
/// 			BillingAccount: pulumi.StringRef("000000-0000000-0000000-000000"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = billing.NewBudget(ctx, "budget", &billing.BudgetArgs{
/// 			BillingAccount: pulumi.String(account.Id),
/// 			DisplayName:    pulumi.String("Example Billing Budget"),
/// 			BudgetFilter: &billing.BudgetBudgetFilterArgs{
/// 				Projects: pulumi.StringArray{
/// 					pulumi.Sprintf("projects/%v", project.Number),
/// 				},
/// 				CreditTypesTreatment: pulumi.String("INCLUDE_SPECIFIED_CREDITS"),
/// 				Services: pulumi.StringArray{
/// 					pulumi.String("services/24E6-581D-38E5"),
/// 				},
/// 				CreditTypes: pulumi.StringArray{
/// 					pulumi.String("PROMOTION"),
/// 					pulumi.String("FREE_TIER"),
/// 				},
/// 				ResourceAncestors: pulumi.StringArray{
/// 					pulumi.String("organizations/123456789"),
/// 				},
/// 			},
/// 			Amount: &billing.BudgetAmountArgs{
/// 				SpecifiedAmount: &billing.BudgetAmountSpecifiedAmountArgs{
/// 					CurrencyCode: pulumi.String("USD"),
/// 					Units:        pulumi.String("100000"),
/// 				},
/// 			},
/// 			ThresholdRules: billing.BudgetThresholdRuleArray{
/// 				&billing.BudgetThresholdRuleArgs{
/// 					ThresholdPercent: pulumi.Float64(0.5),
/// 				},
/// 				&billing.BudgetThresholdRuleArgs{
/// 					ThresholdPercent: pulumi.Float64(0.9),
/// 					SpendBasis:       pulumi.String("FORECASTED_SPEND"),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetBillingAccountArgs;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.billing.Budget;
/// import com.pulumi.gcp.billing.BudgetArgs;
/// import com.pulumi.gcp.billing.inputs.BudgetBudgetFilterArgs;
/// import com.pulumi.gcp.billing.inputs.BudgetAmountArgs;
/// import com.pulumi.gcp.billing.inputs.BudgetAmountSpecifiedAmountArgs;
/// import com.pulumi.gcp.billing.inputs.BudgetThresholdRuleArgs;
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
///         final var account = OrganizationsFunctions.getBillingAccount(GetBillingAccountArgs.builder()
///             .billingAccount("000000-0000000-0000000-000000")
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var budget = new Budget("budget", BudgetArgs.builder()
///             .billingAccount(account.id())
///             .displayName("Example Billing Budget")
///             .budgetFilter(BudgetBudgetFilterArgs.builder()
///                 .projects(String.format("projects/%s", project.number()))
///                 .creditTypesTreatment("INCLUDE_SPECIFIED_CREDITS")
///                 .services("services/24E6-581D-38E5")
///                 .creditTypes(
///                     "PROMOTION",
///                     "FREE_TIER")
///                 .resourceAncestors("organizations/123456789")
///                 .build())
///             .amount(BudgetAmountArgs.builder()
///                 .specifiedAmount(BudgetAmountSpecifiedAmountArgs.builder()
///                     .currencyCode("USD")
///                     .units("100000")
///                     .build())
///                 .build())
///             .thresholdRules(
///                 BudgetThresholdRuleArgs.builder()
///                     .thresholdPercent(0.5)
///                     .build(),
///                 BudgetThresholdRuleArgs.builder()
///                     .thresholdPercent(0.9)
///                     .spendBasis("FORECASTED_SPEND")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   budget:
///     type: gcp:billing:Budget
///     properties:
///       billingAccount: ${account.id}
///       displayName: Example Billing Budget
///       budgetFilter:
///         projects:
///           - projects/${project.number}
///         creditTypesTreatment: INCLUDE_SPECIFIED_CREDITS
///         services:
///           - services/24E6-581D-38E5
///         creditTypes:
///           - PROMOTION
///           - FREE_TIER
///         resourceAncestors:
///           - organizations/123456789
///       amount:
///         specifiedAmount:
///           currencyCode: USD
///           units: '100000'
///       thresholdRules:
///         - thresholdPercent: 0.5
///         - thresholdPercent: 0.9
///           spendBasis: FORECASTED_SPEND
/// variables:
///   account:
///     fn::invoke:
///       function: gcp:organizations:getBillingAccount
///       arguments:
///         billingAccount: 000000-0000000-0000000-000000
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Billing Budget Notify
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const account = gcp.organizations.getBillingAccount({
///     billingAccount: "000000-0000000-0000000-000000",
/// });
/// const project = gcp.organizations.getProject({});
/// const notificationChannel = new gcp.monitoring.NotificationChannel("notification_channel", {
///     displayName: "Example Notification Channel",
///     type: "email",
///     labels: {
///         email_address: "address@example.com",
///     },
/// });
/// const budget = new gcp.billing.Budget("budget", {
///     billingAccount: account.then(account => account.id),
///     displayName: "Example Billing Budget",
///     budgetFilter: {
///         projects: [project.then(project => `projects/${project.number}`)],
///     },
///     amount: {
///         specifiedAmount: {
///             currencyCode: "USD",
///             units: "100000",
///         },
///     },
///     thresholdRules: [
///         {
///             thresholdPercent: 1,
///         },
///         {
///             thresholdPercent: 1,
///             spendBasis: "FORECASTED_SPEND",
///         },
///     ],
///     allUpdatesRule: {
///         monitoringNotificationChannels: [notificationChannel.id],
///         disableDefaultIamRecipients: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// account = gcp.organizations.get_billing_account(billing_account="000000-0000000-0000000-000000")
/// project = gcp.organizations.get_project()
/// notification_channel = gcp.monitoring.NotificationChannel("notification_channel",
///     display_name="Example Notification Channel",
///     type="email",
///     labels={
///         "email_address": "address@example.com",
///     })
/// budget = gcp.billing.Budget("budget",
///     billing_account=account.id,
///     display_name="Example Billing Budget",
///     budget_filter={
///         "projects": [f"projects/{project.number}"],
///     },
///     amount={
///         "specified_amount": {
///             "currency_code": "USD",
///             "units": "100000",
///         },
///     },
///     threshold_rules=[
///         {
///             "threshold_percent": 1,
///         },
///         {
///             "threshold_percent": 1,
///             "spend_basis": "FORECASTED_SPEND",
///         },
///     ],
///     all_updates_rule={
///         "monitoring_notification_channels": [notification_channel.id],
///         "disable_default_iam_recipients": True,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var account = Gcp.Organizations.GetBillingAccount.Invoke(new()
///     {
///         BillingAccount = "000000-0000000-0000000-000000",
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var notificationChannel = new Gcp.Monitoring.NotificationChannel("notification_channel", new()
///     {
///         DisplayName = "Example Notification Channel",
///         Type = "email",
///         Labels =
///         {
///             { "email_address", "address@example.com" },
///         },
///     });
///
///     var budget = new Gcp.Billing.Budget("budget", new()
///     {
///         BillingAccount = account.Apply(getBillingAccountResult => getBillingAccountResult.Id),
///         DisplayName = "Example Billing Budget",
///         BudgetFilter = new Gcp.Billing.Inputs.BudgetBudgetFilterArgs
///         {
///             Projects = new[]
///             {
///                 $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}",
///             },
///         },
///         Amount = new Gcp.Billing.Inputs.BudgetAmountArgs
///         {
///             SpecifiedAmount = new Gcp.Billing.Inputs.BudgetAmountSpecifiedAmountArgs
///             {
///                 CurrencyCode = "USD",
///                 Units = "100000",
///             },
///         },
///         ThresholdRules = new[]
///         {
///             new Gcp.Billing.Inputs.BudgetThresholdRuleArgs
///             {
///                 ThresholdPercent = 1,
///             },
///             new Gcp.Billing.Inputs.BudgetThresholdRuleArgs
///             {
///                 ThresholdPercent = 1,
///                 SpendBasis = "FORECASTED_SPEND",
///             },
///         },
///         AllUpdatesRule = new Gcp.Billing.Inputs.BudgetAllUpdatesRuleArgs
///         {
///             MonitoringNotificationChannels = new[]
///             {
///                 notificationChannel.Id,
///             },
///             DisableDefaultIamRecipients = true,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/billing"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/monitoring"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		account, err := organizations.GetBillingAccount(ctx, &organizations.GetBillingAccountArgs{
/// 			BillingAccount: pulumi.StringRef("000000-0000000-0000000-000000"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		notificationChannel, err := monitoring.NewNotificationChannel(ctx, "notification_channel", &monitoring.NotificationChannelArgs{
/// 			DisplayName: pulumi.String("Example Notification Channel"),
/// 			Type:        pulumi.String("email"),
/// 			Labels: pulumi.StringMap{
/// 				"email_address": pulumi.String("address@example.com"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = billing.NewBudget(ctx, "budget", &billing.BudgetArgs{
/// 			BillingAccount: pulumi.String(account.Id),
/// 			DisplayName:    pulumi.String("Example Billing Budget"),
/// 			BudgetFilter: &billing.BudgetBudgetFilterArgs{
/// 				Projects: pulumi.StringArray{
/// 					pulumi.Sprintf("projects/%v", project.Number),
/// 				},
/// 			},
/// 			Amount: &billing.BudgetAmountArgs{
/// 				SpecifiedAmount: &billing.BudgetAmountSpecifiedAmountArgs{
/// 					CurrencyCode: pulumi.String("USD"),
/// 					Units:        pulumi.String("100000"),
/// 				},
/// 			},
/// 			ThresholdRules: billing.BudgetThresholdRuleArray{
/// 				&billing.BudgetThresholdRuleArgs{
/// 					ThresholdPercent: pulumi.Float64(1),
/// 				},
/// 				&billing.BudgetThresholdRuleArgs{
/// 					ThresholdPercent: pulumi.Float64(1),
/// 					SpendBasis:       pulumi.String("FORECASTED_SPEND"),
/// 				},
/// 			},
/// 			AllUpdatesRule: &billing.BudgetAllUpdatesRuleArgs{
/// 				MonitoringNotificationChannels: pulumi.StringArray{
/// 					notificationChannel.ID(),
/// 				},
/// 				DisableDefaultIamRecipients: pulumi.Bool(true),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetBillingAccountArgs;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.monitoring.NotificationChannel;
/// import com.pulumi.gcp.monitoring.NotificationChannelArgs;
/// import com.pulumi.gcp.billing.Budget;
/// import com.pulumi.gcp.billing.BudgetArgs;
/// import com.pulumi.gcp.billing.inputs.BudgetBudgetFilterArgs;
/// import com.pulumi.gcp.billing.inputs.BudgetAmountArgs;
/// import com.pulumi.gcp.billing.inputs.BudgetAmountSpecifiedAmountArgs;
/// import com.pulumi.gcp.billing.inputs.BudgetThresholdRuleArgs;
/// import com.pulumi.gcp.billing.inputs.BudgetAllUpdatesRuleArgs;
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
///         final var account = OrganizationsFunctions.getBillingAccount(GetBillingAccountArgs.builder()
///             .billingAccount("000000-0000000-0000000-000000")
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var notificationChannel = new NotificationChannel("notificationChannel", NotificationChannelArgs.builder()
///             .displayName("Example Notification Channel")
///             .type("email")
///             .labels(Map.of("email_address", "address@example.com"))
///             .build());
///
///         var budget = new Budget("budget", BudgetArgs.builder()
///             .billingAccount(account.id())
///             .displayName("Example Billing Budget")
///             .budgetFilter(BudgetBudgetFilterArgs.builder()
///                 .projects(String.format("projects/%s", project.number()))
///                 .build())
///             .amount(BudgetAmountArgs.builder()
///                 .specifiedAmount(BudgetAmountSpecifiedAmountArgs.builder()
///                     .currencyCode("USD")
///                     .units("100000")
///                     .build())
///                 .build())
///             .thresholdRules(
///                 BudgetThresholdRuleArgs.builder()
///                     .thresholdPercent(1.0)
///                     .build(),
///                 BudgetThresholdRuleArgs.builder()
///                     .thresholdPercent(1.0)
///                     .spendBasis("FORECASTED_SPEND")
///                     .build())
///             .allUpdatesRule(BudgetAllUpdatesRuleArgs.builder()
///                 .monitoringNotificationChannels(notificationChannel.id())
///                 .disableDefaultIamRecipients(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   budget:
///     type: gcp:billing:Budget
///     properties:
///       billingAccount: ${account.id}
///       displayName: Example Billing Budget
///       budgetFilter:
///         projects:
///           - projects/${project.number}
///       amount:
///         specifiedAmount:
///           currencyCode: USD
///           units: '100000'
///       thresholdRules:
///         - thresholdPercent: 1
///         - thresholdPercent: 1
///           spendBasis: FORECASTED_SPEND
///       allUpdatesRule:
///         monitoringNotificationChannels:
///           - ${notificationChannel.id}
///         disableDefaultIamRecipients: true
///   notificationChannel:
///     type: gcp:monitoring:NotificationChannel
///     name: notification_channel
///     properties:
///       displayName: Example Notification Channel
///       type: email
///       labels:
///         email_address: address@example.com
/// variables:
///   account:
///     fn::invoke:
///       function: gcp:organizations:getBillingAccount
///       arguments:
///         billingAccount: 000000-0000000-0000000-000000
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Billing Budget Notify Project Recipient
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const account = gcp.organizations.getBillingAccount({
///     billingAccount: "000000-0000000-0000000-000000",
/// });
/// const project = gcp.organizations.getProject({});
/// const budget = new gcp.billing.Budget("budget", {
///     billingAccount: account.then(account => account.id),
///     displayName: "Example Billing Budget",
///     budgetFilter: {
///         projects: [project.then(project => `projects/${project.number}`)],
///     },
///     amount: {
///         specifiedAmount: {
///             currencyCode: "USD",
///             units: "100000",
///         },
///     },
///     allUpdatesRule: {
///         monitoringNotificationChannels: [],
///         enableProjectLevelRecipients: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// account = gcp.organizations.get_billing_account(billing_account="000000-0000000-0000000-000000")
/// project = gcp.organizations.get_project()
/// budget = gcp.billing.Budget("budget",
///     billing_account=account.id,
///     display_name="Example Billing Budget",
///     budget_filter={
///         "projects": [f"projects/{project.number}"],
///     },
///     amount={
///         "specified_amount": {
///             "currency_code": "USD",
///             "units": "100000",
///         },
///     },
///     all_updates_rule={
///         "monitoring_notification_channels": [],
///         "enable_project_level_recipients": True,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var account = Gcp.Organizations.GetBillingAccount.Invoke(new()
///     {
///         BillingAccount = "000000-0000000-0000000-000000",
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var budget = new Gcp.Billing.Budget("budget", new()
///     {
///         BillingAccount = account.Apply(getBillingAccountResult => getBillingAccountResult.Id),
///         DisplayName = "Example Billing Budget",
///         BudgetFilter = new Gcp.Billing.Inputs.BudgetBudgetFilterArgs
///         {
///             Projects = new[]
///             {
///                 $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}",
///             },
///         },
///         Amount = new Gcp.Billing.Inputs.BudgetAmountArgs
///         {
///             SpecifiedAmount = new Gcp.Billing.Inputs.BudgetAmountSpecifiedAmountArgs
///             {
///                 CurrencyCode = "USD",
///                 Units = "100000",
///             },
///         },
///         AllUpdatesRule = new Gcp.Billing.Inputs.BudgetAllUpdatesRuleArgs
///         {
///             MonitoringNotificationChannels = new() { },
///             EnableProjectLevelRecipients = true,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/billing"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		account, err := organizations.GetBillingAccount(ctx, &organizations.GetBillingAccountArgs{
/// 			BillingAccount: pulumi.StringRef("000000-0000000-0000000-000000"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = billing.NewBudget(ctx, "budget", &billing.BudgetArgs{
/// 			BillingAccount: pulumi.String(account.Id),
/// 			DisplayName:    pulumi.String("Example Billing Budget"),
/// 			BudgetFilter: &billing.BudgetBudgetFilterArgs{
/// 				Projects: pulumi.StringArray{
/// 					pulumi.Sprintf("projects/%v", project.Number),
/// 				},
/// 			},
/// 			Amount: &billing.BudgetAmountArgs{
/// 				SpecifiedAmount: &billing.BudgetAmountSpecifiedAmountArgs{
/// 					CurrencyCode: pulumi.String("USD"),
/// 					Units:        pulumi.String("100000"),
/// 				},
/// 			},
/// 			AllUpdatesRule: &billing.BudgetAllUpdatesRuleArgs{
/// 				MonitoringNotificationChannels: pulumi.StringArray{},
/// 				EnableProjectLevelRecipients:   pulumi.Bool(true),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetBillingAccountArgs;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.billing.Budget;
/// import com.pulumi.gcp.billing.BudgetArgs;
/// import com.pulumi.gcp.billing.inputs.BudgetBudgetFilterArgs;
/// import com.pulumi.gcp.billing.inputs.BudgetAmountArgs;
/// import com.pulumi.gcp.billing.inputs.BudgetAmountSpecifiedAmountArgs;
/// import com.pulumi.gcp.billing.inputs.BudgetAllUpdatesRuleArgs;
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
///         final var account = OrganizationsFunctions.getBillingAccount(GetBillingAccountArgs.builder()
///             .billingAccount("000000-0000000-0000000-000000")
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var budget = new Budget("budget", BudgetArgs.builder()
///             .billingAccount(account.id())
///             .displayName("Example Billing Budget")
///             .budgetFilter(BudgetBudgetFilterArgs.builder()
///                 .projects(String.format("projects/%s", project.number()))
///                 .build())
///             .amount(BudgetAmountArgs.builder()
///                 .specifiedAmount(BudgetAmountSpecifiedAmountArgs.builder()
///                     .currencyCode("USD")
///                     .units("100000")
///                     .build())
///                 .build())
///             .allUpdatesRule(BudgetAllUpdatesRuleArgs.builder()
///                 .monitoringNotificationChannels()
///                 .enableProjectLevelRecipients(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   budget:
///     type: gcp:billing:Budget
///     properties:
///       billingAccount: ${account.id}
///       displayName: Example Billing Budget
///       budgetFilter:
///         projects:
///           - projects/${project.number}
///       amount:
///         specifiedAmount:
///           currencyCode: USD
///           units: '100000'
///       allUpdatesRule:
///         monitoringNotificationChannels: []
///         enableProjectLevelRecipients: true
/// variables:
///   account:
///     fn::invoke:
///       function: gcp:organizations:getBillingAccount
///       arguments:
///         billingAccount: 000000-0000000-0000000-000000
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Billing Budget Customperiod
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const account = gcp.organizations.getBillingAccount({
///     billingAccount: "000000-0000000-0000000-000000",
/// });
/// const project = gcp.organizations.getProject({});
/// const budget = new gcp.billing.Budget("budget", {
///     billingAccount: account.then(account => account.id),
///     displayName: "Example Billing Budget",
///     budgetFilter: {
///         projects: [project.then(project => `projects/${project.number}`)],
///         creditTypesTreatment: "EXCLUDE_ALL_CREDITS",
///         services: ["services/24E6-581D-38E5"],
///         customPeriod: {
///             startDate: {
///                 year: 2022,
///                 month: 1,
///                 day: 1,
///             },
///             endDate: {
///                 year: 2023,
///                 month: 12,
///                 day: 31,
///             },
///         },
///     },
///     amount: {
///         specifiedAmount: {
///             currencyCode: "USD",
///             units: "100000",
///         },
///     },
///     thresholdRules: [
///         {
///             thresholdPercent: 0.5,
///         },
///         {
///             thresholdPercent: 0.9,
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// account = gcp.organizations.get_billing_account(billing_account="000000-0000000-0000000-000000")
/// project = gcp.organizations.get_project()
/// budget = gcp.billing.Budget("budget",
///     billing_account=account.id,
///     display_name="Example Billing Budget",
///     budget_filter={
///         "projects": [f"projects/{project.number}"],
///         "credit_types_treatment": "EXCLUDE_ALL_CREDITS",
///         "services": ["services/24E6-581D-38E5"],
///         "custom_period": {
///             "start_date": {
///                 "year": 2022,
///                 "month": 1,
///                 "day": 1,
///             },
///             "end_date": {
///                 "year": 2023,
///                 "month": 12,
///                 "day": 31,
///             },
///         },
///     },
///     amount={
///         "specified_amount": {
///             "currency_code": "USD",
///             "units": "100000",
///         },
///     },
///     threshold_rules=[
///         {
///             "threshold_percent": 0.5,
///         },
///         {
///             "threshold_percent": 0.9,
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var account = Gcp.Organizations.GetBillingAccount.Invoke(new()
///     {
///         BillingAccount = "000000-0000000-0000000-000000",
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var budget = new Gcp.Billing.Budget("budget", new()
///     {
///         BillingAccount = account.Apply(getBillingAccountResult => getBillingAccountResult.Id),
///         DisplayName = "Example Billing Budget",
///         BudgetFilter = new Gcp.Billing.Inputs.BudgetBudgetFilterArgs
///         {
///             Projects = new[]
///             {
///                 $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}",
///             },
///             CreditTypesTreatment = "EXCLUDE_ALL_CREDITS",
///             Services = new[]
///             {
///                 "services/24E6-581D-38E5",
///             },
///             CustomPeriod = new Gcp.Billing.Inputs.BudgetBudgetFilterCustomPeriodArgs
///             {
///                 StartDate = new Gcp.Billing.Inputs.BudgetBudgetFilterCustomPeriodStartDateArgs
///                 {
///                     Year = 2022,
///                     Month = 1,
///                     Day = 1,
///                 },
///                 EndDate = new Gcp.Billing.Inputs.BudgetBudgetFilterCustomPeriodEndDateArgs
///                 {
///                     Year = 2023,
///                     Month = 12,
///                     Day = 31,
///                 },
///             },
///         },
///         Amount = new Gcp.Billing.Inputs.BudgetAmountArgs
///         {
///             SpecifiedAmount = new Gcp.Billing.Inputs.BudgetAmountSpecifiedAmountArgs
///             {
///                 CurrencyCode = "USD",
///                 Units = "100000",
///             },
///         },
///         ThresholdRules = new[]
///         {
///             new Gcp.Billing.Inputs.BudgetThresholdRuleArgs
///             {
///                 ThresholdPercent = 0.5,
///             },
///             new Gcp.Billing.Inputs.BudgetThresholdRuleArgs
///             {
///                 ThresholdPercent = 0.9,
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/billing"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		account, err := organizations.GetBillingAccount(ctx, &organizations.GetBillingAccountArgs{
/// 			BillingAccount: pulumi.StringRef("000000-0000000-0000000-000000"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = billing.NewBudget(ctx, "budget", &billing.BudgetArgs{
/// 			BillingAccount: pulumi.String(account.Id),
/// 			DisplayName:    pulumi.String("Example Billing Budget"),
/// 			BudgetFilter: &billing.BudgetBudgetFilterArgs{
/// 				Projects: pulumi.StringArray{
/// 					pulumi.Sprintf("projects/%v", project.Number),
/// 				},
/// 				CreditTypesTreatment: pulumi.String("EXCLUDE_ALL_CREDITS"),
/// 				Services: pulumi.StringArray{
/// 					pulumi.String("services/24E6-581D-38E5"),
/// 				},
/// 				CustomPeriod: &billing.BudgetBudgetFilterCustomPeriodArgs{
/// 					StartDate: &billing.BudgetBudgetFilterCustomPeriodStartDateArgs{
/// 						Year:  pulumi.Int(2022),
/// 						Month: pulumi.Int(1),
/// 						Day:   pulumi.Int(1),
/// 					},
/// 					EndDate: &billing.BudgetBudgetFilterCustomPeriodEndDateArgs{
/// 						Year:  pulumi.Int(2023),
/// 						Month: pulumi.Int(12),
/// 						Day:   pulumi.Int(31),
/// 					},
/// 				},
/// 			},
/// 			Amount: &billing.BudgetAmountArgs{
/// 				SpecifiedAmount: &billing.BudgetAmountSpecifiedAmountArgs{
/// 					CurrencyCode: pulumi.String("USD"),
/// 					Units:        pulumi.String("100000"),
/// 				},
/// 			},
/// 			ThresholdRules: billing.BudgetThresholdRuleArray{
/// 				&billing.BudgetThresholdRuleArgs{
/// 					ThresholdPercent: pulumi.Float64(0.5),
/// 				},
/// 				&billing.BudgetThresholdRuleArgs{
/// 					ThresholdPercent: pulumi.Float64(0.9),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetBillingAccountArgs;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.billing.Budget;
/// import com.pulumi.gcp.billing.BudgetArgs;
/// import com.pulumi.gcp.billing.inputs.BudgetBudgetFilterArgs;
/// import com.pulumi.gcp.billing.inputs.BudgetBudgetFilterCustomPeriodArgs;
/// import com.pulumi.gcp.billing.inputs.BudgetBudgetFilterCustomPeriodStartDateArgs;
/// import com.pulumi.gcp.billing.inputs.BudgetBudgetFilterCustomPeriodEndDateArgs;
/// import com.pulumi.gcp.billing.inputs.BudgetAmountArgs;
/// import com.pulumi.gcp.billing.inputs.BudgetAmountSpecifiedAmountArgs;
/// import com.pulumi.gcp.billing.inputs.BudgetThresholdRuleArgs;
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
///         final var account = OrganizationsFunctions.getBillingAccount(GetBillingAccountArgs.builder()
///             .billingAccount("000000-0000000-0000000-000000")
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var budget = new Budget("budget", BudgetArgs.builder()
///             .billingAccount(account.id())
///             .displayName("Example Billing Budget")
///             .budgetFilter(BudgetBudgetFilterArgs.builder()
///                 .projects(String.format("projects/%s", project.number()))
///                 .creditTypesTreatment("EXCLUDE_ALL_CREDITS")
///                 .services("services/24E6-581D-38E5")
///                 .customPeriod(BudgetBudgetFilterCustomPeriodArgs.builder()
///                     .startDate(BudgetBudgetFilterCustomPeriodStartDateArgs.builder()
///                         .year(2022)
///                         .month(1)
///                         .day(1)
///                         .build())
///                     .endDate(BudgetBudgetFilterCustomPeriodEndDateArgs.builder()
///                         .year(2023)
///                         .month(12)
///                         .day(31)
///                         .build())
///                     .build())
///                 .build())
///             .amount(BudgetAmountArgs.builder()
///                 .specifiedAmount(BudgetAmountSpecifiedAmountArgs.builder()
///                     .currencyCode("USD")
///                     .units("100000")
///                     .build())
///                 .build())
///             .thresholdRules(
///                 BudgetThresholdRuleArgs.builder()
///                     .thresholdPercent(0.5)
///                     .build(),
///                 BudgetThresholdRuleArgs.builder()
///                     .thresholdPercent(0.9)
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   budget:
///     type: gcp:billing:Budget
///     properties:
///       billingAccount: ${account.id}
///       displayName: Example Billing Budget
///       budgetFilter:
///         projects:
///           - projects/${project.number}
///         creditTypesTreatment: EXCLUDE_ALL_CREDITS
///         services:
///           - services/24E6-581D-38E5
///         customPeriod:
///           startDate:
///             year: 2022
///             month: 1
///             day: 1
///           endDate:
///             year: 2023
///             month: 12
///             day: 31
///       amount:
///         specifiedAmount:
///           currencyCode: USD
///           units: '100000'
///       thresholdRules:
///         - thresholdPercent: 0.5
///         - thresholdPercent: 0.9
/// variables:
///   account:
///     fn::invoke:
///       function: gcp:organizations:getBillingAccount
///       arguments:
///         billingAccount: 000000-0000000-0000000-000000
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Budget can be imported using any of these accepted formats:
///
/// * `billingAccounts/{{billing_account}}/budgets/{{name}}`
///
/// * `{{billing_account}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Budget can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:billing/budget:Budget default billingAccounts/{{billing_account}}/budgets/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:billing/budget:Budget default {{billing_account}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:billing/budget:Budget default {{name}}
/// ```
class Budget extends pulumi.CustomResource {
  /// Defines notifications that are sent on every update to the
  /// billing account's spend, regardless of the thresholds defined
  /// using threshold rules.
  /// Structure is documented below.
  late final pulumi.Output<BudgetAllUpdatesRule?> allUpdatesRule;
  /// The budgeted amount for each usage period.
  /// Structure is documented below.
  late final pulumi.Output<BudgetAmount> amount;
  /// ID of the billing account to set a budget on.
  late final pulumi.Output<String> billingAccount;
  /// Filters that define which resources are used to compute the actual
  /// spend against the budget.
  /// Structure is documented below.
  late final pulumi.Output<BudgetBudgetFilter> budgetFilter;
  /// User data for display name in UI. Must be <= 60 chars.
  late final pulumi.Output<String?> displayName;
  /// Resource name of the budget. The resource name
  /// implies the scope of a budget. Values are of the form
  /// billingAccounts/{billingAccountId}/budgets/{budgetId}.
  late final pulumi.Output<String> name;
  /// The ownership scope of the budget. The ownership scope and users'
  /// IAM permissions determine who has full access to the budget's data.
  /// Possible values are: `OWNERSHIP_SCOPE_UNSPECIFIED`, `ALL_USERS`, `BILLING_ACCOUNT`.
  late final pulumi.Output<String?> ownershipScope;
  /// Rules that trigger alerts (notifications of thresholds being
  /// crossed) when spend exceeds the specified percentages of the
  /// budget.
  /// Structure is documented below.
  late final pulumi.Output<List<BudgetThresholdRule>?> thresholdRules;

  /// Creates a new [Budget].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Budget]. {@macro pulumi_billing_budget_budget_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Budget(
    String name, {
    BudgetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:billing/budget:Budget',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allUpdatesRule = registerOutput<BudgetAllUpdatesRule?>('allUpdatesRule');
    this.amount = registerOutput<BudgetAmount>('amount');
    this.billingAccount = registerOutput<String>('billingAccount');
    this.budgetFilter = registerOutput<BudgetBudgetFilter>('budgetFilter');
    this.displayName = registerOutput<String?>('displayName');
    this.name = registerOutput<String>('name');
    this.ownershipScope = registerOutput<String?>('ownershipScope');
    this.thresholdRules = registerOutput<List<BudgetThresholdRule>?>('thresholdRules');
  }
}
