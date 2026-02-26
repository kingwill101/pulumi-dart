import 'package:pulumi/pulumi.dart';
import '../workspace_logging_configuration/workspace_logging_configuration.dart';
import 'workspace_args.dart';

/// Manages an Amazon Managed Service for Prometheus (AMP) Workspace.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.amp.Workspace("example", {
/// alias: "example",
/// tags: {
/// Environment: "production",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amp.Workspace("example",
/// alias="example",
/// tags={
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
/// var example = new Aws.Amp.Workspace("example", new()
/// {
/// Alias = "example",
/// Tags =
/// {
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amp"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := amp.NewWorkspace(ctx, "example", &amp.WorkspaceArgs{
/// Alias: pulumi.String("example"),
/// Tags: pulumi.StringMap{
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
/// import com.pulumi.aws.amp.Workspace;
/// import com.pulumi.aws.amp.WorkspaceArgs;
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
/// var example = new Workspace("example", WorkspaceArgs.builder()
/// .alias("example")
/// .tags(Map.of("Environment", "production"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:amp:Workspace
/// properties:
/// alias: example
/// tags:
/// Environment: production
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### CloudWatch Logging
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudwatch.LogGroup("example", {name: "example"});
/// const exampleWorkspace = new aws.amp.Workspace("example", {loggingConfiguration: {
/// logGroupArn: pulumi.interpolate`${example.arn}:*`,
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudwatch.LogGroup("example", name="example")
/// example_workspace = aws.amp.Workspace("example", logging_configuration={
/// "log_group_arn": example.arn.apply(lambda arn: f"{arn}:*"),
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
/// var example = new Aws.CloudWatch.LogGroup("example", new()
/// {
/// Name = "example",
/// });
///
/// var exampleWorkspace = new Aws.Amp.Workspace("example", new()
/// {
/// LoggingConfiguration = new Aws.Amp.Inputs.WorkspaceLoggingConfigurationArgs
/// {
/// LogGroupArn = example.Arn.Apply(arn => $"{arn}:*"),
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amp"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := cloudwatch.NewLogGroup(ctx, "example", &cloudwatch.LogGroupArgs{
/// Name: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = amp.NewWorkspace(ctx, "example", &amp.WorkspaceArgs{
/// LoggingConfiguration: &amp.WorkspaceLoggingConfigurationArgs{
/// LogGroupArn: example.Arn.ApplyT(func(arn string) (string, error) {
/// return fmt.Sprintf("%v:*", arn), nil
/// }).(pulumi.StringOutput),
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
/// import com.pulumi.aws.cloudwatch.LogGroup;
/// import com.pulumi.aws.cloudwatch.LogGroupArgs;
/// import com.pulumi.aws.amp.Workspace;
/// import com.pulumi.aws.amp.WorkspaceArgs;
/// import com.pulumi.aws.amp.inputs.WorkspaceLoggingConfigurationArgs;
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
/// var example = new LogGroup("example", LogGroupArgs.builder()
/// .name("example")
/// .build());
///
/// var exampleWorkspace = new Workspace("exampleWorkspace", WorkspaceArgs.builder()
/// .loggingConfiguration(WorkspaceLoggingConfigurationArgs.builder()
/// .logGroupArn(example.arn().applyValue(_arn -> String.format("%s:*", _arn)))
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:cloudwatch:LogGroup
/// properties:
/// name: example
/// exampleWorkspace:
/// type: aws:amp:Workspace
/// name: example
/// properties:
/// loggingConfiguration:
/// logGroupArn: ${example.arn}:*
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### AWS KMS Customer Managed Keys (CMK)
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleKey = new aws.kms.Key("example", {
/// description: "example",
/// deletionWindowInDays: 7,
/// });
/// const example = new aws.amp.Workspace("example", {
/// alias: "example",
/// kmsKeyArn: exampleKey.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_key = aws.kms.Key("example",
/// description="example",
/// deletion_window_in_days=7)
/// example = aws.amp.Workspace("example",
/// alias="example",
/// kms_key_arn=example_key.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var exampleKey = new Aws.Kms.Key("example", new()
/// {
/// Description = "example",
/// DeletionWindowInDays = 7,
/// });
///
/// var example = new Aws.Amp.Workspace("example", new()
/// {
/// Alias = "example",
/// KmsKeyArn = exampleKey.Arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amp"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// exampleKey, err := kms.NewKey(ctx, "example", &kms.KeyArgs{
/// Description:          pulumi.String("example"),
/// DeletionWindowInDays: pulumi.Int(7),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = amp.NewWorkspace(ctx, "example", &amp.WorkspaceArgs{
/// Alias:     pulumi.String("example"),
/// KmsKeyArn: exampleKey.Arn,
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
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.amp.Workspace;
/// import com.pulumi.aws.amp.WorkspaceArgs;
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
/// var exampleKey = new Key("exampleKey", KeyArgs.builder()
/// .description("example")
/// .deletionWindowInDays(7)
/// .build());
///
/// var example = new Workspace("example", WorkspaceArgs.builder()
/// .alias("example")
/// .kmsKeyArn(exampleKey.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:amp:Workspace
/// properties:
/// alias: example
/// kmsKeyArn: ${exampleKey.arn}
/// exampleKey:
/// type: aws:kms:Key
/// name: example
/// properties:
/// description: example
/// deletionWindowInDays: 7
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import AMP Workspaces using the identifier. For example:
///
/// ```sh
/// $ pulumi import aws:amp/workspace:Workspace demo ws-C6DCB907-F2D7-4D96-957B-66691F865D8B
/// ```
class Workspace extends CustomResource {
  /// The alias of the prometheus workspace. See more [in AWS Docs](https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-onboard-create-workspace.html).
  late final Output<String?> alias;

  /// Amazon Resource Name (ARN) of the workspace.
  late final Output<String> arn;

  /// The ARN for the KMS encryption key. If this argument is not provided, then the AWS owned encryption key will be used to encrypt the data in the workspace. See more [in AWS Docs](https://docs.aws.amazon.com/prometheus/latest/userguide/encryption-at-rest-Amazon-Service-Prometheus.html)
  late final Output<String?> kmsKeyArn;

  /// Logging configuration for the workspace. See Logging Configuration below for details.
  late final Output<WorkspaceLoggingConfiguration?> loggingConfiguration;

  /// Prometheus endpoint available for this workspace.
  late final Output<String> prometheusEndpoint;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Workspace(
    String name, {
    WorkspaceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:amp/workspace:Workspace',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.alias = Output.createUnknown<String?>();
    this.arn = Output.createUnknown<String>();
    this.kmsKeyArn = Output.createUnknown<String?>();
    this.loggingConfiguration =
        Output.createUnknown<WorkspaceLoggingConfiguration?>();
    this.prometheusEndpoint = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
