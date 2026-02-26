import 'package:pulumi/pulumi.dart';
import 'v2_project_mute_config_args.dart';

/// Mute Findings is a volume management feature in Security Command Center
/// that lets you manually or programmatically hide irrelevant findings,
/// and create filters to automatically silence existing and future
/// findings based on criteria you specify.
///
///
/// To get more information about ProjectMuteConfig, see:
///
/// * [API documentation](https://cloud.google.com/security-command-center/docs/reference/rest/v2/projects.muteConfigs)
///
/// ## Example Usage
///
/// ### Scc V2 Project Mute Config Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.securitycenter.V2ProjectMuteConfig("default", {
/// muteConfigId: "my-config",
/// project: "my-project-name",
/// location: "global",
/// description: "My custom Cloud Security Command Center Finding Project mute Configuration",
/// filter: "severity = \"HIGH\"",
/// type: "STATIC",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.securitycenter.V2ProjectMuteConfig("default",
/// mute_config_id="my-config",
/// project="my-project-name",
/// location="global",
/// description="My custom Cloud Security Command Center Finding Project mute Configuration",
/// filter="severity = \"HIGH\"",
/// type="STATIC")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Gcp.SecurityCenter.V2ProjectMuteConfig("default", new()
/// {
/// MuteConfigId = "my-config",
/// Project = "my-project-name",
/// Location = "global",
/// Description = "My custom Cloud Security Command Center Finding Project mute Configuration",
/// Filter = "severity = \"HIGH\"",
/// Type = "STATIC",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securitycenter"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := securitycenter.NewV2ProjectMuteConfig(ctx, "default", &securitycenter.V2ProjectMuteConfigArgs{
/// MuteConfigId: pulumi.String("my-config"),
/// Project:      pulumi.String("my-project-name"),
/// Location:     pulumi.String("global"),
/// Description:  pulumi.String("My custom Cloud Security Command Center Finding Project mute Configuration"),
/// Filter:       pulumi.String("severity = \"HIGH\""),
/// Type:         pulumi.String("STATIC"),
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
/// import com.pulumi.gcp.securitycenter.V2ProjectMuteConfig;
/// import com.pulumi.gcp.securitycenter.V2ProjectMuteConfigArgs;
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
/// var default_ = new V2ProjectMuteConfig("default", V2ProjectMuteConfigArgs.builder()
/// .muteConfigId("my-config")
/// .project("my-project-name")
/// .location("global")
/// .description("My custom Cloud Security Command Center Finding Project mute Configuration")
/// .filter("severity = \"HIGH\"")
/// .type("STATIC")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:securitycenter:V2ProjectMuteConfig
/// properties:
/// muteConfigId: my-config
/// project: my-project-name
/// location: global
/// description: My custom Cloud Security Command Center Finding Project mute Configuration
/// filter: severity = "HIGH"
/// type: STATIC
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ProjectMuteConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/muteConfigs/{{mute_config_id}}`
///
/// * `{{project}}/{{location}}/{{mute_config_id}}`
///
/// * `{{location}}/{{mute_config_id}}`
///
/// When using the `pulumi import` command, ProjectMuteConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securitycenter/v2ProjectMuteConfig:V2ProjectMuteConfig default projects/{{project}}/locations/{{location}}/muteConfigs/{{mute_config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securitycenter/v2ProjectMuteConfig:V2ProjectMuteConfig default {{project}}/{{location}}/{{mute_config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securitycenter/v2ProjectMuteConfig:V2ProjectMuteConfig default {{location}}/{{mute_config_id}}
/// ```
class V2ProjectMuteConfig extends CustomResource {
  /// The time at which the mute config was created. This field is set by
  /// the server and will be ignored if provided on config creation.
  late final Output<String> createTime;

  /// A description of the mute config.
  late final Output<String?> description;

  /// An expression that defines the filter to apply across create/update
  /// events of findings. While creating a filter string, be mindful of
  /// the scope in which the mute configuration is being created. E.g.,
  /// If a filter contains project = X but is created under the
  /// project = Y scope, it might not match any findings.
  late final Output<String> filter;

  /// location Id is provided by project. If not provided, Use global as default.
  late final Output<String?> location;

  /// Email address of the user who last edited the mute config. This
  /// field is set by the server and will be ignored if provided on
  /// config creation or update.
  late final Output<String> mostRecentEditor;

  /// Unique identifier provided by the client within the parent scope.
  late final Output<String> muteConfigId;

  /// Name of the mute config. Its format is
  /// projects/{project}/locations/global/muteConfigs/{configId},
  /// folders/{folder}/locations/global/muteConfigs/{configId},
  /// or organizations/{organization}/locations/global/muteConfigs/{configId}
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The type of the mute config.
  late final Output<String> type;

  /// Output only. The most recent time at which the mute config was
  /// updated. This field is set by the server and will be ignored if
  /// provided on config creation or update.
  late final Output<String> updateTime;

  V2ProjectMuteConfig(
    String name, {
    V2ProjectMuteConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/v2ProjectMuteConfig:V2ProjectMuteConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.filter = registerOutput<String>('filter');
    this.location = registerOutput<String?>('location');
    this.mostRecentEditor = registerOutput<String>('mostRecentEditor');
    this.muteConfigId = registerOutput<String>('muteConfigId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.type = registerOutput<String>('type');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
