import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_args.dart';
import 'budget_auto_adjust_data.dart';
import 'budget_cost_types.dart';
import 'budget_filter_expression.dart';
import 'budget_state.dart';

/// Provides a budgets budget resource. Budgets use the cost visualization provided by Cost Explorer to show you the status of your budgets, to provide forecasts of your estimated costs, and to track your AWS usage, including your free tier usage.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const ec2 = new aws.budgets.Budget("ec2", {
///     name: "budget-ec2-monthly",
///     budgetType: "COST",
///     limitAmount: "1200",
///     limitUnit: "USD",
///     timePeriodEnd: "2087-06-15_00:00",
///     timePeriodStart: "2017-07-01_00:00",
///     timeUnit: "MONTHLY",
///     costFilters: [{
///         name: "Service",
///         values: ["Amazon Elastic Compute Cloud - Compute"],
///     }],
///     notifications: [{
///         comparisonOperator: "GREATER_THAN",
///         threshold: 100,
///         thresholdType: "PERCENTAGE",
///         notificationType: "FORECASTED",
///         subscriberEmailAddresses: ["test@example.com"],
///     }],
///     tags: {
///         Tag1: "Value1",
///         Tag2: "Value2",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ec2 = aws.budgets.Budget("ec2",
///     name="budget-ec2-monthly",
///     budget_type="COST",
///     limit_amount="1200",
///     limit_unit="USD",
///     time_period_end="2087-06-15_00:00",
///     time_period_start="2017-07-01_00:00",
///     time_unit="MONTHLY",
///     cost_filters=[{
///         "name": "Service",
///         "values": ["Amazon Elastic Compute Cloud - Compute"],
///     }],
///     notifications=[{
///         "comparison_operator": "GREATER_THAN",
///         "threshold": float(100),
///         "threshold_type": "PERCENTAGE",
///         "notification_type": "FORECASTED",
///         "subscriber_email_addresses": ["test@example.com"],
///     }],
///     tags={
///         "Tag1": "Value1",
///         "Tag2": "Value2",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ec2 = new Aws.Budgets.Budget("ec2", new()
///     {
///         Name = "budget-ec2-monthly",
///         BudgetType = "COST",
///         LimitAmount = "1200",
///         LimitUnit = "USD",
///         TimePeriodEnd = "2087-06-15_00:00",
///         TimePeriodStart = "2017-07-01_00:00",
///         TimeUnit = "MONTHLY",
///         CostFilters = new[]
///         {
///             new Aws.Budgets.Inputs.BudgetCostFilterArgs
///             {
///                 Name = "Service",
///                 Values = new[]
///                 {
///                     "Amazon Elastic Compute Cloud - Compute",
///                 },
///             },
///         },
///         Notifications = new[]
///         {
///             new Aws.Budgets.Inputs.BudgetNotificationArgs
///             {
///                 ComparisonOperator = "GREATER_THAN",
///                 Threshold = 100,
///                 ThresholdType = "PERCENTAGE",
///                 NotificationType = "FORECASTED",
///                 SubscriberEmailAddresses = new[]
///                 {
///                     "test@example.com",
///                 },
///             },
///         },
///         Tags =
///         {
///             { "Tag1", "Value1" },
///             { "Tag2", "Value2" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/budgets"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := budgets.NewBudget(ctx, "ec2", &budgets.BudgetArgs{
/// 			Name:            pulumi.String("budget-ec2-monthly"),
/// 			BudgetType:      pulumi.String("COST"),
/// 			LimitAmount:     pulumi.String("1200"),
/// 			LimitUnit:       pulumi.String("USD"),
/// 			TimePeriodEnd:   pulumi.String("2087-06-15_00:00"),
/// 			TimePeriodStart: pulumi.String("2017-07-01_00:00"),
/// 			TimeUnit:        pulumi.String("MONTHLY"),
/// 			CostFilters: budgets.BudgetCostFilterArray{
/// 				&budgets.BudgetCostFilterArgs{
/// 					Name: pulumi.String("Service"),
/// 					Values: pulumi.StringArray{
/// 						pulumi.String("Amazon Elastic Compute Cloud - Compute"),
/// 					},
/// 				},
/// 			},
/// 			Notifications: budgets.BudgetNotificationArray{
/// 				&budgets.BudgetNotificationArgs{
/// 					ComparisonOperator: pulumi.String("GREATER_THAN"),
/// 					Threshold:          pulumi.Float64(100),
/// 					ThresholdType:      pulumi.String("PERCENTAGE"),
/// 					NotificationType:   pulumi.String("FORECASTED"),
/// 					SubscriberEmailAddresses: pulumi.StringArray{
/// 						pulumi.String("test@example.com"),
/// 					},
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Tag1": pulumi.String("Value1"),
/// 				"Tag2": pulumi.String("Value2"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_budgets_budget" "ec2" {
///   name              = "budget-ec2-monthly"
///   budget_type       = "COST"
///   limit_amount      = "1200"
///   limit_unit        = "USD"
///   time_period_end   = "2087-06-15_00:00"
///   time_period_start = "2017-07-01_00:00"
///   time_unit         = "MONTHLY"
///   cost_filters {
///     name   = "Service"
///     values = ["Amazon Elastic Compute Cloud - Compute"]
///   }
///   notifications {
///     comparison_operator        = "GREATER_THAN"
///     threshold                  = 100
///     threshold_type             = "PERCENTAGE"
///     notification_type          = "FORECASTED"
///     subscriber_email_addresses = ["test@example.com"]
///   }
///   tags = {
///     "Tag1" = "Value1"
///     "Tag2" = "Value2"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.budgets.Budget;
/// import com.pulumi.aws.budgets.BudgetArgs;
/// import com.pulumi.aws.budgets.inputs.BudgetCostFilterArgs;
/// import com.pulumi.aws.budgets.inputs.BudgetNotificationArgs;
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
///         var ec2 = new Budget("ec2", BudgetArgs.builder()
///             .name("budget-ec2-monthly")
///             .budgetType("COST")
///             .limitAmount("1200")
///             .limitUnit("USD")
///             .timePeriodEnd("2087-06-15_00:00")
///             .timePeriodStart("2017-07-01_00:00")
///             .timeUnit("MONTHLY")
///             .costFilters(BudgetCostFilterArgs.builder()
///                 .name("Service")
///                 .values("Amazon Elastic Compute Cloud - Compute")
///                 .build())
///             .notifications(BudgetNotificationArgs.builder()
///                 .comparisonOperator("GREATER_THAN")
///                 .threshold(100.0)
///                 .thresholdType("PERCENTAGE")
///                 .notificationType("FORECASTED")
///                 .subscriberEmailAddresses("test@example.com")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("Tag1", "Value1"),
///                 Map.entry("Tag2", "Value2")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   ec2:
///     type: aws:budgets:Budget
///     properties:
///       name: budget-ec2-monthly
///       budgetType: COST
///       limitAmount: '1200'
///       limitUnit: USD
///       timePeriodEnd: 2087-06-15_00:00
///       timePeriodStart: 2017-07-01_00:00
///       timeUnit: MONTHLY
///       costFilters:
///         - name: Service
///           values:
///             - Amazon Elastic Compute Cloud - Compute
///       notifications:
///         - comparisonOperator: GREATER_THAN
///           threshold: 100
///           thresholdType: PERCENTAGE
///           notificationType: FORECASTED
///           subscriberEmailAddresses:
///             - test@example.com
///       tags:
///         Tag1: Value1
///         Tag2: Value2
/// ```
///
///
/// Create a budget for *$100*.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const cost = new aws.budgets.Budget("cost", {
///     budgetType: "COST",
///     limitAmount: "100",
///     limitUnit: "USD",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// cost = aws.budgets.Budget("cost",
///     budget_type="COST",
///     limit_amount="100",
///     limit_unit="USD")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cost = new Aws.Budgets.Budget("cost", new()
///     {
///         BudgetType = "COST",
///         LimitAmount = "100",
///         LimitUnit = "USD",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/budgets"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := budgets.NewBudget(ctx, "cost", &budgets.BudgetArgs{
/// 			BudgetType:  pulumi.String("COST"),
/// 			LimitAmount: pulumi.String("100"),
/// 			LimitUnit:   pulumi.String("USD"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_budgets_budget" "cost" {
///   budget_type  = "COST"
///   limit_amount = "100"
///   limit_unit   = "USD"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.budgets.Budget;
/// import com.pulumi.aws.budgets.BudgetArgs;
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
///         var cost = new Budget("cost", BudgetArgs.builder()
///             .budgetType("COST")
///             .limitAmount("100")
///             .limitUnit("USD")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cost:
///     type: aws:budgets:Budget
///     properties:
///       budgetType: COST
///       limitAmount: '100'
///       limitUnit: USD
/// ```
///
///
/// Create a budget with planned budget limits.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const cost = new aws.budgets.Budget("cost", {plannedLimits: [
///     {
///         startTime: "2017-07-01_00:00",
///         amount: "100",
///         unit: "USD",
///     },
///     {
///         startTime: "2017-08-01_00:00",
///         amount: "200",
///         unit: "USD",
///     },
/// ]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// cost = aws.budgets.Budget("cost", planned_limits=[
///     {
///         "start_time": "2017-07-01_00:00",
///         "amount": "100",
///         "unit": "USD",
///     },
///     {
///         "start_time": "2017-08-01_00:00",
///         "amount": "200",
///         "unit": "USD",
///     },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cost = new Aws.Budgets.Budget("cost", new()
///     {
///         PlannedLimits = new[]
///         {
///             new Aws.Budgets.Inputs.BudgetPlannedLimitArgs
///             {
///                 StartTime = "2017-07-01_00:00",
///                 Amount = "100",
///                 Unit = "USD",
///             },
///             new Aws.Budgets.Inputs.BudgetPlannedLimitArgs
///             {
///                 StartTime = "2017-08-01_00:00",
///                 Amount = "200",
///                 Unit = "USD",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/budgets"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := budgets.NewBudget(ctx, "cost", &budgets.BudgetArgs{
/// 			PlannedLimits: budgets.BudgetPlannedLimitArray{
/// 				&budgets.BudgetPlannedLimitArgs{
/// 					StartTime: pulumi.String("2017-07-01_00:00"),
/// 					Amount:    pulumi.String("100"),
/// 					Unit:      pulumi.String("USD"),
/// 				},
/// 				&budgets.BudgetPlannedLimitArgs{
/// 					StartTime: pulumi.String("2017-08-01_00:00"),
/// 					Amount:    pulumi.String("200"),
/// 					Unit:      pulumi.String("USD"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_budgets_budget" "cost" {
///   planned_limits {
///     start_time = "2017-07-01_00:00"
///     amount     = "100"
///     unit       = "USD"
///   }
///   planned_limits {
///     start_time = "2017-08-01_00:00"
///     amount     = "200"
///     unit       = "USD"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.budgets.Budget;
/// import com.pulumi.aws.budgets.BudgetArgs;
/// import com.pulumi.aws.budgets.inputs.BudgetPlannedLimitArgs;
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
///         var cost = new Budget("cost", BudgetArgs.builder()
///             .plannedLimits(
///                 BudgetPlannedLimitArgs.builder()
///                     .startTime("2017-07-01_00:00")
///                     .amount("100")
///                     .unit("USD")
///                     .build(),
///                 BudgetPlannedLimitArgs.builder()
///                     .startTime("2017-08-01_00:00")
///                     .amount("200")
///                     .unit("USD")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cost:
///     type: aws:budgets:Budget
///     properties:
///       plannedLimits:
///         - startTime: 2017-07-01_00:00
///           amount: '100'
///           unit: USD
///         - startTime: 2017-08-01_00:00
///           amount: '200'
///           unit: USD
/// ```
///
///
/// Create a budget for s3 with a limit of *3 GB* of storage.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const s3 = new aws.budgets.Budget("s3", {
///     budgetType: "USAGE",
///     limitAmount: "3",
///     limitUnit: "GB",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// s3 = aws.budgets.Budget("s3",
///     budget_type="USAGE",
///     limit_amount="3",
///     limit_unit="GB")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var s3 = new Aws.Budgets.Budget("s3", new()
///     {
///         BudgetType = "USAGE",
///         LimitAmount = "3",
///         LimitUnit = "GB",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/budgets"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := budgets.NewBudget(ctx, "s3", &budgets.BudgetArgs{
/// 			BudgetType:  pulumi.String("USAGE"),
/// 			LimitAmount: pulumi.String("3"),
/// 			LimitUnit:   pulumi.String("GB"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_budgets_budget" "s3" {
///   budget_type  = "USAGE"
///   limit_amount = "3"
///   limit_unit   = "GB"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.budgets.Budget;
/// import com.pulumi.aws.budgets.BudgetArgs;
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
///         var s3 = new Budget("s3", BudgetArgs.builder()
///             .budgetType("USAGE")
///             .limitAmount("3")
///             .limitUnit("GB")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   s3:
///     type: aws:budgets:Budget
///     properties:
///       budgetType: USAGE
///       limitAmount: '3'
///       limitUnit: GB
/// ```
///
///
/// Create a Savings Plan Utilization Budget
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const savingsPlanUtilization = new aws.budgets.Budget("savings_plan_utilization", {
///     budgetType: "SAVINGS_PLANS_UTILIZATION",
///     limitAmount: "100.0",
///     limitUnit: "PERCENTAGE",
///     costTypes: {
///         includeCredit: false,
///         includeDiscount: false,
///         includeOtherSubscription: false,
///         includeRecurring: false,
///         includeRefund: false,
///         includeSubscription: true,
///         includeSupport: false,
///         includeTax: false,
///         includeUpfront: false,
///         useBlended: false,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// savings_plan_utilization = aws.budgets.Budget("savings_plan_utilization",
///     budget_type="SAVINGS_PLANS_UTILIZATION",
///     limit_amount="100.0",
///     limit_unit="PERCENTAGE",
///     cost_types={
///         "include_credit": False,
///         "include_discount": False,
///         "include_other_subscription": False,
///         "include_recurring": False,
///         "include_refund": False,
///         "include_subscription": True,
///         "include_support": False,
///         "include_tax": False,
///         "include_upfront": False,
///         "use_blended": False,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var savingsPlanUtilization = new Aws.Budgets.Budget("savings_plan_utilization", new()
///     {
///         BudgetType = "SAVINGS_PLANS_UTILIZATION",
///         LimitAmount = "100.0",
///         LimitUnit = "PERCENTAGE",
///         CostTypes = new Aws.Budgets.Inputs.BudgetCostTypesArgs
///         {
///             IncludeCredit = false,
///             IncludeDiscount = false,
///             IncludeOtherSubscription = false,
///             IncludeRecurring = false,
///             IncludeRefund = false,
///             IncludeSubscription = true,
///             IncludeSupport = false,
///             IncludeTax = false,
///             IncludeUpfront = false,
///             UseBlended = false,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/budgets"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := budgets.NewBudget(ctx, "savings_plan_utilization", &budgets.BudgetArgs{
/// 			BudgetType:  pulumi.String("SAVINGS_PLANS_UTILIZATION"),
/// 			LimitAmount: pulumi.String("100.0"),
/// 			LimitUnit:   pulumi.String("PERCENTAGE"),
/// 			CostTypes: &budgets.BudgetCostTypesArgs{
/// 				IncludeCredit:            pulumi.Bool(false),
/// 				IncludeDiscount:          pulumi.Bool(false),
/// 				IncludeOtherSubscription: pulumi.Bool(false),
/// 				IncludeRecurring:         pulumi.Bool(false),
/// 				IncludeRefund:            pulumi.Bool(false),
/// 				IncludeSubscription:      pulumi.Bool(true),
/// 				IncludeSupport:           pulumi.Bool(false),
/// 				IncludeTax:               pulumi.Bool(false),
/// 				IncludeUpfront:           pulumi.Bool(false),
/// 				UseBlended:               pulumi.Bool(false),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_budgets_budget" "savings_plan_utilization" {
///   budget_type  = "SAVINGS_PLANS_UTILIZATION"
///   limit_amount = "100.0"
///   limit_unit   = "PERCENTAGE"
///   cost_types = {
///     include_credit             = false
///     include_discount           = false
///     include_other_subscription = false
///     include_recurring          = false
///     include_refund             = false
///     include_subscription       = true
///     include_support            = false
///     include_tax                = false
///     include_upfront            = false
///     use_blended                = false
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.budgets.Budget;
/// import com.pulumi.aws.budgets.BudgetArgs;
/// import com.pulumi.aws.budgets.inputs.BudgetCostTypesArgs;
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
///         var savingsPlanUtilization = new Budget("savingsPlanUtilization", BudgetArgs.builder()
///             .budgetType("SAVINGS_PLANS_UTILIZATION")
///             .limitAmount("100.0")
///             .limitUnit("PERCENTAGE")
///             .costTypes(BudgetCostTypesArgs.builder()
///                 .includeCredit(false)
///                 .includeDiscount(false)
///                 .includeOtherSubscription(false)
///                 .includeRecurring(false)
///                 .includeRefund(false)
///                 .includeSubscription(true)
///                 .includeSupport(false)
///                 .includeTax(false)
///                 .includeUpfront(false)
///                 .useBlended(false)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   savingsPlanUtilization:
///     type: aws:budgets:Budget
///     name: savings_plan_utilization
///     properties:
///       budgetType: SAVINGS_PLANS_UTILIZATION
///       limitAmount: '100.0'
///       limitUnit: PERCENTAGE
///       costTypes:
///         includeCredit: false
///         includeDiscount: false
///         includeOtherSubscription: false
///         includeRecurring: false
///         includeRefund: false
///         includeSubscription: true
///         includeSupport: false
///         includeTax: false
///         includeUpfront: false
///         useBlended: false
/// ```
///
///
/// Create a RI Utilization Budget
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const riUtilization = new aws.budgets.Budget("ri_utilization", {
///     budgetType: "RI_UTILIZATION",
///     limitAmount: "100.0",
///     limitUnit: "PERCENTAGE",
///     costTypes: {
///         includeCredit: false,
///         includeDiscount: false,
///         includeOtherSubscription: false,
///         includeRecurring: false,
///         includeRefund: false,
///         includeSubscription: true,
///         includeSupport: false,
///         includeTax: false,
///         includeUpfront: false,
///         useBlended: false,
///     },
///     costFilters: [{
///         name: "Service",
///         values: ["Amazon Relational Database Service"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ri_utilization = aws.budgets.Budget("ri_utilization",
///     budget_type="RI_UTILIZATION",
///     limit_amount="100.0",
///     limit_unit="PERCENTAGE",
///     cost_types={
///         "include_credit": False,
///         "include_discount": False,
///         "include_other_subscription": False,
///         "include_recurring": False,
///         "include_refund": False,
///         "include_subscription": True,
///         "include_support": False,
///         "include_tax": False,
///         "include_upfront": False,
///         "use_blended": False,
///     },
///     cost_filters=[{
///         "name": "Service",
///         "values": ["Amazon Relational Database Service"],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var riUtilization = new Aws.Budgets.Budget("ri_utilization", new()
///     {
///         BudgetType = "RI_UTILIZATION",
///         LimitAmount = "100.0",
///         LimitUnit = "PERCENTAGE",
///         CostTypes = new Aws.Budgets.Inputs.BudgetCostTypesArgs
///         {
///             IncludeCredit = false,
///             IncludeDiscount = false,
///             IncludeOtherSubscription = false,
///             IncludeRecurring = false,
///             IncludeRefund = false,
///             IncludeSubscription = true,
///             IncludeSupport = false,
///             IncludeTax = false,
///             IncludeUpfront = false,
///             UseBlended = false,
///         },
///         CostFilters = new[]
///         {
///             new Aws.Budgets.Inputs.BudgetCostFilterArgs
///             {
///                 Name = "Service",
///                 Values = new[]
///                 {
///                     "Amazon Relational Database Service",
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/budgets"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := budgets.NewBudget(ctx, "ri_utilization", &budgets.BudgetArgs{
/// 			BudgetType:  pulumi.String("RI_UTILIZATION"),
/// 			LimitAmount: pulumi.String("100.0"),
/// 			LimitUnit:   pulumi.String("PERCENTAGE"),
/// 			CostTypes: &budgets.BudgetCostTypesArgs{
/// 				IncludeCredit:            pulumi.Bool(false),
/// 				IncludeDiscount:          pulumi.Bool(false),
/// 				IncludeOtherSubscription: pulumi.Bool(false),
/// 				IncludeRecurring:         pulumi.Bool(false),
/// 				IncludeRefund:            pulumi.Bool(false),
/// 				IncludeSubscription:      pulumi.Bool(true),
/// 				IncludeSupport:           pulumi.Bool(false),
/// 				IncludeTax:               pulumi.Bool(false),
/// 				IncludeUpfront:           pulumi.Bool(false),
/// 				UseBlended:               pulumi.Bool(false),
/// 			},
/// 			CostFilters: budgets.BudgetCostFilterArray{
/// 				&budgets.BudgetCostFilterArgs{
/// 					Name: pulumi.String("Service"),
/// 					Values: pulumi.StringArray{
/// 						pulumi.String("Amazon Relational Database Service"),
/// 					},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_budgets_budget" "ri_utilization" {
///   budget_type  = "RI_UTILIZATION"
///   limit_amount = "100.0"
///   limit_unit   = "PERCENTAGE"
///   cost_types = {
///     include_credit             = false
///     include_discount           = false
///     include_other_subscription = false
///     include_recurring          = false
///     include_refund             = false
///     include_subscription       = true
///     include_support            = false
///     include_tax                = false
///     include_upfront            = false
///     use_blended                = false
///   }
///   cost_filters {
///     name   = "Service"
///     values = ["Amazon Relational Database Service"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.budgets.Budget;
/// import com.pulumi.aws.budgets.BudgetArgs;
/// import com.pulumi.aws.budgets.inputs.BudgetCostTypesArgs;
/// import com.pulumi.aws.budgets.inputs.BudgetCostFilterArgs;
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
///         var riUtilization = new Budget("riUtilization", BudgetArgs.builder()
///             .budgetType("RI_UTILIZATION")
///             .limitAmount("100.0")
///             .limitUnit("PERCENTAGE")
///             .costTypes(BudgetCostTypesArgs.builder()
///                 .includeCredit(false)
///                 .includeDiscount(false)
///                 .includeOtherSubscription(false)
///                 .includeRecurring(false)
///                 .includeRefund(false)
///                 .includeSubscription(true)
///                 .includeSupport(false)
///                 .includeTax(false)
///                 .includeUpfront(false)
///                 .useBlended(false)
///                 .build())
///             .costFilters(BudgetCostFilterArgs.builder()
///                 .name("Service")
///                 .values("Amazon Relational Database Service")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   riUtilization:
///     type: aws:budgets:Budget
///     name: ri_utilization
///     properties:
///       budgetType: RI_UTILIZATION
///       limitAmount: '100.0'
///       limitUnit: PERCENTAGE
///       costTypes:
///         includeCredit: false
///         includeDiscount: false
///         includeOtherSubscription: false
///         includeRecurring: false
///         includeRefund: false
///         includeSubscription: true
///         includeSupport: false
///         includeTax: false
///         includeUpfront: false
///         useBlended: false
///       costFilters:
///         - name: Service
///           values:
///             - Amazon Relational Database Service
/// ```
///
///
/// Create a cost filter using resource tags
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const cost = new aws.budgets.Budget("cost", {costFilters: [{
///     name: "TagKeyValue",
///     values: [
///         "aws:createdBy$Pulumi",
///         "user:business-unit$human_resources",
///     ],
/// }]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// cost = aws.budgets.Budget("cost", cost_filters=[{
///     "name": "TagKeyValue",
///     "values": [
///         "aws:createdBy$Pulumi",
///         "user:business-unit$human_resources",
///     ],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cost = new Aws.Budgets.Budget("cost", new()
///     {
///         CostFilters = new[]
///         {
///             new Aws.Budgets.Inputs.BudgetCostFilterArgs
///             {
///                 Name = "TagKeyValue",
///                 Values = new[]
///                 {
///                     "aws:createdBy$Pulumi",
///                     "user:business-unit$human_resources",
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/budgets"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := budgets.NewBudget(ctx, "cost", &budgets.BudgetArgs{
/// 			CostFilters: budgets.BudgetCostFilterArray{
/// 				&budgets.BudgetCostFilterArgs{
/// 					Name: pulumi.String("TagKeyValue"),
/// 					Values: pulumi.StringArray{
/// 						pulumi.String("aws:createdBy$Pulumi"),
/// 						pulumi.String("user:business-unit$human_resources"),
/// 					},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_budgets_budget" "cost" {
///   cost_filters {
///     name   = "TagKeyValue"
///     values = ["aws:createdBy$Pulumi", "user:business-unit$human_resources"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.budgets.Budget;
/// import com.pulumi.aws.budgets.BudgetArgs;
/// import com.pulumi.aws.budgets.inputs.BudgetCostFilterArgs;
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
///         var cost = new Budget("cost", BudgetArgs.builder()
///             .costFilters(BudgetCostFilterArgs.builder()
///                 .name("TagKeyValue")
///                 .values(
///                     "aws:createdBy$Pulumi",
///                     "user:business-unit$human_resources")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cost:
///     type: aws:budgets:Budget
///     properties:
///       costFilters:
///         - name: TagKeyValue
///           values:
///             - aws:createdBy$Pulumi
///             - user:business-unit$human_resources
/// ```
///
///
/// Create a cost filter using resource tags, obtaining the tag value from a variable
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const cost = new aws.budgets.Budget("cost", {costFilters: [{
///     name: "TagKeyValue",
///     values: [`TagKey${"$"}${tagValue}`],
/// }]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// cost = aws.budgets.Budget("cost", cost_filters=[{
///     "name": "TagKeyValue",
///     "values": [f"TagKey{'$'}{tag_value}"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cost = new Aws.Budgets.Budget("cost", new()
///     {
///         CostFilters = new[]
///         {
///             new Aws.Budgets.Inputs.BudgetCostFilterArgs
///             {
///                 Name = "TagKeyValue",
///                 Values = new[]
///                 {
///                     $"TagKey{"$"}{tagValue}",
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/budgets"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := budgets.NewBudget(ctx, "cost", &budgets.BudgetArgs{
/// 			CostFilters: budgets.BudgetCostFilterArray{
/// 				&budgets.BudgetCostFilterArgs{
/// 					Name: pulumi.String("TagKeyValue"),
/// 					Values: pulumi.StringArray{
/// 						pulumi.Sprintf("TagKey%v%v", "$", tagValue),
/// 					},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_budgets_budget" "cost" {
///   cost_filters {
///     name   = "TagKeyValue"
///     values = ["TagKey${"$"}${tagValue}"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.budgets.Budget;
/// import com.pulumi.aws.budgets.BudgetArgs;
/// import com.pulumi.aws.budgets.inputs.BudgetCostFilterArgs;
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
///         var cost = new Budget("cost", BudgetArgs.builder()
///             .costFilters(BudgetCostFilterArgs.builder()
///                 .name("TagKeyValue")
///                 .values(String.format("TagKey%s%s", "$",tagValue))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cost:
///     type: aws:budgets:Budget
///     properties:
///       costFilters:
///         - name: TagKeyValue
///           values:
///             - TagKey$${tagValue}
/// ```
///
///
/// Create a budget with a simple dimension filter for unblended costs
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const simple = new aws.budgets.Budget("simple", {
///     name: "budget-ec2-filter",
///     budgetType: "COST",
///     limitAmount: "500",
///     limitUnit: "USD",
///     timeUnit: "MONTHLY",
///     metrics: "UnblendedCost",
///     filterExpression: {
///         dimensions: {
///             key: "SERVICE",
///             values: ["Amazon Elastic Compute Cloud - Compute"],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// simple = aws.budgets.Budget("simple",
///     name="budget-ec2-filter",
///     budget_type="COST",
///     limit_amount="500",
///     limit_unit="USD",
///     time_unit="MONTHLY",
///     metrics="UnblendedCost",
///     filter_expression={
///         "dimensions": {
///             "key": "SERVICE",
///             "values": ["Amazon Elastic Compute Cloud - Compute"],
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var simple = new Aws.Budgets.Budget("simple", new()
///     {
///         Name = "budget-ec2-filter",
///         BudgetType = "COST",
///         LimitAmount = "500",
///         LimitUnit = "USD",
///         TimeUnit = "MONTHLY",
///         Metrics = "UnblendedCost",
///         FilterExpression = new Aws.Budgets.Inputs.BudgetFilterExpressionArgs
///         {
///             Dimensions = new Aws.Budgets.Inputs.BudgetFilterExpressionDimensionsArgs
///             {
///                 Key = "SERVICE",
///                 Values = new[]
///                 {
///                     "Amazon Elastic Compute Cloud - Compute",
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/budgets"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := budgets.NewBudget(ctx, "simple", &budgets.BudgetArgs{
/// 			Name:        pulumi.String("budget-ec2-filter"),
/// 			BudgetType:  pulumi.String("COST"),
/// 			LimitAmount: pulumi.String("500"),
/// 			LimitUnit:   pulumi.String("USD"),
/// 			TimeUnit:    pulumi.String("MONTHLY"),
/// 			Metrics:     pulumi.String("UnblendedCost"),
/// 			FilterExpression: &budgets.BudgetFilterExpressionArgs{
/// 				Dimensions: &budgets.BudgetFilterExpressionDimensionsArgs{
/// 					Key: pulumi.String("SERVICE"),
/// 					Values: pulumi.StringArray{
/// 						pulumi.String("Amazon Elastic Compute Cloud - Compute"),
/// 					},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_budgets_budget" "simple" {
///   name         = "budget-ec2-filter"
///   budget_type  = "COST"
///   limit_amount = "500"
///   limit_unit   = "USD"
///   time_unit    = "MONTHLY"
///   metrics      = "UnblendedCost"
///   filter_expression = {
///     dimensions = {
///       key    = "SERVICE"
///       values = ["Amazon Elastic Compute Cloud - Compute"]
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.budgets.Budget;
/// import com.pulumi.aws.budgets.BudgetArgs;
/// import com.pulumi.aws.budgets.inputs.BudgetFilterExpressionArgs;
/// import com.pulumi.aws.budgets.inputs.BudgetFilterExpressionDimensionsArgs;
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
///         var simple = new Budget("simple", BudgetArgs.builder()
///             .name("budget-ec2-filter")
///             .budgetType("COST")
///             .limitAmount("500")
///             .limitUnit("USD")
///             .timeUnit("MONTHLY")
///             .metrics("UnblendedCost")
///             .filterExpression(BudgetFilterExpressionArgs.builder()
///                 .dimensions(BudgetFilterExpressionDimensionsArgs.builder()
///                     .key("SERVICE")
///                     .values("Amazon Elastic Compute Cloud - Compute")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   simple:
///     type: aws:budgets:Budget
///     properties:
///       name: budget-ec2-filter
///       budgetType: COST
///       limitAmount: '500'
///       limitUnit: USD
///       timeUnit: MONTHLY
///       metrics: UnblendedCost
///       filterExpression:
///         dimensions:
///           key: SERVICE
///           values:
///             - Amazon Elastic Compute Cloud - Compute
/// ```
///
///
/// Create a budget with AND filter for blended costs
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const andExample = new aws.budgets.Budget("and_example", {
///     name: "budget-and-filter",
///     budgetType: "COST",
///     limitAmount: "1200",
///     limitUnit: "USD",
///     timeUnit: "MONTHLY",
///     metrics: "BlendedCost",
///     filterExpression: {
///         ands: [
///             {
///                 dimensions: {
///                     key: "SERVICE",
///                     values: ["Amazon Elastic Compute Cloud - Compute"],
///                 },
///             },
///             {
///                 tags: {
///                     key: "Environment",
///                     values: ["Production"],
///                 },
///             },
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// and_example = aws.budgets.Budget("and_example",
///     name="budget-and-filter",
///     budget_type="COST",
///     limit_amount="1200",
///     limit_unit="USD",
///     time_unit="MONTHLY",
///     metrics="BlendedCost",
///     filter_expression={
///         "ands": [
///             {
///                 "dimensions": {
///                     "key": "SERVICE",
///                     "values": ["Amazon Elastic Compute Cloud - Compute"],
///                 },
///             },
///             {
///                 "tags": {
///                     "key": "Environment",
///                     "values": ["Production"],
///                 },
///             },
///         ],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var andExample = new Aws.Budgets.Budget("and_example", new()
///     {
///         Name = "budget-and-filter",
///         BudgetType = "COST",
///         LimitAmount = "1200",
///         LimitUnit = "USD",
///         TimeUnit = "MONTHLY",
///         Metrics = "BlendedCost",
///         FilterExpression = new Aws.Budgets.Inputs.BudgetFilterExpressionArgs
///         {
///             Ands = new[]
///             {
///                 new Aws.Budgets.Inputs.BudgetFilterExpressionAndArgs
///                 {
///                     Dimensions = new Aws.Budgets.Inputs.BudgetFilterExpressionAndDimensionsArgs
///                     {
///                         Key = "SERVICE",
///                         Values = new[]
///                         {
///                             "Amazon Elastic Compute Cloud - Compute",
///                         },
///                     },
///                 },
///                 new Aws.Budgets.Inputs.BudgetFilterExpressionAndArgs
///                 {
///                     Tags = new Aws.Budgets.Inputs.BudgetFilterExpressionAndTagsArgs
///                     {
///                         Key = "Environment",
///                         Values = new[]
///                         {
///                             "Production",
///                         },
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/budgets"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := budgets.NewBudget(ctx, "and_example", &budgets.BudgetArgs{
/// 			Name:        pulumi.String("budget-and-filter"),
/// 			BudgetType:  pulumi.String("COST"),
/// 			LimitAmount: pulumi.String("1200"),
/// 			LimitUnit:   pulumi.String("USD"),
/// 			TimeUnit:    pulumi.String("MONTHLY"),
/// 			Metrics:     pulumi.String("BlendedCost"),
/// 			FilterExpression: &budgets.BudgetFilterExpressionArgs{
/// 				Ands: budgets.BudgetFilterExpressionAndArray{
/// 					&budgets.BudgetFilterExpressionAndArgs{
/// 						Dimensions: &budgets.BudgetFilterExpressionAndDimensionsArgs{
/// 							Key: pulumi.String("SERVICE"),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("Amazon Elastic Compute Cloud - Compute"),
/// 							},
/// 						},
/// 					},
/// 					&budgets.BudgetFilterExpressionAndArgs{
/// 						Tags: &budgets.BudgetFilterExpressionAndTagsArgs{
/// 							Key: pulumi.String("Environment"),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("Production"),
/// 							},
/// 						},
/// 					},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_budgets_budget" "and_example" {
///   name         = "budget-and-filter"
///   budget_type  = "COST"
///   limit_amount = "1200"
///   limit_unit   = "USD"
///   time_unit    = "MONTHLY"
///   metrics      = "BlendedCost"
///   filter_expression = {
///     ands = [{
///       "dimensions" = {
///         "key"    = "SERVICE"
///         "values" = ["Amazon Elastic Compute Cloud - Compute"]
///       }
///       }, {
///       "tags" = {
///         "key"    = "Environment"
///         "values" = ["Production"]
///       }
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.budgets.Budget;
/// import com.pulumi.aws.budgets.BudgetArgs;
/// import com.pulumi.aws.budgets.inputs.BudgetFilterExpressionArgs;
/// import com.pulumi.aws.budgets.inputs.BudgetFilterExpressionAndArgs;
/// import com.pulumi.aws.budgets.inputs.BudgetFilterExpressionAndDimensionsArgs;
/// import com.pulumi.aws.budgets.inputs.BudgetFilterExpressionAndTagsArgs;
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
///         var andExample = new Budget("andExample", BudgetArgs.builder()
///             .name("budget-and-filter")
///             .budgetType("COST")
///             .limitAmount("1200")
///             .limitUnit("USD")
///             .timeUnit("MONTHLY")
///             .metrics("BlendedCost")
///             .filterExpression(BudgetFilterExpressionArgs.builder()
///                 .ands(
///                     BudgetFilterExpressionAndArgs.builder()
///                         .dimensions(BudgetFilterExpressionAndDimensionsArgs.builder()
///                             .key("SERVICE")
///                             .values("Amazon Elastic Compute Cloud - Compute")
///                             .build())
///                         .build(),
///                     BudgetFilterExpressionAndArgs.builder()
///                         .tags(BudgetFilterExpressionAndTagsArgs.builder()
///                             .key("Environment")
///                             .values("Production")
///                             .build())
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   andExample:
///     type: aws:budgets:Budget
///     name: and_example
///     properties:
///       name: budget-and-filter
///       budgetType: COST
///       limitAmount: '1200'
///       limitUnit: USD
///       timeUnit: MONTHLY
///       metrics: BlendedCost
///       filterExpression:
///         ands:
///           - dimensions:
///               key: SERVICE
///               values:
///                 - Amazon Elastic Compute Cloud - Compute
///           - tags:
///               key: Environment
///               values:
///                 - Production
/// ```
///
///
/// Create a budget with OR filter for amortized costs
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const orExample = new aws.budgets.Budget("or_example", {
///     name: "budget-or-filter",
///     budgetType: "COST",
///     limitAmount: "2000",
///     limitUnit: "USD",
///     timeUnit: "MONTHLY",
///     metrics: "AmortizedCost",
///     filterExpression: {
///         ors: [
///             {
///                 dimensions: {
///                     key: "SERVICE",
///                     values: ["Amazon Elastic Compute Cloud - Compute"],
///                 },
///             },
///             {
///                 dimensions: {
///                     key: "SERVICE",
///                     values: ["Amazon Relational Database Service"],
///                 },
///             },
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// or_example = aws.budgets.Budget("or_example",
///     name="budget-or-filter",
///     budget_type="COST",
///     limit_amount="2000",
///     limit_unit="USD",
///     time_unit="MONTHLY",
///     metrics="AmortizedCost",
///     filter_expression={
///         "ors": [
///             {
///                 "dimensions": {
///                     "key": "SERVICE",
///                     "values": ["Amazon Elastic Compute Cloud - Compute"],
///                 },
///             },
///             {
///                 "dimensions": {
///                     "key": "SERVICE",
///                     "values": ["Amazon Relational Database Service"],
///                 },
///             },
///         ],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var orExample = new Aws.Budgets.Budget("or_example", new()
///     {
///         Name = "budget-or-filter",
///         BudgetType = "COST",
///         LimitAmount = "2000",
///         LimitUnit = "USD",
///         TimeUnit = "MONTHLY",
///         Metrics = "AmortizedCost",
///         FilterExpression = new Aws.Budgets.Inputs.BudgetFilterExpressionArgs
///         {
///             Ors = new[]
///             {
///                 new Aws.Budgets.Inputs.BudgetFilterExpressionOrArgs
///                 {
///                     Dimensions = new Aws.Budgets.Inputs.BudgetFilterExpressionOrDimensionsArgs
///                     {
///                         Key = "SERVICE",
///                         Values = new[]
///                         {
///                             "Amazon Elastic Compute Cloud - Compute",
///                         },
///                     },
///                 },
///                 new Aws.Budgets.Inputs.BudgetFilterExpressionOrArgs
///                 {
///                     Dimensions = new Aws.Budgets.Inputs.BudgetFilterExpressionOrDimensionsArgs
///                     {
///                         Key = "SERVICE",
///                         Values = new[]
///                         {
///                             "Amazon Relational Database Service",
///                         },
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/budgets"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := budgets.NewBudget(ctx, "or_example", &budgets.BudgetArgs{
/// 			Name:        pulumi.String("budget-or-filter"),
/// 			BudgetType:  pulumi.String("COST"),
/// 			LimitAmount: pulumi.String("2000"),
/// 			LimitUnit:   pulumi.String("USD"),
/// 			TimeUnit:    pulumi.String("MONTHLY"),
/// 			Metrics:     pulumi.String("AmortizedCost"),
/// 			FilterExpression: &budgets.BudgetFilterExpressionArgs{
/// 				Ors: budgets.BudgetFilterExpressionOrArray{
/// 					&budgets.BudgetFilterExpressionOrArgs{
/// 						Dimensions: &budgets.BudgetFilterExpressionOrDimensionsArgs{
/// 							Key: pulumi.String("SERVICE"),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("Amazon Elastic Compute Cloud - Compute"),
/// 							},
/// 						},
/// 					},
/// 					&budgets.BudgetFilterExpressionOrArgs{
/// 						Dimensions: &budgets.BudgetFilterExpressionOrDimensionsArgs{
/// 							Key: pulumi.String("SERVICE"),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("Amazon Relational Database Service"),
/// 							},
/// 						},
/// 					},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_budgets_budget" "or_example" {
///   name         = "budget-or-filter"
///   budget_type  = "COST"
///   limit_amount = "2000"
///   limit_unit   = "USD"
///   time_unit    = "MONTHLY"
///   metrics      = "AmortizedCost"
///   filter_expression = {
///     ors = [{
///       "dimensions" = {
///         "key"    = "SERVICE"
///         "values" = ["Amazon Elastic Compute Cloud - Compute"]
///       }
///       }, {
///       "dimensions" = {
///         "key"    = "SERVICE"
///         "values" = ["Amazon Relational Database Service"]
///       }
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.budgets.Budget;
/// import com.pulumi.aws.budgets.BudgetArgs;
/// import com.pulumi.aws.budgets.inputs.BudgetFilterExpressionArgs;
/// import com.pulumi.aws.budgets.inputs.BudgetFilterExpressionOrArgs;
/// import com.pulumi.aws.budgets.inputs.BudgetFilterExpressionOrDimensionsArgs;
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
///         var orExample = new Budget("orExample", BudgetArgs.builder()
///             .name("budget-or-filter")
///             .budgetType("COST")
///             .limitAmount("2000")
///             .limitUnit("USD")
///             .timeUnit("MONTHLY")
///             .metrics("AmortizedCost")
///             .filterExpression(BudgetFilterExpressionArgs.builder()
///                 .ors(
///                     BudgetFilterExpressionOrArgs.builder()
///                         .dimensions(BudgetFilterExpressionOrDimensionsArgs.builder()
///                             .key("SERVICE")
///                             .values("Amazon Elastic Compute Cloud - Compute")
///                             .build())
///                         .build(),
///                     BudgetFilterExpressionOrArgs.builder()
///                         .dimensions(BudgetFilterExpressionOrDimensionsArgs.builder()
///                             .key("SERVICE")
///                             .values("Amazon Relational Database Service")
///                             .build())
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   orExample:
///     type: aws:budgets:Budget
///     name: or_example
///     properties:
///       name: budget-or-filter
///       budgetType: COST
///       limitAmount: '2000'
///       limitUnit: USD
///       timeUnit: MONTHLY
///       metrics: AmortizedCost
///       filterExpression:
///         ors:
///           - dimensions:
///               key: SERVICE
///               values:
///                 - Amazon Elastic Compute Cloud - Compute
///           - dimensions:
///               key: SERVICE
///               values:
///                 - Amazon Relational Database Service
/// ```
///
///
/// Create a budget with NOT filter for net unblended costs
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const notExample = new aws.budgets.Budget("not_example", {
///     name: "budget-not-filter",
///     budgetType: "COST",
///     limitAmount: "1000",
///     limitUnit: "USD",
///     timeUnit: "MONTHLY",
///     metrics: "NetUnblendedCost",
///     filterExpression: {
///         not: {
///             dimensions: {
///                 key: "REGION",
///                 values: ["us-west-2"],
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// not_example = aws.budgets.Budget("not_example",
///     name="budget-not-filter",
///     budget_type="COST",
///     limit_amount="1000",
///     limit_unit="USD",
///     time_unit="MONTHLY",
///     metrics="NetUnblendedCost",
///     filter_expression={
///         "not_": {
///             "dimensions": {
///                 "key": "REGION",
///                 "values": ["us-west-2"],
///             },
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var notExample = new Aws.Budgets.Budget("not_example", new()
///     {
///         Name = "budget-not-filter",
///         BudgetType = "COST",
///         LimitAmount = "1000",
///         LimitUnit = "USD",
///         TimeUnit = "MONTHLY",
///         Metrics = "NetUnblendedCost",
///         FilterExpression = new Aws.Budgets.Inputs.BudgetFilterExpressionArgs
///         {
///             Not = new Aws.Budgets.Inputs.BudgetFilterExpressionNotArgs
///             {
///                 Dimensions = new Aws.Budgets.Inputs.BudgetFilterExpressionNotDimensionsArgs
///                 {
///                     Key = "REGION",
///                     Values = new[]
///                     {
///                         "us-west-2",
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/budgets"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := budgets.NewBudget(ctx, "not_example", &budgets.BudgetArgs{
/// 			Name:        pulumi.String("budget-not-filter"),
/// 			BudgetType:  pulumi.String("COST"),
/// 			LimitAmount: pulumi.String("1000"),
/// 			LimitUnit:   pulumi.String("USD"),
/// 			TimeUnit:    pulumi.String("MONTHLY"),
/// 			Metrics:     pulumi.String("NetUnblendedCost"),
/// 			FilterExpression: &budgets.BudgetFilterExpressionArgs{
/// 				Not: &budgets.BudgetFilterExpressionNotArgs{
/// 					Dimensions: &budgets.BudgetFilterExpressionNotDimensionsArgs{
/// 						Key: pulumi.String("REGION"),
/// 						Values: pulumi.StringArray{
/// 							pulumi.String("us-west-2"),
/// 						},
/// 					},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_budgets_budget" "not_example" {
///   name         = "budget-not-filter"
///   budget_type  = "COST"
///   limit_amount = "1000"
///   limit_unit   = "USD"
///   time_unit    = "MONTHLY"
///   metrics      = "NetUnblendedCost"
///   filter_expression = {
///     not = {
///       dimensions = {
///         key    = "REGION"
///         values = ["us-west-2"]
///       }
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.budgets.Budget;
/// import com.pulumi.aws.budgets.BudgetArgs;
/// import com.pulumi.aws.budgets.inputs.BudgetFilterExpressionArgs;
/// import com.pulumi.aws.budgets.inputs.BudgetFilterExpressionNotArgs;
/// import com.pulumi.aws.budgets.inputs.BudgetFilterExpressionNotDimensionsArgs;
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
///         var notExample = new Budget("notExample", BudgetArgs.builder()
///             .name("budget-not-filter")
///             .budgetType("COST")
///             .limitAmount("1000")
///             .limitUnit("USD")
///             .timeUnit("MONTHLY")
///             .metrics("NetUnblendedCost")
///             .filterExpression(BudgetFilterExpressionArgs.builder()
///                 .not(BudgetFilterExpressionNotArgs.builder()
///                     .dimensions(BudgetFilterExpressionNotDimensionsArgs.builder()
///                         .key("REGION")
///                         .values("us-west-2")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   notExample:
///     type: aws:budgets:Budget
///     name: not_example
///     properties:
///       name: budget-not-filter
///       budgetType: COST
///       limitAmount: '1000'
///       limitUnit: USD
///       timeUnit: MONTHLY
///       metrics: NetUnblendedCost
///       filterExpression:
///         not:
///           dimensions:
///             key: REGION
///             values:
///               - us-west-2
/// ```
///
///
/// Create a budget with a compound filter for net amortized costs
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const compoundExample = new aws.budgets.Budget("compound_example", {
///     name: "budget-compound-filter",
///     budgetType: "COST",
///     limitAmount: "1500",
///     limitUnit: "USD",
///     timeUnit: "MONTHLY",
///     metrics: "NetAmortizedCost",
///     filterExpression: {
///         ors: [
///             {
///                 ands: [
///                     {
///                         dimensions: {
///                             key: "SERVICE",
///                             values: ["Amazon Elastic Compute Cloud - Compute"],
///                         },
///                     },
///                     {
///                         tags: {
///                             key: "Environment",
///                             values: ["production"],
///                         },
///                     },
///                     {
///                         costCategories: {
///                             key: "Environment",
///                             values: ["production"],
///                         },
///                     },
///                 ],
///             },
///             {
///                 not: {
///                     dimensions: {
///                         key: "REGION",
///                         values: ["us-west-2"],
///                     },
///                 },
///             },
///         ],
///     },
///     notifications: [{
///         comparisonOperator: "GREATER_THAN",
///         threshold: 100,
///         thresholdType: "PERCENTAGE",
///         notificationType: "FORECASTED",
///         subscriberEmailAddresses: ["test@example.com"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// compound_example = aws.budgets.Budget("compound_example",
///     name="budget-compound-filter",
///     budget_type="COST",
///     limit_amount="1500",
///     limit_unit="USD",
///     time_unit="MONTHLY",
///     metrics="NetAmortizedCost",
///     filter_expression={
///         "ors": [
///             {
///                 "ands": [
///                     {
///                         "dimensions": {
///                             "key": "SERVICE",
///                             "values": ["Amazon Elastic Compute Cloud - Compute"],
///                         },
///                     },
///                     {
///                         "tags": {
///                             "key": "Environment",
///                             "values": ["production"],
///                         },
///                     },
///                     {
///                         "cost_categories": {
///                             "key": "Environment",
///                             "values": ["production"],
///                         },
///                     },
///                 ],
///             },
///             {
///                 "not_": {
///                     "dimensions": {
///                         "key": "REGION",
///                         "values": ["us-west-2"],
///                     },
///                 },
///             },
///         ],
///     },
///     notifications=[{
///         "comparison_operator": "GREATER_THAN",
///         "threshold": float(100),
///         "threshold_type": "PERCENTAGE",
///         "notification_type": "FORECASTED",
///         "subscriber_email_addresses": ["test@example.com"],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var compoundExample = new Aws.Budgets.Budget("compound_example", new()
///     {
///         Name = "budget-compound-filter",
///         BudgetType = "COST",
///         LimitAmount = "1500",
///         LimitUnit = "USD",
///         TimeUnit = "MONTHLY",
///         Metrics = "NetAmortizedCost",
///         FilterExpression = new Aws.Budgets.Inputs.BudgetFilterExpressionArgs
///         {
///             Ors = new[]
///             {
///                 new Aws.Budgets.Inputs.BudgetFilterExpressionOrArgs
///                 {
///                     Ands = new[]
///                     {
///                         new Aws.Budgets.Inputs.BudgetFilterExpressionOrAndArgs
///                         {
///                             Dimensions = new Aws.Budgets.Inputs.BudgetFilterExpressionOrAndDimensionsArgs
///                             {
///                                 Key = "SERVICE",
///                                 Values = new[]
///                                 {
///                                     "Amazon Elastic Compute Cloud - Compute",
///                                 },
///                             },
///                         },
///                         new Aws.Budgets.Inputs.BudgetFilterExpressionOrAndArgs
///                         {
///                             Tags = new Aws.Budgets.Inputs.BudgetFilterExpressionOrAndTagsArgs
///                             {
///                                 Key = "Environment",
///                                 Values = new[]
///                                 {
///                                     "production",
///                                 },
///                             },
///                         },
///                         new Aws.Budgets.Inputs.BudgetFilterExpressionOrAndArgs
///                         {
///                             CostCategories = new Aws.Budgets.Inputs.BudgetFilterExpressionOrAndCostCategoriesArgs
///                             {
///                                 Key = "Environment",
///                                 Values = new[]
///                                 {
///                                     "production",
///                                 },
///                             },
///                         },
///                     },
///                 },
///                 new Aws.Budgets.Inputs.BudgetFilterExpressionOrArgs
///                 {
///                     Not = new Aws.Budgets.Inputs.BudgetFilterExpressionOrNotArgs
///                     {
///                         Dimensions = new Aws.Budgets.Inputs.BudgetFilterExpressionOrNotDimensionsArgs
///                         {
///                             Key = "REGION",
///                             Values = new[]
///                             {
///                                 "us-west-2",
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///         Notifications = new[]
///         {
///             new Aws.Budgets.Inputs.BudgetNotificationArgs
///             {
///                 ComparisonOperator = "GREATER_THAN",
///                 Threshold = 100,
///                 ThresholdType = "PERCENTAGE",
///                 NotificationType = "FORECASTED",
///                 SubscriberEmailAddresses = new[]
///                 {
///                     "test@example.com",
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/budgets"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := budgets.NewBudget(ctx, "compound_example", &budgets.BudgetArgs{
/// 			Name:        pulumi.String("budget-compound-filter"),
/// 			BudgetType:  pulumi.String("COST"),
/// 			LimitAmount: pulumi.String("1500"),
/// 			LimitUnit:   pulumi.String("USD"),
/// 			TimeUnit:    pulumi.String("MONTHLY"),
/// 			Metrics:     pulumi.String("NetAmortizedCost"),
/// 			FilterExpression: &budgets.BudgetFilterExpressionArgs{
/// 				Ors: budgets.BudgetFilterExpressionOrArray{
/// 					&budgets.BudgetFilterExpressionOrArgs{
/// 						Ands: budgets.BudgetFilterExpressionOrAndArray{
/// 							&budgets.BudgetFilterExpressionOrAndArgs{
/// 								Dimensions: &budgets.BudgetFilterExpressionOrAndDimensionsArgs{
/// 									Key: pulumi.String("SERVICE"),
/// 									Values: pulumi.StringArray{
/// 										pulumi.String("Amazon Elastic Compute Cloud - Compute"),
/// 									},
/// 								},
/// 							},
/// 							&budgets.BudgetFilterExpressionOrAndArgs{
/// 								Tags: &budgets.BudgetFilterExpressionOrAndTagsArgs{
/// 									Key: pulumi.String("Environment"),
/// 									Values: pulumi.StringArray{
/// 										pulumi.String("production"),
/// 									},
/// 								},
/// 							},
/// 							&budgets.BudgetFilterExpressionOrAndArgs{
/// 								CostCategories: &budgets.BudgetFilterExpressionOrAndCostCategoriesArgs{
/// 									Key: pulumi.String("Environment"),
/// 									Values: pulumi.StringArray{
/// 										pulumi.String("production"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 					&budgets.BudgetFilterExpressionOrArgs{
/// 						Not: &budgets.BudgetFilterExpressionOrNotArgs{
/// 							Dimensions: &budgets.BudgetFilterExpressionOrNotDimensionsArgs{
/// 								Key: pulumi.String("REGION"),
/// 								Values: pulumi.StringArray{
/// 									pulumi.String("us-west-2"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Notifications: budgets.BudgetNotificationArray{
/// 				&budgets.BudgetNotificationArgs{
/// 					ComparisonOperator: pulumi.String("GREATER_THAN"),
/// 					Threshold:          pulumi.Float64(100),
/// 					ThresholdType:      pulumi.String("PERCENTAGE"),
/// 					NotificationType:   pulumi.String("FORECASTED"),
/// 					SubscriberEmailAddresses: pulumi.StringArray{
/// 						pulumi.String("test@example.com"),
/// 					},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_budgets_budget" "compound_example" {
///   name         = "budget-compound-filter"
///   budget_type  = "COST"
///   limit_amount = "1500"
///   limit_unit   = "USD"
///   time_unit    = "MONTHLY"
///   metrics      = "NetAmortizedCost"
///   filter_expression = {
///     ors = [{
///       "ands" = [{
///         "dimensions" = {
///           "key"    = "SERVICE"
///           "values" = ["Amazon Elastic Compute Cloud - Compute"]
///         }
///         }, {
///         "tags" = {
///           "key"    = "Environment"
///           "values" = ["production"]
///         }
///         }, {
///         "costCategories" = {
///           "key"    = "Environment"
///           "values" = ["production"]
///         }
///       }]
///       }, {
///       "not" = {
///         "dimensions" = {
///           "key"    = "REGION"
///           "values" = ["us-west-2"]
///         }
///       }
///     }]
///   }
///   notifications {
///     comparison_operator        = "GREATER_THAN"
///     threshold                  = 100
///     threshold_type             = "PERCENTAGE"
///     notification_type          = "FORECASTED"
///     subscriber_email_addresses = ["test@example.com"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.budgets.Budget;
/// import com.pulumi.aws.budgets.BudgetArgs;
/// import com.pulumi.aws.budgets.inputs.BudgetFilterExpressionArgs;
/// import com.pulumi.aws.budgets.inputs.BudgetFilterExpressionOrArgs;
/// import com.pulumi.aws.budgets.inputs.BudgetFilterExpressionOrAndArgs;
/// import com.pulumi.aws.budgets.inputs.BudgetFilterExpressionOrAndDimensionsArgs;
/// import com.pulumi.aws.budgets.inputs.BudgetFilterExpressionOrAndTagsArgs;
/// import com.pulumi.aws.budgets.inputs.BudgetFilterExpressionOrAndCostCategoriesArgs;
/// import com.pulumi.aws.budgets.inputs.BudgetFilterExpressionOrNotArgs;
/// import com.pulumi.aws.budgets.inputs.BudgetFilterExpressionOrNotDimensionsArgs;
/// import com.pulumi.aws.budgets.inputs.BudgetNotificationArgs;
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
///         var compoundExample = new Budget("compoundExample", BudgetArgs.builder()
///             .name("budget-compound-filter")
///             .budgetType("COST")
///             .limitAmount("1500")
///             .limitUnit("USD")
///             .timeUnit("MONTHLY")
///             .metrics("NetAmortizedCost")
///             .filterExpression(BudgetFilterExpressionArgs.builder()
///                 .ors(
///                     BudgetFilterExpressionOrArgs.builder()
///                         .ands(
///                             BudgetFilterExpressionOrAndArgs.builder()
///                                 .dimensions(BudgetFilterExpressionOrAndDimensionsArgs.builder()
///                                     .key("SERVICE")
///                                     .values("Amazon Elastic Compute Cloud - Compute")
///                                     .build())
///                                 .build(),
///                             BudgetFilterExpressionOrAndArgs.builder()
///                                 .tags(BudgetFilterExpressionOrAndTagsArgs.builder()
///                                     .key("Environment")
///                                     .values("production")
///                                     .build())
///                                 .build(),
///                             BudgetFilterExpressionOrAndArgs.builder()
///                                 .costCategories(BudgetFilterExpressionOrAndCostCategoriesArgs.builder()
///                                     .key("Environment")
///                                     .values("production")
///                                     .build())
///                                 .build())
///                         .build(),
///                     BudgetFilterExpressionOrArgs.builder()
///                         .not(BudgetFilterExpressionOrNotArgs.builder()
///                             .dimensions(BudgetFilterExpressionOrNotDimensionsArgs.builder()
///                                 .key("REGION")
///                                 .values("us-west-2")
///                                 .build())
///                             .build())
///                         .build())
///                 .build())
///             .notifications(BudgetNotificationArgs.builder()
///                 .comparisonOperator("GREATER_THAN")
///                 .threshold(100.0)
///                 .thresholdType("PERCENTAGE")
///                 .notificationType("FORECASTED")
///                 .subscriberEmailAddresses("test@example.com")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   compoundExample:
///     type: aws:budgets:Budget
///     name: compound_example
///     properties:
///       name: budget-compound-filter
///       budgetType: COST
///       limitAmount: '1500'
///       limitUnit: USD
///       timeUnit: MONTHLY
///       metrics: NetAmortizedCost
///       filterExpression:
///         ors:
///           - ands:
///               - dimensions:
///                   key: SERVICE
///                   values:
///                     - Amazon Elastic Compute Cloud - Compute
///               - tags:
///                   key: Environment
///                   values:
///                     - production
///               - costCategories:
///                   key: Environment
///                   values:
///                     - production
///           - not:
///               dimensions:
///                 key: REGION
///                 values:
///                   - us-west-2
///       notifications:
///         - comparisonOperator: GREATER_THAN
///           threshold: 100
///           thresholdType: PERCENTAGE
///           notificationType: FORECASTED
///           subscriberEmailAddresses:
///             - test@example.com
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import budgets using `AccountID:BudgetName`. For example:
///
/// ```sh
/// $ pulumi import aws:budgets/budget:Budget myBudget 123456789012:myBudget
/// ```
class Budget extends pulumi.CustomResource {
  /// The ID of the target account for budget. Will use current user's accountId by default if omitted.
  late final pulumi.Output<String> accountId;
  /// The ARN of the budget.
  late final pulumi.Output<String> arn;
  /// Object containing AutoAdjustData which determines the budget amount for an auto-adjusting budget.
  late final pulumi.Output<BudgetAutoAdjustData?> autoAdjustData;
  /// ARN of the billing view.
  late final pulumi.Output<String?> billingViewArn;
  /// Whether this budget tracks monetary cost or usage.
  late final pulumi.Output<String> budgetType;
  /// A list of CostFilter name/values pair to apply to budget. Conflicts with `filterExpression`.
  late final pulumi.Output<List<Map<String, dynamic>>> costFilters;
  /// Object containing CostTypes The types of cost included in a budget, such as tax and subscriptions.
  late final pulumi.Output<BudgetCostTypes> costTypes;
  /// Object containing Filter Expression to apply to budget. Conflicts with `costFilter` and requires `metrics`.
  late final pulumi.Output<BudgetFilterExpression?> filterExpression;
  /// The amount of cost or usage being measured for a budget.
  late final pulumi.Output<String> limitAmount;
  /// The unit of measurement used for the budget forecast, actual spend, or budget threshold, such as dollars or GB. See [Spend](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/data-type-spend.html) documentation.
  late final pulumi.Output<String> limitUnit;
  /// List containing definition for how the budget data is aggregated. Conflicts with `costTypes` and requires `filterExpression`.
  late final pulumi.Output<String?> metrics;
  /// The name of a budget. Unique within accounts.
  late final pulumi.Output<String> name;
  /// The prefix of the name of a budget. Unique within accounts.
  late final pulumi.Output<String> namePrefix;
  /// Object containing Budget Notifications. Can be used multiple times to define more than one budget notification.
  late final pulumi.Output<List<Map<String, dynamic>>?> notifications;
  /// Object containing Planned Budget Limits. Can be used multiple times to plan more than one budget limit. See [PlannedBudgetLimits](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_Budget.html#awscostmanagement-Type-budgets_Budget-PlannedBudgetLimits) documentation.
  late final pulumi.Output<List<Map<String, dynamic>>?> plannedLimits;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The end of the time period covered by the budget. There are no restrictions on the end date. Format: `2017-01-01_12:00`.
  late final pulumi.Output<String?> timePeriodEnd;
  /// The start of the time period covered by the budget. If you don't specify a start date, AWS defaults to the start of your chosen time period. The start date must come before the end date. Format: `2017-01-01_12:00`.
  ///
  /// For more detailed documentation about each argument, refer to the [AWS official
  /// documentation](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/data-type-budget.html).
  late final pulumi.Output<String> timePeriodStart;
  /// The length of time until a budget resets the actual and forecasted spend. Valid values: `MONTHLY`, `QUARTERLY`, `ANNUALLY`, and `DAILY`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> timeUnit;

  /// Creates a new [Budget].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Budget]. {@macro pulumi_budgets_budget_budget_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Budget(
    String name, {
    BudgetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:budgets/budget:Budget',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    arn = registerOutput<String>('arn');
    autoAdjustData = registerOutput<BudgetAutoAdjustData?>('autoAdjustData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BudgetAutoAdjustData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    billingViewArn = registerOutput<String?>('billingViewArn');
    budgetType = registerOutput<String>('budgetType');
    costFilters = registerOutput<List<Map<String, dynamic>>>('costFilters');
    costTypes = registerOutput<BudgetCostTypes>('costTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BudgetCostTypes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    filterExpression = registerOutput<BudgetFilterExpression?>('filterExpression', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BudgetFilterExpression.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    limitAmount = registerOutput<String>('limitAmount');
    limitUnit = registerOutput<String>('limitUnit');
    metrics = registerOutput<String?>('metrics');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    notifications = registerOutput<List<Map<String, dynamic>>?>('notifications');
    plannedLimits = registerOutput<List<Map<String, dynamic>>?>('plannedLimits');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timePeriodEnd = registerOutput<String?>('timePeriodEnd');
    timePeriodStart = registerOutput<String>('timePeriodStart');
    timeUnit = registerOutput<String>('timeUnit');
  }

  /// Gets an existing [Budget] resource's state with the given [name] and [id].
  static Budget get(
    String name,
    pulumi.Input<String> id, {
    BudgetState? state,
  }) {
    return Budget._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Budget._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:budgets/budget:Budget',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    arn = registerOutput<String>('arn');
    autoAdjustData = registerOutput<BudgetAutoAdjustData?>('autoAdjustData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BudgetAutoAdjustData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    billingViewArn = registerOutput<String?>('billingViewArn');
    budgetType = registerOutput<String>('budgetType');
    costFilters = registerOutput<List<Map<String, dynamic>>>('costFilters');
    costTypes = registerOutput<BudgetCostTypes>('costTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BudgetCostTypes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    filterExpression = registerOutput<BudgetFilterExpression?>('filterExpression', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BudgetFilterExpression.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    limitAmount = registerOutput<String>('limitAmount');
    limitUnit = registerOutput<String>('limitUnit');
    metrics = registerOutput<String?>('metrics');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    notifications = registerOutput<List<Map<String, dynamic>>?>('notifications');
    plannedLimits = registerOutput<List<Map<String, dynamic>>?>('plannedLimits');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timePeriodEnd = registerOutput<String?>('timePeriodEnd');
    timePeriodStart = registerOutput<String>('timePeriodStart');
    timeUnit = registerOutput<String>('timeUnit');
  }
}
