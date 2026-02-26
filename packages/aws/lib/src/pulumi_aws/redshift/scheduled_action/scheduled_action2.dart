import 'package:pulumi/pulumi.dart';
import '../scheduled_action_target_action/scheduled_action_target_action.dart';
import 'scheduled_action_args2.dart';

/// ## Example Usage
///
/// ### Pause Cluster Action
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const assumeRole = aws.iam.getPolicyDocument({
/// statements: [{
/// effect: "Allow",
/// principals: [{
/// type: "Service",
/// identifiers: ["scheduler.redshift.amazonaws.com"],
/// }],
/// actions: ["sts:AssumeRole"],
/// }],
/// });
/// const exampleRole = new aws.iam.Role("example", {
/// name: "redshift_scheduled_action",
/// assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const example = aws.iam.getPolicyDocument({
/// statements: [{
/// effect: "Allow",
/// actions: [
/// "redshift:PauseCluster",
/// "redshift:ResumeCluster",
/// "redshift:ResizeCluster",
/// ],
/// resources: ["*"],
/// }],
/// });
/// const examplePolicy = new aws.iam.Policy("example", {
/// name: "redshift_scheduled_action",
/// policy: example.then(example => example.json),
/// });
/// const exampleRolePolicyAttachment = new aws.iam.RolePolicyAttachment("example", {
/// policyArn: examplePolicy.arn,
/// role: exampleRole.name,
/// });
/// const exampleScheduledAction = new aws.redshift.ScheduledAction("example", {
/// name: "tf-redshift-scheduled-action",
/// schedule: "cron(00 23 * * ? *)",
/// iamRole: exampleRole.arn,
/// targetAction: {
/// pauseCluster: {
/// clusterIdentifier: "tf-redshift001",
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// assume_role = aws.iam.get_policy_document(statements=[{
/// "effect": "Allow",
/// "principals": [{
/// "type": "Service",
/// "identifiers": ["scheduler.redshift.amazonaws.com"],
/// }],
/// "actions": ["sts:AssumeRole"],
/// }])
/// example_role = aws.iam.Role("example",
/// name="redshift_scheduled_action",
/// assume_role_policy=assume_role.json)
/// example = aws.iam.get_policy_document(statements=[{
/// "effect": "Allow",
/// "actions": [
/// "redshift:PauseCluster",
/// "redshift:ResumeCluster",
/// "redshift:ResizeCluster",
/// ],
/// "resources": ["*"],
/// }])
/// example_policy = aws.iam.Policy("example",
/// name="redshift_scheduled_action",
/// policy=example.json)
/// example_role_policy_attachment = aws.iam.RolePolicyAttachment("example",
/// policy_arn=example_policy.arn,
/// role=example_role.name)
/// example_scheduled_action = aws.redshift.ScheduledAction("example",
/// name="tf-redshift-scheduled-action",
/// schedule="cron(00 23 * * ? *)",
/// iam_role=example_role.arn,
/// target_action={
/// "pause_cluster": {
/// "cluster_identifier": "tf-redshift001",
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
/// "scheduler.redshift.amazonaws.com",
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
/// Name = "redshift_scheduled_action",
/// AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// var example = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Effect = "Allow",
/// Actions = new[]
/// {
/// "redshift:PauseCluster",
/// "redshift:ResumeCluster",
/// "redshift:ResizeCluster",
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
/// Name = "redshift_scheduled_action",
/// PolicyDocument = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// var exampleRolePolicyAttachment = new Aws.Iam.RolePolicyAttachment("example", new()
/// {
/// PolicyArn = examplePolicy.Arn,
/// Role = exampleRole.Name,
/// });
///
/// var exampleScheduledAction = new Aws.RedShift.ScheduledAction("example", new()
/// {
/// Name = "tf-redshift-scheduled-action",
/// Schedule = "cron(00 23 * * ? *)",
/// IamRole = exampleRole.Arn,
/// TargetAction = new Aws.RedShift.Inputs.ScheduledActionTargetActionArgs
/// {
/// PauseCluster = new Aws.RedShift.Inputs.ScheduledActionTargetActionPauseClusterArgs
/// {
/// ClusterIdentifier = "tf-redshift001",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// assumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Effect: pulumi.StringRef("Allow"),
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "Service",
/// Identifiers: []string{
/// "scheduler.redshift.amazonaws.com",
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
/// Name:             pulumi.String("redshift_scheduled_action"),
/// AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// })
/// if err != nil {
/// return err
/// }
/// example, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Effect: pulumi.StringRef("Allow"),
/// Actions: []string{
/// "redshift:PauseCluster",
/// "redshift:ResumeCluster",
/// "redshift:ResizeCluster",
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
/// Name:   pulumi.String("redshift_scheduled_action"),
/// Policy: pulumi.String(example.Json),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = iam.NewRolePolicyAttachment(ctx, "example", &iam.RolePolicyAttachmentArgs{
/// PolicyArn: examplePolicy.Arn,
/// Role:      exampleRole.Name,
/// })
/// if err != nil {
/// return err
/// }
/// _, err = redshift.NewScheduledAction(ctx, "example", &redshift.ScheduledActionArgs{
/// Name:     pulumi.String("tf-redshift-scheduled-action"),
/// Schedule: pulumi.String("cron(00 23 * * ? *)"),
/// IamRole:  exampleRole.Arn,
/// TargetAction: &redshift.ScheduledActionTargetActionArgs{
/// PauseCluster: &redshift.ScheduledActionTargetActionPauseClusterArgs{
/// ClusterIdentifier: pulumi.String("tf-redshift001"),
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
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.Policy;
/// import com.pulumi.aws.iam.PolicyArgs;
/// import com.pulumi.aws.iam.RolePolicyAttachment;
/// import com.pulumi.aws.iam.RolePolicyAttachmentArgs;
/// import com.pulumi.aws.redshift.ScheduledAction;
/// import com.pulumi.aws.redshift.ScheduledActionArgs;
/// import com.pulumi.aws.redshift.inputs.ScheduledActionTargetActionArgs;
/// import com.pulumi.aws.redshift.inputs.ScheduledActionTargetActionPauseClusterArgs;
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
/// final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("Service")
/// .identifiers("scheduler.redshift.amazonaws.com")
/// .build())
/// .actions("sts:AssumeRole")
/// .build())
/// .build());
///
/// var exampleRole = new Role("exampleRole", RoleArgs.builder()
/// .name("redshift_scheduled_action")
/// .assumeRolePolicy(assumeRole.json())
/// .build());
///
/// final var example = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .actions(
/// "redshift:PauseCluster",
/// "redshift:ResumeCluster",
/// "redshift:ResizeCluster")
/// .resources("*")
/// .build())
/// .build());
///
/// var examplePolicy = new Policy("examplePolicy", PolicyArgs.builder()
/// .name("redshift_scheduled_action")
/// .policy(example.json())
/// .build());
///
/// var exampleRolePolicyAttachment = new RolePolicyAttachment("exampleRolePolicyAttachment", RolePolicyAttachmentArgs.builder()
/// .policyArn(examplePolicy.arn())
/// .role(exampleRole.name())
/// .build());
///
/// var exampleScheduledAction = new ScheduledAction("exampleScheduledAction", ScheduledActionArgs.builder()
/// .name("tf-redshift-scheduled-action")
/// .schedule("cron(00 23 * * ? *)")
/// .iamRole(exampleRole.arn())
/// .targetAction(ScheduledActionTargetActionArgs.builder()
/// .pauseCluster(ScheduledActionTargetActionPauseClusterArgs.builder()
/// .clusterIdentifier("tf-redshift001")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// exampleRole:
/// type: aws:iam:Role
/// name: example
/// properties:
/// name: redshift_scheduled_action
/// assumeRolePolicy: ${assumeRole.json}
/// examplePolicy:
/// type: aws:iam:Policy
/// name: example
/// properties:
/// name: redshift_scheduled_action
/// policy: ${example.json}
/// exampleRolePolicyAttachment:
/// type: aws:iam:RolePolicyAttachment
/// name: example
/// properties:
/// policyArn: ${examplePolicy.arn}
/// role: ${exampleRole.name}
/// exampleScheduledAction:
/// type: aws:redshift:ScheduledAction
/// name: example
/// properties:
/// name: tf-redshift-scheduled-action
/// schedule: cron(00 23 * * ? *)
/// iamRole: ${exampleRole.arn}
/// targetAction:
/// pauseCluster:
/// clusterIdentifier: tf-redshift001
/// variables:
/// assumeRole:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - effect: Allow
/// principals:
/// - type: Service
/// identifiers:
/// - scheduler.redshift.amazonaws.com
/// actions:
/// - sts:AssumeRole
/// example:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - effect: Allow
/// actions:
/// - redshift:PauseCluster
/// - redshift:ResumeCluster
/// - redshift:ResizeCluster
/// resources:
/// - '*'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Resize Cluster Action
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.redshift.ScheduledAction("example", {
/// name: "tf-redshift-scheduled-action",
/// schedule: "cron(00 23 * * ? *)",
/// iamRole: exampleAwsIamRole.arn,
/// targetAction: {
/// resizeCluster: {
/// clusterIdentifier: "tf-redshift001",
/// clusterType: "multi-node",
/// nodeType: "dc1.large",
/// numberOfNodes: 2,
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshift.ScheduledAction("example",
/// name="tf-redshift-scheduled-action",
/// schedule="cron(00 23 * * ? *)",
/// iam_role=example_aws_iam_role["arn"],
/// target_action={
/// "resize_cluster": {
/// "cluster_identifier": "tf-redshift001",
/// "cluster_type": "multi-node",
/// "node_type": "dc1.large",
/// "number_of_nodes": 2,
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
/// var example = new Aws.RedShift.ScheduledAction("example", new()
/// {
/// Name = "tf-redshift-scheduled-action",
/// Schedule = "cron(00 23 * * ? *)",
/// IamRole = exampleAwsIamRole.Arn,
/// TargetAction = new Aws.RedShift.Inputs.ScheduledActionTargetActionArgs
/// {
/// ResizeCluster = new Aws.RedShift.Inputs.ScheduledActionTargetActionResizeClusterArgs
/// {
/// ClusterIdentifier = "tf-redshift001",
/// ClusterType = "multi-node",
/// NodeType = "dc1.large",
/// NumberOfNodes = 2,
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := redshift.NewScheduledAction(ctx, "example", &redshift.ScheduledActionArgs{
/// Name:     pulumi.String("tf-redshift-scheduled-action"),
/// Schedule: pulumi.String("cron(00 23 * * ? *)"),
/// IamRole:  pulumi.Any(exampleAwsIamRole.Arn),
/// TargetAction: &redshift.ScheduledActionTargetActionArgs{
/// ResizeCluster: &redshift.ScheduledActionTargetActionResizeClusterArgs{
/// ClusterIdentifier: pulumi.String("tf-redshift001"),
/// ClusterType:       pulumi.String("multi-node"),
/// NodeType:          pulumi.String("dc1.large"),
/// NumberOfNodes:     pulumi.Int(2),
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
/// import com.pulumi.aws.redshift.ScheduledAction;
/// import com.pulumi.aws.redshift.ScheduledActionArgs;
/// import com.pulumi.aws.redshift.inputs.ScheduledActionTargetActionArgs;
/// import com.pulumi.aws.redshift.inputs.ScheduledActionTargetActionResizeClusterArgs;
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
/// var example = new ScheduledAction("example", ScheduledActionArgs.builder()
/// .name("tf-redshift-scheduled-action")
/// .schedule("cron(00 23 * * ? *)")
/// .iamRole(exampleAwsIamRole.arn())
/// .targetAction(ScheduledActionTargetActionArgs.builder()
/// .resizeCluster(ScheduledActionTargetActionResizeClusterArgs.builder()
/// .clusterIdentifier("tf-redshift001")
/// .clusterType("multi-node")
/// .nodeType("dc1.large")
/// .numberOfNodes(2)
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:redshift:ScheduledAction
/// properties:
/// name: tf-redshift-scheduled-action
/// schedule: cron(00 23 * * ? *)
/// iamRole: ${exampleAwsIamRole.arn}
/// targetAction:
/// resizeCluster:
/// clusterIdentifier: tf-redshift001
/// clusterType: multi-node
/// nodeType: dc1.large
/// numberOfNodes: 2
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Scheduled Action using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/scheduledAction:ScheduledAction example tf-redshift-scheduled-action
/// ```
class ScheduledAction2 extends CustomResource {
  /// The description of the scheduled action.
  late final Output<String?> description;

  /// Whether to enable the scheduled action. Default is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> .
  late final Output<bool?> enable;

  /// The end time in UTC when the schedule is active, in UTC RFC3339 format(for example, YYYY-MM-DDTHH:MM:SSZ).
  late final Output<String?> endTime;

  /// The IAM role to assume to run the scheduled action.
  late final Output<String> iamRole;

  /// The scheduled action name.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The schedule of action. The schedule is defined format of "at expression" or "cron expression", for example `at(2016-03-04T17:27:00)` or `cron(0 10 ? * MON *)`. See [Scheduled Action](https://docs.aws.amazon.com/redshift/latest/APIReference/API_ScheduledAction.html) for more information.
  late final Output<String> schedule;

  /// The start time in UTC when the schedule is active, in UTC RFC3339 format(for example, YYYY-MM-DDTHH:MM:SSZ).
  late final Output<String?> startTime;

  /// Target action. Documented below.
  late final Output<ScheduledActionTargetAction> targetAction;

  ScheduledAction2(
    String name, {
    ScheduledActionArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:redshift/scheduledAction:ScheduledAction',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.enable = registerOutput<bool?>('enable');
    this.endTime = registerOutput<String?>('endTime');
    this.iamRole = registerOutput<String>('iamRole');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.schedule = registerOutput<String>('schedule');
    this.startTime = registerOutput<String?>('startTime');
    this.targetAction =
        registerOutput<ScheduledActionTargetAction>('targetAction');
  }
}
