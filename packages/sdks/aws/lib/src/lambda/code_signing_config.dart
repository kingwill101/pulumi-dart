import 'package:pulumi/pulumi.dart' as pulumi;
import 'code_signing_config_allowed_publishers.dart';
import 'code_signing_config_args.dart';
import 'code_signing_config_policies.dart';
import 'code_signing_config_state.dart';

/// Manages an AWS Lambda Code Signing Config. Use this resource to define allowed signing profiles and code-signing validation policies for Lambda functions to ensure code integrity and authenticity.
///
/// For information about Lambda code signing configurations and how to use them, see [configuring code signing for Lambda functions](https://docs.aws.amazon.com/lambda/latest/dg/configuration-codesigning.html).
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
/// // Create signing profiles for different environments
/// const prod = new aws.signer.SigningProfile("prod", {
///     platformId: "AWSLambda-SHA384-ECDSA",
///     namePrefix: "prod_lambda_",
///     tags: {
///         Environment: "production",
///     },
/// });
/// const dev = new aws.signer.SigningProfile("dev", {
///     platformId: "AWSLambda-SHA384-ECDSA",
///     namePrefix: "dev_lambda_",
///     tags: {
///         Environment: "development",
///     },
/// });
/// // Code signing configuration with enforcement
/// const example = new aws.lambda.CodeSigningConfig("example", {
///     description: "Code signing configuration for Lambda functions",
///     allowedPublishers: {
///         signingProfileVersionArns: [
///             prod.versionArn,
///             dev.versionArn,
///         ],
///     },
///     policies: {
///         untrustedArtifactOnDeployment: "Enforce",
///     },
///     tags: {
///         Environment: "production",
///         Purpose: "code-signing",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Create signing profiles for different environments
/// prod = aws.signer.SigningProfile("prod",
///     platform_id="AWSLambda-SHA384-ECDSA",
///     name_prefix="prod_lambda_",
///     tags={
///         "Environment": "production",
///     })
/// dev = aws.signer.SigningProfile("dev",
///     platform_id="AWSLambda-SHA384-ECDSA",
///     name_prefix="dev_lambda_",
///     tags={
///         "Environment": "development",
///     })
/// # Code signing configuration with enforcement
/// example = aws.lambda_.CodeSigningConfig("example",
///     description="Code signing configuration for Lambda functions",
///     allowed_publishers={
///         "signing_profile_version_arns": [
///             prod.version_arn,
///             dev.version_arn,
///         ],
///     },
///     policies={
///         "untrusted_artifact_on_deployment": "Enforce",
///     },
///     tags={
///         "Environment": "production",
///         "Purpose": "code-signing",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Create signing profiles for different environments
///     var prod = new Aws.Signer.SigningProfile("prod", new()
///     {
///         PlatformId = "AWSLambda-SHA384-ECDSA",
///         NamePrefix = "prod_lambda_",
///         Tags =
///         {
///             { "Environment", "production" },
///         },
///     });
///
///     var dev = new Aws.Signer.SigningProfile("dev", new()
///     {
///         PlatformId = "AWSLambda-SHA384-ECDSA",
///         NamePrefix = "dev_lambda_",
///         Tags =
///         {
///             { "Environment", "development" },
///         },
///     });
///
///     // Code signing configuration with enforcement
///     var example = new Aws.Lambda.CodeSigningConfig("example", new()
///     {
///         Description = "Code signing configuration for Lambda functions",
///         AllowedPublishers = new Aws.Lambda.Inputs.CodeSigningConfigAllowedPublishersArgs
///         {
///             SigningProfileVersionArns = new[]
///             {
///                 prod.VersionArn,
///                 dev.VersionArn,
///             },
///         },
///         Policies = new Aws.Lambda.Inputs.CodeSigningConfigPoliciesArgs
///         {
///             UntrustedArtifactOnDeployment = "Enforce",
///         },
///         Tags =
///         {
///             { "Environment", "production" },
///             { "Purpose", "code-signing" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/signer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Create signing profiles for different environments
/// 		prod, err := signer.NewSigningProfile(ctx, "prod", &signer.SigningProfileArgs{
/// 			PlatformId: pulumi.String("AWSLambda-SHA384-ECDSA"),
/// 			NamePrefix: pulumi.String("prod_lambda_"),
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("production"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		dev, err := signer.NewSigningProfile(ctx, "dev", &signer.SigningProfileArgs{
/// 			PlatformId: pulumi.String("AWSLambda-SHA384-ECDSA"),
/// 			NamePrefix: pulumi.String("dev_lambda_"),
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("development"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Code signing configuration with enforcement
/// 		_, err = lambda.NewCodeSigningConfig(ctx, "example", &lambda.CodeSigningConfigArgs{
/// 			Description: pulumi.String("Code signing configuration for Lambda functions"),
/// 			AllowedPublishers: &lambda.CodeSigningConfigAllowedPublishersArgs{
/// 				SigningProfileVersionArns: pulumi.StringArray{
/// 					prod.VersionArn,
/// 					dev.VersionArn,
/// 				},
/// 			},
/// 			Policies: &lambda.CodeSigningConfigPoliciesArgs{
/// 				UntrustedArtifactOnDeployment: pulumi.String("Enforce"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("production"),
/// 				"Purpose":     pulumi.String("code-signing"),
/// 			},
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
/// import com.pulumi.aws.signer.SigningProfile;
/// import com.pulumi.aws.signer.SigningProfileArgs;
/// import com.pulumi.aws.lambda.CodeSigningConfig;
/// import com.pulumi.aws.lambda.CodeSigningConfigArgs;
/// import com.pulumi.aws.lambda.inputs.CodeSigningConfigAllowedPublishersArgs;
/// import com.pulumi.aws.lambda.inputs.CodeSigningConfigPoliciesArgs;
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
///         // Create signing profiles for different environments
///         var prod = new SigningProfile("prod", SigningProfileArgs.builder()
///             .platformId("AWSLambda-SHA384-ECDSA")
///             .namePrefix("prod_lambda_")
///             .tags(Map.of("Environment", "production"))
///             .build());
///
///         var dev = new SigningProfile("dev", SigningProfileArgs.builder()
///             .platformId("AWSLambda-SHA384-ECDSA")
///             .namePrefix("dev_lambda_")
///             .tags(Map.of("Environment", "development"))
///             .build());
///
///         // Code signing configuration with enforcement
///         var example = new CodeSigningConfig("example", CodeSigningConfigArgs.builder()
///             .description("Code signing configuration for Lambda functions")
///             .allowedPublishers(CodeSigningConfigAllowedPublishersArgs.builder()
///                 .signingProfileVersionArns(
///                     prod.versionArn(),
///                     dev.versionArn())
///                 .build())
///             .policies(CodeSigningConfigPoliciesArgs.builder()
///                 .untrustedArtifactOnDeployment("Enforce")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("Environment", "production"),
///                 Map.entry("Purpose", "code-signing")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create signing profiles for different environments
///   prod:
///     type: aws:signer:SigningProfile
///     properties:
///       platformId: AWSLambda-SHA384-ECDSA
///       namePrefix: prod_lambda_
///       tags:
///         Environment: production
///   dev:
///     type: aws:signer:SigningProfile
///     properties:
///       platformId: AWSLambda-SHA384-ECDSA
///       namePrefix: dev_lambda_
///       tags:
///         Environment: development
///   # Code signing configuration with enforcement
///   example:
///     type: aws:lambda:CodeSigningConfig
///     properties:
///       description: Code signing configuration for Lambda functions
///       allowedPublishers:
///         signingProfileVersionArns:
///           - ${prod.versionArn}
///           - ${dev.versionArn}
///       policies:
///         untrustedArtifactOnDeployment: Enforce
///       tags:
///         Environment: production
///         Purpose: code-signing
/// ```
///
///
/// ### Warning Only Configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambda.CodeSigningConfig("example", {
///     description: "Development code signing configuration",
///     allowedPublishers: {
///         signingProfileVersionArns: [dev.versionArn],
///     },
///     policies: {
///         untrustedArtifactOnDeployment: "Warn",
///     },
///     tags: {
///         Environment: "development",
///         Purpose: "code-signing",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda_.CodeSigningConfig("example",
///     description="Development code signing configuration",
///     allowed_publishers={
///         "signing_profile_version_arns": [dev["versionArn"]],
///     },
///     policies={
///         "untrusted_artifact_on_deployment": "Warn",
///     },
///     tags={
///         "Environment": "development",
///         "Purpose": "code-signing",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Lambda.CodeSigningConfig("example", new()
///     {
///         Description = "Development code signing configuration",
///         AllowedPublishers = new Aws.Lambda.Inputs.CodeSigningConfigAllowedPublishersArgs
///         {
///             SigningProfileVersionArns = new[]
///             {
///                 dev.VersionArn,
///             },
///         },
///         Policies = new Aws.Lambda.Inputs.CodeSigningConfigPoliciesArgs
///         {
///             UntrustedArtifactOnDeployment = "Warn",
///         },
///         Tags =
///         {
///             { "Environment", "development" },
///             { "Purpose", "code-signing" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lambda.NewCodeSigningConfig(ctx, "example", &lambda.CodeSigningConfigArgs{
/// 			Description: pulumi.String("Development code signing configuration"),
/// 			AllowedPublishers: &lambda.CodeSigningConfigAllowedPublishersArgs{
/// 				SigningProfileVersionArns: pulumi.StringArray{
/// 					dev.VersionArn,
/// 				},
/// 			},
/// 			Policies: &lambda.CodeSigningConfigPoliciesArgs{
/// 				UntrustedArtifactOnDeployment: pulumi.String("Warn"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("development"),
/// 				"Purpose":     pulumi.String("code-signing"),
/// 			},
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
/// import com.pulumi.aws.lambda.CodeSigningConfig;
/// import com.pulumi.aws.lambda.CodeSigningConfigArgs;
/// import com.pulumi.aws.lambda.inputs.CodeSigningConfigAllowedPublishersArgs;
/// import com.pulumi.aws.lambda.inputs.CodeSigningConfigPoliciesArgs;
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
///         var example = new CodeSigningConfig("example", CodeSigningConfigArgs.builder()
///             .description("Development code signing configuration")
///             .allowedPublishers(CodeSigningConfigAllowedPublishersArgs.builder()
///                 .signingProfileVersionArns(dev.versionArn())
///                 .build())
///             .policies(CodeSigningConfigPoliciesArgs.builder()
///                 .untrustedArtifactOnDeployment("Warn")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("Environment", "development"),
///                 Map.entry("Purpose", "code-signing")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lambda:CodeSigningConfig
///     properties:
///       description: Development code signing configuration
///       allowedPublishers:
///         signingProfileVersionArns:
///           - ${dev.versionArn}
///       policies:
///         untrustedArtifactOnDeployment: Warn
///       tags:
///         Environment: development
///         Purpose: code-signing
/// ```
///
///
/// ### Multiple Environment Configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Production signing configuration
/// const prod = new aws.lambda.CodeSigningConfig("prod", {
///     description: "Production code signing configuration with strict enforcement",
///     allowedPublishers: {
///         signingProfileVersionArns: [prodAwsSignerSigningProfile.versionArn],
///     },
///     policies: {
///         untrustedArtifactOnDeployment: "Enforce",
///     },
///     tags: {
///         Environment: "production",
///         Security: "strict",
///     },
/// });
/// // Development signing configuration
/// const dev = new aws.lambda.CodeSigningConfig("dev", {
///     description: "Development code signing configuration with warnings",
///     allowedPublishers: {
///         signingProfileVersionArns: [
///             devAwsSignerSigningProfile.versionArn,
///             test.versionArn,
///         ],
///     },
///     policies: {
///         untrustedArtifactOnDeployment: "Warn",
///     },
///     tags: {
///         Environment: "development",
///         Security: "flexible",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Production signing configuration
/// prod = aws.lambda_.CodeSigningConfig("prod",
///     description="Production code signing configuration with strict enforcement",
///     allowed_publishers={
///         "signing_profile_version_arns": [prod_aws_signer_signing_profile["versionArn"]],
///     },
///     policies={
///         "untrusted_artifact_on_deployment": "Enforce",
///     },
///     tags={
///         "Environment": "production",
///         "Security": "strict",
///     })
/// # Development signing configuration
/// dev = aws.lambda_.CodeSigningConfig("dev",
///     description="Development code signing configuration with warnings",
///     allowed_publishers={
///         "signing_profile_version_arns": [
///             dev_aws_signer_signing_profile["versionArn"],
///             test["versionArn"],
///         ],
///     },
///     policies={
///         "untrusted_artifact_on_deployment": "Warn",
///     },
///     tags={
///         "Environment": "development",
///         "Security": "flexible",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Production signing configuration
///     var prod = new Aws.Lambda.CodeSigningConfig("prod", new()
///     {
///         Description = "Production code signing configuration with strict enforcement",
///         AllowedPublishers = new Aws.Lambda.Inputs.CodeSigningConfigAllowedPublishersArgs
///         {
///             SigningProfileVersionArns = new[]
///             {
///                 prodAwsSignerSigningProfile.VersionArn,
///             },
///         },
///         Policies = new Aws.Lambda.Inputs.CodeSigningConfigPoliciesArgs
///         {
///             UntrustedArtifactOnDeployment = "Enforce",
///         },
///         Tags =
///         {
///             { "Environment", "production" },
///             { "Security", "strict" },
///         },
///     });
///
///     // Development signing configuration
///     var dev = new Aws.Lambda.CodeSigningConfig("dev", new()
///     {
///         Description = "Development code signing configuration with warnings",
///         AllowedPublishers = new Aws.Lambda.Inputs.CodeSigningConfigAllowedPublishersArgs
///         {
///             SigningProfileVersionArns = new[]
///             {
///                 devAwsSignerSigningProfile.VersionArn,
///                 test.VersionArn,
///             },
///         },
///         Policies = new Aws.Lambda.Inputs.CodeSigningConfigPoliciesArgs
///         {
///             UntrustedArtifactOnDeployment = "Warn",
///         },
///         Tags =
///         {
///             { "Environment", "development" },
///             { "Security", "flexible" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Production signing configuration
/// 		_, err := lambda.NewCodeSigningConfig(ctx, "prod", &lambda.CodeSigningConfigArgs{
/// 			Description: pulumi.String("Production code signing configuration with strict enforcement"),
/// 			AllowedPublishers: &lambda.CodeSigningConfigAllowedPublishersArgs{
/// 				SigningProfileVersionArns: pulumi.StringArray{
/// 					prodAwsSignerSigningProfile.VersionArn,
/// 				},
/// 			},
/// 			Policies: &lambda.CodeSigningConfigPoliciesArgs{
/// 				UntrustedArtifactOnDeployment: pulumi.String("Enforce"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("production"),
/// 				"Security":    pulumi.String("strict"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Development signing configuration
/// 		_, err = lambda.NewCodeSigningConfig(ctx, "dev", &lambda.CodeSigningConfigArgs{
/// 			Description: pulumi.String("Development code signing configuration with warnings"),
/// 			AllowedPublishers: &lambda.CodeSigningConfigAllowedPublishersArgs{
/// 				SigningProfileVersionArns: pulumi.StringArray{
/// 					devAwsSignerSigningProfile.VersionArn,
/// 					test.VersionArn,
/// 				},
/// 			},
/// 			Policies: &lambda.CodeSigningConfigPoliciesArgs{
/// 				UntrustedArtifactOnDeployment: pulumi.String("Warn"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("development"),
/// 				"Security":    pulumi.String("flexible"),
/// 			},
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
/// import com.pulumi.aws.lambda.CodeSigningConfig;
/// import com.pulumi.aws.lambda.CodeSigningConfigArgs;
/// import com.pulumi.aws.lambda.inputs.CodeSigningConfigAllowedPublishersArgs;
/// import com.pulumi.aws.lambda.inputs.CodeSigningConfigPoliciesArgs;
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
///         // Production signing configuration
///         var prod = new CodeSigningConfig("prod", CodeSigningConfigArgs.builder()
///             .description("Production code signing configuration with strict enforcement")
///             .allowedPublishers(CodeSigningConfigAllowedPublishersArgs.builder()
///                 .signingProfileVersionArns(prodAwsSignerSigningProfile.versionArn())
///                 .build())
///             .policies(CodeSigningConfigPoliciesArgs.builder()
///                 .untrustedArtifactOnDeployment("Enforce")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("Environment", "production"),
///                 Map.entry("Security", "strict")
///             ))
///             .build());
///
///         // Development signing configuration
///         var dev = new CodeSigningConfig("dev", CodeSigningConfigArgs.builder()
///             .description("Development code signing configuration with warnings")
///             .allowedPublishers(CodeSigningConfigAllowedPublishersArgs.builder()
///                 .signingProfileVersionArns(
///                     devAwsSignerSigningProfile.versionArn(),
///                     test.versionArn())
///                 .build())
///             .policies(CodeSigningConfigPoliciesArgs.builder()
///                 .untrustedArtifactOnDeployment("Warn")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("Environment", "development"),
///                 Map.entry("Security", "flexible")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Production signing configuration
///   prod:
///     type: aws:lambda:CodeSigningConfig
///     properties:
///       description: Production code signing configuration with strict enforcement
///       allowedPublishers:
///         signingProfileVersionArns:
///           - ${prodAwsSignerSigningProfile.versionArn}
///       policies:
///         untrustedArtifactOnDeployment: Enforce
///       tags:
///         Environment: production
///         Security: strict
///   # Development signing configuration
///   dev:
///     type: aws:lambda:CodeSigningConfig
///     properties:
///       description: Development code signing configuration with warnings
///       allowedPublishers:
///         signingProfileVersionArns:
///           - ${devAwsSignerSigningProfile.versionArn}
///           - ${test.versionArn}
///       policies:
///         untrustedArtifactOnDeployment: Warn
///       tags:
///         Environment: development
///         Security: flexible
/// ```
///
///
/// ## Import
///
/// For backwards compatibility, the following legacy `pulumi import` command is also supported:
///
/// ```sh
/// $ pulumi import aws:lambda/codeSigningConfig:CodeSigningConfig example arn:aws:lambda:us-west-2:123456789012:code-signing-config:csc-0f6c334abcdea4d8b
/// ```
class CodeSigningConfig extends pulumi.CustomResource {
  /// Configuration block of allowed publishers as signing profiles for this code signing configuration. See below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<CodeSigningConfigAllowedPublishers> allowedPublishers;
  /// ARN of the code signing configuration.
  late final pulumi.Output<String> arn;
  /// Unique identifier for the code signing configuration.
  late final pulumi.Output<String> configId;
  /// Descriptive name for this code signing configuration.
  late final pulumi.Output<String?> description;
  /// Date and time that the code signing configuration was last modified.
  late final pulumi.Output<String> lastModified;
  /// Configuration block of code signing policies that define the actions to take if the validation checks fail. See below.
  late final pulumi.Output<CodeSigningConfigPolicies> policies;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of tags to assign to the object. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [CodeSigningConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CodeSigningConfig]. {@macro pulumi_lambda_code_signing_config_code_signing_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CodeSigningConfig(
    String name, {
    CodeSigningConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lambda/codeSigningConfig:CodeSigningConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowedPublishers = registerOutput<CodeSigningConfigAllowedPublishers>('allowedPublishers');
    this.arn = registerOutput<String>('arn');
    this.configId = registerOutput<String>('configId');
    this.description = registerOutput<String?>('description');
    this.lastModified = registerOutput<String>('lastModified');
    this.policies = registerOutput<CodeSigningConfigPolicies>('policies');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [CodeSigningConfig] resource's state with the given [name] and [id].
  static CodeSigningConfig get(
    String name,
    pulumi.Input<String> id, {
    CodeSigningConfigState? state,
  }) {
    return CodeSigningConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CodeSigningConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lambda/codeSigningConfig:CodeSigningConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowedPublishers = registerOutput<CodeSigningConfigAllowedPublishers>('allowedPublishers');
    this.arn = registerOutput<String>('arn');
    this.configId = registerOutput<String>('configId');
    this.description = registerOutput<String?>('description');
    this.lastModified = registerOutput<String>('lastModified');
    this.policies = registerOutput<CodeSigningConfigPolicies>('policies');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
