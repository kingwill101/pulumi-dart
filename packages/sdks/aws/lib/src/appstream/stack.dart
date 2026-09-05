import 'package:pulumi/pulumi.dart' as pulumi;
import 'stack_access_endpoint.dart';
import 'stack_application_settings.dart';
import 'stack_args.dart';
import 'stack_state.dart';
import 'stack_storage_connector.dart';
import 'stack_streaming_experience_settings.dart';
import 'stack_user_setting.dart';

/// Provides an AppStream stack.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.appstream.Stack("example", {
///     applicationSettings: {
///         enabled: true,
///         settingsGroup: "SettingsGroup",
///     },
///     storageConnectors: [{
///         connectorType: "HOMEFOLDERS",
///     }],
///     userSettings: [
///         {
///             action: "AUTO_TIME_ZONE_REDIRECTION",
///             permission: "DISABLED",
///         },
///         {
///             action: "CLIPBOARD_COPY_FROM_LOCAL_DEVICE",
///             permission: "ENABLED",
///         },
///         {
///             action: "CLIPBOARD_COPY_TO_LOCAL_DEVICE",
///             permission: "ENABLED",
///         },
///         {
///             action: "DOMAIN_PASSWORD_SIGNIN",
///             permission: "ENABLED",
///         },
///         {
///             action: "DOMAIN_SMART_CARD_SIGNIN",
///             permission: "DISABLED",
///         },
///         {
///             action: "FILE_DOWNLOAD",
///             permission: "ENABLED",
///         },
///         {
///             action: "FILE_UPLOAD",
///             permission: "ENABLED",
///         },
///         {
///             action: "PRINTING_TO_LOCAL_DEVICE",
///             permission: "ENABLED",
///         },
///     ],
///     name: "stack name",
///     description: "stack description",
///     displayName: "stack display name",
///     feedbackUrl: "http://your-domain/feedback",
///     redirectUrl: "http://your-domain/redirect",
///     tags: {
///         TagName: "TagValue",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appstream.Stack("example",
///     application_settings={
///         "enabled": True,
///         "settings_group": "SettingsGroup",
///     },
///     storage_connectors=[{
///         "connector_type": "HOMEFOLDERS",
///     }],
///     user_settings=[
///         {
///             "action": "AUTO_TIME_ZONE_REDIRECTION",
///             "permission": "DISABLED",
///         },
///         {
///             "action": "CLIPBOARD_COPY_FROM_LOCAL_DEVICE",
///             "permission": "ENABLED",
///         },
///         {
///             "action": "CLIPBOARD_COPY_TO_LOCAL_DEVICE",
///             "permission": "ENABLED",
///         },
///         {
///             "action": "DOMAIN_PASSWORD_SIGNIN",
///             "permission": "ENABLED",
///         },
///         {
///             "action": "DOMAIN_SMART_CARD_SIGNIN",
///             "permission": "DISABLED",
///         },
///         {
///             "action": "FILE_DOWNLOAD",
///             "permission": "ENABLED",
///         },
///         {
///             "action": "FILE_UPLOAD",
///             "permission": "ENABLED",
///         },
///         {
///             "action": "PRINTING_TO_LOCAL_DEVICE",
///             "permission": "ENABLED",
///         },
///     ],
///     name="stack name",
///     description="stack description",
///     display_name="stack display name",
///     feedback_url="http://your-domain/feedback",
///     redirect_url="http://your-domain/redirect",
///     tags={
///         "TagName": "TagValue",
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
///     var example = new Aws.AppStream.Stack("example", new()
///     {
///         ApplicationSettings = new Aws.AppStream.Inputs.StackApplicationSettingsArgs
///         {
///             Enabled = true,
///             SettingsGroup = "SettingsGroup",
///         },
///         StorageConnectors = new[]
///         {
///             new Aws.AppStream.Inputs.StackStorageConnectorArgs
///             {
///                 ConnectorType = "HOMEFOLDERS",
///             },
///         },
///         UserSettings = new[]
///         {
///             new Aws.AppStream.Inputs.StackUserSettingArgs
///             {
///                 Action = "AUTO_TIME_ZONE_REDIRECTION",
///                 Permission = "DISABLED",
///             },
///             new Aws.AppStream.Inputs.StackUserSettingArgs
///             {
///                 Action = "CLIPBOARD_COPY_FROM_LOCAL_DEVICE",
///                 Permission = "ENABLED",
///             },
///             new Aws.AppStream.Inputs.StackUserSettingArgs
///             {
///                 Action = "CLIPBOARD_COPY_TO_LOCAL_DEVICE",
///                 Permission = "ENABLED",
///             },
///             new Aws.AppStream.Inputs.StackUserSettingArgs
///             {
///                 Action = "DOMAIN_PASSWORD_SIGNIN",
///                 Permission = "ENABLED",
///             },
///             new Aws.AppStream.Inputs.StackUserSettingArgs
///             {
///                 Action = "DOMAIN_SMART_CARD_SIGNIN",
///                 Permission = "DISABLED",
///             },
///             new Aws.AppStream.Inputs.StackUserSettingArgs
///             {
///                 Action = "FILE_DOWNLOAD",
///                 Permission = "ENABLED",
///             },
///             new Aws.AppStream.Inputs.StackUserSettingArgs
///             {
///                 Action = "FILE_UPLOAD",
///                 Permission = "ENABLED",
///             },
///             new Aws.AppStream.Inputs.StackUserSettingArgs
///             {
///                 Action = "PRINTING_TO_LOCAL_DEVICE",
///                 Permission = "ENABLED",
///             },
///         },
///         Name = "stack name",
///         Description = "stack description",
///         DisplayName = "stack display name",
///         FeedbackUrl = "http://your-domain/feedback",
///         RedirectUrl = "http://your-domain/redirect",
///         Tags =
///         {
///             { "TagName", "TagValue" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appstream"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appstream.NewStack(ctx, "example", &appstream.StackArgs{
/// 			ApplicationSettings: &appstream.StackApplicationSettingsArgs{
/// 				Enabled:       pulumi.Bool(true),
/// 				SettingsGroup: pulumi.String("SettingsGroup"),
/// 			},
/// 			StorageConnectors: appstream.StackStorageConnectorArray{
/// 				&appstream.StackStorageConnectorArgs{
/// 					ConnectorType: pulumi.String("HOMEFOLDERS"),
/// 				},
/// 			},
/// 			UserSettings: appstream.StackUserSettingArray{
/// 				&appstream.StackUserSettingArgs{
/// 					Action:     pulumi.String("AUTO_TIME_ZONE_REDIRECTION"),
/// 					Permission: pulumi.String("DISABLED"),
/// 				},
/// 				&appstream.StackUserSettingArgs{
/// 					Action:     pulumi.String("CLIPBOARD_COPY_FROM_LOCAL_DEVICE"),
/// 					Permission: pulumi.String("ENABLED"),
/// 				},
/// 				&appstream.StackUserSettingArgs{
/// 					Action:     pulumi.String("CLIPBOARD_COPY_TO_LOCAL_DEVICE"),
/// 					Permission: pulumi.String("ENABLED"),
/// 				},
/// 				&appstream.StackUserSettingArgs{
/// 					Action:     pulumi.String("DOMAIN_PASSWORD_SIGNIN"),
/// 					Permission: pulumi.String("ENABLED"),
/// 				},
/// 				&appstream.StackUserSettingArgs{
/// 					Action:     pulumi.String("DOMAIN_SMART_CARD_SIGNIN"),
/// 					Permission: pulumi.String("DISABLED"),
/// 				},
/// 				&appstream.StackUserSettingArgs{
/// 					Action:     pulumi.String("FILE_DOWNLOAD"),
/// 					Permission: pulumi.String("ENABLED"),
/// 				},
/// 				&appstream.StackUserSettingArgs{
/// 					Action:     pulumi.String("FILE_UPLOAD"),
/// 					Permission: pulumi.String("ENABLED"),
/// 				},
/// 				&appstream.StackUserSettingArgs{
/// 					Action:     pulumi.String("PRINTING_TO_LOCAL_DEVICE"),
/// 					Permission: pulumi.String("ENABLED"),
/// 				},
/// 			},
/// 			Name:        pulumi.String("stack name"),
/// 			Description: pulumi.String("stack description"),
/// 			DisplayName: pulumi.String("stack display name"),
/// 			FeedbackUrl: pulumi.String("http://your-domain/feedback"),
/// 			RedirectUrl: pulumi.String("http://your-domain/redirect"),
/// 			Tags: pulumi.StringMap{
/// 				"TagName": pulumi.String("TagValue"),
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
/// resource "aws_appstream_stack" "example" {
///   application_settings = {
///     enabled        = true
///     settings_group = "SettingsGroup"
///   }
///   storage_connectors {
///     connector_type = "HOMEFOLDERS"
///   }
///   user_settings {
///     action     = "AUTO_TIME_ZONE_REDIRECTION"
///     permission = "DISABLED"
///   }
///   user_settings {
///     action     = "CLIPBOARD_COPY_FROM_LOCAL_DEVICE"
///     permission = "ENABLED"
///   }
///   user_settings {
///     action     = "CLIPBOARD_COPY_TO_LOCAL_DEVICE"
///     permission = "ENABLED"
///   }
///   user_settings {
///     action     = "DOMAIN_PASSWORD_SIGNIN"
///     permission = "ENABLED"
///   }
///   user_settings {
///     action     = "DOMAIN_SMART_CARD_SIGNIN"
///     permission = "DISABLED"
///   }
///   user_settings {
///     action     = "FILE_DOWNLOAD"
///     permission = "ENABLED"
///   }
///   user_settings {
///     action     = "FILE_UPLOAD"
///     permission = "ENABLED"
///   }
///   user_settings {
///     action     = "PRINTING_TO_LOCAL_DEVICE"
///     permission = "ENABLED"
///   }
///   name         = "stack name"
///   description  = "stack description"
///   display_name = "stack display name"
///   feedback_url = "http://your-domain/feedback"
///   redirect_url = "http://your-domain/redirect"
///   tags = {
///     "TagName" = "TagValue"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appstream.Stack;
/// import com.pulumi.aws.appstream.StackArgs;
/// import com.pulumi.aws.appstream.inputs.StackApplicationSettingsArgs;
/// import com.pulumi.aws.appstream.inputs.StackStorageConnectorArgs;
/// import com.pulumi.aws.appstream.inputs.StackUserSettingArgs;
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
///         var example = new Stack("example", StackArgs.builder()
///             .applicationSettings(StackApplicationSettingsArgs.builder()
///                 .enabled(true)
///                 .settingsGroup("SettingsGroup")
///                 .build())
///             .storageConnectors(StackStorageConnectorArgs.builder()
///                 .connectorType("HOMEFOLDERS")
///                 .build())
///             .userSettings(
///                 StackUserSettingArgs.builder()
///                     .action("AUTO_TIME_ZONE_REDIRECTION")
///                     .permission("DISABLED")
///                     .build(),
///                 StackUserSettingArgs.builder()
///                     .action("CLIPBOARD_COPY_FROM_LOCAL_DEVICE")
///                     .permission("ENABLED")
///                     .build(),
///                 StackUserSettingArgs.builder()
///                     .action("CLIPBOARD_COPY_TO_LOCAL_DEVICE")
///                     .permission("ENABLED")
///                     .build(),
///                 StackUserSettingArgs.builder()
///                     .action("DOMAIN_PASSWORD_SIGNIN")
///                     .permission("ENABLED")
///                     .build(),
///                 StackUserSettingArgs.builder()
///                     .action("DOMAIN_SMART_CARD_SIGNIN")
///                     .permission("DISABLED")
///                     .build(),
///                 StackUserSettingArgs.builder()
///                     .action("FILE_DOWNLOAD")
///                     .permission("ENABLED")
///                     .build(),
///                 StackUserSettingArgs.builder()
///                     .action("FILE_UPLOAD")
///                     .permission("ENABLED")
///                     .build(),
///                 StackUserSettingArgs.builder()
///                     .action("PRINTING_TO_LOCAL_DEVICE")
///                     .permission("ENABLED")
///                     .build())
///             .name("stack name")
///             .description("stack description")
///             .displayName("stack display name")
///             .feedbackUrl("http://your-domain/feedback")
///             .redirectUrl("http://your-domain/redirect")
///             .tags(Map.of("TagName", "TagValue"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:appstream:Stack
///     properties:
///       applicationSettings:
///         enabled: true
///         settingsGroup: SettingsGroup
///       storageConnectors:
///         - connectorType: HOMEFOLDERS
///       userSettings:
///         - action: AUTO_TIME_ZONE_REDIRECTION
///           permission: DISABLED
///         - action: CLIPBOARD_COPY_FROM_LOCAL_DEVICE
///           permission: ENABLED
///         - action: CLIPBOARD_COPY_TO_LOCAL_DEVICE
///           permission: ENABLED
///         - action: DOMAIN_PASSWORD_SIGNIN
///           permission: ENABLED
///         - action: DOMAIN_SMART_CARD_SIGNIN
///           permission: DISABLED
///         - action: FILE_DOWNLOAD
///           permission: ENABLED
///         - action: FILE_UPLOAD
///           permission: ENABLED
///         - action: PRINTING_TO_LOCAL_DEVICE
///           permission: ENABLED
///       name: stack name
///       description: stack description
///       displayName: stack display name
///       feedbackUrl: http://your-domain/feedback
///       redirectUrl: http://your-domain/redirect
///       tags:
///         TagName: TagValue
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.appstream.Stack` using the id. For example:
///
/// ```sh
/// $ pulumi import aws:appstream/stack:Stack example stackID
/// ```
class Stack extends pulumi.CustomResource {
  /// Set of configuration blocks defining the interface VPC endpoints. Users of the stack can connect to AppStream 2.0 only through the specified endpoints. See `accessEndpoints` below.
  late final pulumi.Output<List<StackAccessEndpoint>> accessEndpoints;
  /// Settings for application settings persistence. See `applicationSettings` below.
  late final pulumi.Output<StackApplicationSettings> applicationSettings;
  /// ARN of the appstream stack.
  late final pulumi.Output<String> arn;
  /// Date and time, in UTC and extended RFC 3339 format, when the stack was created.
  late final pulumi.Output<String> createdTime;
  /// Description for the AppStream stack.
  late final pulumi.Output<String?> description;
  /// Stack name to display.
  late final pulumi.Output<String?> displayName;
  /// Domains where AppStream 2.0 streaming sessions can be embedded in an iframe. You must approve the domains that you want to host embedded AppStream 2.0 streaming sessions.
  late final pulumi.Output<List<String>> embedHostDomains;
  /// URL that users are redirected to after they click the Send Feedback link. If no URL is specified, no Send Feedback link is displayed. .
  late final pulumi.Output<String> feedbackUrl;
  /// Unique name for the AppStream stack.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// URL that users are redirected to after their streaming session ends.
  late final pulumi.Output<String> redirectUrl;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Configuration block for the storage connectors to enable. See `storageConnectors` below.
  late final pulumi.Output<List<StackStorageConnector>> storageConnectors;
  /// Streaming protocol you want your stack to prefer. This can be UDP or TCP. Currently, UDP is only supported in the Windows native client. See `streamingExperienceSettings` below.
  late final pulumi.Output<StackStreamingExperienceSettings> streamingExperienceSettings;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Configuration block for the actions that are enabled or disabled for users during their streaming sessions. If not provided, these settings are configured automatically by AWS. If provided, the configuration should include a block for each configurable action. See `userSettings` below.
  late final pulumi.Output<List<StackUserSetting>> userSettings;

