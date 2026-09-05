import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_policy_association_args.dart';
import 'configuration_policy_association_state.dart';

/// Manages Security Hub configuration policy associations.
///
/// &gt; **NOTE:** This resource requires `aws.securityhub.OrganizationConfiguration` to be configured with type `CENTRAL`. More information about Security Hub central configuration and configuration policies can be found in the [How Security Hub configuration policies work](https://docs.aws.amazon.com/securityhub/latest/userguide/configuration-policies-overview.html) documentation.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.securityhub.FindingAggregator("example", {linkingMode: "ALL_REGIONS"});
/// const exampleOrganizationConfiguration = new aws.securityhub.OrganizationConfiguration("example", {
///     organizationConfiguration: {
///         configurationType: "CENTRAL",
///     },
///     autoEnable: false,
///     autoEnableStandards: "NONE",
/// }, {
///     dependsOn: [example],
/// });
/// const exampleConfigurationPolicy = new aws.securityhub.ConfigurationPolicy("example", {
///     configurationPolicy: {
///         securityControlsConfiguration: {
///             disabledControlIdentifiers: [],
///         },
///         serviceEnabled: true,
///         enabledStandardArns: [
///             "arn:aws:securityhub:us-east-1::standards/aws-foundational-security-best-practices/v/1.0.0",
///             "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0",
///         ],
///     },
///     name: "Example",
///     description: "This is an example configuration policy",
/// }, {
///     dependsOn: [exampleOrganizationConfiguration],
/// });
/// const accountExample = new aws.securityhub.ConfigurationPolicyAssociation("account_example", {
///     targetId: "123456789012",
///     policyId: exampleConfigurationPolicy.id,
/// });
/// const rootExample = new aws.securityhub.ConfigurationPolicyAssociation("root_example", {
///     targetId: "r-abcd",
///     policyId: exampleConfigurationPolicy.id,
/// });
/// const ouExample = new aws.securityhub.ConfigurationPolicyAssociation("ou_example", {
///     targetId: "ou-abcd-12345678",
///     policyId: exampleConfigurationPolicy.id,
/// });
/// const selfManagedExample = new aws.securityhub.ConfigurationPolicyAssociation("self_managed_example", {
///     targetId: "123456789012",
///     policyId: "SELF_MANAGED_SECURITY_HUB",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.securityhub.FindingAggregator("example", linking_mode="ALL_REGIONS")
/// example_organization_configuration = aws.securityhub.OrganizationConfiguration("example",
///     organization_configuration={
///         "configuration_type": "CENTRAL",
///     },
///     auto_enable=False,
///     auto_enable_standards="NONE",
///     opts = pulumi.ResourceOptions(depends_on=[example]))
/// example_configuration_policy = aws.securityhub.ConfigurationPolicy("example",
///     configuration_policy={
///         "security_controls_configuration": {
///             "disabled_control_identifiers": [],
///         },
///         "service_enabled": True,
///         "enabled_standard_arns": [
///             "arn:aws:securityhub:us-east-1::standards/aws-foundational-security-best-practices/v/1.0.0",
///             "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0",
///         ],
///     },
///     name="Example",
///     description="This is an example configuration policy",
///     opts = pulumi.ResourceOptions(depends_on=[example_organization_configuration]))
/// account_example = aws.securityhub.ConfigurationPolicyAssociation("account_example",
///     target_id="123456789012",
///     policy_id=example_configuration_policy.id)
/// root_example = aws.securityhub.ConfigurationPolicyAssociation("root_example",
///     target_id="r-abcd",
///     policy_id=example_configuration_policy.id)
/// ou_example = aws.securityhub.ConfigurationPolicyAssociation("ou_example",
///     target_id="ou-abcd-12345678",
///     policy_id=example_configuration_policy.id)
/// self_managed_example = aws.securityhub.ConfigurationPolicyAssociation("self_managed_example",
///     target_id="123456789012",
///     policy_id="SELF_MANAGED_SECURITY_HUB")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SecurityHub.FindingAggregator("example", new()
///     {
///         LinkingMode = "ALL_REGIONS",
///     });
///
///     var exampleOrganizationConfiguration = new Aws.SecurityHub.OrganizationConfiguration("example", new()
///     {
///         OrganizationConfigurationDetails = new Aws.SecurityHub.Inputs.OrganizationConfigurationOrganizationConfigurationArgs
///         {
///             ConfigurationType = "CENTRAL",
///         },
///         AutoEnable = false,
///         AutoEnableStandards = "NONE",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             example,
///         },
///     });
///
///     var exampleConfigurationPolicy = new Aws.SecurityHub.ConfigurationPolicy("example", new()
///     {
///         ConfigurationPolicyDetails = new Aws.SecurityHub.Inputs.ConfigurationPolicyConfigurationPolicyArgs
///         {
///             SecurityControlsConfiguration = new Aws.SecurityHub.Inputs.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationArgs
///             {
///                 DisabledControlIdentifiers = new() { },
///             },
///             ServiceEnabled = true,
///             EnabledStandardArns = new[]
///             {
///                 "arn:aws:securityhub:us-east-1::standards/aws-foundational-security-best-practices/v/1.0.0",
///                 "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0",
///             },
///         },
///         Name = "Example",
///         Description = "This is an example configuration policy",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleOrganizationConfiguration,
///         },
///     });
///
///     var accountExample = new Aws.SecurityHub.ConfigurationPolicyAssociation("account_example", new()
///     {
///         TargetId = "123456789012",
///         PolicyId = exampleConfigurationPolicy.Id,
///     });
///
///     var rootExample = new Aws.SecurityHub.ConfigurationPolicyAssociation("root_example", new()
///     {
///         TargetId = "r-abcd",
///         PolicyId = exampleConfigurationPolicy.Id,
///     });
///
///     var ouExample = new Aws.SecurityHub.ConfigurationPolicyAssociation("ou_example", new()
///     {
///         TargetId = "ou-abcd-12345678",
///         PolicyId = exampleConfigurationPolicy.Id,
///     });
///
///     var selfManagedExample = new Aws.SecurityHub.ConfigurationPolicyAssociation("self_managed_example", new()
///     {
///         TargetId = "123456789012",
///         PolicyId = "SELF_MANAGED_SECURITY_HUB",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/securityhub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := securityhub.NewFindingAggregator(ctx, "example", &securityhub.FindingAggregatorArgs{
/// 			LinkingMode: pulumi.String("ALL_REGIONS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleOrganizationConfiguration, err := securityhub.NewOrganizationConfiguration(ctx, "example", &securityhub.OrganizationConfigurationArgs{
/// 			OrganizationConfiguration: &securityhub.OrganizationConfigurationOrganizationConfigurationArgs{
/// 				ConfigurationType: pulumi.String("CENTRAL"),
/// 			},
/// 			AutoEnable:          pulumi.Bool(false),
/// 			AutoEnableStandards: pulumi.String("NONE"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			example,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleConfigurationPolicy, err := securityhub.NewConfigurationPolicy(ctx, "example", &securityhub.ConfigurationPolicyArgs{
/// 			ConfigurationPolicy: &securityhub.ConfigurationPolicyConfigurationPolicyArgs{
/// 				SecurityControlsConfiguration: &securityhub.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationArgs{
/// 					DisabledControlIdentifiers: pulumi.StringArray{},
/// 				},
/// 				ServiceEnabled: pulumi.Bool(true),
/// 				EnabledStandardArns: pulumi.StringArray{
/// 					pulumi.String("arn:aws:securityhub:us-east-1::standards/aws-foundational-security-best-practices/v/1.0.0"),
/// 					pulumi.String("arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0"),
/// 				},
/// 			},
/// 			Name:        pulumi.String("Example"),
/// 			Description: pulumi.String("This is an example configuration policy"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleOrganizationConfiguration,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securityhub.NewConfigurationPolicyAssociation(ctx, "account_example", &securityhub.ConfigurationPolicyAssociationArgs{
/// 			TargetId: pulumi.String("123456789012"),
/// 			PolicyId: exampleConfigurationPolicy.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securityhub.NewConfigurationPolicyAssociation(ctx, "root_example", &securityhub.ConfigurationPolicyAssociationArgs{
/// 			TargetId: pulumi.String("r-abcd"),
/// 			PolicyId: exampleConfigurationPolicy.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securityhub.NewConfigurationPolicyAssociation(ctx, "ou_example", &securityhub.ConfigurationPolicyAssociationArgs{
/// 			TargetId: pulumi.String("ou-abcd-12345678"),
/// 			PolicyId: exampleConfigurationPolicy.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securityhub.NewConfigurationPolicyAssociation(ctx, "self_managed_example", &securityhub.ConfigurationPolicyAssociationArgs{
/// 			TargetId: pulumi.String("123456789012"),
/// 			PolicyId: pulumi.String("SELF_MANAGED_SECURITY_HUB"),
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
/// resource "aws_securityhub_findingaggregator" "example" {
///   linking_mode = "ALL_REGIONS"
/// }
/// resource "aws_securityhub_organizationconfiguration" "example" {
///   depends_on = [aws_securityhub_findingaggregator.example]
///   organization_configuration = {
///     configuration_type = "CENTRAL"
///   }
///   auto_enable           = false
///   auto_enable_standards = "NONE"
/// }
/// resource "aws_securityhub_configurationpolicy" "example" {
///   depends_on = [aws_securityhub_organizationconfiguration.example]
///   configuration_policy = {
///     security_controls_configuration = {
///       disabled_control_identifiers = []
///     }
///     service_enabled       = true
///     enabled_standard_arns = ["arn:aws:securityhub:us-east-1::standards/aws-foundational-security-best-practices/v/1.0.0", "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0"]
///   }
///   name        = "Example"
///   description = "This is an example configuration policy"
/// }
/// resource "aws_securityhub_configurationpolicyassociation" "account_example" {
///   target_id = "123456789012"
///   policy_id = aws_securityhub_configurationpolicy.example.id
/// }
/// resource "aws_securityhub_configurationpolicyassociation" "root_example" {
///   target_id = "r-abcd"
///   policy_id = aws_securityhub_configurationpolicy.example.id
/// }
/// resource "aws_securityhub_configurationpolicyassociation" "ou_example" {
///   target_id = "ou-abcd-12345678"
///   policy_id = aws_securityhub_configurationpolicy.example.id
/// }
/// resource "aws_securityhub_configurationpolicyassociation" "self_managed_example" {
///   target_id = "123456789012"
///   policy_id = "SELF_MANAGED_SECURITY_HUB"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.securityhub.FindingAggregator;
/// import com.pulumi.aws.securityhub.FindingAggregatorArgs;
/// import com.pulumi.aws.securityhub.OrganizationConfiguration;
/// import com.pulumi.aws.securityhub.OrganizationConfigurationArgs;
/// import com.pulumi.aws.securityhub.inputs.OrganizationConfigurationOrganizationConfigurationArgs;
/// import com.pulumi.aws.securityhub.ConfigurationPolicy;
/// import com.pulumi.aws.securityhub.ConfigurationPolicyArgs;
/// import com.pulumi.aws.securityhub.inputs.ConfigurationPolicyConfigurationPolicyArgs;
/// import com.pulumi.aws.securityhub.inputs.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationArgs;
/// import com.pulumi.aws.securityhub.ConfigurationPolicyAssociation;
/// import com.pulumi.aws.securityhub.ConfigurationPolicyAssociationArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new FindingAggregator("example", FindingAggregatorArgs.builder()
///             .linkingMode("ALL_REGIONS")
///             .build());
///
///         var exampleOrganizationConfiguration = new OrganizationConfiguration("exampleOrganizationConfiguration", OrganizationConfigurationArgs.builder()
///             .organizationConfiguration(OrganizationConfigurationOrganizationConfigurationArgs.builder()
///                 .configurationType("CENTRAL")
///                 .build())
///             .autoEnable(false)
///             .autoEnableStandards("NONE")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(example)
///                 .build());
///
///         var exampleConfigurationPolicy = new ConfigurationPolicy("exampleConfigurationPolicy", ConfigurationPolicyArgs.builder()
///             .configurationPolicy(ConfigurationPolicyConfigurationPolicyArgs.builder()
///                 .securityControlsConfiguration(ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationArgs.builder()
///                     .disabledControlIdentifiers()
///                     .build())
///                 .serviceEnabled(true)
///                 .enabledStandardArns(
///                     "arn:aws:securityhub:us-east-1::standards/aws-foundational-security-best-practices/v/1.0.0",
///                     "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0")
///                 .build())
///             .name("Example")
///             .description("This is an example configuration policy")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleOrganizationConfiguration)
///                 .build());
///
///         var accountExample = new ConfigurationPolicyAssociation("accountExample", ConfigurationPolicyAssociationArgs.builder()
///             .targetId("123456789012")
///             .policyId(exampleConfigurationPolicy.id())
///             .build());
///
///         var rootExample = new ConfigurationPolicyAssociation("rootExample", ConfigurationPolicyAssociationArgs.builder()
///             .targetId("r-abcd")
///             .policyId(exampleConfigurationPolicy.id())
///             .build());
///
///         var ouExample = new ConfigurationPolicyAssociation("ouExample", ConfigurationPolicyAssociationArgs.builder()
///             .targetId("ou-abcd-12345678")
///             .policyId(exampleConfigurationPolicy.id())
///             .build());
///
///         var selfManagedExample = new ConfigurationPolicyAssociation("selfManagedExample", ConfigurationPolicyAssociationArgs.builder()
///             .targetId("123456789012")
///             .policyId("SELF_MANAGED_SECURITY_HUB")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:securityhub:FindingAggregator
///     properties:
///       linkingMode: ALL_REGIONS
///   exampleOrganizationConfiguration:
///     type: aws:securityhub:OrganizationConfiguration
///     name: example
///     properties:
///       organizationConfiguration:
///         configurationType: CENTRAL
///       autoEnable: false
///       autoEnableStandards: NONE
///     options:
///       dependsOn:
///         - ${example}
///   exampleConfigurationPolicy:
///     type: aws:securityhub:ConfigurationPolicy
///     name: example
///     properties:
///       configurationPolicy:
///         securityControlsConfiguration:
///           disabledControlIdentifiers: []
///         serviceEnabled: true
///         enabledStandardArns:
///           - arn:aws:securityhub:us-east-1::standards/aws-foundational-security-best-practices/v/1.0.0
///           - arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0
///       name: Example
///       description: This is an example configuration policy
///     options:
///       dependsOn:
///         - ${exampleOrganizationConfiguration}
///   accountExample:
///     type: aws:securityhub:ConfigurationPolicyAssociation
///     name: account_example
///     properties:
///       targetId: '123456789012'
///       policyId: ${exampleConfigurationPolicy.id}
///   rootExample:
///     type: aws:securityhub:ConfigurationPolicyAssociation
///     name: root_example
///     properties:
///       targetId: r-abcd
///       policyId: ${exampleConfigurationPolicy.id}
///   ouExample:
///     type: aws:securityhub:ConfigurationPolicyAssociation
///     name: ou_example
///     properties:
///       targetId: ou-abcd-12345678
///       policyId: ${exampleConfigurationPolicy.id}
///   selfManagedExample:
///     type: aws:securityhub:ConfigurationPolicyAssociation
///     name: self_managed_example
///     properties:
///       targetId: '123456789012'
///       policyId: SELF_MANAGED_SECURITY_HUB
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `targetId` (String) Identifier of the target account, organizational unit, or the root that is associated with the configuration.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Security Hub configuration policy associations using `targetId`. For example:
///
/// ```sh
/// $ pulumi import aws:securityhub/configurationPolicyAssociation:ConfigurationPolicyAssociation example 123456789012
/// ```
class ConfigurationPolicyAssociation extends pulumi.CustomResource {
  /// The universally unique identifier (UUID) of the configuration policy, or `SELF_MANAGED_SECURITY_HUB` for a self-managed configuration.
  late final pulumi.Output<String> policyId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The identifier of the target account, organizational unit, or the root to associate with the specified configuration.
  late final pulumi.Output<String> targetId;

