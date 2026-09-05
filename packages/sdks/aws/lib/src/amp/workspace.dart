import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_args.dart';
import 'workspace_logging_configuration.dart';
import 'workspace_state.dart';

/// Manages an Amazon Managed Service for Prometheus (AMP) Workspace.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.amp.Workspace("example", {
///     alias: "example",
///     tags: {
///         Environment: "production",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amp.Workspace("example",
///     alias="example",
///     tags={
///         "Environment": "production",
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
///     var example = new Aws.Amp.Workspace("example", new()
///     {
///         Alias = "example",
///         Tags =
///         {
///             { "Environment", "production" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := amp.NewWorkspace(ctx, "example", &amp.WorkspaceArgs{
/// 			Alias: pulumi.String("example"),
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("production"),
/// 			},
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
/// resource "aws_amp_workspace" "example" {
///   alias = "example"
///   tags = {
///     "Environment" = "production"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.amp.Workspace;
/// import com.pulumi.aws.amp.WorkspaceArgs;
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
///         var example = new Workspace("example", WorkspaceArgs.builder()
///             .alias("example")
///             .tags(Map.of("Environment", "production"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:amp:Workspace
///     properties:
///       alias: example
///       tags:
///         Environment: production
/// ```
///
///
/// ### CloudWatch Logging
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudwatch.LogGroup("example", {name: "example"});
/// const exampleWorkspace = new aws.amp.Workspace("example", {loggingConfiguration: {
///     logGroupArn: pulumi.interpolate`${example.arn}:*`,
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudwatch.LogGroup("example", name="example")
/// example_workspace = aws.amp.Workspace("example", logging_configuration={
///     "log_group_arn": example.arn.apply(lambda arn: f"{arn}:*"),
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
///     var example = new Aws.CloudWatch.LogGroup("example", new()
///     {
///         Name = "example",
///     });
///
///     var exampleWorkspace = new Aws.Amp.Workspace("example", new()
///     {
///         LoggingConfiguration = new Aws.Amp.Inputs.WorkspaceLoggingConfigurationArgs
///         {
///             LogGroupArn = example.Arn.Apply(arn => $"{arn}:*"),
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amp"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cloudwatch.NewLogGroup(ctx, "example", &cloudwatch.LogGroupArgs{
/// 			Name: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = amp.NewWorkspace(ctx, "example", &amp.WorkspaceArgs{
/// 			LoggingConfiguration: &amp.WorkspaceLoggingConfigurationArgs{
/// 				LogGroupArn: example.Arn.ApplyT(func(arn string) (string, error) {
/// 					return fmt.Sprintf("%v:*", arn), nil
/// 				}).(pulumi.StringOutput),
/// 			},
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
/// resource "aws_cloudwatch_loggroup" "example" {
///   name = "example"
/// }
/// resource "aws_amp_workspace" "example" {
///   logging_configuration = {
///     log_group_arn ="${aws_cloudwatch_loggroup.example.arn}:*"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudwatch.LogGroup;
/// import com.pulumi.aws.cloudwatch.LogGroupArgs;
/// import com.pulumi.aws.amp.Workspace;
/// import com.pulumi.aws.amp.WorkspaceArgs;
/// import com.pulumi.aws.amp.inputs.WorkspaceLoggingConfigurationArgs;
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
///         var example = new LogGroup("example", LogGroupArgs.builder()
///             .name("example")
///             .build());
///
///         var exampleWorkspace = new Workspace("exampleWorkspace", WorkspaceArgs.builder()
///             .loggingConfiguration(WorkspaceLoggingConfigurationArgs.builder()
///                 .logGroupArn(example.arn().applyValue(_arn -> String.format("%s:*", _arn)))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudwatch:LogGroup
///     properties:
///       name: example
///   exampleWorkspace:
///     type: aws:amp:Workspace
///     name: example
///     properties:
///       loggingConfiguration:
///         logGroupArn: ${example.arn}:*
/// ```
///
///
/// ### AWS KMS Customer Managed Keys (CMK)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleKey = new aws.kms.Key("example", {
///     description: "example",
///     deletionWindowInDays: 7,
/// });
/// const example = new aws.amp.Workspace("example", {
///     alias: "example",
///     kmsKeyArn: exampleKey.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_key = aws.kms.Key("example",
///     description="example",
///     deletion_window_in_days=7)
/// example = aws.amp.Workspace("example",
///     alias="example",
///     kms_key_arn=example_key.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleKey = new Aws.Kms.Key("example", new()
///     {
///         Description = "example",
///         DeletionWindowInDays = 7,
///     });
///
///     var example = new Aws.Amp.Workspace("example", new()
///     {
///         Alias = "example",
///         KmsKeyArn = exampleKey.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amp"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleKey, err := kms.NewKey(ctx, "example", &kms.KeyArgs{
/// 			Description:          pulumi.String("example"),
/// 			DeletionWindowInDays: pulumi.Int(7),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = amp.NewWorkspace(ctx, "example", &amp.WorkspaceArgs{
/// 			Alias:     pulumi.String("example"),
/// 			KmsKeyArn: exampleKey.Arn,
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
/// resource "aws_amp_workspace" "example" {
///   alias       = "example"
///   kms_key_arn = aws_kms_key.example.arn
/// }
/// resource "aws_kms_key" "example" {
///   description             = "example"
///   deletion_window_in_days = 7
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.amp.Workspace;
/// import com.pulumi.aws.amp.WorkspaceArgs;
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
///         var exampleKey = new Key("exampleKey", KeyArgs.builder()
///             .description("example")
///             .deletionWindowInDays(7)
///             .build());
///
///         var example = new Workspace("example", WorkspaceArgs.builder()
///             .alias("example")
///             .kmsKeyArn(exampleKey.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:amp:Workspace
///     properties:
///       alias: example
///       kmsKeyArn: ${exampleKey.arn}
///   exampleKey:
///     type: aws:kms:Key
///     name: example
///     properties:
///       description: example
///       deletionWindowInDays: 7
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import AMP Workspaces using the identifier. For example:
///
/// ```sh
/// $ pulumi import aws:amp/workspace:Workspace demo ws-C6DCB907-F2D7-4D96-957B-66691F865D8B
/// ```
class Workspace extends pulumi.CustomResource {
  /// The alias of the prometheus workspace. See more [in AWS Docs](https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-onboard-create-workspace.html).
  late final pulumi.Output<String?> alias;
  /// ARN of the workspace.
  late final pulumi.Output<String> arn;
  /// The ARN for the KMS encryption key. If this argument is not provided, then the AWS owned encryption key will be used to encrypt the data in the workspace. See more [in AWS Docs](https://docs.aws.amazon.com/prometheus/latest/userguide/encryption-at-rest-Amazon-Service-Prometheus.html)
  late final pulumi.Output<String?> kmsKeyArn;
  /// Logging configuration for the workspace. See Logging Configuration below for details.
  late final pulumi.Output<WorkspaceLoggingConfiguration?> loggingConfiguration;
  /// Prometheus endpoint available for this workspace.
  late final pulumi.Output<String> prometheusEndpoint;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Workspace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Workspace]. {@macro pulumi_amp_workspace_workspace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Workspace(
    String name, {
    WorkspaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:amp/workspace:Workspace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    alias = registerOutput<String?>('alias');
    arn = registerOutput<String>('arn');
    kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    loggingConfiguration = registerOutput<WorkspaceLoggingConfiguration?>('loggingConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkspaceLoggingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    prometheusEndpoint = registerOutput<String>('prometheusEndpoint');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [Workspace] resource's state with the given [name] and [id].
  static Workspace get(
    String name,
    pulumi.Input<String> id, {
    WorkspaceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Workspace._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Workspace._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:amp/workspace:Workspace',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    alias = registerOutput<String?>('alias');
    arn = registerOutput<String>('arn');
    kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    loggingConfiguration = registerOutput<WorkspaceLoggingConfiguration?>('loggingConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkspaceLoggingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    prometheusEndpoint = registerOutput<String>('prometheusEndpoint');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [Workspace] resource.
  Workspace.reference(String urn)
    : super(
        'aws:amp/workspace:Workspace',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    alias = registerOutput<String?>('alias');
    arn = registerOutput<String>('arn');
    kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    loggingConfiguration = registerOutput<WorkspaceLoggingConfiguration?>('loggingConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkspaceLoggingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    prometheusEndpoint = registerOutput<String>('prometheusEndpoint');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
