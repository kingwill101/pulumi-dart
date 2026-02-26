import 'package:pulumi/pulumi.dart';
import '../experiment_template_action/experiment_template_action.dart';
import '../experiment_template_experiment_options/experiment_template_experiment_options.dart';
import '../experiment_template_experiment_report_configuration/experiment_template_experiment_report_configuration.dart';
import '../experiment_template_log_configuration/experiment_template_log_configuration.dart';
import '../experiment_template_stop_condition/experiment_template_stop_condition.dart';
import '../experiment_template_target/experiment_template_target.dart';
import 'experiment_template_args.dart';

/// Provides an FIS Experiment Template, which can be used to run an experiment.
/// An experiment template contains one or more actions to run on specified targets during an experiment.
/// It also contains the stop conditions that prevent the experiment from going out of bounds.
/// See [Amazon Fault Injection Simulator](https://docs.aws.amazon.com/fis/index.html)
/// for more information.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.fis.ExperimentTemplate("example", {
/// description: "example",
/// roleArn: exampleAwsIamRole.arn,
/// stopConditions: [{
/// source: "none",
/// }],
/// actions: [{
/// name: "example-action",
/// actionId: "aws:ec2:terminate-instances",
/// target: {
/// key: "Instances",
/// value: "example-target",
/// },
/// }],
/// targets: [{
/// name: "example-target",
/// resourceType: "aws:ec2:instance",
/// selectionMode: "COUNT(1)",
/// resourceTags: [{
/// key: "env",
/// value: "example",
/// }],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.fis.ExperimentTemplate("example",
/// description="example",
/// role_arn=example_aws_iam_role["arn"],
/// stop_conditions=[{
/// "source": "none",
/// }],
/// actions=[{
/// "name": "example-action",
/// "action_id": "aws:ec2:terminate-instances",
/// "target": {
/// "key": "Instances",
/// "value": "example-target",
/// },
/// }],
/// targets=[{
/// "name": "example-target",
/// "resource_type": "aws:ec2:instance",
/// "selection_mode": "COUNT(1)",
/// "resource_tags": [{
/// "key": "env",
/// "value": "example",
/// }],
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
/// var example = new Aws.Fis.ExperimentTemplate("example", new()
/// {
/// Description = "example",
/// RoleArn = exampleAwsIamRole.Arn,
/// StopConditions = new[]
/// {
/// new Aws.Fis.Inputs.ExperimentTemplateStopConditionArgs
/// {
/// Source = "none",
/// },
/// },
/// Actions = new[]
/// {
/// new Aws.Fis.Inputs.ExperimentTemplateActionArgs
/// {
/// Name = "example-action",
/// ActionId = "aws:ec2:terminate-instances",
/// Target = new Aws.Fis.Inputs.ExperimentTemplateActionTargetArgs
/// {
/// Key = "Instances",
/// Value = "example-target",
/// },
/// },
/// },
/// Targets = new[]
/// {
/// new Aws.Fis.Inputs.ExperimentTemplateTargetArgs
/// {
/// Name = "example-target",
/// ResourceType = "aws:ec2:instance",
/// SelectionMode = "COUNT(1)",
/// ResourceTags = new[]
/// {
/// new Aws.Fis.Inputs.ExperimentTemplateTargetResourceTagArgs
/// {
/// Key = "env",
/// Value = "example",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/fis"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := fis.NewExperimentTemplate(ctx, "example", &fis.ExperimentTemplateArgs{
/// Description: pulumi.String("example"),
/// RoleArn:     pulumi.Any(exampleAwsIamRole.Arn),
/// StopConditions: fis.ExperimentTemplateStopConditionArray{
/// &fis.ExperimentTemplateStopConditionArgs{
/// Source: pulumi.String("none"),
/// },
/// },
/// Actions: fis.ExperimentTemplateActionArray{
/// &fis.ExperimentTemplateActionArgs{
/// Name:     pulumi.String("example-action"),
/// ActionId: pulumi.String("aws:ec2:terminate-instances"),
/// Target: &fis.ExperimentTemplateActionTargetArgs{
/// Key:   pulumi.String("Instances"),
/// Value: pulumi.String("example-target"),
/// },
/// },
/// },
/// Targets: fis.ExperimentTemplateTargetArray{
/// &fis.ExperimentTemplateTargetArgs{
/// Name:          pulumi.String("example-target"),
/// ResourceType:  pulumi.String("aws:ec2:instance"),
/// SelectionMode: pulumi.String("COUNT(1)"),
/// ResourceTags: fis.ExperimentTemplateTargetResourceTagArray{
/// &fis.ExperimentTemplateTargetResourceTagArgs{
/// Key:   pulumi.String("env"),
/// Value: pulumi.String("example"),
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
/// import com.pulumi.aws.fis.ExperimentTemplate;
/// import com.pulumi.aws.fis.ExperimentTemplateArgs;
/// import com.pulumi.aws.fis.inputs.ExperimentTemplateStopConditionArgs;
/// import com.pulumi.aws.fis.inputs.ExperimentTemplateActionArgs;
/// import com.pulumi.aws.fis.inputs.ExperimentTemplateActionTargetArgs;
/// import com.pulumi.aws.fis.inputs.ExperimentTemplateTargetArgs;
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
/// var example = new ExperimentTemplate("example", ExperimentTemplateArgs.builder()
/// .description("example")
/// .roleArn(exampleAwsIamRole.arn())
/// .stopConditions(ExperimentTemplateStopConditionArgs.builder()
/// .source("none")
/// .build())
/// .actions(ExperimentTemplateActionArgs.builder()
/// .name("example-action")
/// .actionId("aws:ec2:terminate-instances")
/// .target(ExperimentTemplateActionTargetArgs.builder()
/// .key("Instances")
/// .value("example-target")
/// .build())
/// .build())
/// .targets(ExperimentTemplateTargetArgs.builder()
/// .name("example-target")
/// .resourceType("aws:ec2:instance")
/// .selectionMode("COUNT(1)")
/// .resourceTags(ExperimentTemplateTargetResourceTagArgs.builder()
/// .key("env")
/// .value("example")
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
/// type: aws:fis:ExperimentTemplate
/// properties:
/// description: example
/// roleArn: ${exampleAwsIamRole.arn}
/// stopConditions:
/// - source: none
/// actions:
/// - name: example-action
/// actionId: aws:ec2:terminate-instances
/// target:
/// key: Instances
/// value: example-target
/// targets:
/// - name: example-target
/// resourceType: aws:ec2:instance
/// selectionMode: COUNT(1)
/// resourceTags:
/// - key: env
/// value: example
/// ```
/// <!--End PulumiCodeChooser -->
///
///
/// ### With Report Configuration
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getPartition({});
/// const example = new aws.iam.Role("example", {
/// name: "example",
/// assumeRolePolicy: JSON.stringify({
/// Statement: [{
/// Action: "sts:AssumeRole",
/// Effect: "Allow",
/// Principal: {
/// Service: [current.then(current => `fis.${current.dnsSuffix}`)],
/// },
/// }],
/// Version: "2012-10-17",
/// }),
/// });
/// const reportAccess = aws.iam.getPolicyDocument({
/// version: "2012-10-17",
/// statements: [
/// {
/// sid: "logsDelivery",
/// effect: "Allow",
/// actions: ["logs:CreateLogDelivery"],
/// resources: ["*"],
/// },
/// {
/// sid: "ReportsBucket",
/// effect: "Allow",
/// actions: [
/// "s3:PutObject",
/// "s3:GetObject",
/// ],
/// resources: ["*"],
/// },
/// {
/// sid: "GetDashboard",
/// effect: "Allow",
/// actions: ["cloudwatch:GetDashboard"],
/// resources: ["*"],
/// },
/// {
/// sid: "GetDashboardData",
/// effect: "Allow",
/// actions: ["cloudwatch:getMetricWidgetImage"],
/// resources: ["*"],
/// },
/// ],
/// });
/// const reportAccessPolicy = new aws.iam.Policy("report_access", {
/// name: "report_access",
/// policy: reportAccess.then(reportAccess => reportAccess.json),
/// });
/// const reportAccessRolePolicyAttachment = new aws.iam.RolePolicyAttachment("report_access", {
/// role: test.name,
/// policyArn: reportAccessPolicy.arn,
/// });
/// const exampleExperimentTemplate = new aws.fis.ExperimentTemplate("example", {
/// description: "example",
/// roleArn: example.arn,
/// stopConditions: [{
/// source: "none",
/// }],
/// actions: [{
/// name: "example-action",
/// actionId: "aws:ec2:terminate-instances",
/// target: {
/// key: "Instances",
/// value: "example-target",
/// },
/// }],
/// targets: [{
/// name: "example-target",
/// resourceType: "aws:ec2:instance",
/// selectionMode: "COUNT(1)",
/// resourceTags: [{
/// key: "env",
/// value: "example",
/// }],
/// }],
/// experimentReportConfiguration: {
/// dataSources: {
/// cloudwatchDashboards: [{
/// dashboardArn: exampleAwsCloudwatchDashboard.dashboardArn,
/// }],
/// },
/// outputs: {
/// s3Configuration: {
/// bucketName: exampleAwsS3Bucket.bucket,
/// prefix: "fis-example-reports",
/// },
/// },
/// postExperimentDuration: "PT10M",
/// preExperimentDuration: "PT10M",
/// },
/// tags: {
/// Name: "example",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// current = aws.get_partition()
/// example = aws.iam.Role("example",
/// name="example",
/// assume_role_policy=json.dumps({
/// "Statement": [{
/// "Action": "sts:AssumeRole",
/// "Effect": "Allow",
/// "Principal": {
/// "Service": [f"fis.{current.dns_suffix}"],
/// },
/// }],
/// "Version": "2012-10-17",
/// }))
/// report_access = aws.iam.get_policy_document(version="2012-10-17",
/// statements=[
/// {
/// "sid": "logsDelivery",
/// "effect": "Allow",
/// "actions": ["logs:CreateLogDelivery"],
/// "resources": ["*"],
/// },
/// {
/// "sid": "ReportsBucket",
/// "effect": "Allow",
/// "actions": [
/// "s3:PutObject",
/// "s3:GetObject",
/// ],
/// "resources": ["*"],
/// },
/// {
/// "sid": "GetDashboard",
/// "effect": "Allow",
/// "actions": ["cloudwatch:GetDashboard"],
/// "resources": ["*"],
/// },
/// {
/// "sid": "GetDashboardData",
/// "effect": "Allow",
/// "actions": ["cloudwatch:getMetricWidgetImage"],
/// "resources": ["*"],
/// },
/// ])
/// report_access_policy = aws.iam.Policy("report_access",
/// name="report_access",
/// policy=report_access.json)
/// report_access_role_policy_attachment = aws.iam.RolePolicyAttachment("report_access",
/// role=test["name"],
/// policy_arn=report_access_policy.arn)
/// example_experiment_template = aws.fis.ExperimentTemplate("example",
/// description="example",
/// role_arn=example.arn,
/// stop_conditions=[{
/// "source": "none",
/// }],
/// actions=[{
/// "name": "example-action",
/// "action_id": "aws:ec2:terminate-instances",
/// "target": {
/// "key": "Instances",
/// "value": "example-target",
/// },
/// }],
/// targets=[{
/// "name": "example-target",
/// "resource_type": "aws:ec2:instance",
/// "selection_mode": "COUNT(1)",
/// "resource_tags": [{
/// "key": "env",
/// "value": "example",
/// }],
/// }],
/// experiment_report_configuration={
/// "data_sources": {
/// "cloudwatch_dashboards": [{
/// "dashboard_arn": example_aws_cloudwatch_dashboard["dashboardArn"],
/// }],
/// },
/// "outputs": {
/// "s3_configuration": {
/// "bucket_name": example_aws_s3_bucket["bucket"],
/// "prefix": "fis-example-reports",
/// },
/// },
/// "post_experiment_duration": "PT10M",
/// "pre_experiment_duration": "PT10M",
/// },
/// tags={
/// "Name": "example",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var current = Aws.GetPartition.Invoke();
///
/// var example = new Aws.Iam.Role("example", new()
/// {
/// Name = "example",
/// AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["Statement"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["Action"] = "sts:AssumeRole",
/// ["Effect"] = "Allow",
/// ["Principal"] = new Dictionary<string, object?>
/// {
/// ["Service"] = new[]
/// {
/// $"fis.{current.Apply(getPartitionResult => getPartitionResult.DnsSuffix)}",
/// },
/// },
/// },
/// },
/// ["Version"] = "2012-10-17",
/// }),
/// });
///
/// var reportAccess = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Version = "2012-10-17",
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Sid = "logsDelivery",
/// Effect = "Allow",
/// Actions = new[]
/// {
/// "logs:CreateLogDelivery",
/// },
/// Resources = new[]
/// {
/// "*",
/// },
/// },
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Sid = "ReportsBucket",
/// Effect = "Allow",
/// Actions = new[]
/// {
/// "s3:PutObject",
/// "s3:GetObject",
/// },
/// Resources = new[]
/// {
/// "*",
/// },
/// },
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Sid = "GetDashboard",
/// Effect = "Allow",
/// Actions = new[]
/// {
/// "cloudwatch:GetDashboard",
/// },
/// Resources = new[]
/// {
/// "*",
/// },
/// },
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Sid = "GetDashboardData",
/// Effect = "Allow",
/// Actions = new[]
/// {
/// "cloudwatch:getMetricWidgetImage",
/// },
/// Resources = new[]
/// {
/// "*",
/// },
/// },
/// },
/// });
///
/// var reportAccessPolicy = new Aws.Iam.Policy("report_access", new()
/// {
/// Name = "report_access",
/// PolicyDocument = reportAccess.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// var reportAccessRolePolicyAttachment = new Aws.Iam.RolePolicyAttachment("report_access", new()
/// {
/// Role = test.Name,
/// PolicyArn = reportAccessPolicy.Arn,
/// });
///
/// var exampleExperimentTemplate = new Aws.Fis.ExperimentTemplate("example", new()
/// {
/// Description = "example",
/// RoleArn = example.Arn,
/// StopConditions = new[]
/// {
/// new Aws.Fis.Inputs.ExperimentTemplateStopConditionArgs
/// {
/// Source = "none",
/// },
/// },
/// Actions = new[]
/// {
/// new Aws.Fis.Inputs.ExperimentTemplateActionArgs
/// {
/// Name = "example-action",
/// ActionId = "aws:ec2:terminate-instances",
/// Target = new Aws.Fis.Inputs.ExperimentTemplateActionTargetArgs
/// {
/// Key = "Instances",
/// Value = "example-target",
/// },
/// },
/// },
/// Targets = new[]
/// {
/// new Aws.Fis.Inputs.ExperimentTemplateTargetArgs
/// {
/// Name = "example-target",
/// ResourceType = "aws:ec2:instance",
/// SelectionMode = "COUNT(1)",
/// ResourceTags = new[]
/// {
/// new Aws.Fis.Inputs.ExperimentTemplateTargetResourceTagArgs
/// {
/// Key = "env",
/// Value = "example",
/// },
/// },
/// },
/// },
/// ExperimentReportConfiguration = new Aws.Fis.Inputs.ExperimentTemplateExperimentReportConfigurationArgs
/// {
/// DataSources = new Aws.Fis.Inputs.ExperimentTemplateExperimentReportConfigurationDataSourcesArgs
/// {
/// CloudwatchDashboards = new[]
/// {
/// new Aws.Fis.Inputs.ExperimentTemplateExperimentReportConfigurationDataSourcesCloudwatchDashboardArgs
/// {
/// DashboardArn = exampleAwsCloudwatchDashboard.DashboardArn,
/// },
/// },
/// },
/// Outputs = new Aws.Fis.Inputs.ExperimentTemplateExperimentReportConfigurationOutputsArgs
/// {
/// S3Configuration = new Aws.Fis.Inputs.ExperimentTemplateExperimentReportConfigurationOutputsS3ConfigurationArgs
/// {
/// BucketName = exampleAwsS3Bucket.Bucket,
/// Prefix = "fis-example-reports",
/// },
/// },
/// PostExperimentDuration = "PT10M",
/// PreExperimentDuration = "PT10M",
/// },
/// Tags =
/// {
/// { "Name", "example" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "encoding/json"
/// "fmt"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/fis"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// current, err := aws.GetPartition(ctx, &aws.GetPartitionArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "Statement": []map[string]interface{}{
/// map[string]interface{}{
/// "Action": "sts:AssumeRole",
/// "Effect": "Allow",
/// "Principal": map[string]interface{}{
/// "Service": []string{
/// fmt.Sprintf("fis.%v", current.DnsSuffix),
/// },
/// },
/// },
/// },
/// "Version": "2012-10-17",
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// example, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// Name:             pulumi.String("example"),
/// AssumeRolePolicy: pulumi.String(json0),
/// })
/// if err != nil {
/// return err
/// }
/// reportAccess, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Version: pulumi.StringRef("2012-10-17"),
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Sid:    pulumi.StringRef("logsDelivery"),
/// Effect: pulumi.StringRef("Allow"),
/// Actions: []string{
/// "logs:CreateLogDelivery",
/// },
/// Resources: []string{
/// "*",
/// },
/// },
/// {
/// Sid:    pulumi.StringRef("ReportsBucket"),
/// Effect: pulumi.StringRef("Allow"),
/// Actions: []string{
/// "s3:PutObject",
/// "s3:GetObject",
/// },
/// Resources: []string{
/// "*",
/// },
/// },
/// {
/// Sid:    pulumi.StringRef("GetDashboard"),
/// Effect: pulumi.StringRef("Allow"),
/// Actions: []string{
/// "cloudwatch:GetDashboard",
/// },
/// Resources: []string{
/// "*",
/// },
/// },
/// {
/// Sid:    pulumi.StringRef("GetDashboardData"),
/// Effect: pulumi.StringRef("Allow"),
/// Actions: []string{
/// "cloudwatch:getMetricWidgetImage",
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
/// reportAccessPolicy, err := iam.NewPolicy(ctx, "report_access", &iam.PolicyArgs{
/// Name:   pulumi.String("report_access"),
/// Policy: pulumi.String(reportAccess.Json),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = iam.NewRolePolicyAttachment(ctx, "report_access", &iam.RolePolicyAttachmentArgs{
/// Role:      pulumi.Any(test.Name),
/// PolicyArn: reportAccessPolicy.Arn,
/// })
/// if err != nil {
/// return err
/// }
/// _, err = fis.NewExperimentTemplate(ctx, "example", &fis.ExperimentTemplateArgs{
/// Description: pulumi.String("example"),
/// RoleArn:     example.Arn,
/// StopConditions: fis.ExperimentTemplateStopConditionArray{
/// &fis.ExperimentTemplateStopConditionArgs{
/// Source: pulumi.String("none"),
/// },
/// },
/// Actions: fis.ExperimentTemplateActionArray{
/// &fis.ExperimentTemplateActionArgs{
/// Name:     pulumi.String("example-action"),
/// ActionId: pulumi.String("aws:ec2:terminate-instances"),
/// Target: &fis.ExperimentTemplateActionTargetArgs{
/// Key:   pulumi.String("Instances"),
/// Value: pulumi.String("example-target"),
/// },
/// },
/// },
/// Targets: fis.ExperimentTemplateTargetArray{
/// &fis.ExperimentTemplateTargetArgs{
/// Name:          pulumi.String("example-target"),
/// ResourceType:  pulumi.String("aws:ec2:instance"),
/// SelectionMode: pulumi.String("COUNT(1)"),
/// ResourceTags: fis.ExperimentTemplateTargetResourceTagArray{
/// &fis.ExperimentTemplateTargetResourceTagArgs{
/// Key:   pulumi.String("env"),
/// Value: pulumi.String("example"),
/// },
/// },
/// },
/// },
/// ExperimentReportConfiguration: &fis.ExperimentTemplateExperimentReportConfigurationArgs{
/// DataSources: &fis.ExperimentTemplateExperimentReportConfigurationDataSourcesArgs{
/// CloudwatchDashboards: fis.ExperimentTemplateExperimentReportConfigurationDataSourcesCloudwatchDashboardArray{
/// &fis.ExperimentTemplateExperimentReportConfigurationDataSourcesCloudwatchDashboardArgs{
/// DashboardArn: pulumi.Any(exampleAwsCloudwatchDashboard.DashboardArn),
/// },
/// },
/// },
/// Outputs: &fis.ExperimentTemplateExperimentReportConfigurationOutputsArgs{
/// S3Configuration: &fis.ExperimentTemplateExperimentReportConfigurationOutputsS3ConfigurationArgs{
/// BucketName: pulumi.Any(exampleAwsS3Bucket.Bucket),
/// Prefix:     pulumi.String("fis-example-reports"),
/// },
/// },
/// PostExperimentDuration: pulumi.String("PT10M"),
/// PreExperimentDuration:  pulumi.String("PT10M"),
/// },
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("example"),
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetPartitionArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Policy;
/// import com.pulumi.aws.iam.PolicyArgs;
/// import com.pulumi.aws.iam.RolePolicyAttachment;
/// import com.pulumi.aws.iam.RolePolicyAttachmentArgs;
/// import com.pulumi.aws.fis.ExperimentTemplate;
/// import com.pulumi.aws.fis.ExperimentTemplateArgs;
/// import com.pulumi.aws.fis.inputs.ExperimentTemplateStopConditionArgs;
/// import com.pulumi.aws.fis.inputs.ExperimentTemplateActionArgs;
/// import com.pulumi.aws.fis.inputs.ExperimentTemplateActionTargetArgs;
/// import com.pulumi.aws.fis.inputs.ExperimentTemplateTargetArgs;
/// import com.pulumi.aws.fis.inputs.ExperimentTemplateExperimentReportConfigurationArgs;
/// import com.pulumi.aws.fis.inputs.ExperimentTemplateExperimentReportConfigurationDataSourcesArgs;
/// import com.pulumi.aws.fis.inputs.ExperimentTemplateExperimentReportConfigurationOutputsArgs;
/// import com.pulumi.aws.fis.inputs.ExperimentTemplateExperimentReportConfigurationOutputsS3ConfigurationArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
/// final var current = AwsFunctions.getPartition(GetPartitionArgs.builder()
/// .build());
///
/// var example = new Role("example", RoleArgs.builder()
/// .name("example")
/// .assumeRolePolicy(serializeJson(
/// jsonObject(
/// jsonProperty("Statement", jsonArray(jsonObject(
/// jsonProperty("Action", "sts:AssumeRole"),
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Principal", jsonObject(
/// jsonProperty("Service", jsonArray(String.format("fis.%s", current.dnsSuffix())))
/// ))
/// ))),
/// jsonProperty("Version", "2012-10-17")
/// )))
/// .build());
///
/// final var reportAccess = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .version("2012-10-17")
/// .statements(
/// GetPolicyDocumentStatementArgs.builder()
/// .sid("logsDelivery")
/// .effect("Allow")
/// .actions("logs:CreateLogDelivery")
/// .resources("*")
/// .build(),
/// GetPolicyDocumentStatementArgs.builder()
/// .sid("ReportsBucket")
/// .effect("Allow")
/// .actions(
/// "s3:PutObject",
/// "s3:GetObject")
/// .resources("*")
/// .build(),
/// GetPolicyDocumentStatementArgs.builder()
/// .sid("GetDashboard")
/// .effect("Allow")
/// .actions("cloudwatch:GetDashboard")
/// .resources("*")
/// .build(),
/// GetPolicyDocumentStatementArgs.builder()
/// .sid("GetDashboardData")
/// .effect("Allow")
/// .actions("cloudwatch:getMetricWidgetImage")
/// .resources("*")
/// .build())
/// .build());
///
/// var reportAccessPolicy = new Policy("reportAccessPolicy", PolicyArgs.builder()
/// .name("report_access")
/// .policy(reportAccess.json())
/// .build());
///
/// var reportAccessRolePolicyAttachment = new RolePolicyAttachment("reportAccessRolePolicyAttachment", RolePolicyAttachmentArgs.builder()
/// .role(test.name())
/// .policyArn(reportAccessPolicy.arn())
/// .build());
///
/// var exampleExperimentTemplate = new ExperimentTemplate("exampleExperimentTemplate", ExperimentTemplateArgs.builder()
/// .description("example")
/// .roleArn(example.arn())
/// .stopConditions(ExperimentTemplateStopConditionArgs.builder()
/// .source("none")
/// .build())
/// .actions(ExperimentTemplateActionArgs.builder()
/// .name("example-action")
/// .actionId("aws:ec2:terminate-instances")
/// .target(ExperimentTemplateActionTargetArgs.builder()
/// .key("Instances")
/// .value("example-target")
/// .build())
/// .build())
/// .targets(ExperimentTemplateTargetArgs.builder()
/// .name("example-target")
/// .resourceType("aws:ec2:instance")
/// .selectionMode("COUNT(1)")
/// .resourceTags(ExperimentTemplateTargetResourceTagArgs.builder()
/// .key("env")
/// .value("example")
/// .build())
/// .build())
/// .experimentReportConfiguration(ExperimentTemplateExperimentReportConfigurationArgs.builder()
/// .dataSources(ExperimentTemplateExperimentReportConfigurationDataSourcesArgs.builder()
/// .cloudwatchDashboards(ExperimentTemplateExperimentReportConfigurationDataSourcesCloudwatchDashboardArgs.builder()
/// .dashboardArn(exampleAwsCloudwatchDashboard.dashboardArn())
/// .build())
/// .build())
/// .outputs(ExperimentTemplateExperimentReportConfigurationOutputsArgs.builder()
/// .s3Configuration(ExperimentTemplateExperimentReportConfigurationOutputsS3ConfigurationArgs.builder()
/// .bucketName(exampleAwsS3Bucket.bucket())
/// .prefix("fis-example-reports")
/// .build())
/// .build())
/// .postExperimentDuration("PT10M")
/// .preExperimentDuration("PT10M")
/// .build())
/// .tags(Map.of("Name", "example"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:iam:Role
/// properties:
/// name: example
/// assumeRolePolicy:
/// fn::toJSON:
/// Statement:
/// - Action: sts:AssumeRole
/// Effect: Allow
/// Principal:
/// Service:
/// - fis.${current.dnsSuffix}
/// Version: 2012-10-17
/// reportAccessPolicy:
/// type: aws:iam:Policy
/// name: report_access
/// properties:
/// name: report_access
/// policy: ${reportAccess.json}
/// reportAccessRolePolicyAttachment:
/// type: aws:iam:RolePolicyAttachment
/// name: report_access
/// properties:
/// role: ${test.name}
/// policyArn: ${reportAccessPolicy.arn}
/// exampleExperimentTemplate:
/// type: aws:fis:ExperimentTemplate
/// name: example
/// properties:
/// description: example
/// roleArn: ${example.arn}
/// stopConditions:
/// - source: none
/// actions:
/// - name: example-action
/// actionId: aws:ec2:terminate-instances
/// target:
/// key: Instances
/// value: example-target
/// targets:
/// - name: example-target
/// resourceType: aws:ec2:instance
/// selectionMode: COUNT(1)
/// resourceTags:
/// - key: env
/// value: example
/// experimentReportConfiguration:
/// dataSources:
/// cloudwatchDashboards:
/// - dashboardArn: ${exampleAwsCloudwatchDashboard.dashboardArn}
/// outputs:
/// s3Configuration:
/// bucketName: ${exampleAwsS3Bucket.bucket}
/// prefix: fis-example-reports
/// postExperimentDuration: PT10M
/// preExperimentDuration: PT10M
/// tags:
/// Name: example
/// variables:
/// current:
/// fn::invoke:
/// function: aws:getPartition
/// arguments: {}
/// reportAccess:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// version: 2012-10-17
/// statements:
/// - sid: logsDelivery
/// effect: Allow
/// actions:
/// - logs:CreateLogDelivery
/// resources:
/// - '*'
/// - sid: ReportsBucket
/// effect: Allow
/// actions:
/// - s3:PutObject
/// - s3:GetObject
/// resources:
/// - '*'
/// - sid: GetDashboard
/// effect: Allow
/// actions:
/// - cloudwatch:GetDashboard
/// resources:
/// - '*'
/// - sid: GetDashboardData
/// effect: Allow
/// actions:
/// - cloudwatch:getMetricWidgetImage
/// resources:
/// - '*'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import FIS Experiment Templates using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:fis/experimentTemplate:ExperimentTemplate template EXT123AbCdEfGhIjK
/// ```
class ExperimentTemplate extends CustomResource {
  /// Action to be performed during an experiment. See below.
  late final Output<List<ExperimentTemplateAction>> actions;