  /// Creates a new [ConfigurationPolicyAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConfigurationPolicyAssociation]. {@macro pulumi_securityhub_configuration_policy_association_configuration_policy_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConfigurationPolicyAssociation(
    String name, {
    ConfigurationPolicyAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/configurationPolicyAssociation:ConfigurationPolicyAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    policyId = registerOutput<String>('policyId');
    region = registerOutput<String>('region');
    targetId = registerOutput<String>('targetId');
  }

  /// Gets an existing [ConfigurationPolicyAssociation] resource's state with the given [name] and [id].
  static ConfigurationPolicyAssociation get(
    String name,
    pulumi.Input<String> id, {
    ConfigurationPolicyAssociationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ConfigurationPolicyAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ConfigurationPolicyAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/configurationPolicyAssociation:ConfigurationPolicyAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    policyId = registerOutput<String>('policyId');
    region = registerOutput<String>('region');
    targetId = registerOutput<String>('targetId');
  }

  /// Creates a typed reference to an existing [ConfigurationPolicyAssociation] resource.
  ConfigurationPolicyAssociation.reference(String urn)
    : super(
        'aws:securityhub/configurationPolicyAssociation:ConfigurationPolicyAssociation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    policyId = registerOutput<String>('policyId');
    region = registerOutput<String>('region');
    targetId = registerOutput<String>('targetId');
  }
}
