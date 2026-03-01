import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_access_logging_settings_association_args.dart';

/// Resource for managing an AWS WorkSpaces Web User Access Logging Settings Association.
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
/// const example = new aws.workspacesweb.Portal("example", {displayName: "example"});
/// const exampleStream = new aws.kinesis.Stream("example", {
///     name: "amazon-workspaces-web-example",
///     shardCount: 1,
/// });
/// const exampleUserAccessLoggingSettings = new aws.workspacesweb.UserAccessLoggingSettings("example", {kinesisStreamArn: exampleStream.arn});
/// const exampleUserAccessLoggingSettingsAssociation = new aws.workspacesweb.UserAccessLoggingSettingsAssociation("example", {
///     userAccessLoggingSettingsArn: exampleUserAccessLoggingSettings.userAccessLoggingSettingsArn,
///     portalArn: example.portalArn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.workspacesweb.Portal("example", display_name="example")
/// example_stream = aws.kinesis.Stream("example",
///     name="amazon-workspaces-web-example",
///     shard_count=1)
/// example_user_access_logging_settings = aws.workspacesweb.UserAccessLoggingSettings("example", kinesis_stream_arn=example_stream.arn)
/// example_user_access_logging_settings_association = aws.workspacesweb.UserAccessLoggingSettingsAssociation("example",
///     user_access_logging_settings_arn=example_user_access_logging_settings.user_access_logging_settings_arn,
///     portal_arn=example.portal_arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.WorkSpacesWeb.Portal("example", new()
///     {
///         DisplayName = "example",
///     });
///
///     var exampleStream = new Aws.Kinesis.Stream("example", new()
///     {
///         Name = "amazon-workspaces-web-example",
///         ShardCount = 1,
///     });
///
///     var exampleUserAccessLoggingSettings = new Aws.WorkSpacesWeb.UserAccessLoggingSettings("example", new()
///     {
///         KinesisStreamArn = exampleStream.Arn,
///     });
///
///     var exampleUserAccessLoggingSettingsAssociation = new Aws.WorkSpacesWeb.UserAccessLoggingSettingsAssociation("example", new()
///     {
///         UserAccessLoggingSettingsArn = exampleUserAccessLoggingSettings.UserAccessLoggingSettingsArn,
///         PortalArn = example.PortalArn,
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
/// 		example, err := workspacesweb.NewPortal(ctx, "example", &workspacesweb.PortalArgs{
/// 			DisplayName: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleStream, err := kinesis.NewStream(ctx, "example", &kinesis.StreamArgs{
/// 			Name:       pulumi.String("amazon-workspaces-web-example"),
/// 			ShardCount: pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleUserAccessLoggingSettings, err := workspacesweb.NewUserAccessLoggingSettings(ctx, "example", &workspacesweb.UserAccessLoggingSettingsArgs{
/// 			KinesisStreamArn: exampleStream.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workspacesweb.NewUserAccessLoggingSettingsAssociation(ctx, "example", &workspacesweb.UserAccessLoggingSettingsAssociationArgs{
/// 			UserAccessLoggingSettingsArn: exampleUserAccessLoggingSettings.UserAccessLoggingSettingsArn,
/// 			PortalArn:                    example.PortalArn,
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
/// import com.pulumi.aws.workspacesweb.Portal;
/// import com.pulumi.aws.workspacesweb.PortalArgs;
/// import com.pulumi.aws.kinesis.Stream;
/// import com.pulumi.aws.kinesis.StreamArgs;
/// import com.pulumi.aws.workspacesweb.UserAccessLoggingSettings;
/// import com.pulumi.aws.workspacesweb.UserAccessLoggingSettingsArgs;
/// import com.pulumi.aws.workspacesweb.UserAccessLoggingSettingsAssociation;
/// import com.pulumi.aws.workspacesweb.UserAccessLoggingSettingsAssociationArgs;
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
///         var example = new Portal("example", PortalArgs.builder()
///             .displayName("example")
///             .build());
///
///         var exampleStream = new Stream("exampleStream", StreamArgs.builder()
///             .name("amazon-workspaces-web-example")
///             .shardCount(1)
///             .build());
///
///         var exampleUserAccessLoggingSettings = new UserAccessLoggingSettings("exampleUserAccessLoggingSettings", UserAccessLoggingSettingsArgs.builder()
///             .kinesisStreamArn(exampleStream.arn())
///             .build());
///
///         var exampleUserAccessLoggingSettingsAssociation = new UserAccessLoggingSettingsAssociation("exampleUserAccessLoggingSettingsAssociation", UserAccessLoggingSettingsAssociationArgs.builder()
///             .userAccessLoggingSettingsArn(exampleUserAccessLoggingSettings.userAccessLoggingSettingsArn())
///             .portalArn(example.portalArn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:workspacesweb:Portal
///     properties:
///       displayName: example
///   exampleStream:
///     type: aws:kinesis:Stream
///     name: example
///     properties:
///       name: amazon-workspaces-web-example
///       shardCount: 1
///   exampleUserAccessLoggingSettings:
///     type: aws:workspacesweb:UserAccessLoggingSettings
///     name: example
///     properties:
///       kinesisStreamArn: ${exampleStream.arn}
///   exampleUserAccessLoggingSettingsAssociation:
///     type: aws:workspacesweb:UserAccessLoggingSettingsAssociation
///     name: example
///     properties:
///       userAccessLoggingSettingsArn: ${exampleUserAccessLoggingSettings.userAccessLoggingSettingsArn}
///       portalArn: ${example.portalArn}
/// ```
class UserAccessLoggingSettingsAssociation extends pulumi.CustomResource {
  /// ARN of the portal to associate with the user access logging settings. Forces replacement if changed.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> portalArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ARN of the user access logging settings to associate with the portal. Forces replacement if changed.
  late final pulumi.Output<String> userAccessLoggingSettingsArn;

  /// Creates a new [UserAccessLoggingSettingsAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UserAccessLoggingSettingsAssociation]. {@macro pulumi_workspacesweb_user_access_logging_settings_association_user_access_logging_settings_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UserAccessLoggingSettingsAssociation(
    String name, {
    UserAccessLoggingSettingsAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:workspacesweb/userAccessLoggingSettingsAssociation:UserAccessLoggingSettingsAssociation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.portalArn = registerOutput<String>('portalArn');
    this.region = registerOutput<String>('region');
    this.userAccessLoggingSettingsArn = registerOutput<String>(
      'userAccessLoggingSettingsArn',
    );
  }
}
