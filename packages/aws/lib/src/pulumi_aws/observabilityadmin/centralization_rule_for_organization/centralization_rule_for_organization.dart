import 'package:pulumi/pulumi.dart';
import '../centralization_rule_for_organization_rule/centralization_rule_for_organization_rule.dart';
import '../centralization_rule_for_organization_timeouts/centralization_rule_for_organization_timeouts.dart';
import 'centralization_rule_for_organization_args.dart';

/// Manages an AWS CloudWatch Observability Admin Centralization Rule For Organization.
///
/// Centralization rules enable you to centralize log data from multiple AWS accounts and regions within your organization to a single destination account and region. This helps with log management, compliance, and cost optimization by consolidating logs in a central location.
///
/// This requires an AWS account within an organization with at least [delegated administrator permissions](https://docs.aws.amazon.com/organizations/latest/APIReference/API_RegisterDelegatedAdministrator.html).
///
/// ## Example Usage
///
/// ### Basic Centralization Rule
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const currentGetOrganization = aws.organizations.getOrganization({});
/// const example = new aws.observabilityadmin.CentralizationRuleForOrganization("example", {
/// ruleName: "example-centralization-rule",
/// rule: {
/// destination: {
/// region: "eu-west-1",
/// account: current.then(current => current.accountId),
/// },
/// source: {
/// regions: ["ap-southeast-1"],
/// scope: currentGetOrganization.then(currentGetOrganization => `OrganizationId = '${currentGetOrganization.id}'`),
/// sourceLogsConfiguration: {
/// encryptedLogGroupStrategy: "SKIP",
/// logGroupSelectionCriteria: "*",
/// },
/// },
/// },
/// tags: {
/// Name: "example-centralization-rule",
/// Environment: "production",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// current_get_organization = aws.organizations.get_organization()
/// example = aws.observabilityadmin.CentralizationRuleForOrganization("example",
/// rule_name="example-centralization-rule",
/// rule={
/// "destination": {
/// "region": "eu-west-1",
/// "account": current.account_id,
/// },
/// "source": {
/// "regions": ["ap-southeast-1"],
/// "scope": f"OrganizationId = '{current_get_organization.id}'",
/// "source_logs_configuration": {
/// "encrypted_log_group_strategy": "SKIP",
/// "log_group_selection_criteria": "*",
/// },
/// },
/// },
/// tags={
/// "Name": "example-centralization-rule",
/// "Environment": "production",
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
/// var current = Aws.GetCallerIdentity.Invoke();
///
/// var currentGetOrganization = Aws.Organizations.GetOrganization.Invoke();
///
/// var example = new Aws.Observabilityadmin.CentralizationRuleForOrganization("example", new()
/// {
/// RuleName = "example-centralization-rule",
/// Rule = new Aws.Observabilityadmin.Inputs.CentralizationRuleForOrganizationRuleArgs
/// {
/// Destination = new Aws.Observabilityadmin.Inputs.CentralizationRuleForOrganizationRuleDestinationArgs
/// {
/// Region = "eu-west-1",
/// Account = current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
/// },
/// Source = new Aws.Observabilityadmin.Inputs.CentralizationRuleForOrganizationRuleSourceArgs
/// {
/// Regions = new[]
/// {
/// "ap-southeast-1",
/// },
/// Scope = $"OrganizationId = '{currentGetOrganization.Apply(getOrganizationResult => getOrganizationResult.Id)}'",
/// SourceLogsConfiguration = new Aws.Observabilityadmin.Inputs.CentralizationRuleForOrganizationRuleSourceSourceLogsConfigurationArgs
/// {
/// EncryptedLogGroupStrategy = "SKIP",
/// LogGroupSelectionCriteria = "*",
/// },
/// },
/// },
/// Tags =
/// {
/// { "Name", "example-centralization-rule" },
/// { "Environment", "production" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/observabilityadmin"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// currentGetOrganization, err := organizations.LookupOrganization(ctx, &organizations.LookupOrganizationArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = observabilityadmin.NewCentralizationRuleForOrganization(ctx, "example", &observabilityadmin.CentralizationRuleForOrganizationArgs{
/// RuleName: pulumi.String("example-centralization-rule"),
/// Rule: &observabilityadmin.CentralizationRuleForOrganizationRuleArgs{
/// Destination: &observabilityadmin.CentralizationRuleForOrganizationRuleDestinationArgs{
/// Region:  pulumi.String("eu-west-1"),
/// Account: pulumi.String(current.AccountId),
/// },
/// Source: &observabilityadmin.CentralizationRuleForOrganizationRuleSourceArgs{
/// Regions: pulumi.StringArray{
/// pulumi.String("ap-southeast-1"),
/// },
/// Scope: pulumi.Sprintf("OrganizationId = '%v'", currentGetOrganization.Id),
/// SourceLogsConfiguration: &observabilityadmin.CentralizationRuleForOrganizationRuleSourceSourceLogsConfigurationArgs{
/// EncryptedLogGroupStrategy: pulumi.String("SKIP"),
/// LogGroupSelectionCriteria: pulumi.String("*"),
/// },
/// },
/// },
/// Tags: pulumi.StringMap{
/// "Name":        pulumi.String("example-centralization-rule"),
/// "Environment": pulumi.String("production"),
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
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.organizations.OrganizationsFunctions;
/// import com.pulumi.aws.organizations.inputs.GetOrganizationArgs;
/// import com.pulumi.aws.observabilityadmin.CentralizationRuleForOrganization;
/// import com.pulumi.aws.observabilityadmin.CentralizationRuleForOrganizationArgs;
/// import com.pulumi.aws.observabilityadmin.inputs.CentralizationRuleForOrganizationRuleArgs;
/// import com.pulumi.aws.observabilityadmin.inputs.CentralizationRuleForOrganizationRuleDestinationArgs;
/// import com.pulumi.aws.observabilityadmin.inputs.CentralizationRuleForOrganizationRuleSourceArgs;
/// import com.pulumi.aws.observabilityadmin.inputs.CentralizationRuleForOrganizationRuleSourceSourceLogsConfigurationArgs;
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
/// final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
/// .build());
///
/// final var currentGetOrganization = OrganizationsFunctions.getOrganization(GetOrganizationArgs.builder()
/// .build());
///
/// var example = new CentralizationRuleForOrganization("example", CentralizationRuleForOrganizationArgs.builder()
/// .ruleName("example-centralization-rule")
/// .rule(CentralizationRuleForOrganizationRuleArgs.builder()
/// .destination(CentralizationRuleForOrganizationRuleDestinationArgs.builder()
/// .region("eu-west-1")
/// .account(current.accountId())
/// .build())
/// .source(CentralizationRuleForOrganizationRuleSourceArgs.builder()
/// .regions("ap-southeast-1")
/// .scope(String.format("OrganizationId = '%s'", currentGetOrganization.id()))
/// .sourceLogsConfiguration(CentralizationRuleForOrganizationRuleSourceSourceLogsConfigurationArgs.builder()
/// .encryptedLogGroupStrategy("SKIP")
/// .logGroupSelectionCriteria("*")
/// .build())
/// .build())
/// .build())
/// .tags(Map.ofEntries(
/// Map.entry("Name", "example-centralization-rule"),
/// Map.entry("Environment", "production")
/// ))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:observabilityadmin:CentralizationRuleForOrganization
/// properties:
/// ruleName: example-centralization-rule
/// rule:
/// destination:
/// region: eu-west-1
/// account: ${current.accountId}
/// source:
/// regions:
/// - ap-southeast-1
/// scope: OrganizationId = '${currentGetOrganization.id}'
/// sourceLogsConfiguration:
/// encryptedLogGroupStrategy: SKIP
/// logGroupSelectionCriteria: '*'
/// tags:
/// Name: example-centralization-rule
/// Environment: production
/// variables:
/// current:
/// fn::invoke:
/// function: aws:getCallerIdentity
/// arguments: {}
/// currentGetOrganization:
/// fn::invoke:
/// function: aws:organizations:getOrganization
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Advanced Configuration with Encryption and Backup
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const currentGetOrganization = aws.organizations.getOrganization({});
/// const advanced = new aws.observabilityadmin.CentralizationRuleForOrganization("advanced", {
/// ruleName: "advanced-centralization-rule",
/// rule: {
/// destination: {
/// region: "eu-west-1",
/// account: current.then(current => current.accountId),
/// destinationLogsConfiguration: {
/// logsEncryptionConfiguration: {
/// encryptionStrategy: "AWS_OWNED",
/// },
/// backupConfiguration: {
/// region: "us-west-1",
/// },
/// },
/// },
/// source: {
/// regions: [
/// "ap-southeast-1",
/// "us-east-1",
/// ],
/// scope: currentGetOrganization.then(currentGetOrganization => `OrganizationId = '${currentGetOrganization.id}'`),
/// sourceLogsConfiguration: {
/// encryptedLogGroupStrategy: "ALLOW",
/// logGroupSelectionCriteria: "*",
/// },
/// },
/// },
/// tags: {
/// Name: "advanced-centralization-rule",
/// Environment: "production",
/// Team: "observability",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// current_get_organization = aws.organizations.get_organization()
/// advanced = aws.observabilityadmin.CentralizationRuleForOrganization("advanced",
/// rule_name="advanced-centralization-rule",
/// rule={
/// "destination": {
/// "region": "eu-west-1",
/// "account": current.account_id,
/// "destination_logs_configuration": {
/// "logs_encryption_configuration": {
/// "encryption_strategy": "AWS_OWNED",
/// },
/// "backup_configuration": {
/// "region": "us-west-1",
/// },
/// },
/// },
/// "source": {
/// "regions": [
/// "ap-southeast-1",
/// "us-east-1",
/// ],
/// "scope": f"OrganizationId = '{current_get_organization.id}'",
/// "source_logs_configuration": {
/// "encrypted_log_group_strategy": "ALLOW",
/// "log_group_selection_criteria": "*",
/// },
/// },
/// },
/// tags={
/// "Name": "advanced-centralization-rule",
/// "Environment": "production",
/// "Team": "observability",
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
/// var current = Aws.GetCallerIdentity.Invoke();
///
/// var currentGetOrganization = Aws.Organizations.GetOrganization.Invoke();
///
/// var advanced = new Aws.Observabilityadmin.CentralizationRuleForOrganization("advanced", new()
/// {
/// RuleName = "advanced-centralization-rule",
/// Rule = new Aws.Observabilityadmin.Inputs.CentralizationRuleForOrganizationRuleArgs
/// {
/// Destination = new Aws.Observabilityadmin.Inputs.CentralizationRuleForOrganizationRuleDestinationArgs
/// {
/// Region = "eu-west-1",
/// Account = current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
/// DestinationLogsConfiguration = new Aws.Observabilityadmin.Inputs.CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationArgs
/// {
/// LogsEncryptionConfiguration = new Aws.Observabilityadmin.Inputs.CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationLogsEncryptionConfigurationArgs
/// {
/// EncryptionStrategy = "AWS_OWNED",
/// },
/// BackupConfiguration = new Aws.Observabilityadmin.Inputs.CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationBackupConfigurationArgs
/// {
/// Region = "us-west-1",
/// },
/// },
/// },
/// Source = new Aws.Observabilityadmin.Inputs.CentralizationRuleForOrganizationRuleSourceArgs
/// {
/// Regions = new[]
/// {
/// "ap-southeast-1",
/// "us-east-1",
/// },
/// Scope = $"OrganizationId = '{currentGetOrganization.Apply(getOrganizationResult => getOrganizationResult.Id)}'",
/// SourceLogsConfiguration = new Aws.Observabilityadmin.Inputs.CentralizationRuleForOrganizationRuleSourceSourceLogsConfigurationArgs
/// {
/// EncryptedLogGroupStrategy = "ALLOW",
/// LogGroupSelectionCriteria = "*",
/// },
/// },
/// },
/// Tags =
/// {
/// { "Name", "advanced-centralization-rule" },
/// { "Environment", "production" },
/// { "Team", "observability" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/observabilityadmin"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// currentGetOrganization, err := organizations.LookupOrganization(ctx, &organizations.LookupOrganizationArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = observabilityadmin.NewCentralizationRuleForOrganization(ctx, "advanced", &observabilityadmin.CentralizationRuleForOrganizationArgs{
/// RuleName: pulumi.String("advanced-centralization-rule"),
/// Rule: &observabilityadmin.CentralizationRuleForOrganizationRuleArgs{
/// Destination: &observabilityadmin.CentralizationRuleForOrganizationRuleDestinationArgs{
/// Region:  pulumi.String("eu-west-1"),
/// Account: pulumi.String(current.AccountId),
/// DestinationLogsConfiguration: &observabilityadmin.CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationArgs{
/// LogsEncryptionConfiguration: &observabilityadmin.CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationLogsEncryptionConfigurationArgs{
/// EncryptionStrategy: pulumi.String("AWS_OWNED"),
/// },
/// BackupConfiguration: &observabilityadmin.CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationBackupConfigurationArgs{
/// Region: pulumi.String("us-west-1"),
/// },
/// },
/// },
/// Source: &observabilityadmin.CentralizationRuleForOrganizationRuleSourceArgs{
/// Regions: pulumi.StringArray{
/// pulumi.String("ap-southeast-1"),
/// pulumi.String("us-east-1"),
/// },
/// Scope: pulumi.Sprintf("OrganizationId = '%v'", currentGetOrganization.Id),
/// SourceLogsConfiguration: &observabilityadmin.CentralizationRuleForOrganizationRuleSourceSourceLogsConfigurationArgs{
/// EncryptedLogGroupStrategy: pulumi.String("ALLOW"),
/// LogGroupSelectionCriteria: pulumi.String("*"),
/// },
/// },
/// },
/// Tags: pulumi.StringMap{
/// "Name":        pulumi.String("advanced-centralization-rule"),
/// "Environment": pulumi.String("production"),
/// "Team":        pulumi.String("observability"),
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
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.organizations.OrganizationsFunctions;
/// import com.pulumi.aws.organizations.inputs.GetOrganizationArgs;
/// import com.pulumi.aws.observabilityadmin.CentralizationRuleForOrganization;
/// import com.pulumi.aws.observabilityadmin.CentralizationRuleForOrganizationArgs;
/// import com.pulumi.aws.observabilityadmin.inputs.CentralizationRuleForOrganizationRuleArgs;
/// import com.pulumi.aws.observabilityadmin.inputs.CentralizationRuleForOrganizationRuleDestinationArgs;
/// import com.pulumi.aws.observabilityadmin.inputs.CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationArgs;
/// import com.pulumi.aws.observabilityadmin.inputs.CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationLogsEncryptionConfigurationArgs;
/// import com.pulumi.aws.observabilityadmin.inputs.CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationBackupConfigurationArgs;
/// import com.pulumi.aws.observabilityadmin.inputs.CentralizationRuleForOrganizationRuleSourceArgs;
/// import com.pulumi.aws.observabilityadmin.inputs.CentralizationRuleForOrganizationRuleSourceSourceLogsConfigurationArgs;
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
/// final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
/// .build());
///
/// final var currentGetOrganization = OrganizationsFunctions.getOrganization(GetOrganizationArgs.builder()
/// .build());
///
/// var advanced = new CentralizationRuleForOrganization("advanced", CentralizationRuleForOrganizationArgs.builder()
/// .ruleName("advanced-centralization-rule")
/// .rule(CentralizationRuleForOrganizationRuleArgs.builder()
/// .destination(CentralizationRuleForOrganizationRuleDestinationArgs.builder()
/// .region("eu-west-1")
/// .account(current.accountId())
/// .destinationLogsConfiguration(CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationArgs.builder()
/// .logsEncryptionConfiguration(CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationLogsEncryptionConfigurationArgs.builder()
/// .encryptionStrategy("AWS_OWNED")
/// .build())
/// .backupConfiguration(CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationBackupConfigurationArgs.builder()
/// .region("us-west-1")
/// .build())
/// .build())
/// .build())
/// .source(CentralizationRuleForOrganizationRuleSourceArgs.builder()
/// .regions(
/// "ap-southeast-1",
/// "us-east-1")
/// .scope(String.format("OrganizationId = '%s'", currentGetOrganization.id()))
/// .sourceLogsConfiguration(CentralizationRuleForOrganizationRuleSourceSourceLogsConfigurationArgs.builder()
/// .encryptedLogGroupStrategy("ALLOW")
/// .logGroupSelectionCriteria("*")
/// .build())
/// .build())
/// .build())
/// .tags(Map.ofEntries(
/// Map.entry("Name", "advanced-centralization-rule"),
/// Map.entry("Environment", "production"),
/// Map.entry("Team", "observability")
/// ))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// advanced:
/// type: aws:observabilityadmin:CentralizationRuleForOrganization
/// properties:
/// ruleName: advanced-centralization-rule
/// rule:
/// destination:
/// region: eu-west-1
/// account: ${current.accountId}
/// destinationLogsConfiguration:
/// logsEncryptionConfiguration:
/// encryptionStrategy: AWS_OWNED
/// backupConfiguration:
/// region: us-west-1
/// source:
/// regions:
/// - ap-southeast-1
/// - us-east-1
/// scope: OrganizationId = '${currentGetOrganization.id}'
/// sourceLogsConfiguration:
/// encryptedLogGroupStrategy: ALLOW
/// logGroupSelectionCriteria: '*'
/// tags:
/// Name: advanced-centralization-rule
/// Environment: production
/// Team: observability
/// variables:
/// current:
/// fn::invoke:
/// function: aws:getCallerIdentity
/// arguments: {}
/// currentGetOrganization:
/// fn::invoke:
/// function: aws:organizations:getOrganization
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Selective Log Group Filtering
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const currentGetOrganization = aws.organizations.getOrganization({});
/// const filtered = new aws.observabilityadmin.CentralizationRuleForOrganization("filtered", {
/// ruleName: "filtered-centralization-rule",
/// rule: {
/// destination: {
/// region: "eu-west-1",
/// account: current.then(current => current.accountId),
/// },
/// source: {
/// regions: [
/// "ap-southeast-1",
/// "us-east-1",
/// ],
/// scope: currentGetOrganization.then(currentGetOrganization => `OrganizationId = '${currentGetOrganization.id}'`),
/// sourceLogsConfiguration: {
/// encryptedLogGroupStrategy: "ALLOW",
/// logGroupSelectionCriteria: "LogGroupName LIKE '/aws/lambda%'",
/// },
/// },
/// },
/// tags: {
/// Name: "filtered-centralization-rule",
/// Filter: "lambda-logs",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// current_get_organization = aws.organizations.get_organization()
/// filtered = aws.observabilityadmin.CentralizationRuleForOrganization("filtered",
/// rule_name="filtered-centralization-rule",
/// rule={
/// "destination": {
/// "region": "eu-west-1",
/// "account": current.account_id,
/// },
/// "source": {
/// "regions": [
/// "ap-southeast-1",
/// "us-east-1",
/// ],
/// "scope": f"OrganizationId = '{current_get_organization.id}'",
/// "source_logs_configuration": {
/// "encrypted_log_group_strategy": "ALLOW",
/// "log_group_selection_criteria": "LogGroupName LIKE '/aws/lambda%'",
/// },
/// },
/// },
/// tags={
/// "Name": "filtered-centralization-rule",
/// "Filter": "lambda-logs",
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
/// var current = Aws.GetCallerIdentity.Invoke();
///
/// var currentGetOrganization = Aws.Organizations.GetOrganization.Invoke();
///
/// var filtered = new Aws.Observabilityadmin.CentralizationRuleForOrganization("filtered", new()
/// {
/// RuleName = "filtered-centralization-rule",
/// Rule = new Aws.Observabilityadmin.Inputs.CentralizationRuleForOrganizationRuleArgs
/// {
/// Destination = new Aws.Observabilityadmin.Inputs.CentralizationRuleForOrganizationRuleDestinationArgs
/// {
/// Region = "eu-west-1",
/// Account = current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
/// },
/// Source = new Aws.Observabilityadmin.Inputs.CentralizationRuleForOrganizationRuleSourceArgs
/// {
/// Regions = new[]
/// {
/// "ap-southeast-1",
/// "us-east-1",
/// },
/// Scope = $"OrganizationId = '{currentGetOrganization.Apply(getOrganizationResult => getOrganizationResult.Id)}'",
/// SourceLogsConfiguration = new Aws.Observabilityadmin.Inputs.CentralizationRuleForOrganizationRuleSourceSourceLogsConfigurationArgs
/// {
/// EncryptedLogGroupStrategy = "ALLOW",
/// LogGroupSelectionCriteria = "LogGroupName LIKE '/aws/lambda%'",
/// },
/// },
/// },
/// Tags =
/// {
/// { "Name", "filtered-centralization-rule" },
/// { "Filter", "lambda-logs" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/observabilityadmin"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// currentGetOrganization, err := organizations.LookupOrganization(ctx, &organizations.LookupOrganizationArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = observabilityadmin.NewCentralizationRuleForOrganization(ctx, "filtered", &observabilityadmin.CentralizationRuleForOrganizationArgs{
/// RuleName: pulumi.String("filtered-centralization-rule"),
/// Rule: &observabilityadmin.CentralizationRuleForOrganizationRuleArgs{
/// Destination: &observabilityadmin.CentralizationRuleForOrganizationRuleDestinationArgs{
/// Region:  pulumi.String("eu-west-1"),
/// Account: pulumi.String(current.AccountId),
/// },
/// Source: &observabilityadmin.CentralizationRuleForOrganizationRuleSourceArgs{
/// Regions: pulumi.StringArray{
/// pulumi.String("ap-southeast-1"),
/// pulumi.String("us-east-1"),
/// },
/// Scope: pulumi.Sprintf("OrganizationId = '%v'", currentGetOrganization.Id),
/// SourceLogsConfiguration: &observabilityadmin.CentralizationRuleForOrganizationRuleSourceSourceLogsConfigurationArgs{
/// EncryptedLogGroupStrategy: pulumi.String("ALLOW"),
/// LogGroupSelectionCriteria: pulumi.String("LogGroupName LIKE '/aws/lambda%'"),
/// },
/// },
/// },
/// Tags: pulumi.StringMap{
/// "Name":   pulumi.String("filtered-centralization-rule"),
/// "Filter": pulumi.String("lambda-logs"),
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
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.organizations.OrganizationsFunctions;
/// import com.pulumi.aws.organizations.inputs.GetOrganizationArgs;
/// import com.pulumi.aws.observabilityadmin.CentralizationRuleForOrganization;
/// import com.pulumi.aws.observabilityadmin.CentralizationRuleForOrganizationArgs;
/// import com.pulumi.aws.observabilityadmin.inputs.CentralizationRuleForOrganizationRuleArgs;
/// import com.pulumi.aws.observabilityadmin.inputs.CentralizationRuleForOrganizationRuleDestinationArgs;
/// import com.pulumi.aws.observabilityadmin.inputs.CentralizationRuleForOrganizationRuleSourceArgs;
/// import com.pulumi.aws.observabilityadmin.inputs.CentralizationRuleForOrganizationRuleSourceSourceLogsConfigurationArgs;
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
/// final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
/// .build());
///
/// final var currentGetOrganization = OrganizationsFunctions.getOrganization(GetOrganizationArgs.builder()
/// .build());
///
/// var filtered = new CentralizationRuleForOrganization("filtered", CentralizationRuleForOrganizationArgs.builder()
/// .ruleName("filtered-centralization-rule")
/// .rule(CentralizationRuleForOrganizationRuleArgs.builder()
/// .destination(CentralizationRuleForOrganizationRuleDestinationArgs.builder()
/// .region("eu-west-1")
/// .account(current.accountId())
/// .build())
/// .source(CentralizationRuleForOrganizationRuleSourceArgs.builder()
/// .regions(
/// "ap-southeast-1",
/// "us-east-1")
/// .scope(String.format("OrganizationId = '%s'", currentGetOrganization.id()))
/// .sourceLogsConfiguration(CentralizationRuleForOrganizationRuleSourceSourceLogsConfigurationArgs.builder()
/// .encryptedLogGroupStrategy("ALLOW")
/// .logGroupSelectionCriteria("LogGroupName LIKE '/aws/lambda%'")
/// .build())
/// .build())
/// .build())
/// .tags(Map.ofEntries(
/// Map.entry("Name", "filtered-centralization-rule"),
/// Map.entry("Filter", "lambda-logs")
/// ))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// filtered:
/// type: aws:observabilityadmin:CentralizationRuleForOrganization
/// properties:
/// ruleName: filtered-centralization-rule
/// rule:
/// destination:
/// region: eu-west-1
/// account: ${current.accountId}
/// source:
/// regions:
/// - ap-southeast-1
/// - us-east-1
/// scope: OrganizationId = '${currentGetOrganization.id}'
/// sourceLogsConfiguration:
/// encryptedLogGroupStrategy: ALLOW
/// logGroupSelectionCriteria: LogGroupName LIKE '/aws/lambda%'
/// tags:
/// Name: filtered-centralization-rule
/// Filter: lambda-logs
/// variables:
/// current:
/// fn::invoke:
/// function: aws:getCallerIdentity
/// arguments: {}
/// currentGetOrganization:
/// fn::invoke:
/// function: aws:organizations:getOrganization
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch Observability Admin Centralization Rule For Organization using the <span pulumi-lang-nodejs="`ruleName`" pulumi-lang-dotnet="`RuleName`" pulumi-lang-go="`ruleName`" pulumi-lang-python="`rule_name`" pulumi-lang-yaml="`ruleName`" pulumi-lang-java="`ruleName`">`rule_name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:observabilityadmin/centralizationRuleForOrganization:CentralizationRuleForOrganization example example-centralization-rule
/// ```
class CentralizationRuleForOrganization extends CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Configuration block for the centralization rule. See <span pulumi-lang-nodejs="`rule`" pulumi-lang-dotnet="`Rule`" pulumi-lang-go="`rule`" pulumi-lang-python="`rule`" pulumi-lang-yaml="`rule`" pulumi-lang-java="`rule`">`rule`</span> below.
  ///
  /// The following arguments are optional:
  late final Output<CentralizationRuleForOrganizationRule> rule;

  /// ARN of the centralization rule.
  late final Output<String> ruleArn;

  /// Name of the centralization rule. Must be unique within the organization.
  late final Output<String> ruleName;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<CentralizationRuleForOrganizationTimeouts?> timeouts;

  CentralizationRuleForOrganization(
    String name, {
    CentralizationRuleForOrganizationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:observabilityadmin/centralizationRuleForOrganization:CentralizationRuleForOrganization',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.region = Output.createUnknown<String>();
    this.rule = Output.createUnknown<CentralizationRuleForOrganizationRule>();
    this.ruleArn = Output.createUnknown<String>();
    this.ruleName = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.timeouts =
        Output.createUnknown<CentralizationRuleForOrganizationTimeouts?>();
  }
}
