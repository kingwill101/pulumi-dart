import 'package:pulumi/pulumi.dart';
import '../budget_auto_adjust_data/budget_auto_adjust_data.dart';
import '../budget_cost_filter/budget_cost_filter.dart';
import '../budget_cost_types/budget_cost_types.dart';
import '../budget_filter_expression/budget_filter_expression.dart';
import '../budget_notification/budget_notification.dart';
import '../budget_planned_limit/budget_planned_limit.dart';
import 'budget_args.dart';

/// Provides a budgets budget resource. Budgets use the cost visualization provided by Cost Explorer to show you the status of your budgets, to provide forecasts of your estimated costs, and to track your AWS usage, including your free tier usage.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const ec2 = new aws.budgets.Budget("ec2", {
/// name: "budget-ec2-monthly",
/// budgetType: "COST",
/// limitAmount: "1200",
/// limitUnit: "USD",
/// timePeriodEnd: "2087-06-15_00:00",
/// timePeriodStart: "2017-07-01_00:00",
/// timeUnit: "MONTHLY",
/// costFilters: [{
/// name: "Service",
/// values: ["Amazon Elastic Compute Cloud - Compute"],
/// }],
/// notifications: [{
/// comparisonOperator: "GREATER_THAN",
/// threshold: 100,
/// thresholdType: "PERCENTAGE",
/// notificationType: "FORECASTED",
/// subscriberEmailAddresses: ["test@example.com"],
/// }],
/// tags: {
/// Tag1: "Value1",
/// Tag2: "Value2",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ec2 = aws.budgets.Budget("ec2",
/// name="budget-ec2-monthly",
/// budget_type="COST",
/// limit_amount="1200",
/// limit_unit="USD",
/// time_period_end="2087-06-15_00:00",
/// time_period_start="2017-07-01_00:00",
/// time_unit="MONTHLY",
/// cost_filters=[{
/// "name": "Service",
/// "values": ["Amazon Elastic Compute Cloud - Compute"],
/// }],
/// notifications=[{
/// "comparison_operator": "GREATER_THAN",
/// "threshold": 100,
/// "threshold_type": "PERCENTAGE",
/// "notification_type": "FORECASTED",
/// "subscriber_email_addresses": ["test@example.com"],
/// }],
/// tags={
/// "Tag1": "Value1",
/// "Tag2": "Value2",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var ec2 = new Aws.Budgets.Budget("ec2", new()
/// {
/// Name = "budget-ec2-monthly",
/// BudgetType = "COST",
/// LimitAmount = "1200",
/// LimitUnit = "USD",
/// TimePeriodEnd = "2087-06-15_00:00",
/// TimePeriodStart = "2017-07-01_00:00",
/// TimeUnit = "MONTHLY",
/// CostFilters = new[]
/// {
/// new Aws.Budgets.Inputs.BudgetCostFilterArgs
/// {
/// Name = "Service",
/// Values = new[]
/// {
/// "Amazon Elastic Compute Cloud - Compute",
/// },
/// },
/// },
/// Notifications = new[]
/// {
/// new Aws.Budgets.Inputs.BudgetNotificationArgs
/// {
/// ComparisonOperator = "GREATER_THAN",
/// Threshold = 100,
/// ThresholdType = "PERCENTAGE",
/// NotificationType = "FORECASTED",
/// SubscriberEmailAddresses = new[]
/// {
/// "test@example.com",
/// },
/// },
/// },
/// Tags =
/// {
/// { "Tag1", "Value1" },
/// { "Tag2", "Value2" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/budgets"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := budgets.NewBudget(ctx, "ec2", &budgets.BudgetArgs{
/// Name:            pulumi.String("budget-ec2-monthly"),
/// BudgetType:      pulumi.String("COST"),
/// LimitAmount:     pulumi.String("1200"),
/// LimitUnit:       pulumi.String("USD"),
/// TimePeriodEnd:   pulumi.String("2087-06-15_00:00"),
/// TimePeriodStart: pulumi.String("2017-07-01_00:00"),
/// TimeUnit:        pulumi.String("MONTHLY"),
/// CostFilters: budgets.BudgetCostFilterArray{
/// &budgets.BudgetCostFilterArgs{
/// Name: pulumi.String("Service"),
/// Values: pulumi.StringArray{
/// pulumi.String("Amazon Elastic Compute Cloud - Compute"),
/// },
/// },
/// },
/// Notifications: budgets.BudgetNotificationArray{
/// &budgets.BudgetNotificationArgs{
/// ComparisonOperator: pulumi.String("GREATER_THAN"),
/// Threshold:          pulumi.Float64(100),
/// ThresholdType:      pulumi.String("PERCENTAGE"),
/// NotificationType:   pulumi.String("FORECASTED"),
/// SubscriberEmailAddresses: pulumi.StringArray{
/// pulumi.String("test@example.com"),
/// },
/// },
/// },
/// Tags: pulumi.StringMap{
/// "Tag1": pulumi.String("Value1"),
/// "Tag2": pulumi.String("Value2"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var ec2 = new Budget("ec2", BudgetArgs.builder()
/// .name("budget-ec2-monthly")
/// .budgetType("COST")
/// .limitAmount("1200")
/// .limitUnit("USD")
/// .timePeriodEnd("2087-06-15_00:00")
/// .timePeriodStart("2017-07-01_00:00")
/// .timeUnit("MONTHLY")
/// .costFilters(BudgetCostFilterArgs.builder()
/// .name("Service")
/// .values("Amazon Elastic Compute Cloud - Compute")
/// .build())
/// .notifications(BudgetNotificationArgs.builder()
/// .comparisonOperator("GREATER_THAN")
/// .threshold(100.0)
/// .thresholdType("PERCENTAGE")
/// .notificationType("FORECASTED")
/// .subscriberEmailAddresses("test@example.com")
/// .build())
/// .tags(Map.ofEntries(
/// Map.entry("Tag1", "Value1"),
/// Map.entry("Tag2", "Value2")
/// ))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// ec2:
/// type: aws:budgets:Budget
/// properties:
/// name: budget-ec2-monthly
/// budgetType: COST
/// limitAmount: '1200'
/// limitUnit: USD
/// timePeriodEnd: 2087-06-15_00:00
/// timePeriodStart: 2017-07-01_00:00
/// timeUnit: MONTHLY
/// costFilters:
/// - name: Service
/// values:
/// - Amazon Elastic Compute Cloud - Compute
/// notifications:
/// - comparisonOperator: GREATER_THAN
/// threshold: 100
/// thresholdType: PERCENTAGE
/// notificationType: FORECASTED
/// subscriberEmailAddresses:
/// - test@example.com
/// tags:
/// Tag1: Value1
/// Tag2: Value2
/// ```
/// <!--End PulumiCodeChooser -->
///
/// Create a budget for *$100*.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const cost = new aws.budgets.Budget("cost", {
/// budgetType: "COST",
/// limitAmount: "100",
/// limitUnit: "USD",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// cost = aws.budgets.Budget("cost",
/// budget_type="COST",
/// limit_amount="100",
/// limit_unit="USD")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var cost = new Aws.Budgets.Budget("cost", new()
/// {
/// BudgetType = "COST",
/// LimitAmount = "100",
/// LimitUnit = "USD",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/budgets"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := budgets.NewBudget(ctx, "cost", &budgets.BudgetArgs{
/// BudgetType:  pulumi.String("COST"),
/// LimitAmount: pulumi.String("100"),
/// LimitUnit:   pulumi.String("USD"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var cost = new Budget("cost", BudgetArgs.builder()
/// .budgetType("COST")
/// .limitAmount("100")
/// .limitUnit("USD")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// cost:
/// type: aws:budgets:Budget
/// properties:
/// budgetType: COST
/// limitAmount: '100'
/// limitUnit: USD
/// ```
/// <!--End PulumiCodeChooser -->
///
/// Create a budget with planned budget limits.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const cost = new aws.budgets.Budget("cost", {plannedLimits: [
/// {
/// startTime: "2017-07-01_00:00",
/// amount: "100",
/// unit: "USD",
/// },
/// {
/// startTime: "2017-08-01_00:00",
/// amount: "200",
/// unit: "USD",
/// },
/// ]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// cost = aws.budgets.Budget("cost", planned_limits=[
/// {
/// "start_time": "2017-07-01_00:00",
/// "amount": "100",
/// "unit": "USD",
/// },
/// {
/// "start_time": "2017-08-01_00:00",
/// "amount": "200",
/// "unit": "USD",
/// },
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
/// var cost = new Aws.Budgets.Budget("cost", new()
/// {
/// PlannedLimits = new[]
/// {
/// new Aws.Budgets.Inputs.BudgetPlannedLimitArgs
/// {
/// StartTime = "2017-07-01_00:00",
/// Amount = "100",
/// Unit = "USD",
/// },
/// new Aws.Budgets.Inputs.BudgetPlannedLimitArgs
/// {
/// StartTime = "2017-08-01_00:00",
/// Amount = "200",
/// Unit = "USD",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/budgets"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := budgets.NewBudget(ctx, "cost", &budgets.BudgetArgs{
/// PlannedLimits: budgets.BudgetPlannedLimitArray{
/// &budgets.BudgetPlannedLimitArgs{
/// StartTime: pulumi.String("2017-07-01_00:00"),
/// Amount:    pulumi.String("100"),
/// Unit:      pulumi.String("USD"),
/// },
/// &budgets.BudgetPlannedLimitArgs{
/// StartTime: pulumi.String("2017-08-01_00:00"),
/// Amount:    pulumi.String("200"),
/// Unit:      pulumi.String("USD"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var cost = new Budget("cost", BudgetArgs.builder()
/// .plannedLimits(
/// BudgetPlannedLimitArgs.builder()
/// .startTime("2017-07-01_00:00")
/// .amount("100")
/// .unit("USD")
/// .build(),
/// BudgetPlannedLimitArgs.builder()
/// .startTime("2017-08-01_00:00")
/// .amount("200")
/// .unit("USD")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// cost:
/// type: aws:budgets:Budget
/// properties:
/// plannedLimits:
/// - startTime: 2017-07-01_00:00
/// amount: '100'
/// unit: USD
/// - startTime: 2017-08-01_00:00
/// amount: '200'
/// unit: USD
/// ```
/// <!--End PulumiCodeChooser -->
///
/// Create a budget for s3 with a limit of *3 GB* of storage.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const s3 = new aws.budgets.Budget("s3", {
/// budgetType: "USAGE",
/// limitAmount: "3",
/// limitUnit: "GB",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// s3 = aws.budgets.Budget("s3",
/// budget_type="USAGE",
/// limit_amount="3",
/// limit_unit="GB")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var s3 = new Aws.Budgets.Budget("s3", new()
/// {
/// BudgetType = "USAGE",
/// LimitAmount = "3",
/// LimitUnit = "GB",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/budgets"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := budgets.NewBudget(ctx, "s3", &budgets.BudgetArgs{
/// BudgetType:  pulumi.String("USAGE"),
/// LimitAmount: pulumi.String("3"),
/// LimitUnit:   pulumi.String("GB"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var s3 = new Budget("s3", BudgetArgs.builder()
/// .budgetType("USAGE")
/// .limitAmount("3")
/// .limitUnit("GB")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// s3:
/// type: aws:budgets:Budget
/// properties:
/// budgetType: USAGE
/// limitAmount: '3'
/// limitUnit: GB
/// ```
/// <!--End PulumiCodeChooser -->
///
/// Create a Savings Plan Utilization Budget
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const savingsPlanUtilization = new aws.budgets.Budget("savings_plan_utilization", {
/// budgetType: "SAVINGS_PLANS_UTILIZATION",
/// limitAmount: "100.0",
/// limitUnit: "PERCENTAGE",
/// costTypes: {
/// includeCredit: false,
/// includeDiscount: false,
/// includeOtherSubscription: false,
/// includeRecurring: false,
/// includeRefund: false,
/// includeSubscription: true,
/// includeSupport: false,
/// includeTax: false,
/// includeUpfront: false,
/// useBlended: false,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// savings_plan_utilization = aws.budgets.Budget("savings_plan_utilization",
/// budget_type="SAVINGS_PLANS_UTILIZATION",
/// limit_amount="100.0",
/// limit_unit="PERCENTAGE",
/// cost_types={
/// "include_credit": False,
/// "include_discount": False,
/// "include_other_subscription": False,
/// "include_recurring": False,
/// "include_refund": False,
/// "include_subscription": True,
/// "include_support": False,
/// "include_tax": False,
/// "include_upfront": False,
/// "use_blended": False,
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var savingsPlanUtilization = new Aws.Budgets.Budget("savings_plan_utilization", new()
/// {
/// BudgetType = "SAVINGS_PLANS_UTILIZATION",
/// LimitAmount = "100.0",
/// LimitUnit = "PERCENTAGE",
/// CostTypes = new Aws.Budgets.Inputs.BudgetCostTypesArgs
/// {
/// IncludeCredit = false,
/// IncludeDiscount = false,
/// IncludeOtherSubscription = false,
/// IncludeRecurring = false,
/// IncludeRefund = false,
/// IncludeSubscription = true,
/// IncludeSupport = false,
/// IncludeTax = false,
/// IncludeUpfront = false,
/// UseBlended = false,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/budgets"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := budgets.NewBudget(ctx, "savings_plan_utilization", &budgets.BudgetArgs{
/// BudgetType:  pulumi.String("SAVINGS_PLANS_UTILIZATION"),
/// LimitAmount: pulumi.String("100.0"),
/// LimitUnit:   pulumi.String("PERCENTAGE"),
/// CostTypes: &budgets.BudgetCostTypesArgs{
/// IncludeCredit:            pulumi.Bool(false),
/// IncludeDiscount:          pulumi.Bool(false),
/// IncludeOtherSubscription: pulumi.Bool(false),
/// IncludeRecurring:         pulumi.Bool(false),
/// IncludeRefund:            pulumi.Bool(false),
/// IncludeSubscription:      pulumi.Bool(true),
/// IncludeSupport:           pulumi.Bool(false),
/// IncludeTax:               pulumi.Bool(false),
/// IncludeUpfront:           pulumi.Bool(false),
/// UseBlended:               pulumi.Bool(false),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var savingsPlanUtilization = new Budget("savingsPlanUtilization", BudgetArgs.builder()
/// .budgetType("SAVINGS_PLANS_UTILIZATION")
/// .limitAmount("100.0")
/// .limitUnit("PERCENTAGE")
/// .costTypes(BudgetCostTypesArgs.builder()
/// .includeCredit(false)
/// .includeDiscount(false)
/// .includeOtherSubscription(false)
/// .includeRecurring(false)
/// .includeRefund(false)
/// .includeSubscription(true)
/// .includeSupport(false)
/// .includeTax(false)
/// .includeUpfront(false)
/// .useBlended(false)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// savingsPlanUtilization:
/// type: aws:budgets:Budget
/// name: savings_plan_utilization
/// properties:
/// budgetType: SAVINGS_PLANS_UTILIZATION
/// limitAmount: '100.0'
/// limitUnit: PERCENTAGE
/// costTypes:
/// includeCredit: false
/// includeDiscount: false
/// includeOtherSubscription: false
/// includeRecurring: false
/// includeRefund: false
/// includeSubscription: true
/// includeSupport: false
/// includeTax: false
/// includeUpfront: false
/// useBlended: false
/// ```
/// <!--End PulumiCodeChooser -->
///
/// Create a RI Utilization Budget
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const riUtilization = new aws.budgets.Budget("ri_utilization", {
/// budgetType: "RI_UTILIZATION",
/// limitAmount: "100.0",
/// limitUnit: "PERCENTAGE",
/// costTypes: {
/// includeCredit: false,
/// includeDiscount: false,
/// includeOtherSubscription: false,
/// includeRecurring: false,
/// includeRefund: false,
/// includeSubscription: true,
/// includeSupport: false,
/// includeTax: false,
/// includeUpfront: false,
/// useBlended: false,
/// },
/// costFilters: [{
/// name: "Service",
/// values: ["Amazon Relational Database Service"],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ri_utilization = aws.budgets.Budget("ri_utilization",
/// budget_type="RI_UTILIZATION",
/// limit_amount="100.0",
/// limit_unit="PERCENTAGE",
/// cost_types={
/// "include_credit": False,
/// "include_discount": False,
/// "include_other_subscription": False,
/// "include_recurring": False,
/// "include_refund": False,
/// "include_subscription": True,
/// "include_support": False,
/// "include_tax": False,
/// "include_upfront": False,
/// "use_blended": False,
/// },
/// cost_filters=[{
/// "name": "Service",
/// "values": ["Amazon Relational Database Service"],
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
/// var riUtilization = new Aws.Budgets.Budget("ri_utilization", new()
/// {
/// BudgetType = "RI_UTILIZATION",
/// LimitAmount = "100.0",
/// LimitUnit = "PERCENTAGE",
/// CostTypes = new Aws.Budgets.Inputs.BudgetCostTypesArgs
/// {
/// IncludeCredit = false,
/// IncludeDiscount = false,
/// IncludeOtherSubscription = false,
/// IncludeRecurring = false,
/// IncludeRefund = false,
/// IncludeSubscription = true,
/// IncludeSupport = false,
/// IncludeTax = false,
/// IncludeUpfront = false,
/// UseBlended = false,
/// },
/// CostFilters = new[]
/// {
/// new Aws.Budgets.Inputs.BudgetCostFilterArgs
/// {
/// Name = "Service",
/// Values = new[]
/// {
/// "Amazon Relational Database Service",
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/budgets"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := budgets.NewBudget(ctx, "ri_utilization", &budgets.BudgetArgs{
/// BudgetType:  pulumi.String("RI_UTILIZATION"),
/// LimitAmount: pulumi.String("100.0"),
/// LimitUnit:   pulumi.String("PERCENTAGE"),
/// CostTypes: &budgets.BudgetCostTypesArgs{
/// IncludeCredit:            pulumi.Bool(false),
/// IncludeDiscount:          pulumi.Bool(false),
/// IncludeOtherSubscription: pulumi.Bool(false),
/// IncludeRecurring:         pulumi.Bool(false),
/// IncludeRefund:            pulumi.Bool(false),
/// IncludeSubscription:      pulumi.Bool(true),
/// IncludeSupport:           pulumi.Bool(false),
/// IncludeTax:               pulumi.Bool(false),
/// IncludeUpfront:           pulumi.Bool(false),
/// UseBlended:               pulumi.Bool(false),
/// },
/// CostFilters: budgets.BudgetCostFilterArray{
/// &budgets.BudgetCostFilterArgs{
/// Name: pulumi.String("Service"),
/// Values: pulumi.StringArray{
/// pulumi.String("Amazon Relational Database Service"),
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var riUtilization = new Budget("riUtilization", BudgetArgs.builder()
/// .budgetType("RI_UTILIZATION")
/// .limitAmount("100.0")
/// .limitUnit("PERCENTAGE")
/// .costTypes(BudgetCostTypesArgs.builder()
/// .includeCredit(false)
/// .includeDiscount(false)
/// .includeOtherSubscription(false)
/// .includeRecurring(false)
/// .includeRefund(false)
/// .includeSubscription(true)
/// .includeSupport(false)
/// .includeTax(false)
/// .includeUpfront(false)
/// .useBlended(false)
/// .build())
/// .costFilters(BudgetCostFilterArgs.builder()
/// .name("Service")
/// .values("Amazon Relational Database Service")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// riUtilization:
/// type: aws:budgets:Budget
/// name: ri_utilization
/// properties:
/// budgetType: RI_UTILIZATION
/// limitAmount: '100.0'
/// limitUnit: PERCENTAGE
/// costTypes:
/// includeCredit: false
/// includeDiscount: false
/// includeOtherSubscription: false
/// includeRecurring: false
/// includeRefund: false
/// includeSubscription: true
/// includeSupport: false
/// includeTax: false
/// includeUpfront: false
/// useBlended: false
/// costFilters:
/// - name: Service
/// values:
/// - Amazon Relational Database Service
/// ```
/// <!--End PulumiCodeChooser -->
///
/// Create a cost filter using resource tags
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const cost = new aws.budgets.Budget("cost", {costFilters: [{
/// name: "TagKeyValue",
/// values: [
/// "aws:createdBy$Pulumi",
/// "user:business-unit$human_resources",
/// ],
/// }]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// cost = aws.budgets.Budget("cost", cost_filters=[{
/// "name": "TagKeyValue",
/// "values": [
/// "aws:createdBy$Pulumi",
/// "user:business-unit$human_resources",
/// ],
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
/// var cost = new Aws.Budgets.Budget("cost", new()
/// {
/// CostFilters = new[]
/// {
/// new Aws.Budgets.Inputs.BudgetCostFilterArgs
/// {
/// Name = "TagKeyValue",
/// Values = new[]
/// {
/// "aws:createdBy$Pulumi",
/// "user:business-unit$human_resources",
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/budgets"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := budgets.NewBudget(ctx, "cost", &budgets.BudgetArgs{
/// CostFilters: budgets.BudgetCostFilterArray{
/// &budgets.BudgetCostFilterArgs{
/// Name: pulumi.String("TagKeyValue"),
/// Values: pulumi.StringArray{
/// pulumi.String("aws:createdBy$Pulumi"),
/// pulumi.String("user:business-unit$human_resources"),
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var cost = new Budget("cost", BudgetArgs.builder()
/// .costFilters(BudgetCostFilterArgs.builder()
/// .name("TagKeyValue")
/// .values(
/// "aws:createdBy$Pulumi",
/// "user:business-unit$human_resources")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// cost:
/// type: aws:budgets:Budget
/// properties:
/// costFilters:
/// - name: TagKeyValue
/// values:
/// - aws:createdBy$Pulumi
/// - user:business-unit$human_resources
/// ```
/// <!--End PulumiCodeChooser -->
///
/// Create a cost filter using resource tags, obtaining the tag value from a variable
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const cost = new aws.budgets.Budget("cost", {costFilters: [{
/// name: "TagKeyValue",
/// values: [`TagKey${"$"}${tagValue}`],
/// }]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// cost = aws.budgets.Budget("cost", cost_filters=[{
/// "name": "TagKeyValue",
/// "values": [f"TagKey{'$'}{tag_value}"],
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
/// var cost = new Aws.Budgets.Budget("cost", new()
/// {
/// CostFilters = new[]
/// {
/// new Aws.Budgets.Inputs.BudgetCostFilterArgs
/// {
/// Name = "TagKeyValue",
/// Values = new[]
/// {
/// $"TagKey{"$"}{tagValue}",
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/budgets"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := budgets.NewBudget(ctx, "cost", &budgets.BudgetArgs{
/// CostFilters: budgets.BudgetCostFilterArray{
/// &budgets.BudgetCostFilterArgs{
/// Name: pulumi.String("TagKeyValue"),
/// Values: pulumi.StringArray{
/// pulumi.Sprintf("TagKey%v%v", "$", tagValue),
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var cost = new Budget("cost", BudgetArgs.builder()
/// .costFilters(BudgetCostFilterArgs.builder()
/// .name("TagKeyValue")
/// .values(String.format("TagKey%s%s", "$",tagValue))
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// cost:
/// type: aws:budgets:Budget
/// properties:
/// costFilters:
/// - name: TagKeyValue
/// values:
/// - TagKey$${tagValue}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// Create a budget with a simple dimension filter
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const simple = new aws.budgets.Budget("simple", {
/// name: "budget-ec2-filter",
/// budgetType: "COST",
/// limitAmount: "500",
/// limitUnit: "USD",
/// timeUnit: "MONTHLY",
/// filterExpression: {
/// dimensions: {
/// key: "SERVICE",
/// values: ["Amazon Elastic Compute Cloud - Compute"],
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// simple = aws.budgets.Budget("simple",
/// name="budget-ec2-filter",
/// budget_type="COST",
/// limit_amount="500",
/// limit_unit="USD",
/// time_unit="MONTHLY",
/// filter_expression={
/// "dimensions": {
/// "key": "SERVICE",
/// "values": ["Amazon Elastic Compute Cloud - Compute"],
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var simple = new Aws.Budgets.Budget("simple", new()
/// {
/// Name = "budget-ec2-filter",
/// BudgetType = "COST",
/// LimitAmount = "500",
/// LimitUnit = "USD",
/// TimeUnit = "MONTHLY",
/// FilterExpression = new Aws.Budgets.Inputs.BudgetFilterExpressionArgs
/// {
/// Dimensions = new Aws.Budgets.Inputs.BudgetFilterExpressionDimensionsArgs
/// {
/// Key = "SERVICE",
/// Values = new[]
/// {
/// "Amazon Elastic Compute Cloud - Compute",
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/budgets"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := budgets.NewBudget(ctx, "simple", &budgets.BudgetArgs{
/// Name:        pulumi.String("budget-ec2-filter"),
/// BudgetType:  pulumi.String("COST"),
/// LimitAmount: pulumi.String("500"),
/// LimitUnit:   pulumi.String("USD"),
/// TimeUnit:    pulumi.String("MONTHLY"),
/// FilterExpression: &budgets.BudgetFilterExpressionArgs{
/// Dimensions: &budgets.BudgetFilterExpressionDimensionsArgs{
/// Key: pulumi.String("SERVICE"),
/// Values: pulumi.StringArray{
/// pulumi.String("Amazon Elastic Compute Cloud - Compute"),
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var simple = new Budget("simple", BudgetArgs.builder()
/// .name("budget-ec2-filter")
/// .budgetType("COST")
/// .limitAmount("500")
/// .limitUnit("USD")
/// .timeUnit("MONTHLY")
/// .filterExpression(BudgetFilterExpressionArgs.builder()
/// .dimensions(BudgetFilterExpressionDimensionsArgs.builder()
/// .key("SERVICE")
/// .values("Amazon Elastic Compute Cloud - Compute")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// simple:
/// type: aws:budgets:Budget
/// properties:
/// name: budget-ec2-filter
/// budgetType: COST
/// limitAmount: '500'
/// limitUnit: USD
/// timeUnit: MONTHLY
/// filterExpression:
/// dimensions:
/// key: SERVICE
/// values:
/// - Amazon Elastic Compute Cloud - Compute
/// ```
/// <!--End PulumiCodeChooser -->
///
/// Create a budget with AND filter
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const andExample = new aws.budgets.Budget("and_example", {
/// name: "budget-and-filter",
/// budgetType: "COST",
/// limitAmount: "1200",
/// limitUnit: "USD",
/// timeUnit: "MONTHLY",
/// filterExpression: {
/// ands: [
/// {
/// dimensions: {
/// key: "SERVICE",
/// values: ["Amazon Elastic Compute Cloud - Compute"],
/// },
/// },
/// {
/// tags: {
/// key: "Environment",
/// values: ["Production"],
/// },
/// },
/// ],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// and_example = aws.budgets.Budget("and_example",
/// name="budget-and-filter",
/// budget_type="COST",
/// limit_amount="1200",
/// limit_unit="USD",
/// time_unit="MONTHLY",
/// filter_expression={
/// "ands": [
/// {
/// "dimensions": {
/// "key": "SERVICE",
/// "values": ["Amazon Elastic Compute Cloud - Compute"],
/// },
/// },
/// {
/// "tags": {
/// "key": "Environment",
/// "values": ["Production"],
/// },
/// },
/// ],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var andExample = new Aws.Budgets.Budget("and_example", new()
/// {
/// Name = "budget-and-filter",
/// BudgetType = "COST",
/// LimitAmount = "1200",
/// LimitUnit = "USD",
/// TimeUnit = "MONTHLY",
/// FilterExpression = new Aws.Budgets.Inputs.BudgetFilterExpressionArgs
/// {
/// Ands = new[]
/// {
/// new Aws.Budgets.Inputs.BudgetFilterExpressionAndArgs
/// {
/// Dimensions = new Aws.Budgets.Inputs.BudgetFilterExpressionAndDimensionsArgs
/// {
/// Key = "SERVICE",
/// Values = new[]
/// {
/// "Amazon Elastic Compute Cloud - Compute",
/// },
/// },
/// },
/// new Aws.Budgets.Inputs.BudgetFilterExpressionAndArgs
/// {
/// Tags = new Aws.Budgets.Inputs.BudgetFilterExpressionAndTagsArgs
/// {
/// Key = "Environment",
/// Values = new[]
/// {
/// "Production",
/// },
/// },
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/budgets"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := budgets.NewBudget(ctx, "and_example", &budgets.BudgetArgs{
/// Name:        pulumi.String("budget-and-filter"),
/// BudgetType:  pulumi.String("COST"),
/// LimitAmount: pulumi.String("1200"),
/// LimitUnit:   pulumi.String("USD"),
/// TimeUnit:    pulumi.String("MONTHLY"),
/// FilterExpression: &budgets.BudgetFilterExpressionArgs{
/// Ands: budgets.BudgetFilterExpressionAndArray{
/// &budgets.BudgetFilterExpressionAndArgs{
/// Dimensions: &budgets.BudgetFilterExpressionAndDimensionsArgs{
/// Key: pulumi.String("SERVICE"),
/// Values: pulumi.StringArray{
/// pulumi.String("Amazon Elastic Compute Cloud - Compute"),
/// },
/// },
/// },
/// &budgets.BudgetFilterExpressionAndArgs{
/// Tags: &budgets.BudgetFilterExpressionAndTagsArgs{
/// Key: pulumi.String("Environment"),
/// Values: pulumi.StringArray{
/// pulumi.String("Production"),
/// },
/// },
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var andExample = new Budget("andExample", BudgetArgs.builder()
/// .name("budget-and-filter")
/// .budgetType("COST")
/// .limitAmount("1200")
/// .limitUnit("USD")
/// .timeUnit("MONTHLY")
/// .filterExpression(BudgetFilterExpressionArgs.builder()
/// .ands(
/// BudgetFilterExpressionAndArgs.builder()
/// .dimensions(BudgetFilterExpressionAndDimensionsArgs.builder()
/// .key("SERVICE")
/// .values("Amazon Elastic Compute Cloud - Compute")
/// .build())
/// .build(),
/// BudgetFilterExpressionAndArgs.builder()
/// .tags(BudgetFilterExpressionAndTagsArgs.builder()
/// .key("Environment")
/// .values("Production")
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// andExample:
/// type: aws:budgets:Budget
/// name: and_example
/// properties:
/// name: budget-and-filter
/// budgetType: COST
/// limitAmount: '1200'
/// limitUnit: USD
/// timeUnit: MONTHLY
/// filterExpression:
/// ands:
/// - dimensions:
/// key: SERVICE
/// values:
/// - Amazon Elastic Compute Cloud - Compute
/// - tags:
/// key: Environment
/// values:
/// - Production
/// ```
/// <!--End PulumiCodeChooser -->
///
/// Create a budget with OR filter
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const orExample = new aws.budgets.Budget("or_example", {
/// name: "budget-or-filter",
/// budgetType: "COST",
/// limitAmount: "2000",
/// limitUnit: "USD",
/// timeUnit: "MONTHLY",
/// filterExpression: {
/// ors: [
/// {
/// dimensions: {
/// key: "SERVICE",
/// values: ["Amazon Elastic Compute Cloud - Compute"],
/// },
/// },
/// {
/// dimensions: {
/// key: "SERVICE",
/// values: ["Amazon Relational Database Service"],
/// },
/// },
/// ],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// or_example = aws.budgets.Budget("or_example",
/// name="budget-or-filter",
/// budget_type="COST",
/// limit_amount="2000",
/// limit_unit="USD",
/// time_unit="MONTHLY",
/// filter_expression={
/// "ors": [
/// {
/// "dimensions": {
/// "key": "SERVICE",
/// "values": ["Amazon Elastic Compute Cloud - Compute"],
/// },
/// },
/// {
/// "dimensions": {
/// "key": "SERVICE",
/// "values": ["Amazon Relational Database Service"],
/// },
/// },
/// ],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var orExample = new Aws.Budgets.Budget("or_example", new()
/// {
/// Name = "budget-or-filter",
/// BudgetType = "COST",
/// LimitAmount = "2000",
/// LimitUnit = "USD",
/// TimeUnit = "MONTHLY",
/// FilterExpression = new Aws.Budgets.Inputs.BudgetFilterExpressionArgs
/// {
/// Ors = new[]
/// {
/// new Aws.Budgets.Inputs.BudgetFilterExpressionOrArgs
/// {
/// Dimensions = new Aws.Budgets.Inputs.BudgetFilterExpressionOrDimensionsArgs
/// {
/// Key = "SERVICE",
/// Values = new[]
/// {
/// "Amazon Elastic Compute Cloud - Compute",
/// },
/// },
/// },
/// new Aws.Budgets.Inputs.BudgetFilterExpressionOrArgs
/// {
/// Dimensions = new Aws.Budgets.Inputs.BudgetFilterExpressionOrDimensionsArgs
/// {
/// Key = "SERVICE",
/// Values = new[]
/// {
/// "Amazon Relational Database Service",
/// },
/// },
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/budgets"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := budgets.NewBudget(ctx, "or_example", &budgets.BudgetArgs{
/// Name:        pulumi.String("budget-or-filter"),
/// BudgetType:  pulumi.String("COST"),
/// LimitAmount: pulumi.String("2000"),
/// LimitUnit:   pulumi.String("USD"),
/// TimeUnit:    pulumi.String("MONTHLY"),
/// FilterExpression: &budgets.BudgetFilterExpressionArgs{
/// Ors: budgets.BudgetFilterExpressionOrArray{
/// &budgets.BudgetFilterExpressionOrArgs{
/// Dimensions: &budgets.BudgetFilterExpressionOrDimensionsArgs{
/// Key: pulumi.String("SERVICE"),
/// Values: pulumi.StringArray{
/// pulumi.String("Amazon Elastic Compute Cloud - Compute"),
/// },
/// },
/// },
/// &budgets.BudgetFilterExpressionOrArgs{
/// Dimensions: &budgets.BudgetFilterExpressionOrDimensionsArgs{
/// Key: pulumi.String("SERVICE"),
/// Values: pulumi.StringArray{
/// pulumi.String("Amazon Relational Database Service"),
/// },
/// },
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var orExample = new Budget("orExample", BudgetArgs.builder()
/// .name("budget-or-filter")
/// .budgetType("COST")
/// .limitAmount("2000")
/// .limitUnit("USD")
/// .timeUnit("MONTHLY")
/// .filterExpression(BudgetFilterExpressionArgs.builder()
/// .ors(
/// BudgetFilterExpressionOrArgs.builder()
/// .dimensions(BudgetFilterExpressionOrDimensionsArgs.builder()
/// .key("SERVICE")
/// .values("Amazon Elastic Compute Cloud - Compute")
/// .build())
/// .build(),
/// BudgetFilterExpressionOrArgs.builder()
/// .dimensions(BudgetFilterExpressionOrDimensionsArgs.builder()
/// .key("SERVICE")
/// .values("Amazon Relational Database Service")
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// orExample:
/// type: aws:budgets:Budget
/// name: or_example
/// properties:
/// name: budget-or-filter
/// budgetType: COST
/// limitAmount: '2000'
/// limitUnit: USD
/// timeUnit: MONTHLY
/// filterExpression:
/// ors:
/// - dimensions:
/// key: SERVICE
/// values:
/// - Amazon Elastic Compute Cloud - Compute
/// - dimensions:
/// key: SERVICE
/// values:
/// - Amazon Relational Database Service
/// ```
/// <!--End PulumiCodeChooser -->
///
/// Create a budget with NOT filter
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const notExample = new aws.budgets.Budget("not_example", {
/// name: "budget-not-filter",
/// budgetType: "COST",
/// limitAmount: "1000",
/// limitUnit: "USD",
/// timeUnit: "MONTHLY",
/// filterExpression: {
/// not: {
/// dimensions: {
/// key: "REGION",
/// values: ["us-west-2"],
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// not_example = aws.budgets.Budget("not_example",
/// name="budget-not-filter",
/// budget_type="COST",
/// limit_amount="1000",
/// limit_unit="USD",
/// time_unit="MONTHLY",
/// filter_expression={
/// "not_": {
/// "dimensions": {
/// "key": "REGION",
/// "values": ["us-west-2"],
/// },
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var notExample = new Aws.Budgets.Budget("not_example", new()
/// {
/// Name = "budget-not-filter",
/// BudgetType = "COST",
/// LimitAmount = "1000",
/// LimitUnit = "USD",
/// TimeUnit = "MONTHLY",
/// FilterExpression = new Aws.Budgets.Inputs.BudgetFilterExpressionArgs
/// {
/// Not = new Aws.Budgets.Inputs.BudgetFilterExpressionNotArgs
/// {
/// Dimensions = new Aws.Budgets.Inputs.BudgetFilterExpressionNotDimensionsArgs
/// {
/// Key = "REGION",
/// Values = new[]
/// {
/// "us-west-2",
/// },
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/budgets"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := budgets.NewBudget(ctx, "not_example", &budgets.BudgetArgs{
/// Name:        pulumi.String("budget-not-filter"),
/// BudgetType:  pulumi.String("COST"),
/// LimitAmount: pulumi.String("1000"),
/// LimitUnit:   pulumi.String("USD"),
/// TimeUnit:    pulumi.String("MONTHLY"),
/// FilterExpression: &budgets.BudgetFilterExpressionArgs{
/// Not: &budgets.BudgetFilterExpressionNotArgs{
/// Dimensions: &budgets.BudgetFilterExpressionNotDimensionsArgs{
/// Key: pulumi.String("REGION"),
/// Values: pulumi.StringArray{
/// pulumi.String("us-west-2"),
/// },
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var notExample = new Budget("notExample", BudgetArgs.builder()
/// .name("budget-not-filter")
/// .budgetType("COST")
/// .limitAmount("1000")
/// .limitUnit("USD")
/// .timeUnit("MONTHLY")
/// .filterExpression(BudgetFilterExpressionArgs.builder()
/// .not(BudgetFilterExpressionNotArgs.builder()
/// .dimensions(BudgetFilterExpressionNotDimensionsArgs.builder()
/// .key("REGION")
/// .values("us-west-2")
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// notExample:
/// type: aws:budgets:Budget
/// name: not_example
/// properties:
/// name: budget-not-filter
/// budgetType: COST
/// limitAmount: '1000'
/// limitUnit: USD
/// timeUnit: MONTHLY
/// filterExpression:
/// not:
/// dimensions:
/// key: REGION
/// values:
/// - us-west-2
/// ```
/// <!--End PulumiCodeChooser -->
///
/// Create a budget with a compound filter
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const compoundExample = new aws.budgets.Budget("compound_example", {
/// name: "budget-compound-filter",
/// budgetType: "COST",
/// limitAmount: "1500",
/// limitUnit: "USD",
/// timeUnit: "MONTHLY",
/// filterExpression: {
/// ors: [
/// {
/// ands: [
/// {
/// dimensions: {
/// key: "SERVICE",
/// values: ["Amazon Elastic Compute Cloud - Compute"],
/// },
/// },
/// {
/// tags: {
/// key: "Environment",
/// values: ["production"],
/// },
/// },
/// {
/// costCategories: {
/// key: "Environment",
/// values: ["production"],
/// },
/// },
/// ],
/// },
/// {
/// not: {
/// dimensions: {
/// key: "REGION",
/// values: ["us-west-2"],
/// },
/// },
/// },
/// ],
/// },
/// notifications: [{
/// comparisonOperator: "GREATER_THAN",
/// threshold: 100,
/// thresholdType: "PERCENTAGE",
/// notificationType: "FORECASTED",
/// subscriberEmailAddresses: ["test@example.com"],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// compound_example = aws.budgets.Budget("compound_example",
/// name="budget-compound-filter",
/// budget_type="COST",
/// limit_amount="1500",
/// limit_unit="USD",
/// time_unit="MONTHLY",
/// filter_expression={
/// "ors": [
/// {
/// "ands": [
/// {
/// "dimensions": {
/// "key": "SERVICE",
/// "values": ["Amazon Elastic Compute Cloud - Compute"],
/// },
/// },
/// {
/// "tags": {
/// "key": "Environment",
/// "values": ["production"],
/// },
/// },
/// {
/// "cost_categories": {
/// "key": "Environment",
/// "values": ["production"],
/// },
/// },
/// ],
/// },
/// {
/// "not_": {
/// "dimensions": {
/// "key": "REGION",
/// "values": ["us-west-2"],
/// },
/// },
/// },
/// ],
/// },
/// notifications=[{
/// "comparison_operator": "GREATER_THAN",
/// "threshold": 100,
/// "threshold_type": "PERCENTAGE",
/// "notification_type": "FORECASTED",
/// "subscriber_email_addresses": ["test@example.com"],
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
/// var compoundExample = new Aws.Budgets.Budget("compound_example", new()
/// {
/// Name = "budget-compound-filter",
/// BudgetType = "COST",
/// LimitAmount = "1500",
/// LimitUnit = "USD",
/// TimeUnit = "MONTHLY",
/// FilterExpression = new Aws.Budgets.Inputs.BudgetFilterExpressionArgs
/// {
/// Ors = new[]
/// {
/// new Aws.Budgets.Inputs.BudgetFilterExpressionOrArgs
/// {
/// Ands = new[]
/// {
/// new Aws.Budgets.Inputs.BudgetFilterExpressionOrAndArgs
/// {
/// Dimensions = new Aws.Budgets.Inputs.BudgetFilterExpressionOrAndDimensionsArgs
/// {
/// Key = "SERVICE",
/// Values = new[]
/// {
/// "Amazon Elastic Compute Cloud - Compute",
/// },
/// },
/// },
/// new Aws.Budgets.Inputs.BudgetFilterExpressionOrAndArgs
/// {
/// Tags = new Aws.Budgets.Inputs.BudgetFilterExpressionOrAndTagsArgs
/// {
/// Key = "Environment",
/// Values = new[]
/// {
/// "production",
/// },
/// },
/// },
/// new Aws.Budgets.Inputs.BudgetFilterExpressionOrAndArgs
/// {
/// CostCategories = new Aws.Budgets.Inputs.BudgetFilterExpressionOrAndCostCategoriesArgs
/// {
/// Key = "Environment",
/// Values = new[]
/// {
/// "production",
/// },
/// },
/// },
/// },
/// },
/// new Aws.Budgets.Inputs.BudgetFilterExpressionOrArgs
/// {
/// Not = new Aws.Budgets.Inputs.BudgetFilterExpressionOrNotArgs
/// {
/// Dimensions = new Aws.Budgets.Inputs.BudgetFilterExpressionOrNotDimensionsArgs
/// {
/// Key = "REGION",
/// Values = new[]
/// {
/// "us-west-2",
/// },
/// },
/// },
/// },
/// },
/// },
/// Notifications = new[]
/// {
/// new Aws.Budgets.Inputs.BudgetNotificationArgs
/// {
/// ComparisonOperator = "GREATER_THAN",
/// Threshold = 100,
/// ThresholdType = "PERCENTAGE",
/// NotificationType = "FORECASTED",
/// SubscriberEmailAddresses = new[]
/// {
/// "test@example.com",
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/budgets"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := budgets.NewBudget(ctx, "compound_example", &budgets.BudgetArgs{
/// Name:        pulumi.String("budget-compound-filter"),
/// BudgetType:  pulumi.String("COST"),
/// LimitAmount: pulumi.String("1500"),
/// LimitUnit:   pulumi.String("USD"),
/// TimeUnit:    pulumi.String("MONTHLY"),
/// FilterExpression: &budgets.BudgetFilterExpressionArgs{
/// Ors: budgets.BudgetFilterExpressionOrArray{
/// &budgets.BudgetFilterExpressionOrArgs{
/// Ands: budgets.BudgetFilterExpressionOrAndArray{
/// &budgets.BudgetFilterExpressionOrAndArgs{
/// Dimensions: &budgets.BudgetFilterExpressionOrAndDimensionsArgs{
/// Key: pulumi.String("SERVICE"),
/// Values: pulumi.StringArray{
/// pulumi.String("Amazon Elastic Compute Cloud - Compute"),
/// },
/// },
/// },
/// &budgets.BudgetFilterExpressionOrAndArgs{
/// Tags: &budgets.BudgetFilterExpressionOrAndTagsArgs{
/// Key: pulumi.String("Environment"),
/// Values: pulumi.StringArray{
/// pulumi.String("production"),
/// },
/// },
/// },
/// &budgets.BudgetFilterExpressionOrAndArgs{
/// CostCategories: &budgets.BudgetFilterExpressionOrAndCostCategoriesArgs{
/// Key: pulumi.String("Environment"),
/// Values: pulumi.StringArray{
/// pulumi.String("production"),
/// },
/// },
/// },
/// },
/// },
/// &budgets.BudgetFilterExpressionOrArgs{
/// Not: &budgets.BudgetFilterExpressionOrNotArgs{
/// Dimensions: &budgets.BudgetFilterExpressionOrNotDimensionsArgs{
/// Key: pulumi.String("REGION"),
/// Values: pulumi.StringArray{
/// pulumi.String("us-west-2"),
/// },
/// },
/// },
/// },
/// },
/// },
/// Notifications: budgets.BudgetNotificationArray{
/// &budgets.BudgetNotificationArgs{
/// ComparisonOperator: pulumi.String("GREATER_THAN"),
/// Threshold:          pulumi.Float64(100),
/// ThresholdType:      pulumi.String("PERCENTAGE"),
/// NotificationType:   pulumi.String("FORECASTED"),
/// SubscriberEmailAddresses: pulumi.StringArray{
/// pulumi.String("test@example.com"),
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import com.pulumi.aws.budgets.inputs.BudgetNotificationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var compoundExample = new Budget("compoundExample", BudgetArgs.builder()
/// .name("budget-compound-filter")
/// .budgetType("COST")
/// .limitAmount("1500")
/// .limitUnit("USD")
/// .timeUnit("MONTHLY")
/// .filterExpression(BudgetFilterExpressionArgs.builder()
/// .ors(
/// BudgetFilterExpressionOrArgs.builder()
/// .ands(
/// BudgetFilterExpressionOrAndArgs.builder()
/// .dimensions(BudgetFilterExpressionOrAndDimensionsArgs.builder()
/// .key("SERVICE")
/// .values("Amazon Elastic Compute Cloud - Compute")
/// .build())
/// .build(),
/// BudgetFilterExpressionOrAndArgs.builder()
/// .tags(BudgetFilterExpressionOrAndTagsArgs.builder()
/// .key("Environment")
/// .values("production")
/// .build())
/// .build(),
/// BudgetFilterExpressionOrAndArgs.builder()
/// .costCategories(BudgetFilterExpressionOrAndCostCategoriesArgs.builder()
/// .key("Environment")
/// .values("production")
/// .build())
/// .build())
/// .build(),
/// BudgetFilterExpressionOrArgs.builder()
/// .not(BudgetFilterExpressionOrNotArgs.builder()
/// .dimensions(BudgetFilterExpressionOrNotDimensionsArgs.builder()
/// .key("REGION")
/// .values("us-west-2")
/// .build())
/// .build())
/// .build())
/// .build())
/// .notifications(BudgetNotificationArgs.builder()
/// .comparisonOperator("GREATER_THAN")
/// .threshold(100.0)
/// .thresholdType("PERCENTAGE")
/// .notificationType("FORECASTED")
/// .subscriberEmailAddresses("test@example.com")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// compoundExample:
/// type: aws:budgets:Budget
/// name: compound_example
/// properties:
/// name: budget-compound-filter
/// budgetType: COST
/// limitAmount: '1500'
/// limitUnit: USD
/// timeUnit: MONTHLY
/// filterExpression:
/// ors:
/// - ands:
/// - dimensions:
/// key: SERVICE
/// values:
/// - Amazon Elastic Compute Cloud - Compute
/// - tags:
/// key: Environment
/// values:
/// - production
/// - costCategories:
/// key: Environment
/// values:
/// - production
/// - not:
/// dimensions:
/// key: REGION
/// values:
/// - us-west-2
/// notifications:
/// - comparisonOperator: GREATER_THAN
/// threshold: 100
/// thresholdType: PERCENTAGE
/// notificationType: FORECASTED
/// subscriberEmailAddresses:
/// - test@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import budgets using `AccountID:BudgetName`. For example:
///
/// ```sh
/// $ pulumi import aws:budgets/budget:Budget myBudget 123456789012:myBudget
/// ```
class Budget extends CustomResource {
  /// The ID of the target account for budget. Will use current user's<span pulumi-lang-nodejs=" accountId " pulumi-lang-dotnet=" AccountId " pulumi-lang-go=" accountId " pulumi-lang-python=" account_id " pulumi-lang-yaml=" accountId " pulumi-lang-java=" accountId "> account_id </span>by default if omitted.
  late final Output<String> accountId;

  /// The ARN of the budget.
  late final Output<String> arn;

  /// Object containing AutoAdjustData which determines the budget amount for an auto-adjusting budget.
  late final Output<BudgetAutoAdjustData?> autoAdjustData;

  /// ARN of the billing view.
  late final Output<String?> billingViewArn;

  /// Whether this budget tracks monetary cost or usage.
  late final Output<String> budgetType;

  /// A list of CostFilter name/values pair to apply to budget. Conflicts with <span pulumi-lang-nodejs="`filterExpression`" pulumi-lang-dotnet="`FilterExpression`" pulumi-lang-go="`filterExpression`" pulumi-lang-python="`filter_expression`" pulumi-lang-yaml="`filterExpression`" pulumi-lang-java="`filterExpression`">`filter_expression`</span>.
  late final Output<List<BudgetCostFilter>> costFilters;

  /// Object containing CostTypes The types of cost included in a budget, such as tax and subscriptions.
  late final Output<BudgetCostTypes> costTypes;

  /// Object containing Filter Expression to apply to budget. Conflicts with <span pulumi-lang-nodejs="`costFilter`" pulumi-lang-dotnet="`CostFilter`" pulumi-lang-go="`costFilter`" pulumi-lang-python="`cost_filter`" pulumi-lang-yaml="`costFilter`" pulumi-lang-java="`costFilter`">`cost_filter`</span>.
  late final Output<BudgetFilterExpression?> filterExpression;

  /// The amount of cost or usage being measured for a budget.
  late final Output<String> limitAmount;

  /// The unit of measurement used for the budget forecast, actual spend, or budget threshold, such as dollars or GB. See [Spend](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/data-type-spend.html) documentation.
  late final Output<String> limitUnit;

  /// The name of a budget. Unique within accounts.
  late final Output<String> name;

  /// The prefix of the name of a budget. Unique within accounts.
  late final Output<String> namePrefix;

  /// Object containing Budget Notifications. Can be used multiple times to define more than one budget notification.
  late final Output<List<BudgetNotification>?> notifications;

  /// Object containing Planned Budget Limits. Can be used multiple times to plan more than one budget limit. See [PlannedBudgetLimits](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_Budget.html#awscostmanagement-Type-budgets_Budget-PlannedBudgetLimits) documentation.
  late final Output<List<BudgetPlannedLimit>?> plannedLimits;

  /// Map of tags assigned to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The end of the time period covered by the budget. There are no restrictions on the end date. Format: `2017-01-01_12:00`.
  late final Output<String?> timePeriodEnd;

  /// The start of the time period covered by the budget. If you don't specify a start date, AWS defaults to the start of your chosen time period. The start date must come before the end date. Format: `2017-01-01_12:00`.
  ///
  /// For more detailed documentation about each argument, refer to the [AWS official
  /// documentation](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/data-type-budget.html).
  late final Output<String> timePeriodStart;

  /// The length of time until a budget resets the actual and forecasted spend. Valid values: `MONTHLY`, `QUARTERLY`, `ANNUALLY`, and `DAILY`.
  ///
  /// The following arguments are optional:
  late final Output<String> timeUnit;

  Budget(
    String name, {
    BudgetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:budgets/budget:Budget',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountId = Output.createUnknown<String>();
    this.arn = Output.createUnknown<String>();
    this.autoAdjustData = Output.createUnknown<BudgetAutoAdjustData?>();
    this.billingViewArn = Output.createUnknown<String?>();
    this.budgetType = Output.createUnknown<String>();
    this.costFilters = Output.createUnknown<List<BudgetCostFilter>>();
    this.costTypes = Output.createUnknown<BudgetCostTypes>();
    this.filterExpression = Output.createUnknown<BudgetFilterExpression?>();
    this.limitAmount = Output.createUnknown<String>();
    this.limitUnit = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.namePrefix = Output.createUnknown<String>();
    this.notifications = Output.createUnknown<List<BudgetNotification>?>();
    this.plannedLimits = Output.createUnknown<List<BudgetPlannedLimit>?>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.timePeriodEnd = Output.createUnknown<String?>();
    this.timePeriodStart = Output.createUnknown<String>();
    this.timeUnit = Output.createUnknown<String>();
  }
}