  /// Description for the experiment template.
  late final Output<String> description;

  /// The experiment options for the experiment template. See<span pulumi-lang-nodejs=" experimentOptions " pulumi-lang-dotnet=" ExperimentOptions " pulumi-lang-go=" experimentOptions " pulumi-lang-python=" experiment_options " pulumi-lang-yaml=" experimentOptions " pulumi-lang-java=" experimentOptions "> experiment_options </span>below for more details!
  late final Output<ExperimentTemplateExperimentOptions> experimentOptions;

  /// The configuration for [experiment reporting](https://docs.aws.amazon.com/fis/latest/userguide/experiment-report-configuration.html). See below.
  late final Output<ExperimentTemplateExperimentReportConfiguration?>
      experimentReportConfiguration;

  /// The configuration for experiment logging. See below.
  late final Output<ExperimentTemplateLogConfiguration?> logConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN of an IAM role that grants the AWS FIS service permission to perform service actions on your behalf.
  late final Output<String> roleArn;

  /// When an ongoing experiment should be stopped. See below.
  ///
  /// The following arguments are optional:
  late final Output<List<ExperimentTemplateStopCondition>> stopConditions;

  /// Key-value mapping of tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// Target of an action. See below.
  late final Output<List<ExperimentTemplateTarget>?> targets;

  ExperimentTemplate(
    String name, {
    ExperimentTemplateArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:fis/experimentTemplate:ExperimentTemplate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.actions = Output.createUnknown<List<ExperimentTemplateAction>>();
    this.description = Output.createUnknown<String>();
    this.experimentOptions =
        Output.createUnknown<ExperimentTemplateExperimentOptions>();
    this.experimentReportConfiguration = Output.createUnknown<
        ExperimentTemplateExperimentReportConfiguration?>();
    this.logConfiguration =
        Output.createUnknown<ExperimentTemplateLogConfiguration?>();
    this.region = Output.createUnknown<String>();
    this.roleArn = Output.createUnknown<String>();
    this.stopConditions =
        Output.createUnknown<List<ExperimentTemplateStopCondition>>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.targets = Output.createUnknown<List<ExperimentTemplateTarget>?>();
  }
}