  /// Creates a new [Stack].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Stack]. {@macro pulumi_appstream_stack_stack_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Stack(
    String name, {
    StackArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appstream/stack:Stack',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    accessEndpoints = registerOutput<List<StackAccessEndpoint>>('accessEndpoints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StackAccessEndpoint>(guardedValue, (value) => StackAccessEndpoint.fromMap((value as Map).cast<String, dynamic>())); });
    applicationSettings = registerOutput<StackApplicationSettings>('applicationSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StackApplicationSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    arn = registerOutput<String>('arn');
    createdTime = registerOutput<String>('createdTime');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    embedHostDomains = registerOutput<List<String>>('embedHostDomains', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    feedbackUrl = registerOutput<String>('feedbackUrl');
    this.name = registerOutput<String>('name');
    redirectUrl = registerOutput<String>('redirectUrl');
    region = registerOutput<String>('region');
    storageConnectors = registerOutput<List<StackStorageConnector>>('storageConnectors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StackStorageConnector>(guardedValue, (value) => StackStorageConnector.fromMap((value as Map).cast<String, dynamic>())); });
    streamingExperienceSettings = registerOutput<StackStreamingExperienceSettings>('streamingExperienceSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StackStreamingExperienceSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    userSettings = registerOutput<List<StackUserSetting>>('userSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StackUserSetting>(guardedValue, (value) => StackUserSetting.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [Stack] resource's state with the given [name] and [id].
  static Stack get(
    String name,
    pulumi.Input<String> id, {
    StackState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Stack._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Stack._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appstream/stack:Stack',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessEndpoints = registerOutput<List<StackAccessEndpoint>>('accessEndpoints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StackAccessEndpoint>(guardedValue, (value) => StackAccessEndpoint.fromMap((value as Map).cast<String, dynamic>())); });
    applicationSettings = registerOutput<StackApplicationSettings>('applicationSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StackApplicationSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    arn = registerOutput<String>('arn');
    createdTime = registerOutput<String>('createdTime');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    embedHostDomains = registerOutput<List<String>>('embedHostDomains', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    feedbackUrl = registerOutput<String>('feedbackUrl');
    this.name = registerOutput<String>('name');
    redirectUrl = registerOutput<String>('redirectUrl');
    region = registerOutput<String>('region');
    storageConnectors = registerOutput<List<StackStorageConnector>>('storageConnectors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StackStorageConnector>(guardedValue, (value) => StackStorageConnector.fromMap((value as Map).cast<String, dynamic>())); });
    streamingExperienceSettings = registerOutput<StackStreamingExperienceSettings>('streamingExperienceSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StackStreamingExperienceSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    userSettings = registerOutput<List<StackUserSetting>>('userSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StackUserSetting>(guardedValue, (value) => StackUserSetting.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [Stack] resource.
  Stack.reference(String urn)
    : super(
        'aws:appstream/stack:Stack',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accessEndpoints = registerOutput<List<StackAccessEndpoint>>('accessEndpoints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StackAccessEndpoint>(guardedValue, (value) => StackAccessEndpoint.fromMap((value as Map).cast<String, dynamic>())); });
    applicationSettings = registerOutput<StackApplicationSettings>('applicationSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StackApplicationSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    arn = registerOutput<String>('arn');
    createdTime = registerOutput<String>('createdTime');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    embedHostDomains = registerOutput<List<String>>('embedHostDomains', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    feedbackUrl = registerOutput<String>('feedbackUrl');
    this.name = registerOutput<String>('name');
    redirectUrl = registerOutput<String>('redirectUrl');
    region = registerOutput<String>('region');
    storageConnectors = registerOutput<List<StackStorageConnector>>('storageConnectors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StackStorageConnector>(guardedValue, (value) => StackStorageConnector.fromMap((value as Map).cast<String, dynamic>())); });
    streamingExperienceSettings = registerOutput<StackStreamingExperienceSettings>('streamingExperienceSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StackStreamingExperienceSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    userSettings = registerOutput<List<StackUserSetting>>('userSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StackUserSetting>(guardedValue, (value) => StackUserSetting.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
