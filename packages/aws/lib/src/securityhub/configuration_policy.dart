import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_policy_args.dart';
import 'configuration_policy_configuration_policy.dart';

/// Manages Security Hub configuration policy
///
/// > **NOTE:** This resource requires `aws.securityhub.OrganizationConfiguration` to be configured of type `CENTRAL`. More information about Security Hub central configuration and configuration policies can be found in the [How Security Hub configuration policies work](https://docs.aws.amazon.com/securityhub/latest/userguide/configuration-policies-overview.html) documentation.
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
/// 		_, err = securityhub.NewConfigurationPolicy(ctx, "example", &securityhub.ConfigurationPolicyArgs{
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
///     name: "Disabled",
///     description: "This is an example of disabled configuration policy",
///     configurationPolicy: {
///         serviceEnabled: false,
///     },
/// }, {
///     dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// disabled = aws.securityhub.ConfigurationPolicy("disabled",
///     name="Disabled",
///     description="This is an example of disabled configuration policy",
///     configuration_policy={
///         "service_enabled": False,
///     },
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
///         Name = "Disabled",
///         Description = "This is an example of disabled configuration policy",
///         ConfigurationPolicyDetails = new Aws.SecurityHub.Inputs.ConfigurationPolicyConfigurationPolicyArgs
///         {
///             ServiceEnabled = false,
///         },
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
/// 			Name:        pulumi.String("Disabled"),
/// 			Description: pulumi.String("This is an example of disabled configuration policy"),
/// 			ConfigurationPolicy: &securityhub.ConfigurationPolicyConfigurationPolicyArgs{
/// 				ServiceEnabled: pulumi.Bool(false),
/// 			},
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
///         var disabled = new ConfigurationPolicy("disabled", ConfigurationPolicyArgs.builder()
///             .name("Disabled")
///             .description("This is an example of disabled configuration policy")
///             .configurationPolicy(ConfigurationPolicyConfigurationPolicyArgs.builder()
///                 .serviceEnabled(false)
///                 .build())
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
///       name: Disabled
///       description: This is an example of disabled configuration policy
///       configurationPolicy:
///         serviceEnabled: false
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
///     name: "Custom Controls",
///     description: "This is an example of configuration policy with custom control settings",
///     configurationPolicy: {
///         serviceEnabled: true,
///         enabledStandardArns: [
///             "arn:aws:securityhub:us-east-1::standards/aws-foundational-security-best-practices/v/1.0.0",
///             "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0",
///         ],
///         securityControlsConfiguration: {
///             enabledControlIdentifiers: [
///                 "APIGateway.1",
///                 "IAM.7",
///             ],
///             securityControlCustomParameters: [
///                 {
///                     securityControlId: "APIGateway.1",
///                     parameters: [{
///                         name: "loggingLevel",
///                         valueType: "CUSTOM",
///                         "enum": {
///                             value: "INFO",
///                         },
///                     }],
///                 },
///                 {
///                     securityControlId: "IAM.7",
///                     parameters: [
///                         {
///                             name: "RequireLowercaseCharacters",
///                             valueType: "CUSTOM",
///                             bool: {
///                                 value: false,
///                             },
///                         },
///                         {
///                             name: "MaxPasswordAge",
///                             valueType: "CUSTOM",
///                             int: {
///                                 value: 60,
///                             },
///                         },
///                     ],
///                 },
///             ],
///         },
///     },
/// }, {
///     dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// disabled = aws.securityhub.ConfigurationPolicy("disabled",
///     name="Custom Controls",
///     description="This is an example of configuration policy with custom control settings",
///     configuration_policy={
///         "service_enabled": True,
///         "enabled_standard_arns": [
///             "arn:aws:securityhub:us-east-1::standards/aws-foundational-security-best-practices/v/1.0.0",
///             "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0",
///         ],
///         "security_controls_configuration": {
///             "enabled_control_identifiers": [
///                 "APIGateway.1",
///                 "IAM.7",
///             ],
///             "security_control_custom_parameters": [
///                 {
///                     "security_control_id": "APIGateway.1",
///                     "parameters": [{
///                         "name": "loggingLevel",
///                         "value_type": "CUSTOM",
///                         "enum": {
///                             "value": "INFO",
///                         },
///                     }],
///                 },
///                 {
///                     "security_control_id": "IAM.7",
///                     "parameters": [
///                         {
///                             "name": "RequireLowercaseCharacters",
///                             "value_type": "CUSTOM",
///                             "bool": {
///                                 "value": False,
///                             },
///                         },
///                         {
///                             "name": "MaxPasswordAge",
///                             "value_type": "CUSTOM",
///                             "int": {
///                                 "value": 60,
///                             },
///                         },
///                     ],
///                 },
///             ],
///         },
///     },
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
///         Name = "Custom Controls",
///         Description = "This is an example of configuration policy with custom control settings",
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
///                 EnabledControlIdentifiers = new[]
///                 {
///                     "APIGateway.1",
///                     "IAM.7",
///                 },
///                 SecurityControlCustomParameters = new[]
///                 {
///                     new Aws.SecurityHub.Inputs.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterArgs
///                     {
///                         SecurityControlId = "APIGateway.1",
///                         Parameters = new[]
///                         {
///                             new Aws.SecurityHub.Inputs.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterArgs
///                             {
///                                 Name = "loggingLevel",
///                                 ValueType = "CUSTOM",
///                                 Enum = new Aws.SecurityHub.Inputs.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterEnumArgs
///                                 {
///                                     Value = "INFO",
///                                 },
///                             },
///                         },
///                     },
///                     new Aws.SecurityHub.Inputs.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterArgs
///                     {
///                         SecurityControlId = "IAM.7",
///                         Parameters = new[]
///                         {
///                             new Aws.SecurityHub.Inputs.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterArgs
///                             {
///                                 Name = "RequireLowercaseCharacters",
///                                 ValueType = "CUSTOM",
///                                 Bool = new Aws.SecurityHub.Inputs.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterBoolArgs
///                                 {
///                                     Value = false,
///                                 },
///                             },
///                             new Aws.SecurityHub.Inputs.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterArgs
///                             {
///                                 Name = "MaxPasswordAge",
///                                 ValueType = "CUSTOM",
///                                 Int = new Aws.SecurityHub.Inputs.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterIntArgs
///                                 {
///                                     Value = 60,
///                                 },
///                             },
///                         },
///                     },
///                 },
///             },
///         },
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
/// 			Name:        pulumi.String("Custom Controls"),
/// 			Description: pulumi.String("This is an example of configuration policy with custom control settings"),
/// 			ConfigurationPolicy: &securityhub.ConfigurationPolicyConfigurationPolicyArgs{
/// 				ServiceEnabled: pulumi.Bool(true),
/// 				EnabledStandardArns: pulumi.StringArray{
/// 					pulumi.String("arn:aws:securityhub:us-east-1::standards/aws-foundational-security-best-practices/v/1.0.0"),
/// 					pulumi.String("arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0"),
/// 				},
/// 				SecurityControlsConfiguration: &securityhub.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationArgs{
/// 					EnabledControlIdentifiers: pulumi.StringArray{
/// 						pulumi.String("APIGateway.1"),
/// 						pulumi.String("IAM.7"),
/// 					},
/// 					SecurityControlCustomParameters: securityhub.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterArray{
/// 						&securityhub.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterArgs{
/// 							SecurityControlId: pulumi.String("APIGateway.1"),
/// 							Parameters: securityhub.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterArray{
/// 								&securityhub.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterArgs{
/// 									Name:      pulumi.String("loggingLevel"),
/// 									ValueType: pulumi.String("CUSTOM"),
/// 									Enum: &securityhub.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterEnumArgs{
/// 										Value: pulumi.String("INFO"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 						&securityhub.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterArgs{
/// 							SecurityControlId: pulumi.String("IAM.7"),
/// 							Parameters: securityhub.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterArray{
/// 								&securityhub.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterArgs{
/// 									Name:      pulumi.String("RequireLowercaseCharacters"),
/// 									ValueType: pulumi.String("CUSTOM"),
/// 									Bool: &securityhub.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterBoolArgs{
/// 										Value: pulumi.Bool(false),
/// 									},
/// 								},
/// 								&securityhub.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterArgs{
/// 									Name:      pulumi.String("MaxPasswordAge"),
/// 									ValueType: pulumi.String("CUSTOM"),
/// 									Int: &securityhub.ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterIntArgs{
/// 										Value: pulumi.Int(60),
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
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
///         var disabled = new ConfigurationPolicy("disabled", ConfigurationPolicyArgs.builder()
///             .name("Custom Controls")
///             .description("This is an example of configuration policy with custom control settings")
///             .configurationPolicy(ConfigurationPolicyConfigurationPolicyArgs.builder()
///                 .serviceEnabled(true)
///                 .enabledStandardArns(
///                     "arn:aws:securityhub:us-east-1::standards/aws-foundational-security-best-practices/v/1.0.0",
///                     "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0")
///                 .securityControlsConfiguration(ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationArgs.builder()
///                     .enabledControlIdentifiers(
///                         "APIGateway.1",
///                         "IAM.7")
///                     .securityControlCustomParameters(
///                         ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterArgs.builder()
///                             .securityControlId("APIGateway.1")
///                             .parameters(ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterArgs.builder()
///                                 .name("loggingLevel")
///                                 .valueType("CUSTOM")
///                                 .enum_(ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterEnumArgs.builder()
///                                     .value("INFO")
///                                     .build())
///                                 .build())
///                             .build(),
///                         ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterArgs.builder()
///                             .securityControlId("IAM.7")
///                             .parameters(
///                                 ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterArgs.builder()
///                                     .name("RequireLowercaseCharacters")
///                                     .valueType("CUSTOM")
///                                     .bool(ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterBoolArgs.builder()
///                                         .value(false)
///                                         .build())
///                                     .build(),
///                                 ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterArgs.builder()
///                                     .name("MaxPasswordAge")
///                                     .valueType("CUSTOM")
///                                     .int_(ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameterIntArgs.builder()
///                                         .value(60)
///                                         .build())
///                                     .build())
///                             .build())
///                     .build())
///                 .build())
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
///       name: Custom Controls
///       description: This is an example of configuration policy with custom control settings
///       configurationPolicy:
///         serviceEnabled: true
///         enabledStandardArns:
///           - arn:aws:securityhub:us-east-1::standards/aws-foundational-security-best-practices/v/1.0.0
///           - arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0
///         securityControlsConfiguration:
///           enabledControlIdentifiers:
///             - APIGateway.1
///             - IAM.7
///           securityControlCustomParameters:
///             - securityControlId: APIGateway.1
///               parameters:
///                 - name: loggingLevel
///                   valueType: CUSTOM
///                   enum:
///                     value: INFO
///             - securityControlId: IAM.7
///               parameters:
///                 - name: RequireLowercaseCharacters
///                   valueType: CUSTOM
///                   bool:
///                     value: false
///                 - name: MaxPasswordAge
///                   valueType: CUSTOM
///                   int:
///                     value: 60
///     options:
///       dependsOn:
///         - ${example}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import an existing Security Hub enabled account using the universally unique identifier (UUID) of the policy. For example:
///
/// ```sh
/// $ pulumi import aws:securityhub/configurationPolicy:ConfigurationPolicy example "00000000-1111-2222-3333-444444444444"
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
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.configurationPolicy = registerOutput<ConfigurationPolicyConfigurationPolicy>('configurationPolicy');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
  }
}
