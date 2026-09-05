import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_policy_args.dart';
import 'configuration_policy_configuration_policy.dart';
import 'configuration_policy_state.dart';

/// Manages Security Hub configuration policy
///
/// &gt; **NOTE:** This resource requires `aws.securityhub.OrganizationConfiguration` to be configured of type `CENTRAL`. More information about Security Hub central configuration and configuration policies can be found in the [How Security Hub configuration policies work](https://docs.aws.amazon.com/securityhub/latest/userguide/configuration-policies-overview.html) documentation.
///
/// ## Example Usage
///
/// ### Default standards enabled
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
/// 		_, err = securityhub.NewConfigurationPolicy(ctx, "example", &securityhub.ConfigurationPolicyArgs{
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
/// ```
///
///
/// ### Disabled Policy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const disabled = new aws.securityhub.ConfigurationPolicy("disabled", {
///     configurationPolicy: {
///         serviceEnabled: false,
///     },
///     name: "Disabled",
///     description: "This is an example of disabled configuration policy",
/// }, {
///     dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// disabled = aws.securityhub.ConfigurationPolicy("disabled",
///     configuration_policy={
///         "service_enabled": False,
///     },
///     name="Disabled",
///     description="This is an example of disabled configuration policy",
///     opts = pulumi.ResourceOptions(depends_on=[example]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var disabled = new Aws.SecurityHub.ConfigurationPolicy("disabled", new()
///     {
///         ConfigurationPolicyDetails = new Aws.SecurityHub.Inputs.ConfigurationPolicyConfigurationPolicyArgs
///         {
///             ServiceEnabled = false,
///         },
///         Name = "Disabled",
///         Description = "This is an example of disabled configuration policy",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             example,
///         },
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
/// 		_, err := securityhub.NewConfigurationPolicy(ctx, "disabled", &securityhub.ConfigurationPolicyArgs{
/// 			ConfigurationPolicy: &securityhub.ConfigurationPolicyConfigurationPolicyArgs{
/// 				ServiceEnabled: pulumi.Bool(false),
/// 			},
/// 			Name:        pulumi.String("Disabled"),
/// 			Description: pulumi.String("This is an example of disabled configuration policy"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			example,
/// 		}))
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
/// resource "aws_securityhub_configurationpolicy" "disabled" {
///   depends_on = [example]
///   configuration_policy = {
///     service_enabled = false
///   }
///   name        = "Disabled"
///   description = "This is an example of disabled configuration policy"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.securityhub.ConfigurationPolicy;
/// import com.pulumi.aws.securityhub.ConfigurationPolicyArgs;
/// import com.pulumi.aws.securityhub.inputs.ConfigurationPolicyConfigurationPolicyArgs;
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
///         var disabled = new ConfigurationPolicy("disabled", ConfigurationPolicyArgs.builder()
///             .configurationPolicy(ConfigurationPolicyConfigurationPolicyArgs.builder()
///                 .serviceEnabled(false)
///                 .build())
///             .name("Disabled")
///             .description("This is an example of disabled configuration policy")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(example)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   disabled:
///     type: aws:securityhub:ConfigurationPolicy
///     properties:
///       configurationPolicy:
///         serviceEnabled: false
///       name: Disabled
///       description: This is an example of disabled configuration policy
///     options:
///       dependsOn:
///         - ${example}
/// ```
///
///
/// ### Custom Control Configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const disabled = new aws.securityhub.ConfigurationPolicy("disabled", {
///     configurationPolicy: {
///         securityControlsConfiguration: {
///             securityControlCustomParameters: [
///                 {
///                     parameters: [{
///                         "enum": {
///                             value: "INFO",
///                         },
///                         name: "loggingLevel",
///                         valueType: "CUSTOM",
///                     }],
///                     securityControlId: "APIGateway.1",
///                 },
///                 {
///                     parameters: [
///                         {
///                             bool: {
///                                 value: false,
///                             },
///                             name: "RequireLowercaseCharacters",
///                             valueType: "CUSTOM",
///                         },
///                         {
///                             int: {
///                                 value: 60,
///                             },
///                             name: "MaxPasswordAge",
///                             valueType: "CUSTOM",
///                         },
///                     ],
///                     securityControlId: "IAM.7",
///                 },
///             ],
///             enabledControlIdentifiers: [
///                 "APIGateway.1",
///                 "IAM.7",
///             ],
///         },
///         serviceEnabled: true,
///         enabledStandardArns: [
///             "arn:aws:securityhub:us-east-1::standards/aws-foundational-security-best-practices/v/1.0.0",
///             "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0",
///         ],
///     },
///     name: "Custom Controls",
///     description: "This is an example of configuration policy with custom control settings",
/// }, {
///     dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// disabled = aws.securityhub.ConfigurationPolicy("disabled",
///     configuration_policy={
///         "security_controls_configuration": {
///             "security_control_custom_parameters": [
///                 {
///                     "parameters": [{
///                         "enum": {
///                             "value": "INFO",
///                         },
///                         "name": "loggingLevel",
///                         "value_type": "CUSTOM",
///                     }],
///                     "security_control_id": "APIGateway.1",
///                 },
///                 {
///                     "parameters": [
///                         {
///                             "bool": {
///                                 "value": False,
///                             },
///                             "name": "RequireLowercaseCharacters",
///                             "value_type": "CUSTOM",
///                         },
///                         {
///                             "int": {
///                                 "value": 60,
///                             },
///                             "name": "MaxPasswordAge",
///                             "value_type": "CUSTOM",
///                         },
///                     ],
///                     "security_control_id": "IAM.7",
///                 },
///             ],
///             "enabled_control_identifiers": [
///                 "APIGateway.1",
///                 "IAM.7",
///             ],
///         },
///         "service_enabled": True,
///         "enabled_standard_arns": [
///             "arn:aws:securityhub:us-east-1::standards/aws-foundational-security-best-practices/v/1.0.0",
///             "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0",
///         ],
///     },
///     name="Custom Controls",
///     description="This is an example of configuration policy with custom control settings",
///     opts = pulumi.ResourceOptions(depends_on=[example]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var disabled = new Aws.SecurityHub.ConfigurationPolicy("disabled", new()
///     {
///         ConfigurationPolicyDetails = new Aws.SecurityHub.Inputs.ConfigurationPolicyConfigurationPolicyArgs
///         {
///             SecurityControlsConfiguration = new Aws.SecurityHub.Inputs.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationArgs
///             {
///                 SecurityControlCustomParameters = new[]
///                 {
///                     new Aws.SecurityHub.Inputs.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterArgs
///                     {
///                         Parameters = new[]
///                         {
///                             new Aws.SecurityHub.Inputs.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterArgs
///                             {
///                                 Enum = new Aws.SecurityHub.Inputs.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterEnumArgs
///                                 {
///                                     Value = "INFO",
///                                 },
///                                 Name = "loggingLevel",
///                                 ValueType = "CUSTOM",
///                             },
///                         },
///                         SecurityControlId = "APIGateway.1",
///                     },
///                     new Aws.SecurityHub.Inputs.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterArgs
///                     {
///                         Parameters = new[]
///                         {
///                             new Aws.SecurityHub.Inputs.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterArgs
///                             {
///                                 Bool = new Aws.SecurityHub.Inputs.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterBoolArgs
///                                 {
///                                     Value = false,
///                                 },
///                                 Name = "RequireLowercaseCharacters",
///                                 ValueType = "CUSTOM",
///                             },
///                             new Aws.SecurityHub.Inputs.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterArgs
///                             {
///                                 Int = new Aws.SecurityHub.Inputs.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterIntArgs
///                                 {
///                                     Value = 60,
///                                 },
///                                 Name = "MaxPasswordAge",
///                                 ValueType = "CUSTOM",
///                             },
///                         },
///                         SecurityControlId = "IAM.7",
///                     },
///                 },
///                 EnabledControlIdentifiers = new[]
///                 {
///                     "APIGateway.1",
///                     "IAM.7",
///                 },
///             },
///             ServiceEnabled = true,
///             EnabledStandardArns = new[]
///             {
///                 "arn:aws:securityhub:us-east-1::standards/aws-foundational-security-best-practices/v/1.0.0",
///                 "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0",
///             },
///         },
///         Name = "Custom Controls",
///         Description = "This is an example of configuration policy with custom control settings",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             example,
///         },
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
/// 		_, err := securityhub.NewConfigurationPolicy(ctx, "disabled", &securityhub.ConfigurationPolicyArgs{
/// 			ConfigurationPolicy: &securityhub.ConfigurationPolicyConfigurationPolicyArgs{
/// 				SecurityControlsConfiguration: &securityhub.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationArgs{
/// 					SecurityControlCustomParameters: securityhub.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterArray{
/// 						&securityhub.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterArgs{
/// 							Parameters: securityhub.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterArray{
/// 								&securityhub.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterArgs{
/// 									Enum: &securityhub.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterEnumArgs{
/// 										Value: pulumi.String("INFO"),
/// 									},
/// 									Name:      pulumi.String("loggingLevel"),
/// 									ValueType: pulumi.String("CUSTOM"),
/// 								},
/// 							},
/// 							SecurityControlId: pulumi.String("APIGateway.1"),
/// 						},
/// 						&securityhub.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterArgs{
/// 							Parameters: securityhub.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterArray{
/// 								&securityhub.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterArgs{
/// 									Bool: &securityhub.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterBoolArgs{
/// 										Value: pulumi.Bool(false),
/// 									},
/// 									Name:      pulumi.String("RequireLowercaseCharacters"),
/// 									ValueType: pulumi.String("CUSTOM"),
/// 								},
/// 								&securityhub.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterArgs{
/// 									Int: &securityhub.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterIntArgs{
/// 										Value: pulumi.Int(60),
/// 									},
/// 									Name:      pulumi.String("MaxPasswordAge"),
/// 									ValueType: pulumi.String("CUSTOM"),
/// 								},
/// 							},
/// 							SecurityControlId: pulumi.String("IAM.7"),
/// 						},
/// 					},
/// 					EnabledControlIdentifiers: pulumi.StringArray{
/// 						pulumi.String("APIGateway.1"),
/// 						pulumi.String("IAM.7"),
/// 					},
/// 				},
/// 				ServiceEnabled: pulumi.Bool(true),
/// 				EnabledStandardArns: pulumi.StringArray{
/// 					pulumi.String("arn:aws:securityhub:us-east-1::standards/aws-foundational-security-best-practices/v/1.0.0"),
/// 					pulumi.String("arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0"),
/// 				},
/// 			},
/// 			Name:        pulumi.String("Custom Controls"),
/// 			Description: pulumi.String("This is an example of configuration policy with custom control settings"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			example,
/// 		}))
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
/// resource "aws_securityhub_configurationpolicy" "disabled" {
///   depends_on = [example]
///   configuration_policy = {
///     security_controls_configuration = {
///       security_control_custom_parameters = [{
///         "parameters" = [{
///           "enum" = {
///             "value" = "INFO"
///           }
///           "name"      = "loggingLevel"
///           "valueType" = "CUSTOM"
///         }]
///         "securityControlId" = "APIGateway.1"
///         }, {
///         "parameters" = [{
///           "bool" = {
///             "value" = false
///           }
///           "name"      = "RequireLowercaseCharacters"
///           "valueType" = "CUSTOM"
///           }, {
///           "int" = {
///             "value" = 60
///           }
///           "name"      = "MaxPasswordAge"
///           "valueType" = "CUSTOM"
///         }]
///         "securityControlId" = "IAM.7"
///       }]
///       enabled_control_identifiers = ["APIGateway.1", "IAM.7"]
///     }
///     service_enabled       = true
///     enabled_standard_arns = ["arn:aws:securityhub:us-east-1::standards/aws-foundational-security-best-practices/v/1.0.0", "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0"]
///   }
///   name        = "Custom Controls"
///   description = "This is an example of configuration policy with custom control settings"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.securityhub.ConfigurationPolicy;
/// import com.pulumi.aws.securityhub.ConfigurationPolicyArgs;
/// import com.pulumi.aws.securityhub.inputs.ConfigurationPolicyConfigurationPolicyArgs;
/// import com.pulumi.aws.securityhub.inputs.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationArgs;
/// import com.pulumi.aws.securityhub.inputs.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterArgs;
/// import com.pulumi.aws.securityhub.inputs.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterArgs;
/// import com.pulumi.aws.securityhub.inputs.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterEnumArgs;
/// import com.pulumi.aws.securityhub.inputs.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterBoolArgs;
/// import com.pulumi.aws.securityhub.inputs.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterIntArgs;
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
///         var disabled = new ConfigurationPolicy("disabled", ConfigurationPolicyArgs.builder()
///             .configurationPolicy(ConfigurationPolicyConfigurationPolicyArgs.builder()
///                 .securityControlsConfiguration(ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationArgs.builder()
///                     .securityControlCustomParameters(
///                         ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterArgs.builder()
///                             .parameters(ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterArgs.builder()
///                                 .enum_(ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterEnumArgs.builder()
///                                     .value("INFO")
///                                     .build())
///                                 .name("loggingLevel")
///                                 .valueType("CUSTOM")
///                                 .build())
///                             .securityControlId("APIGateway.1")
///                             .build(),
///                         ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterArgs.builder()
///                             .parameters(
///                                 ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterArgs.builder()
///                                     .bool(ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterBoolArgs.builder()
///                                         .value(false)
///                                         .build())
///                                     .name("RequireLowercaseCharacters")
///                                     .valueType("CUSTOM")
///                                     .build(),
///                                 ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterArgs.builder()
///                                     .int_(ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterIntArgs.builder()
///                                         .value(60)
///                                         .build())
///                                     .name("MaxPasswordAge")
///                                     .valueType("CUSTOM")
///                                     .build())
///                             .securityControlId("IAM.7")
///                             .build())
///                     .enabledControlIdentifiers(
///                         "APIGateway.1",
///                         "IAM.7")
///                     .build())
///                 .serviceEnabled(true)
///                 .enabledStandardArns(
///                     "arn:aws:securityhub:us-east-1::standards/aws-foundational-security-best-practices/v/1.0.0",
///                     "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0")
///                 .build())
///             .name("Custom Controls")
///             .description("This is an example of configuration policy with custom control settings")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(example)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   disabled:
///     type: aws:securityhub:ConfigurationPolicy
///     properties:
///       configurationPolicy:
///         securityControlsConfiguration:
///           securityControlCustomParameters:
///             - parameters:
///                 - enum:
///                     value: INFO
///                   name: loggingLevel
///                   valueType: CUSTOM
///               securityControlId: APIGateway.1
///             - parameters:
///                 - bool:
///                     value: false
///                   name: RequireLowercaseCharacters
///                   valueType: CUSTOM
///                 - int:
///                     value: 60
///                   name: MaxPasswordAge
///                   valueType: CUSTOM
///               securityControlId: IAM.7
///           enabledControlIdentifiers:
///             - APIGateway.1
///             - IAM.7
///         serviceEnabled: true
///         enabledStandardArns:
///           - arn:aws:securityhub:us-east-1::standards/aws-foundational-security-best-practices/v/1.0.0
///           - arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0
///       name: Custom Controls
///       description: This is an example of configuration policy with custom control settings
///     options:
///       dependsOn:
///         - ${example}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `id` (String) UUID of the configuration policy.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Security Hub configuration policies using `id`. For example:
///
/// ```sh
/// $ pulumi import aws:securityhub/configurationPolicy:ConfigurationPolicy example 00000000-1111-2222-3333-444444444444
/// ```
class ConfigurationPolicy extends pulumi.CustomResource {
  late final pulumi.Output<String> arn;
  /// Defines how Security Hub is configured. See below.
  late final pulumi.Output<ConfigurationPolicyConfigurationPolicy> configurationPolicy;
  /// The description of the configuration policy.
  late final pulumi.Output<String?> description;
  /// The name of the configuration policy.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [ConfigurationPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConfigurationPolicy]. {@macro pulumi_securityhub_configuration_policy_configuration_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConfigurationPolicy(
    String name, {
    ConfigurationPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/configurationPolicy:ConfigurationPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    configurationPolicy = registerOutput<ConfigurationPolicyConfigurationPolicy>('configurationPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfigurationPolicyConfigurationPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [ConfigurationPolicy] resource's state with the given [name] and [id].
  static ConfigurationPolicy get(
    String name,
    pulumi.Input<String> id, {
    ConfigurationPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ConfigurationPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ConfigurationPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/configurationPolicy:ConfigurationPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    configurationPolicy = registerOutput<ConfigurationPolicyConfigurationPolicy>('configurationPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfigurationPolicyConfigurationPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [ConfigurationPolicy] resource.
  ConfigurationPolicy.reference(String urn)
    : super(
        'aws:securityhub/configurationPolicy:ConfigurationPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    configurationPolicy = registerOutput<ConfigurationPolicyConfigurationPolicy>('configurationPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfigurationPolicyConfigurationPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
  }
}
