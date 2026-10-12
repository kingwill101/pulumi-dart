import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_access_logging_settings_association_args.dart';
import 'user_access_logging_settings_association_state.dart';

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
///     streamModeDetails: {
///         streamMode: "ON_DEMAND",
///     },
///     name: "amazon-workspaces-web-example",
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
///     stream_mode_details={
///         "stream_mode": "ON_DEMAND",
///     },
///     name="amazon-workspaces-web-example")
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
///         StreamModeDetails = new Aws.Kinesis.Inputs.StreamStreamModeDetailsArgs
///         {
///             StreamMode = "ON_DEMAND",
///         },
///         Name = "amazon-workspaces-web-example",
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
/// 			StreamModeDetails: &kinesis.StreamStreamModeDetailsArgs{
/// 				StreamMode: pulumi.String("ON_DEMAND"),
/// 			},
/// 			Name: pulumi.String("amazon-workspaces-web-example"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_workspacesweb_portal" "example" {
///   display_name = "example"
/// }
/// resource "aws_kinesis_stream" "example" {
///   stream_mode_details = {
///     stream_mode = "ON_DEMAND"
///   }
///   name = "amazon-workspaces-web-example"
/// }
/// resource "aws_workspacesweb_useraccessloggingsettings" "example" {
///   kinesis_stream_arn = aws_kinesis_stream.example.arn
/// }
/// resource "aws_workspacesweb_useraccessloggingsettingsassociation" "example" {
///   user_access_logging_settings_arn = aws_workspacesweb_useraccessloggingsettings.example.user_access_logging_settings_arn
///   portal_arn                       = aws_workspacesweb_portal.example.portal_arn
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
/// import com.pulumi.aws.kinesis.inputs.StreamStreamModeDetailsArgs;
/// import com.pulumi.aws.workspacesweb.UserAccessLoggingSettings;
/// import com.pulumi.aws.workspacesweb.UserAccessLoggingSettingsArgs;
/// import com.pulumi.aws.workspacesweb.UserAccessLoggingSettingsAssociation;
/// import com.pulumi.aws.workspacesweb.UserAccessLoggingSettingsAssociationArgs;
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
///         var example = new Portal("example", PortalArgs.builder()
///             .displayName("example")
///             .build());
///
///         var exampleStream = new Stream("exampleStream", StreamArgs.builder()
///             .streamModeDetails(StreamStreamModeDetailsArgs.builder()
///                 .streamMode("ON_DEMAND")
///                 .build())
///             .name("amazon-workspaces-web-example")
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
///       streamModeDetails:
///         streamMode: ON_DEMAND
///       name: amazon-workspaces-web-example
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
          pulumi.CustomResourceOptions(version: '7.50.0').merge(options),
        ) {
    portalArn = registerOutput<String>('portalArn');
    region = registerOutput<String>('region');
    userAccessLoggingSettingsArn = registerOutput<String>('userAccessLoggingSettingsArn');
  }

  /// Gets an existing [UserAccessLoggingSettingsAssociation] resource's state with the given [name] and [id].
  static UserAccessLoggingSettingsAssociation get(
    String name,
    pulumi.Input<String> id, {
    UserAccessLoggingSettingsAssociationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return UserAccessLoggingSettingsAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  UserAccessLoggingSettingsAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:workspacesweb/userAccessLoggingSettingsAssociation:UserAccessLoggingSettingsAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    portalArn = registerOutput<String>('portalArn');
    region = registerOutput<String>('region');
    userAccessLoggingSettingsArn = registerOutput<String>('userAccessLoggingSettingsArn');
  }

  /// Creates a typed reference to an existing [UserAccessLoggingSettingsAssociation] resource.
  UserAccessLoggingSettingsAssociation.reference(String urn)
    : super(
        'aws:workspacesweb/userAccessLoggingSettingsAssociation:UserAccessLoggingSettingsAssociation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    portalArn = registerOutput<String>('portalArn');
    region = registerOutput<String>('region');
    userAccessLoggingSettingsArn = registerOutput<String>('userAccessLoggingSettingsArn');
  }
}
