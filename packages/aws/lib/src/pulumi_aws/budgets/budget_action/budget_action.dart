import 'package:pulumi/pulumi.dart';
import '../budget_action_action_threshold/budget_action_action_threshold.dart';
import '../budget_action_definition/budget_action_definition.dart';
import '../budget_action_subscriber/budget_action_subscriber.dart';
import 'budget_action_args.dart';

/// Provides a budget action resource. Budget actions are cost savings controls that run either automatically on your behalf or by using a workflow approval process.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.iam.getPolicyDocument({
/// statements: [{
/// effect: "Allow",
/// actions: ["ec2:Describe*"],
/// resources: ["*"],
/// }],
/// });
/// const examplePolicy = new aws.iam.Policy("example", {
/// name: "example",
/// description: "My example policy",
/// policy: example.then(example => example.json),
/// });
/// const current = aws.getPartition({});
/// const assumeRole = current.then(current => aws.iam.getPolicyDocument({
/// statements: [{
/// effect: "Allow",
/// principals: [{
/// type: "Service",
/// identifiers: [`budgets.${current.dnsSuffix}`],
/// }],
/// actions: ["sts:AssumeRole"],
/// }],
/// }));
/// const exampleRole = new aws.iam.Role("example", {
/// name: "example",
/// assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const exampleBudget = new aws.budgets.Budget("example", {
/// name: "example",
/// budgetType: "USAGE",
/// limitAmount: "10.0",
/// limitUnit: "dollars",
/// timePeriodStart: "2006-01-02_15:04",
/// timeUnit: "MONTHLY",
/// });
/// const exampleBudgetAction = new aws.budgets.BudgetAction("example", {
/// budgetName: exampleBudget.name,
/// actionType: "APPLY_IAM_POLICY",
/// approvalModel: "AUTOMATIC",
/// notificationType: "ACTUAL",
/// executionRoleArn: exampleRole.arn,
/// actionThreshold: {
/// actionThresholdType: "ABSOLUTE_VALUE",
/// actionThresholdValue: 100,
/// },
/// definition: {
/// iamActionDefinition: {
/// policyArn: examplePolicy.arn,
/// roles: [exampleRole.name],
/// },
/// },
/// subscribers: [{
/// address: "example@example.example",
/// subscriptionType: "EMAIL",
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
/// example = aws.iam.get_policy_document(statements=[{
/// "effect": "Allow",
/// "actions": ["ec2:Describe*"],
/// "resources": ["*"],
/// }])
/// example_policy = aws.iam.Policy("example",
/// name="example",
/// description="My example policy",
/// policy=example.json)
/// current = aws.get_partition()
/// assume_role = aws.iam.get_policy_document(statements=[{
/// "effect": "Allow",
/// "principals": [{
/// "type": "Service",
/// "identifiers": [f"budgets.{current.dns_suffix}"],
/// }],
/// "actions": ["sts:AssumeRole"],
/// }])
/// example_role = aws.iam.Role("example",
/// name="example",
/// assume_role_policy=assume_role.json)
/// example_budget = aws.budgets.Budget("example",
/// name="example",
/// budget_type="USAGE",
/// limit_amount="10.0",
/// limit_unit="dollars",
/// time_period_start="2006-01-02_15:04",
/// time_unit="MONTHLY")
/// example_budget_action = aws.budgets.BudgetAction("example",
/// budget_name=example_budget.name,
/// action_type="APPLY_IAM_POLICY",
/// approval_model="AUTOMATIC",
/// notification_type="ACTUAL",
/// execution_role_arn=example_role.arn,
/// action_threshold={
/// "action_threshold_type": "ABSOLUTE_VALUE",
/// "action_threshold_value": 100,
/// },
/// definition={
/// "iam_action_definition": {
/// "policy_arn": example_policy.arn,
/// "roles": [example_role.name],
/// },
/// },
/// subscribers=[{
/// "address": "example@example.example",
/// "subscription_type": "EMAIL",
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
/// var example = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Effect = "Allow",
/// Actions = new[]
/// {
/// "ec2:Describe*",
/// },
/// Resources = new[]
/// {
/// "*",
/// },
/// },
/// },
/// });
///
/// var examplePolicy = new Aws.Iam.Policy("example", new()
/// {
/// Name = "example",
/// Description = "My example policy",
/// PolicyDocument = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// var current = Aws.GetPartition.Invoke();
///
/// var assumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Effect = "Allow",
/// Principals = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
/// {
/// Type = "Service",
/// Identifiers = new[]
/// {
/// $"budgets.{current.Apply(getPartitionResult => getPartitionResult.DnsSuffix)}",
/// },
/// },
/// },
/// Actions = new[]
/// {
/// "sts:AssumeRole",
/// },
/// },
/// },
/// });
///
/// var exampleRole = new Aws.Iam.Role("example", new()
/// {
/// Name = "example",
/// AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// var exampleBudget = new Aws.Budgets.Budget("example", new()
/// {
/// Name = "example",
/// BudgetType = "USAGE",
/// LimitAmount = "10.0",
/// LimitUnit = "dollars",
/// TimePeriodStart = "2006-01-02_15:04",
/// TimeUnit = "MONTHLY",
/// });
///
/// var exampleBudgetAction = new Aws.Budgets.BudgetAction("example", new()
/// {
/// BudgetName = exampleBudget.Name,
/// ActionType = "APPLY_IAM_POLICY",
/// ApprovalModel = "AUTOMATIC",
/// NotificationType = "ACTUAL",
/// ExecutionRoleArn = exampleRole.Arn,
/// ActionThreshold = new Aws.Budgets.Inputs.BudgetActionActionThresholdArgs
/// {
/// ActionThresholdType = "ABSOLUTE_VALUE",
/// ActionThresholdValue = 100,
/// },
/// Definition = new Aws.Budgets.Inputs.BudgetActionDefinitionArgs
/// {
/// IamActionDefinition = new Aws.Budgets.Inputs.BudgetActionDefinitionIamActionDefinitionArgs
/// {
/// PolicyArn = examplePolicy.Arn,
/// Roles = new[]
/// {
/// exampleRole.Name,
/// },
/// },
/// },
/// Subscribers = new[]
/// {
/// new Aws.Budgets.Inputs.BudgetActionSubscriberArgs
/// {
/// Address = "example@example.example",
/// SubscriptionType = "EMAIL",
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
/// "fmt"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/budgets"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Effect: pulumi.StringRef("Allow"),
/// Actions: []string{
/// "ec2:Describe*",
/// },
/// Resources: []string{
/// "*",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// examplePolicy, err := iam.NewPolicy(ctx, "example", &iam.PolicyArgs{
/// Name:        pulumi.String("example"),
/// Description: pulumi.String("My example policy"),
/// Policy:      pulumi.String(example.Json),
/// })
/// if err != nil {
/// return err
/// }
/// current, err := aws.GetPartition(ctx, &aws.GetPartitionArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// assumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Effect: pulumi.StringRef("Allow"),
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "Service",
/// Identifiers: []string{
/// fmt.Sprintf("budgets.%v", current.DnsSuffix),
/// },
/// },
/// },
/// Actions: []string{
/// "sts:AssumeRole",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// exampleRole, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// Name:             pulumi.String("example"),
/// AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// })
/// if err != nil {
/// return err
/// }
/// exampleBudget, err := budgets.NewBudget(ctx, "example", &budgets.BudgetArgs{
/// Name:            pulumi.String("example"),
/// BudgetType:      pulumi.String("USAGE"),
/// LimitAmount:     pulumi.String("10.0"),
/// LimitUnit:       pulumi.String("dollars"),
/// TimePeriodStart: pulumi.String("2006-01-02_15:04"),
/// TimeUnit:        pulumi.String("MONTHLY"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = budgets.NewBudgetAction(ctx, "example", &budgets.BudgetActionArgs{
/// BudgetName:       exampleBudget.Name,
/// ActionType:       pulumi.String("APPLY_IAM_POLICY"),
/// ApprovalModel:    pulumi.String("AUTOMATIC"),
/// NotificationType: pulumi.String("ACTUAL"),
/// ExecutionRoleArn: exampleRole.Arn,
/// ActionThreshold: &budgets.BudgetActionActionThresholdArgs{
/// ActionThresholdType:  pulumi.String("ABSOLUTE_VALUE"),
/// ActionThresholdValue: pulumi.Float64(100),
/// },
/// Definition: &budgets.BudgetActionDefinitionArgs{
/// IamActionDefinition: &budgets.BudgetActionDefinitionIamActionDefinitionArgs{
/// PolicyArn: examplePolicy.Arn,
/// Roles: pulumi.StringArray{
/// exampleRole.Name,
/// },
/// },
/// },
/// Subscribers: budgets.BudgetActionSubscriberArray{
/// &budgets.BudgetActionSubscriberArgs{
/// Address:          pulumi.String("example@example.example"),
/// SubscriptionType: pulumi.String("EMAIL"),
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
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Policy;
/// import com.pulumi.aws.iam.PolicyArgs;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetPartitionArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.budgets.Budget;
/// import com.pulumi.aws.budgets.BudgetArgs;
/// import com.pulumi.aws.budgets.BudgetAction;
/// import com.pulumi.aws.budgets.BudgetActionArgs;
/// import com.pulumi.aws.budgets.inputs.BudgetActionActionThresholdArgs;
/// import com.pulumi.aws.budgets.inputs.BudgetActionDefinitionArgs;
/// import com.pulumi.aws.budgets.inputs.BudgetActionDefinitionIamActionDefinitionArgs;
/// import com.pulumi.aws.budgets.inputs.BudgetActionSubscriberArgs;
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
/// final var example = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .actions("ec2:Describe*")
/// .resources("*")
/// .build())
/// .build());
///
/// var examplePolicy = new Policy("examplePolicy", PolicyArgs.builder()
/// .name("example")
/// .description("My example policy")
/// .policy(example.json())
/// .build());
///
/// final var current = AwsFunctions.getPartition(GetPartitionArgs.builder()
/// .build());
///
/// final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("Service")
/// .identifiers(String.format("budgets.%s", current.dnsSuffix()))
/// .build())
/// .actions("sts:AssumeRole")
/// .build())
/// .build());
///
/// var exampleRole = new Role("exampleRole", RoleArgs.builder()
/// .name("example")
/// .assumeRolePolicy(assumeRole.json())
/// .build());
///
/// var exampleBudget = new Budget("exampleBudget", BudgetArgs.builder()
/// .name("example")
/// .budgetType("USAGE")
/// .limitAmount("10.0")
/// .limitUnit("dollars")
/// .timePeriodStart("2006-01-02_15:04")
/// .timeUnit("MONTHLY")
/// .build());
///
/// var exampleBudgetAction = new BudgetAction("exampleBudgetAction", BudgetActionArgs.builder()
/// .budgetName(exampleBudget.name())
/// .actionType("APPLY_IAM_POLICY")
/// .approvalModel("AUTOMATIC")
/// .notificationType("ACTUAL")
/// .executionRoleArn(exampleRole.arn())
/// .actionThreshold(BudgetActionActionThresholdArgs.builder()
/// .actionThresholdType("ABSOLUTE_VALUE")
/// .actionThresholdValue(100.0)
/// .build())
/// .definition(BudgetActionDefinitionArgs.builder()
/// .iamActionDefinition(BudgetActionDefinitionIamActionDefinitionArgs.builder()
/// .policyArn(examplePolicy.arn())
/// .roles(exampleRole.name())
/// .build())
/// .build())
/// .subscribers(BudgetActionSubscriberArgs.builder()
/// .address("example@example.example")
/// .subscriptionType("EMAIL")
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
/// exampleBudgetAction:
/// type: aws:budgets:BudgetAction
/// name: example
/// properties:
/// budgetName: ${exampleBudget.name}
/// actionType: APPLY_IAM_POLICY
/// approvalModel: AUTOMATIC
/// notificationType: ACTUAL
/// executionRoleArn: ${exampleRole.arn}
/// actionThreshold:
/// actionThresholdType: ABSOLUTE_VALUE
/// actionThresholdValue: 100
/// definition:
/// iamActionDefinition:
/// policyArn: ${examplePolicy.arn}
/// roles:
/// - ${exampleRole.name}
/// subscribers:
/// - address: example@example.example
/// subscriptionType: EMAIL
/// tags:
/// Tag1: Value1
/// Tag2: Value2
/// examplePolicy:
/// type: aws:iam:Policy
/// name: example
/// properties:
/// name: example
/// description: My example policy
/// policy: ${example.json}
/// exampleRole:
/// type: aws:iam:Role
/// name: example
/// properties:
/// name: example
/// assumeRolePolicy: ${assumeRole.json}
/// exampleBudget:
/// type: aws:budgets:Budget
/// name: example
/// properties:
/// name: example
/// budgetType: USAGE
/// limitAmount: '10.0'
/// limitUnit: dollars
/// timePeriodStart: 2006-01-02_15:04
/// timeUnit: MONTHLY
/// variables:
/// example:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - effect: Allow
/// actions:
/// - ec2:Describe*
/// resources:
/// - '*'
/// current:
/// fn::invoke:
/// function: aws:getPartition
/// arguments: {}
/// assumeRole:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - effect: Allow
/// principals:
/// - type: Service
/// identifiers:
/// - budgets.${current.dnsSuffix}
/// actions:
/// - sts:AssumeRole
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import budget actions using `AccountID:ActionID:BudgetName`. For example:
///
/// ```sh
/// $ pulumi import aws:budgets/budgetAction:BudgetAction myBudget 123456789012:some-id:myBudget
/// ```
class BudgetAction extends CustomResource {
  /// The ID of the target account for budget. Will use current user's<span pulumi-lang-nodejs=" accountId " pulumi-lang-dotnet=" AccountId " pulumi-lang-go=" accountId " pulumi-lang-python=" account_id " pulumi-lang-yaml=" accountId " pulumi-lang-java=" accountId "> account_id </span>by default if omitted.
  late final Output<String> accountId;

