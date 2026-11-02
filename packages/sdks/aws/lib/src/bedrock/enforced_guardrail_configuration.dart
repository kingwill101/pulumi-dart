import 'package:pulumi/pulumi.dart' as pulumi;
import 'enforced_guardrail_configuration_args.dart';
import 'enforced_guardrail_configuration_model_enforcement.dart';
import 'enforced_guardrail_configuration_selective_content_guarding.dart';
import 'enforced_guardrail_configuration_state.dart';

/// Resource for managing an Amazon Bedrock Enforced Guardrail Configuration.
///
/// This resource configures an enforced guardrail that is applied across all Bedrock inference calls in the configured region.
///
/// &gt; Enforced guardrail configuration is configured per AWS region. To avoid overwriting settings, this resource should not be defined in multiple configurations.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.Guardrail("example", {
///     wordPolicyConfig: {
///         wordsConfigs: [{
///             text: "deny",
///         }],
///     },
///     name: "example",
///     blockedInputMessaging: "Blocked input",
///     blockedOutputsMessaging: "Blocked output",
///     description: "Example guardrail",
/// });
/// const exampleGuardrailVersion = new aws.bedrock.GuardrailVersion("example", {
///     guardrailArn: example.guardrailArn,
///     description: "Example version",
/// });
/// const exampleEnforcedGuardrailConfiguration = new aws.bedrock.EnforcedGuardrailConfiguration("example", {
///     guardrailArn: example.guardrailArn,
///     guardrailVersion: exampleGuardrailVersion.version,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.Guardrail("example",
///     word_policy_config={
///         "words_configs": [{
///             "text": "deny",
///         }],
///     },
///     name="example",
///     blocked_input_messaging="Blocked input",
///     blocked_outputs_messaging="Blocked output",
///     description="Example guardrail")
/// example_guardrail_version = aws.bedrock.GuardrailVersion("example",
///     guardrail_arn=example.guardrail_arn,
///     description="Example version")
/// example_enforced_guardrail_configuration = aws.bedrock.EnforcedGuardrailConfiguration("example",
///     guardrail_arn=example.guardrail_arn,
///     guardrail_version=example_guardrail_version.version)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Bedrock.Guardrail("example", new()
///     {
///         WordPolicyConfig = new Aws.Bedrock.Inputs.GuardrailWordPolicyConfigArgs
///         {
///             WordsConfigs = new[]
///             {
///                 new Aws.Bedrock.Inputs.GuardrailWordPolicyConfigWordsConfigArgs
///                 {
///                     Text = "deny",
///                 },
///             },
///         },
///         Name = "example",
///         BlockedInputMessaging = "Blocked input",
///         BlockedOutputsMessaging = "Blocked output",
///         Description = "Example guardrail",
///     });
///
///     var exampleGuardrailVersion = new Aws.Bedrock.GuardrailVersion("example", new()
///     {
///         GuardrailArn = example.GuardrailArn,
///         Description = "Example version",
///     });
///
///     var exampleEnforcedGuardrailConfiguration = new Aws.Bedrock.EnforcedGuardrailConfiguration("example", new()
///     {
///         GuardrailArn = example.GuardrailArn,
///         GuardrailVersion = exampleGuardrailVersion.Version,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := bedrock.NewGuardrail(ctx, "example", &bedrock.GuardrailArgs{
/// 			WordPolicyConfig: &bedrock.GuardrailWordPolicyConfigArgs{
/// 				WordsConfigs: bedrock.GuardrailWordPolicyConfigWordsConfigArray{
/// 					&bedrock.GuardrailWordPolicyConfigWordsConfigArgs{
/// 						Text: pulumi.String("deny"),
/// 					},
/// 				},
/// 			},
/// 			Name:                    pulumi.String("example"),
/// 			BlockedInputMessaging:   pulumi.String("Blocked input"),
/// 			BlockedOutputsMessaging: pulumi.String("Blocked output"),
/// 			Description:             pulumi.String("Example guardrail"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGuardrailVersion, err := bedrock.NewGuardrailVersion(ctx, "example", &bedrock.GuardrailVersionArgs{
/// 			GuardrailArn: example.GuardrailArn,
/// 			Description:  pulumi.String("Example version"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bedrock.NewEnforcedGuardrailConfiguration(ctx, "example", &bedrock.EnforcedGuardrailConfigurationArgs{
/// 			GuardrailArn:     example.GuardrailArn,
/// 			GuardrailVersion: exampleGuardrailVersion.Version,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_bedrock_guardrail" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   word_policy_config {
///     words_config {
///       text = "deny"
///     }
///   }
///   name                      = "example"
///   blocked_input_messaging   = "Blocked input"
///   blocked_outputs_messaging = "Blocked output"
///   description               = "Example guardrail"
/// }
/// resource "aws_bedrock_guardrail_version" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   guardrail_arn = aws_bedrock_guardrail.example.guardrail_arn
///   description   = "Example version"
/// }
/// resource "aws_bedrock_enforced_guardrail_configuration" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   guardrail_arn     = aws_bedrock_guardrail.example.guardrail_arn
///   guardrail_version = aws_bedrock_guardrail_version.example.version
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.Guardrail;
/// import com.pulumi.aws.bedrock.GuardrailArgs;
/// import com.pulumi.aws.bedrock.inputs.GuardrailWordPolicyConfigArgs;
/// import com.pulumi.aws.bedrock.inputs.GuardrailWordPolicyConfigWordsConfigArgs;
/// import com.pulumi.aws.bedrock.GuardrailVersion;
/// import com.pulumi.aws.bedrock.GuardrailVersionArgs;
/// import com.pulumi.aws.bedrock.EnforcedGuardrailConfiguration;
/// import com.pulumi.aws.bedrock.EnforcedGuardrailConfigurationArgs;
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
///         var example = new Guardrail("example", GuardrailArgs.builder()
///             .wordPolicyConfig(GuardrailWordPolicyConfigArgs.builder()
///                 .wordsConfigs(GuardrailWordPolicyConfigWordsConfigArgs.builder()
///                     .text("deny")
///                     .build())
///                 .build())
///             .name("example")
///             .blockedInputMessaging("Blocked input")
///             .blockedOutputsMessaging("Blocked output")
///             .description("Example guardrail")
///             .build());
///
///         var exampleGuardrailVersion = new GuardrailVersion("exampleGuardrailVersion", GuardrailVersionArgs.builder()
///             .guardrailArn(example.guardrailArn())
///             .description("Example version")
///             .build());
///
///         var exampleEnforcedGuardrailConfiguration = new EnforcedGuardrailConfiguration("exampleEnforcedGuardrailConfiguration", EnforcedGuardrailConfigurationArgs.builder()
///             .guardrailArn(example.guardrailArn())
///             .guardrailVersion(exampleGuardrailVersion.version())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:Guardrail
///     properties:
///       wordPolicyConfig:
///         wordsConfigs:
///           - text: deny
///       name: example
///       blockedInputMessaging: Blocked input
///       blockedOutputsMessaging: Blocked output
///       description: Example guardrail
///   exampleGuardrailVersion:
///     type: aws:bedrock:GuardrailVersion
///     name: example
///     properties:
///       guardrailArn: ${example.guardrailArn}
///       description: Example version
///   exampleEnforcedGuardrailConfiguration:
///     type: aws:bedrock:EnforcedGuardrailConfiguration
///     name: example
///     properties:
///       guardrailArn: ${example.guardrailArn}
///       guardrailVersion: ${exampleGuardrailVersion.version}
/// ```
///
///
/// ### With Selective Content Guarding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.Guardrail("example", {
///     wordPolicyConfig: {
///         wordsConfigs: [{
///             text: "deny",
///         }],
///     },
///     name: "example",
///     blockedInputMessaging: "Blocked input",
///     blockedOutputsMessaging: "Blocked output",
///     description: "Example guardrail",
/// });
/// const exampleGuardrailVersion = new aws.bedrock.GuardrailVersion("example", {
///     guardrailArn: example.guardrailArn,
///     description: "Example version",
/// });
/// const exampleEnforcedGuardrailConfiguration = new aws.bedrock.EnforcedGuardrailConfiguration("example", {
///     selectiveContentGuarding: {
///         messages: "COMPREHENSIVE",
///         system: "COMPREHENSIVE",
///     },
///     guardrailArn: example.guardrailArn,
///     guardrailVersion: exampleGuardrailVersion.version,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.Guardrail("example",
///     word_policy_config={
///         "words_configs": [{
///             "text": "deny",
///         }],
///     },
///     name="example",
///     blocked_input_messaging="Blocked input",
///     blocked_outputs_messaging="Blocked output",
///     description="Example guardrail")
/// example_guardrail_version = aws.bedrock.GuardrailVersion("example",
///     guardrail_arn=example.guardrail_arn,
///     description="Example version")
/// example_enforced_guardrail_configuration = aws.bedrock.EnforcedGuardrailConfiguration("example",
///     selective_content_guarding={
///         "messages": "COMPREHENSIVE",
///         "system": "COMPREHENSIVE",
///     },
///     guardrail_arn=example.guardrail_arn,
///     guardrail_version=example_guardrail_version.version)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Bedrock.Guardrail("example", new()
///     {
///         WordPolicyConfig = new Aws.Bedrock.Inputs.GuardrailWordPolicyConfigArgs
///         {
///             WordsConfigs = new[]
///             {
///                 new Aws.Bedrock.Inputs.GuardrailWordPolicyConfigWordsConfigArgs
///                 {
///                     Text = "deny",
///                 },
///             },
///         },
///         Name = "example",
///         BlockedInputMessaging = "Blocked input",
///         BlockedOutputsMessaging = "Blocked output",
///         Description = "Example guardrail",
///     });
///
///     var exampleGuardrailVersion = new Aws.Bedrock.GuardrailVersion("example", new()
///     {
///         GuardrailArn = example.GuardrailArn,
///         Description = "Example version",
///     });
///
///     var exampleEnforcedGuardrailConfiguration = new Aws.Bedrock.EnforcedGuardrailConfiguration("example", new()
///     {
///         SelectiveContentGuarding = new Aws.Bedrock.Inputs.EnforcedGuardrailConfigurationSelectiveContentGuardingArgs
///         {
///             Messages = "COMPREHENSIVE",
///             System = "COMPREHENSIVE",
///         },
///         GuardrailArn = example.GuardrailArn,
///         GuardrailVersion = exampleGuardrailVersion.Version,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := bedrock.NewGuardrail(ctx, "example", &bedrock.GuardrailArgs{
/// 			WordPolicyConfig: &bedrock.GuardrailWordPolicyConfigArgs{
/// 				WordsConfigs: bedrock.GuardrailWordPolicyConfigWordsConfigArray{
/// 					&bedrock.GuardrailWordPolicyConfigWordsConfigArgs{
/// 						Text: pulumi.String("deny"),
/// 					},
/// 				},
/// 			},
/// 			Name:                    pulumi.String("example"),
/// 			BlockedInputMessaging:   pulumi.String("Blocked input"),
/// 			BlockedOutputsMessaging: pulumi.String("Blocked output"),
/// 			Description:             pulumi.String("Example guardrail"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGuardrailVersion, err := bedrock.NewGuardrailVersion(ctx, "example", &bedrock.GuardrailVersionArgs{
/// 			GuardrailArn: example.GuardrailArn,
/// 			Description:  pulumi.String("Example version"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bedrock.NewEnforcedGuardrailConfiguration(ctx, "example", &bedrock.EnforcedGuardrailConfigurationArgs{
/// 			SelectiveContentGuarding: &bedrock.EnforcedGuardrailConfigurationSelectiveContentGuardingArgs{
/// 				Messages: pulumi.String("COMPREHENSIVE"),
/// 				System:   pulumi.String("COMPREHENSIVE"),
/// 			},
/// 			GuardrailArn:     example.GuardrailArn,
/// 			GuardrailVersion: exampleGuardrailVersion.Version,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_bedrock_guardrail" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   word_policy_config {
///     words_config {
///       text = "deny"
///     }
///   }
///   name                      = "example"
///   blocked_input_messaging   = "Blocked input"
///   blocked_outputs_messaging = "Blocked output"
///   description               = "Example guardrail"
/// }
/// resource "aws_bedrock_guardrail_version" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   guardrail_arn = aws_bedrock_guardrail.example.guardrail_arn
///   description   = "Example version"
/// }
/// resource "aws_bedrock_enforced_guardrail_configuration" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   selective_content_guarding {
///     messages = "COMPREHENSIVE"
///     system   = "COMPREHENSIVE"
///   }
///   guardrail_arn     = aws_bedrock_guardrail.example.guardrail_arn
///   guardrail_version = aws_bedrock_guardrail_version.example.version
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.Guardrail;
/// import com.pulumi.aws.bedrock.GuardrailArgs;
/// import com.pulumi.aws.bedrock.inputs.GuardrailWordPolicyConfigArgs;
/// import com.pulumi.aws.bedrock.inputs.GuardrailWordPolicyConfigWordsConfigArgs;
/// import com.pulumi.aws.bedrock.GuardrailVersion;
/// import com.pulumi.aws.bedrock.GuardrailVersionArgs;
/// import com.pulumi.aws.bedrock.EnforcedGuardrailConfiguration;
/// import com.pulumi.aws.bedrock.EnforcedGuardrailConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.EnforcedGuardrailConfigurationSelectiveContentGuardingArgs;
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
///         var example = new Guardrail("example", GuardrailArgs.builder()
///             .wordPolicyConfig(GuardrailWordPolicyConfigArgs.builder()
///                 .wordsConfigs(GuardrailWordPolicyConfigWordsConfigArgs.builder()
///                     .text("deny")
///                     .build())
///                 .build())
///             .name("example")
///             .blockedInputMessaging("Blocked input")
///             .blockedOutputsMessaging("Blocked output")
///             .description("Example guardrail")
///             .build());
///
///         var exampleGuardrailVersion = new GuardrailVersion("exampleGuardrailVersion", GuardrailVersionArgs.builder()
///             .guardrailArn(example.guardrailArn())
///             .description("Example version")
///             .build());
///
///         var exampleEnforcedGuardrailConfiguration = new EnforcedGuardrailConfiguration("exampleEnforcedGuardrailConfiguration", EnforcedGuardrailConfigurationArgs.builder()
///             .selectiveContentGuarding(EnforcedGuardrailConfigurationSelectiveContentGuardingArgs.builder()
///                 .messages("COMPREHENSIVE")
///                 .system("COMPREHENSIVE")
///                 .build())
///             .guardrailArn(example.guardrailArn())
///             .guardrailVersion(exampleGuardrailVersion.version())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:Guardrail
///     properties:
///       wordPolicyConfig:
///         wordsConfigs:
///           - text: deny
///       name: example
///       blockedInputMessaging: Blocked input
///       blockedOutputsMessaging: Blocked output
///       description: Example guardrail
///   exampleGuardrailVersion:
///     type: aws:bedrock:GuardrailVersion
///     name: example
///     properties:
///       guardrailArn: ${example.guardrailArn}
///       description: Example version
///   exampleEnforcedGuardrailConfiguration:
///     type: aws:bedrock:EnforcedGuardrailConfiguration
///     name: example
///     properties:
///       selectiveContentGuarding:
///         messages: COMPREHENSIVE
///         system: COMPREHENSIVE
///       guardrailArn: ${example.guardrailArn}
///       guardrailVersion: ${exampleGuardrailVersion.version}
/// ```
///
///
/// ### With Model Enforcement
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.Guardrail("example", {
///     wordPolicyConfig: {
///         wordsConfigs: [{
///             text: "deny",
///         }],
///     },
///     name: "example",
///     blockedInputMessaging: "Blocked input",
///     blockedOutputsMessaging: "Blocked output",
///     description: "Example guardrail",
/// });
/// const exampleGuardrailVersion = new aws.bedrock.GuardrailVersion("example", {
///     guardrailArn: example.guardrailArn,
///     description: "Example version",
/// });
/// const exampleEnforcedGuardrailConfiguration = new aws.bedrock.EnforcedGuardrailConfiguration("example", {
///     modelEnforcement: {
///         includedModels: ["ALL"],
///         excludedModels: [],
///     },
///     guardrailArn: example.guardrailArn,
///     guardrailVersion: exampleGuardrailVersion.version,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.Guardrail("example",
///     word_policy_config={
///         "words_configs": [{
///             "text": "deny",
///         }],
///     },
///     name="example",
///     blocked_input_messaging="Blocked input",
///     blocked_outputs_messaging="Blocked output",
///     description="Example guardrail")
/// example_guardrail_version = aws.bedrock.GuardrailVersion("example",
///     guardrail_arn=example.guardrail_arn,
///     description="Example version")
/// example_enforced_guardrail_configuration = aws.bedrock.EnforcedGuardrailConfiguration("example",
///     model_enforcement={
///         "included_models": ["ALL"],
///         "excluded_models": [],
///     },
///     guardrail_arn=example.guardrail_arn,
///     guardrail_version=example_guardrail_version.version)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Bedrock.Guardrail("example", new()
///     {
///         WordPolicyConfig = new Aws.Bedrock.Inputs.GuardrailWordPolicyConfigArgs
///         {
///             WordsConfigs = new[]
///             {
///                 new Aws.Bedrock.Inputs.GuardrailWordPolicyConfigWordsConfigArgs
///                 {
///                     Text = "deny",
///                 },
///             },
///         },
///         Name = "example",
///         BlockedInputMessaging = "Blocked input",
///         BlockedOutputsMessaging = "Blocked output",
///         Description = "Example guardrail",
///     });
///
///     var exampleGuardrailVersion = new Aws.Bedrock.GuardrailVersion("example", new()
///     {
///         GuardrailArn = example.GuardrailArn,
///         Description = "Example version",
///     });
///
///     var exampleEnforcedGuardrailConfiguration = new Aws.Bedrock.EnforcedGuardrailConfiguration("example", new()
///     {
///         ModelEnforcement = new Aws.Bedrock.Inputs.EnforcedGuardrailConfigurationModelEnforcementArgs
///         {
///             IncludedModels = new[]
///             {
///                 "ALL",
///             },
///             ExcludedModels = new() { },
///         },
///         GuardrailArn = example.GuardrailArn,
///         GuardrailVersion = exampleGuardrailVersion.Version,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := bedrock.NewGuardrail(ctx, "example", &bedrock.GuardrailArgs{
/// 			WordPolicyConfig: &bedrock.GuardrailWordPolicyConfigArgs{
/// 				WordsConfigs: bedrock.GuardrailWordPolicyConfigWordsConfigArray{
/// 					&bedrock.GuardrailWordPolicyConfigWordsConfigArgs{
/// 						Text: pulumi.String("deny"),
/// 					},
/// 				},
/// 			},
/// 			Name:                    pulumi.String("example"),
/// 			BlockedInputMessaging:   pulumi.String("Blocked input"),
/// 			BlockedOutputsMessaging: pulumi.String("Blocked output"),
/// 			Description:             pulumi.String("Example guardrail"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGuardrailVersion, err := bedrock.NewGuardrailVersion(ctx, "example", &bedrock.GuardrailVersionArgs{
/// 			GuardrailArn: example.GuardrailArn,
/// 			Description:  pulumi.String("Example version"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bedrock.NewEnforcedGuardrailConfiguration(ctx, "example", &bedrock.EnforcedGuardrailConfigurationArgs{
/// 			ModelEnforcement: &bedrock.EnforcedGuardrailConfigurationModelEnforcementArgs{
/// 				IncludedModels: pulumi.StringArray{
/// 					pulumi.String("ALL"),
/// 				},
/// 				ExcludedModels: pulumi.StringArray{},
/// 			},
/// 			GuardrailArn:     example.GuardrailArn,
/// 			GuardrailVersion: exampleGuardrailVersion.Version,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_bedrock_guardrail" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   word_policy_config {
///     words_config {
///       text = "deny"
///     }
///   }
///   name                      = "example"
///   blocked_input_messaging   = "Blocked input"
///   blocked_outputs_messaging = "Blocked output"
///   description               = "Example guardrail"
/// }
/// resource "aws_bedrock_guardrail_version" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   guardrail_arn = aws_bedrock_guardrail.example.guardrail_arn
///   description   = "Example version"
/// }
/// resource "aws_bedrock_enforced_guardrail_configuration" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   model_enforcement {
///     included_models = ["ALL"]
///     excluded_models = []
///   }
///   guardrail_arn     = aws_bedrock_guardrail.example.guardrail_arn
///   guardrail_version = aws_bedrock_guardrail_version.example.version
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.Guardrail;
/// import com.pulumi.aws.bedrock.GuardrailArgs;
/// import com.pulumi.aws.bedrock.inputs.GuardrailWordPolicyConfigArgs;
/// import com.pulumi.aws.bedrock.inputs.GuardrailWordPolicyConfigWordsConfigArgs;
/// import com.pulumi.aws.bedrock.GuardrailVersion;
/// import com.pulumi.aws.bedrock.GuardrailVersionArgs;
/// import com.pulumi.aws.bedrock.EnforcedGuardrailConfiguration;
/// import com.pulumi.aws.bedrock.EnforcedGuardrailConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.EnforcedGuardrailConfigurationModelEnforcementArgs;
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
///         var example = new Guardrail("example", GuardrailArgs.builder()
///             .wordPolicyConfig(GuardrailWordPolicyConfigArgs.builder()
///                 .wordsConfigs(GuardrailWordPolicyConfigWordsConfigArgs.builder()
///                     .text("deny")
///                     .build())
///                 .build())
///             .name("example")
///             .blockedInputMessaging("Blocked input")
///             .blockedOutputsMessaging("Blocked output")
///             .description("Example guardrail")
///             .build());
///
///         var exampleGuardrailVersion = new GuardrailVersion("exampleGuardrailVersion", GuardrailVersionArgs.builder()
///             .guardrailArn(example.guardrailArn())
///             .description("Example version")
///             .build());
///
///         var exampleEnforcedGuardrailConfiguration = new EnforcedGuardrailConfiguration("exampleEnforcedGuardrailConfiguration", EnforcedGuardrailConfigurationArgs.builder()
///             .modelEnforcement(EnforcedGuardrailConfigurationModelEnforcementArgs.builder()
///                 .includedModels("ALL")
///                 .excludedModels()
///                 .build())
///             .guardrailArn(example.guardrailArn())
///             .guardrailVersion(exampleGuardrailVersion.version())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:Guardrail
///     properties:
///       wordPolicyConfig:
///         wordsConfigs:
///           - text: deny
///       name: example
///       blockedInputMessaging: Blocked input
///       blockedOutputsMessaging: Blocked output
///       description: Example guardrail
///   exampleGuardrailVersion:
///     type: aws:bedrock:GuardrailVersion
///     name: example
///     properties:
///       guardrailArn: ${example.guardrailArn}
///       description: Example version
///   exampleEnforcedGuardrailConfiguration:
///     type: aws:bedrock:EnforcedGuardrailConfiguration
///     name: example
///     properties:
///       modelEnforcement:
///         includedModels:
///           - ALL
///         excludedModels: []
///       guardrailArn: ${example.guardrailArn}
///       guardrailVersion: ${exampleGuardrailVersion.version}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `configId` (String) Configuration ID.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Bedrock Enforced Guardrail Configuration using `configId`. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/enforcedGuardrailConfiguration:EnforcedGuardrailConfiguration example TODO
/// ```
class EnforcedGuardrailConfiguration extends pulumi.CustomResource {
  /// Unique ID for the account enforced configuration.
  late final pulumi.Output<String> configId;
  /// Guardrail ARN.
  late final pulumi.Output<String> guardrailArn;
  /// Unique ID of the guardrail.
  late final pulumi.Output<String> guardrailId;
  /// Numerical guardrail version. Must be a published version number (e.g., `1`, `2`). `DRAFT` is not supported.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> guardrailVersion;
  /// Model-specific information for the enforced guardrail configuration. If not present, the configuration is enforced on all models. See `modelEnforcement` Block below.
  late final pulumi.Output<EnforcedGuardrailConfigurationModelEnforcement?> modelEnforcement;
  /// Configuration owner type. Value: `ACCOUNT`.
  late final pulumi.Output<String> owner;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Selective content guarding controls for enforced guardrails. See `selectiveContentGuarding` Block below.
  late final pulumi.Output<EnforcedGuardrailConfigurationSelectiveContentGuarding?> selectiveContentGuarding;

  /// Creates a new [EnforcedGuardrailConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnforcedGuardrailConfiguration]. {@macro pulumi_bedrock_enforced_guardrail_configuration_enforced_guardrail_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnforcedGuardrailConfiguration(
    String name, {
    EnforcedGuardrailConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/enforcedGuardrailConfiguration:EnforcedGuardrailConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.52.1').merge(options),
        ) {
    configId = registerOutput<String>('configId');
    guardrailArn = registerOutput<String>('guardrailArn');
    guardrailId = registerOutput<String>('guardrailId');
    guardrailVersion = registerOutput<String>('guardrailVersion');
    modelEnforcement = registerOutput<EnforcedGuardrailConfigurationModelEnforcement?>('modelEnforcement', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnforcedGuardrailConfigurationModelEnforcement.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    owner = registerOutput<String>('owner');
    region = registerOutput<String>('region');
    selectiveContentGuarding = registerOutput<EnforcedGuardrailConfigurationSelectiveContentGuarding?>('selectiveContentGuarding', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnforcedGuardrailConfigurationSelectiveContentGuarding.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [EnforcedGuardrailConfiguration] resource's state with the given [name] and [id].
  static EnforcedGuardrailConfiguration get(
    String name,
    pulumi.Input<String> id, {
    EnforcedGuardrailConfigurationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return EnforcedGuardrailConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  EnforcedGuardrailConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/enforcedGuardrailConfiguration:EnforcedGuardrailConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    configId = registerOutput<String>('configId');
    guardrailArn = registerOutput<String>('guardrailArn');
    guardrailId = registerOutput<String>('guardrailId');
    guardrailVersion = registerOutput<String>('guardrailVersion');
    modelEnforcement = registerOutput<EnforcedGuardrailConfigurationModelEnforcement?>('modelEnforcement', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnforcedGuardrailConfigurationModelEnforcement.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    owner = registerOutput<String>('owner');
    region = registerOutput<String>('region');
    selectiveContentGuarding = registerOutput<EnforcedGuardrailConfigurationSelectiveContentGuarding?>('selectiveContentGuarding', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnforcedGuardrailConfigurationSelectiveContentGuarding.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [EnforcedGuardrailConfiguration] resource.
  EnforcedGuardrailConfiguration.reference(String urn)
    : super(
        'aws:bedrock/enforcedGuardrailConfiguration:EnforcedGuardrailConfiguration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    configId = registerOutput<String>('configId');
    guardrailArn = registerOutput<String>('guardrailArn');
    guardrailId = registerOutput<String>('guardrailId');
    guardrailVersion = registerOutput<String>('guardrailVersion');
    modelEnforcement = registerOutput<EnforcedGuardrailConfigurationModelEnforcement?>('modelEnforcement', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnforcedGuardrailConfigurationModelEnforcement.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    owner = registerOutput<String>('owner');
    region = registerOutput<String>('region');
    selectiveContentGuarding = registerOutput<EnforcedGuardrailConfigurationSelectiveContentGuarding?>('selectiveContentGuarding', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnforcedGuardrailConfigurationSelectiveContentGuarding.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
