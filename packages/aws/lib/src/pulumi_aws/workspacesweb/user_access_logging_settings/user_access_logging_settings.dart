import 'package:pulumi/pulumi.dart';
import 'user_access_logging_settings_args.dart';

/// Resource for managing an AWS WorkSpaces Web User Access Logging Settings resource. Once associated with a web portal, user access logging settings control how user access events are logged to Amazon Kinesis.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kinesis.Stream("example", {
/// name: "amazon-workspaces-web-example-stream",
/// shardCount: 1,
/// });
/// const exampleUserAccessLoggingSettings = new aws.workspacesweb.UserAccessLoggingSettings("example", {kinesisStreamArn: example.arn});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kinesis.Stream("example",
/// name="amazon-workspaces-web-example-stream",
/// shard_count=1)
/// example_user_access_logging_settings = aws.workspacesweb.UserAccessLoggingSettings("example", kinesis_stream_arn=example.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Kinesis.Stream("example", new()
/// {
/// Name = "amazon-workspaces-web-example-stream",
/// ShardCount = 1,
/// });
///
/// var exampleUserAccessLoggingSettings = new Aws.WorkSpacesWeb.UserAccessLoggingSettings("example", new()
/// {
/// KinesisStreamArn = example.Arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspacesweb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := kinesis.NewStream(ctx, "example", &kinesis.StreamArgs{
/// Name:       pulumi.String("amazon-workspaces-web-example-stream"),
/// ShardCount: pulumi.Int(1),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = workspacesweb.NewUserAccessLoggingSettings(ctx, "example", &workspacesweb.UserAccessLoggingSettingsArgs{
/// KinesisStreamArn: example.Arn,
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
/// import com.pulumi.aws.kinesis.Stream;
/// import com.pulumi.aws.kinesis.StreamArgs;
/// import com.pulumi.aws.workspacesweb.UserAccessLoggingSettings;
/// import com.pulumi.aws.workspacesweb.UserAccessLoggingSettingsArgs;
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
/// var example = new Stream("example", StreamArgs.builder()
/// .name("amazon-workspaces-web-example-stream")
/// .shardCount(1)
/// .build());
///
/// var exampleUserAccessLoggingSettings = new UserAccessLoggingSettings("exampleUserAccessLoggingSettings", UserAccessLoggingSettingsArgs.builder()
/// .kinesisStreamArn(example.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:kinesis:Stream
/// properties:
/// name: amazon-workspaces-web-example-stream
/// shardCount: 1
/// exampleUserAccessLoggingSettings:
/// type: aws:workspacesweb:UserAccessLoggingSettings
/// name: example
/// properties:
/// kinesisStreamArn: ${example.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With Tags
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kinesis.Stream("example", {
/// name: "example-stream",
/// shardCount: 1,
/// });
/// const exampleUserAccessLoggingSettings = new aws.workspacesweb.UserAccessLoggingSettings("example", {
/// kinesisStreamArn: example.arn,
/// tags: {
/// Name: "example-user-access-logging-settings",
/// Environment: "Production",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kinesis.Stream("example",
/// name="example-stream",
/// shard_count=1)
/// example_user_access_logging_settings = aws.workspacesweb.UserAccessLoggingSettings("example",
/// kinesis_stream_arn=example.arn,
/// tags={
/// "Name": "example-user-access-logging-settings",
/// "Environment": "Production",
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
/// var example = new Aws.Kinesis.Stream("example", new()
/// {
/// Name = "example-stream",
/// ShardCount = 1,
/// });
///
/// var exampleUserAccessLoggingSettings = new Aws.WorkSpacesWeb.UserAccessLoggingSettings("example", new()
/// {
/// KinesisStreamArn = example.Arn,
/// Tags =
/// {
/// { "Name", "example-user-access-logging-settings" },
/// { "Environment", "Production" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspacesweb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := kinesis.NewStream(ctx, "example", &kinesis.StreamArgs{
/// Name:       pulumi.String("example-stream"),
/// ShardCount: pulumi.Int(1),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = workspacesweb.NewUserAccessLoggingSettings(ctx, "example", &workspacesweb.UserAccessLoggingSettingsArgs{
/// KinesisStreamArn: example.Arn,
/// Tags: pulumi.StringMap{
/// "Name":        pulumi.String("example-user-access-logging-settings"),
/// "Environment": pulumi.String("Production"),
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
/// import com.pulumi.aws.kinesis.Stream;
/// import com.pulumi.aws.kinesis.StreamArgs;
/// import com.pulumi.aws.workspacesweb.UserAccessLoggingSettings;
/// import com.pulumi.aws.workspacesweb.UserAccessLoggingSettingsArgs;
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
/// var example = new Stream("example", StreamArgs.builder()
/// .name("example-stream")
/// .shardCount(1)
/// .build());
///
/// var exampleUserAccessLoggingSettings = new UserAccessLoggingSettings("exampleUserAccessLoggingSettings", UserAccessLoggingSettingsArgs.builder()
/// .kinesisStreamArn(example.arn())
/// .tags(Map.ofEntries(
/// Map.entry("Name", "example-user-access-logging-settings"),
/// Map.entry("Environment", "Production")
/// ))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:kinesis:Stream
/// properties:
/// name: example-stream
/// shardCount: 1
/// exampleUserAccessLoggingSettings:
/// type: aws:workspacesweb:UserAccessLoggingSettings
/// name: example
/// properties:
/// kinesisStreamArn: ${example.arn}
/// tags:
/// Name: example-user-access-logging-settings
/// Environment: Production
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import WorkSpaces Web User Access Logging Settings using the <span pulumi-lang-nodejs="`userAccessLoggingSettingsArn`" pulumi-lang-dotnet="`UserAccessLoggingSettingsArn`" pulumi-lang-go="`userAccessLoggingSettingsArn`" pulumi-lang-python="`user_access_logging_settings_arn`" pulumi-lang-yaml="`userAccessLoggingSettingsArn`" pulumi-lang-java="`userAccessLoggingSettingsArn`">`user_access_logging_settings_arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:workspacesweb/userAccessLoggingSettings:UserAccessLoggingSettings example arn:aws:workspaces-web:us-west-2:123456789012:userAccessLoggingSettings/abcdef12345
/// ```
class UserAccessLoggingSettings extends CustomResource {
  /// List of web portal ARNs that this user access logging settings resource is associated with.
  late final Output<List<String>> associatedPortalArns;

  /// ARN of the Kinesis stream.
  ///
  /// The following arguments are optional:
  late final Output<String> kinesisStreamArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Map of tags assigned to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// ARN of the user access logging settings resource.
  late final Output<String> userAccessLoggingSettingsArn;

  UserAccessLoggingSettings(
    String name, {
    UserAccessLoggingSettingsArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:workspacesweb/userAccessLoggingSettings:UserAccessLoggingSettings',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.associatedPortalArns = Output.createUnknown<List<String>>();
    this.kinesisStreamArn = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.userAccessLoggingSettingsArn = Output.createUnknown<String>();
  }
}
