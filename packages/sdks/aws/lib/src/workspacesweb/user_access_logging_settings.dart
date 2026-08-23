import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_access_logging_settings_args.dart';
import 'user_access_logging_settings_state.dart';

/// Resource for managing an AWS WorkSpaces Web User Access Logging Settings resource. Once associated with a web portal, user access logging settings control how user access events are logged to Amazon Kinesis.
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
/// const example = new aws.kinesis.Stream("example", {
///     name: "amazon-workspaces-web-example-stream",
///     shardCount: 1,
/// });
/// const exampleUserAccessLoggingSettings = new aws.workspacesweb.UserAccessLoggingSettings("example", {kinesisStreamArn: example.arn});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kinesis.Stream("example",
///     name="amazon-workspaces-web-example-stream",
///     shard_count=1)
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
///     var example = new Aws.Kinesis.Stream("example", new()
///     {
///         Name = "amazon-workspaces-web-example-stream",
///         ShardCount = 1,
///     });
///
///     var exampleUserAccessLoggingSettings = new Aws.WorkSpacesWeb.UserAccessLoggingSettings("example", new()
///     {
///         KinesisStreamArn = example.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspacesweb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := kinesis.NewStream(ctx, "example", &kinesis.StreamArgs{
/// 			Name:       pulumi.String("amazon-workspaces-web-example-stream"),
/// 			ShardCount: pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workspacesweb.NewUserAccessLoggingSettings(ctx, "example", &workspacesweb.UserAccessLoggingSettingsArgs{
/// 			KinesisStreamArn: example.Arn,
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
/// resource "aws_kinesis_stream" "example" {
///   name        = "amazon-workspaces-web-example-stream"
///   shard_count = 1
/// }
/// resource "aws_workspacesweb_useraccessloggingsettings" "example" {
///   kinesis_stream_arn = aws_kinesis_stream.example.arn
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
///         var example = new Stream("example", StreamArgs.builder()
///             .name("amazon-workspaces-web-example-stream")
///             .shardCount(1)
///             .build());
///
///         var exampleUserAccessLoggingSettings = new UserAccessLoggingSettings("exampleUserAccessLoggingSettings", UserAccessLoggingSettingsArgs.builder()
///             .kinesisStreamArn(example.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kinesis:Stream
///     properties:
///       name: amazon-workspaces-web-example-stream
///       shardCount: 1
///   exampleUserAccessLoggingSettings:
///     type: aws:workspacesweb:UserAccessLoggingSettings
///     name: example
///     properties:
///       kinesisStreamArn: ${example.arn}
/// ```
///
///
/// ### With Tags
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kinesis.Stream("example", {
///     name: "example-stream",
///     shardCount: 1,
/// });
/// const exampleUserAccessLoggingSettings = new aws.workspacesweb.UserAccessLoggingSettings("example", {
///     kinesisStreamArn: example.arn,
///     tags: {
///         Name: "example-user-access-logging-settings",
///         Environment: "Production",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kinesis.Stream("example",
///     name="example-stream",
///     shard_count=1)
/// example_user_access_logging_settings = aws.workspacesweb.UserAccessLoggingSettings("example",
///     kinesis_stream_arn=example.arn,
///     tags={
///         "Name": "example-user-access-logging-settings",
///         "Environment": "Production",
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
///     var example = new Aws.Kinesis.Stream("example", new()
///     {
///         Name = "example-stream",
///         ShardCount = 1,
///     });
///
///     var exampleUserAccessLoggingSettings = new Aws.WorkSpacesWeb.UserAccessLoggingSettings("example", new()
///     {
///         KinesisStreamArn = example.Arn,
///         Tags =
///         {
///             { "Name", "example-user-access-logging-settings" },
///             { "Environment", "Production" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspacesweb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := kinesis.NewStream(ctx, "example", &kinesis.StreamArgs{
/// 			Name:       pulumi.String("example-stream"),
/// 			ShardCount: pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workspacesweb.NewUserAccessLoggingSettings(ctx, "example", &workspacesweb.UserAccessLoggingSettingsArgs{
/// 			KinesisStreamArn: example.Arn,
/// 			Tags: pulumi.StringMap{
/// 				"Name":        pulumi.String("example-user-access-logging-settings"),
/// 				"Environment": pulumi.String("Production"),
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
/// resource "aws_kinesis_stream" "example" {
///   name        = "example-stream"
///   shard_count = 1
/// }
/// resource "aws_workspacesweb_useraccessloggingsettings" "example" {
///   kinesis_stream_arn = aws_kinesis_stream.example.arn
///   tags = {
///     "Name"        = "example-user-access-logging-settings"
///     "Environment" = "Production"
///   }
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
///         var example = new Stream("example", StreamArgs.builder()
///             .name("example-stream")
///             .shardCount(1)
///             .build());
///
///         var exampleUserAccessLoggingSettings = new UserAccessLoggingSettings("exampleUserAccessLoggingSettings", UserAccessLoggingSettingsArgs.builder()
///             .kinesisStreamArn(example.arn())
///             .tags(Map.ofEntries(
///                 Map.entry("Name", "example-user-access-logging-settings"),
///                 Map.entry("Environment", "Production")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kinesis:Stream
///     properties:
///       name: example-stream
///       shardCount: 1
///   exampleUserAccessLoggingSettings:
///     type: aws:workspacesweb:UserAccessLoggingSettings
///     name: example
///     properties:
///       kinesisStreamArn: ${example.arn}
///       tags:
///         Name: example-user-access-logging-settings
///         Environment: Production
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import WorkSpaces Web User Access Logging Settings using the `userAccessLoggingSettingsArn`. For example:
///
/// ```sh
/// $ pulumi import aws:workspacesweb/userAccessLoggingSettings:UserAccessLoggingSettings example arn:aws:workspaces-web:us-west-2:123456789012:userAccessLoggingSettings/abcdef12345
/// ```
class UserAccessLoggingSettings extends pulumi.CustomResource {
  /// List of web portal ARNs that this user access logging settings resource is associated with.
  late final pulumi.Output<List<String>> associatedPortalArns;
  /// ARN of the Kinesis stream.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> kinesisStreamArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// ARN of the user access logging settings resource.
  late final pulumi.Output<String> userAccessLoggingSettingsArn;

  /// Creates a new [UserAccessLoggingSettings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UserAccessLoggingSettings]. {@macro pulumi_workspacesweb_user_access_logging_settings_user_access_logging_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UserAccessLoggingSettings(
    String name, {
    UserAccessLoggingSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:workspacesweb/userAccessLoggingSettings:UserAccessLoggingSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    associatedPortalArns = registerOutput<List<String>>('associatedPortalArns');
    kinesisStreamArn = registerOutput<String>('kinesisStreamArn');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    userAccessLoggingSettingsArn = registerOutput<String>('userAccessLoggingSettingsArn');
  }

  /// Gets an existing [UserAccessLoggingSettings] resource's state with the given [name] and [id].
  static UserAccessLoggingSettings get(
    String name,
    pulumi.Input<String> id, {
    UserAccessLoggingSettingsState? state,
  }) {
    return UserAccessLoggingSettings._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  UserAccessLoggingSettings._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:workspacesweb/userAccessLoggingSettings:UserAccessLoggingSettings',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    associatedPortalArns = registerOutput<List<String>>('associatedPortalArns');
    kinesisStreamArn = registerOutput<String>('kinesisStreamArn');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    userAccessLoggingSettingsArn = registerOutput<String>('userAccessLoggingSettingsArn');
  }
}
