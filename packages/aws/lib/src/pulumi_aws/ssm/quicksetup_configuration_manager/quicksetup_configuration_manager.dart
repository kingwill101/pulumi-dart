import 'package:pulumi/pulumi.dart';
import '../quicksetup_configuration_manager_configuration_definition/quicksetup_configuration_manager_configuration_definition.dart';
import '../quicksetup_configuration_manager_status_summary/quicksetup_configuration_manager_status_summary.dart';
import '../quicksetup_configuration_manager_timeouts/quicksetup_configuration_manager_timeouts.dart';
import 'quicksetup_configuration_manager_args.dart';

/// Resource for managing an AWS SSM Quick Setup Configuration Manager.
///
/// ## Example Usage
///
/// ### Patch Policy Configuration Type
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const currentGetPartition = aws.getPartition({});
/// const currentGetRegion = aws.getRegion({});
/// const example = aws.ssm.getPatchBaselines({
/// defaultBaselines: true,
/// });
/// // transform the output of the aws_ssm_patch_baselines data source
/// // into the format expected by the SelectedPatchBaselines parameter
/// const selectedPatchBaselines = JSON.stringify(example.then(example => .reduce((__obj, baseline) => ({ ...__obj, [baseline.operatingSystem]: {
/// value: baseline.baselineId,
/// label: baseline.baselineName,
/// description: baseline.baselineDescription,
/// disabled: !baseline.defaultBaseline,
/// } }))));
/// const exampleQuicksetupConfigurationManager = new aws.ssm.QuicksetupConfigurationManager("example", {
/// name: "example",
/// configurationDefinition: {
/// localDeploymentAdministrationRoleArn: Promise.all([currentGetPartition, current]).then(([currentGetPartition, current]) => `arn:${currentGetPartition.partition}:iam::${current.accountId}:role/AWS-QuickSetup-PatchPolicy-LocalAdministrationRole`),
/// localDeploymentExecutionRoleName: "AWS-QuickSetup-PatchPolicy-LocalExecutionRole",
/// type: "AWSQuickSetupType-PatchPolicy",
/// parameters: {
/// ConfigurationOptionsPatchOperation: "Scan",
/// ConfigurationOptionsScanValue: "cron(0 1 * * ? *)",
/// ConfigurationOptionsScanNextInterval: "false",
/// PatchBaselineRegion: currentGetRegion.then(currentGetRegion => currentGetRegion.region),
/// PatchBaselineUseDefault: "default",
/// PatchPolicyName: "example",
/// SelectedPatchBaselines: selectedPatchBaselines,
/// OutputLogEnableS3: "false",
/// RateControlConcurrency: "10%",
/// RateControlErrorThreshold: "2%",
/// IsPolicyAttachAllowed: "false",
/// TargetAccounts: current.then(current => current.accountId),
/// TargetRegions: currentGetRegion.then(currentGetRegion => currentGetRegion.region),
/// TargetType: "*",
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// current_get_partition = aws.get_partition()
/// current_get_region = aws.get_region()
/// example = aws.ssm.get_patch_baselines(default_baselines=True)
/// # transform the output of the aws_ssm_patch_baselines data source
/// # into the format expected by the SelectedPatchBaselines parameter
/// selected_patch_baselines = json.dumps({baseline.operating_system: {
/// "value": baseline.baseline_id,
/// "label": baseline.baseline_name,
/// "description": baseline.baseline_description,
/// "disabled": not baseline.default_baseline,
/// } for baseline in example.baseline_identities})
/// example_quicksetup_configuration_manager = aws.ssm.QuicksetupConfigurationManager("example",
/// name="example",
/// configuration_definition={
/// "local_deployment_administration_role_arn": f"arn:{current_get_partition.partition}:iam::{current.account_id}:role/AWS-QuickSetup-PatchPolicy-LocalAdministrationRole",
/// "local_deployment_execution_role_name": "AWS-QuickSetup-PatchPolicy-LocalExecutionRole",
/// "type": "AWSQuickSetupType-PatchPolicy",
/// "parameters": {
/// "ConfigurationOptionsPatchOperation": "Scan",
/// "ConfigurationOptionsScanValue": "cron(0 1 * * ? *)",
/// "ConfigurationOptionsScanNextInterval": "false",
/// "PatchBaselineRegion": current_get_region.region,
/// "PatchBaselineUseDefault": "default",
/// "PatchPolicyName": "example",
/// "SelectedPatchBaselines": selected_patch_baselines,
/// "OutputLogEnableS3": "false",
/// "RateControlConcurrency": "10%",
/// "RateControlErrorThreshold": "2%",
/// "IsPolicyAttachAllowed": "false",
/// "TargetAccounts": current.account_id,
/// "TargetRegions": current_get_region.region,
/// "TargetType": "*",
/// },
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
/// var current = Aws.GetCallerIdentity.Invoke();
///
/// var currentGetPartition = Aws.GetPartition.Invoke();
///
/// var currentGetRegion = Aws.GetRegion.Invoke();
///
/// var example = Aws.Ssm.GetPatchBaselines.Invoke(new()
/// {
/// DefaultBaselines = true,
/// });
///
/// // transform the output of the aws_ssm_patch_baselines data source
/// // into the format expected by the SelectedPatchBaselines parameter
/// var selectedPatchBaselines = JsonSerializer.Serialize(.ToDictionary(item => {
/// var baseline = item.Value;
/// return baseline.OperatingSystem;
/// }, item => {
/// var baseline = item.Value;
/// return
/// {
/// { "value", baseline.BaselineId },
/// { "label", baseline.BaselineName },
/// { "description", baseline.BaselineDescription },
/// { "disabled", !baseline.DefaultBaseline },
/// };
/// }));
///
/// var exampleQuicksetupConfigurationManager = new Aws.Ssm.QuicksetupConfigurationManager("example", new()
/// {
/// Name = "example",
/// ConfigurationDefinition = new Aws.Ssm.Inputs.QuicksetupConfigurationManagerConfigurationDefinitionArgs
/// {
/// LocalDeploymentAdministrationRoleArn = Output.Tuple(currentGetPartition, current).Apply(values =>
/// {
/// var currentGetPartition = values.Item1;
/// var current = values.Item2;
/// return $"arn:{currentGetPartition.Apply(getPartitionResult => getPartitionResult.Partition)}:iam::{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:role/AWS-QuickSetup-PatchPolicy-LocalAdministrationRole";
/// }),
/// LocalDeploymentExecutionRoleName = "AWS-QuickSetup-PatchPolicy-LocalExecutionRole",
/// Type = "AWSQuickSetupType-PatchPolicy",
/// Parameters =
/// {
/// { "ConfigurationOptionsPatchOperation", "Scan" },
/// { "ConfigurationOptionsScanValue", "cron(0 1 * * ? *)" },
/// { "ConfigurationOptionsScanNextInterval", "false" },
/// { "PatchBaselineRegion", currentGetRegion.Apply(getRegionResult => getRegionResult.Region) },
/// { "PatchBaselineUseDefault", "default" },
/// { "PatchPolicyName", "example" },
/// { "SelectedPatchBaselines", selectedPatchBaselines },
/// { "OutputLogEnableS3", "false" },
/// { "RateControlConcurrency", "10%" },
/// { "RateControlErrorThreshold", "2%" },
/// { "IsPolicyAttachAllowed", "false" },
/// { "TargetAccounts", current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId) },
/// { "TargetRegions", currentGetRegion.Apply(getRegionResult => getRegionResult.Region) },
/// { "TargetType", "*" },
/// },
/// },
/// });
///
/// });
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import SSM Quick Setup Configuration Manager using the <span pulumi-lang-nodejs="`managerArn`" pulumi-lang-dotnet="`ManagerArn`" pulumi-lang-go="`managerArn`" pulumi-lang-python="`manager_arn`" pulumi-lang-yaml="`managerArn`" pulumi-lang-java="`managerArn`">`manager_arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ssm/quicksetupConfigurationManager:QuicksetupConfigurationManager example arn:aws:ssm-quicksetup:us-east-1:012345678901:configuration-manager/abcd-1234
/// ```
class QuicksetupConfigurationManager extends CustomResource {
  /// Definition of the Quick Setup configuration that the configuration manager deploys. See <span pulumi-lang-nodejs="`configurationDefinition`" pulumi-lang-dotnet="`ConfigurationDefinition`" pulumi-lang-go="`configurationDefinition`" pulumi-lang-python="`configuration_definition`" pulumi-lang-yaml="`configurationDefinition`" pulumi-lang-java="`configurationDefinition`">`configuration_definition`</span> below.
  late final Output<QuicksetupConfigurationManagerConfigurationDefinition>
      configurationDefinition;

