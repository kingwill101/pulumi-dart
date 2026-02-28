import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_args.dart';
import 'deployment_channel_profile.dart';

/// Description
///
///
///
/// ## Example Usage
///
/// ### Ces Deployment Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_app = new gcp.ces.App("my-app", {
///     location: "us",
///     displayName: "my-app",
///     appId: "app-id",
///     timeZoneSettings: {
///         timeZone: "America/Los_Angeles",
///     },
/// });
/// const my_deployment = new gcp.ces.Deployment("my-deployment", {
///     location: "us",
///     displayName: "my-deployment",
///     app: my_app.name,
///     appVersion: "projects/example-project/locations/us/apps/example-app/versions/example-version",
///     channelProfile: {
///         channelType: "API",
///         disableBargeInControl: true,
///         disableDtmf: true,
///         personaProperty: {
///             persona: "CHATTY",
///         },
///         profileId: "temp_profile_id",
///         webWidgetConfig: {
///             modality: "CHAT_AND_VOICE",
///             theme: "DARK",
///             webWidgetTitle: "temp_webwidget_title",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_app = gcp.ces.App("my-app",
///     location="us",
///     display_name="my-app",
///     app_id="app-id",
///     time_zone_settings={
///         "time_zone": "America/Los_Angeles",
///     })
/// my_deployment = gcp.ces.Deployment("my-deployment",
///     location="us",
///     display_name="my-deployment",
///     app=my_app.name,
///     app_version="projects/example-project/locations/us/apps/example-app/versions/example-version",
///     channel_profile={
///         "channel_type": "API",
///         "disable_barge_in_control": True,
///         "disable_dtmf": True,
///         "persona_property": {
///             "persona": "CHATTY",
///         },
///         "profile_id": "temp_profile_id",
///         "web_widget_config": {
///             "modality": "CHAT_AND_VOICE",
///             "theme": "DARK",
///             "web_widget_title": "temp_webwidget_title",
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_app = new Gcp.Ces.App("my-app", new()
///     {
///         Location = "us",
///         DisplayName = "my-app",
///         AppId = "app-id",
///         TimeZoneSettings = new Gcp.Ces.Inputs.AppTimeZoneSettingsArgs
///         {
///             TimeZone = "America/Los_Angeles",
///         },
///     });
///
///     var my_deployment = new Gcp.Ces.Deployment("my-deployment", new()
///     {
///         Location = "us",
///         DisplayName = "my-deployment",
///         App = my_app.Name,
///         AppVersion = "projects/example-project/locations/us/apps/example-app/versions/example-version",
///         ChannelProfile = new Gcp.Ces.Inputs.DeploymentChannelProfileArgs
///         {
///             ChannelType = "API",
///             DisableBargeInControl = true,
///             DisableDtmf = true,
///             PersonaProperty = new Gcp.Ces.Inputs.DeploymentChannelProfilePersonaPropertyArgs
///             {
///                 Persona = "CHATTY",
///             },
///             ProfileId = "temp_profile_id",
///             WebWidgetConfig = new Gcp.Ces.Inputs.DeploymentChannelProfileWebWidgetConfigArgs
///             {
///                 Modality = "CHAT_AND_VOICE",
///                 Theme = "DARK",
///                 WebWidgetTitle = "temp_webwidget_title",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/ces"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		my_app, err := ces.NewApp(ctx, "my-app", &ces.AppArgs{
/// 			Location:    pulumi.String("us"),
/// 			DisplayName: pulumi.String("my-app"),
/// 			AppId:       pulumi.String("app-id"),
/// 			TimeZoneSettings: &ces.AppTimeZoneSettingsArgs{
/// 				TimeZone: pulumi.String("America/Los_Angeles"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ces.NewDeployment(ctx, "my-deployment", &ces.DeploymentArgs{
/// 			Location:    pulumi.String("us"),
/// 			DisplayName: pulumi.String("my-deployment"),
/// 			App:         my_app.Name,
/// 			AppVersion:  pulumi.String("projects/example-project/locations/us/apps/example-app/versions/example-version"),
/// 			ChannelProfile: &ces.DeploymentChannelProfileArgs{
/// 				ChannelType:           pulumi.String("API"),
/// 				DisableBargeInControl: pulumi.Bool(true),
/// 				DisableDtmf:           pulumi.Bool(true),
/// 				PersonaProperty: &ces.DeploymentChannelProfilePersonaPropertyArgs{
/// 					Persona: pulumi.String("CHATTY"),
/// 				},
/// 				ProfileId: pulumi.String("temp_profile_id"),
/// 				WebWidgetConfig: &ces.DeploymentChannelProfileWebWidgetConfigArgs{
/// 					Modality:       pulumi.String("CHAT_AND_VOICE"),
/// 					Theme:          pulumi.String("DARK"),
/// 					WebWidgetTitle: pulumi.String("temp_webwidget_title"),
/// 				},
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
/// import com.pulumi.gcp.ces.App;
/// import com.pulumi.gcp.ces.AppArgs;
/// import com.pulumi.gcp.ces.inputs.AppTimeZoneSettingsArgs;
/// import com.pulumi.gcp.ces.Deployment;
/// import com.pulumi.gcp.ces.DeploymentArgs;
/// import com.pulumi.gcp.ces.inputs.DeploymentChannelProfileArgs;
/// import com.pulumi.gcp.ces.inputs.DeploymentChannelProfilePersonaPropertyArgs;
/// import com.pulumi.gcp.ces.inputs.DeploymentChannelProfileWebWidgetConfigArgs;
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
///         var my_app = new App("my-app", AppArgs.builder()
///             .location("us")
///             .displayName("my-app")
///             .appId("app-id")
///             .timeZoneSettings(AppTimeZoneSettingsArgs.builder()
///                 .timeZone("America/Los_Angeles")
///                 .build())
///             .build());
///
///         var my_deployment = new Deployment("my-deployment", DeploymentArgs.builder()
///             .location("us")
///             .displayName("my-deployment")
///             .app(my_app.name())
///             .appVersion("projects/example-project/locations/us/apps/example-app/versions/example-version")
///             .channelProfile(DeploymentChannelProfileArgs.builder()
///                 .channelType("API")
///                 .disableBargeInControl(true)
///                 .disableDtmf(true)
///                 .personaProperty(DeploymentChannelProfilePersonaPropertyArgs.builder()
///                     .persona("CHATTY")
///                     .build())
///                 .profileId("temp_profile_id")
///                 .webWidgetConfig(DeploymentChannelProfileWebWidgetConfigArgs.builder()
///                     .modality("CHAT_AND_VOICE")
///                     .theme("DARK")
///                     .webWidgetTitle("temp_webwidget_title")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-app:
///     type: gcp:ces:App
///     properties:
///       location: us
///       displayName: my-app
///       appId: app-id
///       timeZoneSettings:
///         timeZone: America/Los_Angeles
///   my-deployment:
///     type: gcp:ces:Deployment
///     properties:
///       location: us
///       displayName: my-deployment
///       app: ${["my-app"].name}
///       appVersion: projects/example-project/locations/us/apps/example-app/versions/example-version
///       channelProfile:
///         channelType: API
///         disableBargeInControl: true
///         disableDtmf: true
///         personaProperty:
///           persona: CHATTY
///         profileId: temp_profile_id
///         webWidgetConfig:
///           modality: CHAT_AND_VOICE
///           theme: DARK
///           webWidgetTitle: temp_webwidget_title
/// ```
///
///
/// ## Import
///
/// Deployment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/apps/{{app}}/deployments/{{name}}`
///
/// * `{{project}}/{{location}}/{{app}}/{{name}}`
///
/// * `{{location}}/{{app}}/{{name}}`
///
/// When using the `pulumi import` command, Deployment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:ces/deployment:Deployment default projects/{{project}}/locations/{{location}}/apps/{{app}}/deployments/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:ces/deployment:Deployment default {{project}}/{{location}}/{{app}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:ces/deployment:Deployment default {{location}}/{{app}}/{{name}}
/// ```
class DeploymentType extends pulumi.CustomResource {
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> app;

  /// The resource name of the app version to deploy.
  /// Format:
  /// projects/{project}/locations/{location}/apps/{app}/versions/{version}
  late final pulumi.Output<String> appVersion;

  /// A ChannelProfile configures the agent's behavior for a specific communication
  /// channel, such as web UI or telephony.
  /// Structure is documented below.
  late final pulumi.Output<DeploymentChannelProfile> channelProfile;

  /// Timestamp when this deployment was created.
  late final pulumi.Output<String> createTime;

  /// Display name of the deployment.
  late final pulumi.Output<String> displayName;

  /// Etag used to ensure the object hasn't changed during a read-modify-write
  /// operation. If the etag is empty, the update will overwrite any concurrent
  /// changes.
  late final pulumi.Output<String> etag;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;

  /// Identifier. The resource name of the deployment.
  /// Format:
  /// projects/{project}/locations/{location}/apps/{app}/deployments/{deployment}
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Timestamp when this deployment was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [DeploymentType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeploymentType]. {@macro pulumi_ces_deployment_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeploymentType(
    String name, {
    DeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:ces/deployment:Deployment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.app = registerOutput<String>('app');
    this.appVersion = registerOutput<String>('appVersion');
    this.channelProfile =
        registerOutput<DeploymentChannelProfile>('channelProfile');
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String>('displayName');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
