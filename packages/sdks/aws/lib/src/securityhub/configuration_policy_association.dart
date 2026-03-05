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
///     autoEnable: false,
///     autoEnableStandards: "NONE",
///     organizationConfiguration: {
///         configurationType: "CENTRAL",
///     },
/// }, {
///     dependsOn: [example],
/// });
/// const exampleConfigurationPolicy = new aws.securityhub.ConfigurationPolicy("example", {
///     name: "Example",
///     description: "This is an example configuration policy",
///     configurationPolicy: {
///         serviceEnabled: true,
///         enabledStandardArns: [
///             "arn:aws:securityhub:us-east-1::standards/aws-foundational-security-best-practices/v/1.0.0",
///             "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0",
///         ],
///         securityControlsConfiguration: {
///             disabledControlIdentifiers: [],
///         },
///     },
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
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.securityhub.FindingAggregator("example", linking_mode="ALL_REGIONS")
/// example_organization_configuration = aws.securityhub.OrganizationConfiguration("example",
///     auto_enable=False,
///     auto_enable_standards="NONE",
///     organization_configuration={
///         "configuration_type": "CENTRAL",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[example]))
/// example_configuration_policy = aws.securityhub.ConfigurationPolicy("example",
///     name="Example",
///     description="This is an example configuration policy",
///     configuration_policy={
///         "service_enabled": True,
///         "enabled_standard_arns": [
///             "arn:aws:securityhub:us-east-1::standards/aws-foundational-security-best-practices/v/1.0.0",
///             "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0",
///         ],
///         "security_controls_configuration": {
///             "disabled_control_identifiers": [],
///         },
///     },
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
///         AutoEnable = false,
///         AutoEnableStandards = "NONE",
///         OrganizationConfigurationDetails = new Aws.SecurityHub.Inputs.OrganizationConfigurationOrganizationConfigurationArgs
///         {
///             ConfigurationType = "CENTRAL",
///         },
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
///         Name = "Example",
///         Description = "This is an example configuration policy",
///         ConfigurationPolicyDetails = new Aws.SecurityHub.Inputs.ConfigurationPolicyConfigurationPolicyArgs
///         {
///             ServiceEnabled = true,
///             EnabledStandardArns = new[]
///             {
///                 "arn:aws:securityhub:us-east-1::standards/aws-foundational-security-best-practices/v/1.0.0",
///                 "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0",
///             },
///             SecurityControlsConfiguration = new Aws.SecurityHub.Inputs.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationArgs
///             {
///                 DisabledControlIdentifiers = new() { },
///             },
///         },
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
/// 			AutoEnable:          pulumi.Bool(false),
/// 			AutoEnableStandards: pulumi.String("NONE"),
/// 			OrganizationConfiguration: &securityhub.OrganizationConfigurationOrganizationConfigurationArgs{
/// 				ConfigurationType: pulumi.String("CENTRAL"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			example,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleConfigurationPolicy, err := securityhub.NewConfigurationPolicy(ctx, "example", &securityhub.ConfigurationPolicyArgs{
/// 			Name:        pulumi.String("Example"),
/// 			Description: pulumi.String("This is an example configuration policy"),
/// 			ConfigurationPolicy: &securityhub.ConfigurationPolicyConfigurationPolicyArgs{
/// 				ServiceEnabled: pulumi.Bool(true),
/// 				EnabledStandardArns: pulumi.StringArray{
/// 					pulumi.String("arn:aws:securityhub:us-east-1::standards/aws-foundational-security-best-practices/v/1.0.0"),
/// 					pulumi.String("arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0"),
/// 				},
/// 				SecurityControlsConfiguration: &securityhub.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationArgs{
/// 					DisabledControlIdentifiers: pulumi.StringArray{},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleOrganizationConfiguration,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securityhub.NewConfigurationPolicyAssociation(ctx, "account_example", &securityhub.ConfigurationPolicyAssociationArgs{
/// 			TargetId: pulumi.String("123456789012"),
/// 			PolicyId: exampleConfigurationPolicy.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securityhub.NewConfigurationPolicyAssociation(ctx, "root_example", &securityhub.ConfigurationPolicyAssociationArgs{
/// 			TargetId: pulumi.String("r-abcd"),
/// 			PolicyId: exampleConfigurationPolicy.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securityhub.NewConfigurationPolicyAssociation(ctx, "ou_example", &securityhub.ConfigurationPolicyAssociationArgs{
/// 			TargetId: pulumi.String("ou-abcd-12345678"),
/// 			PolicyId: exampleConfigurationPolicy.ID(),
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
///         var example = new FindingAggregator("example", FindingAggregatorArgs.builder()
///             .linkingMode("ALL_REGIONS")
///             .build());
///
///         var exampleOrganizationConfiguration = new OrganizationConfiguration("exampleOrganizationConfiguration", OrganizationConfigurationArgs.builder()
///             .autoEnable(false)
///             .autoEnableStandards("NONE")
///             .organizationConfiguration(OrganizationConfigurationOrganizationConfigurationArgs.builder()
///                 .configurationType("CENTRAL")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(example)
///                 .build());
///
///         var exampleConfigurationPolicy = new ConfigurationPolicy("exampleConfigurationPolicy", ConfigurationPolicyArgs.builder()
///             .name("Example")
///             .description("This is an example configuration policy")
///             .configurationPolicy(ConfigurationPolicyConfigurationPolicyArgs.builder()
///                 .serviceEnabled(true)
///                 .enabledStandardArns(
///                     "arn:aws:securityhub:us-east-1::standards/aws-foundational-security-best-practices/v/1.0.0",
///                     "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0")
///                 .securityControlsConfiguration(ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationArgs.builder()
///                     .disabledControlIdentifiers()
///                     .build())
///                 .build())
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
///       autoEnable: false
///       autoEnableStandards: NONE
///       organizationConfiguration:
///         configurationType: CENTRAL
///     options:
///       dependsOn:
///         - ${example}
///   exampleConfigurationPolicy:
///     type: aws:securityhub:ConfigurationPolicy
///     name: example
///     properties:
///       name: Example
///       description: This is an example configuration policy
///       configurationPolicy:
///         serviceEnabled: true
///         enabledStandardArns:
///           - arn:aws:securityhub:us-east-1::standards/aws-foundational-security-best-practices/v/1.0.0
///           - arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0
///         securityControlsConfiguration:
///           disabledControlIdentifiers: []
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
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import an existing Security Hub enabled account using the target id. For example:
///
/// ```sh
/// $ pulumi import aws:securityhub/configurationPolicyAssociation:ConfigurationPolicyAssociation example_account_association 123456789012
/// ```
class ConfigurationPolicyAssociation extends pulumi.CustomResource {
  /// The universally unique identifier (UUID) of the configuration policy.
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
          options ?? pulumi.CustomResourceOptions(),
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
  }) {
    return ConfigurationPolicyAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
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
}