  /// Description of the configuration manager.
  late final Output<String> description;

  /// ARN of the Configuration Manager.
  late final Output<String> managerArn;

  /// Configuration manager name.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A summary of the state of the configuration manager. This includes deployment statuses, association statuses, drift statuses, health checks, and more. See <span pulumi-lang-nodejs="`statusSummaries`" pulumi-lang-dotnet="`StatusSummaries`" pulumi-lang-go="`statusSummaries`" pulumi-lang-python="`status_summaries`" pulumi-lang-yaml="`statusSummaries`" pulumi-lang-java="`statusSummaries`">`status_summaries`</span> below.
  late final Output<List<QuicksetupConfigurationManagerStatusSummary>>
      statusSummaries;

  /// Map of tags assigned to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<QuicksetupConfigurationManagerTimeouts?> timeouts;

  QuicksetupConfigurationManager(
    String name, {
    QuicksetupConfigurationManagerArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ssm/quicksetupConfigurationManager:QuicksetupConfigurationManager',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.configurationDefinition = Output.createUnknown<
        QuicksetupConfigurationManagerConfigurationDefinition>();
    this.description = Output.createUnknown<String>();
    this.managerArn = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.statusSummaries = Output.createUnknown<
        List<QuicksetupConfigurationManagerStatusSummary>>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.timeouts =
        Output.createUnknown<QuicksetupConfigurationManagerTimeouts?>();
  }
}