  /// The id of the budget action.
  late final Output<String> actionId;

  /// The trigger threshold of the action. See Action Threshold.
  late final Output<BudgetActionActionThreshold> actionThreshold;

  /// The type of action. This defines the type of tasks that can be carried out by this action. This field also determines the format for definition. Valid values are `APPLY_IAM_POLICY`, `APPLY_SCP_POLICY`, and `RUN_SSM_DOCUMENTS`.
  late final Output<String> actionType;

  /// This specifies if the action needs manual or automatic approval. Valid values are `AUTOMATIC` and `MANUAL`.
  late final Output<String> approvalModel;

  /// The ARN of the budget action.
  late final Output<String> arn;

  /// The name of a budget.
  late final Output<String> budgetName;

  /// Specifies all of the type-specific parameters. See Definition.
  late final Output<BudgetActionDefinition> definition;

  /// The role passed for action execution and reversion. Roles and actions must be in the same account.
  late final Output<String> executionRoleArn;

  /// The type of a notification. Valid values are `ACTUAL` or `FORECASTED`.
  late final Output<String> notificationType;

  /// The status of the budget action.
  late final Output<String> status;

  /// A list of subscribers. See Subscriber.
  late final Output<List<BudgetActionSubscriber>> subscribers;

  /// Map of tags assigned to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  BudgetAction(
    String name, {
    BudgetActionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:budgets/budgetAction:BudgetAction',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountId = Output.createUnknown<String>();
    this.actionId = Output.createUnknown<String>();
    this.actionThreshold = Output.createUnknown<BudgetActionActionThreshold>();
    this.actionType = Output.createUnknown<String>();
    this.approvalModel = Output.createUnknown<String>();
    this.arn = Output.createUnknown<String>();
    this.budgetName = Output.createUnknown<String>();
    this.definition = Output.createUnknown<BudgetActionDefinition>();
    this.executionRoleArn = Output.createUnknown<String>();
    this.notificationType = Output.createUnknown<String>();
    this.status = Output.createUnknown<String>();
    this.subscribers = Output.createUnknown<List<BudgetActionSubscriber>>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
