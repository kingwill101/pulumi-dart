import 'package:pulumi/pulumi.dart' as pulumi;
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
///
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
class V2ProjectMuteConfig extends pulumi.CustomResource {
  /// The time at which the mute config was created. This field is set by
  /// the server and will be ignored if provided on config creation.
  late final pulumi.Output<String> createTime;

  /// A description of the mute config.
  late final pulumi.Output<String?> description;

  /// An expression that defines the filter to apply across create/update
  /// events of findings. While creating a filter string, be mindful of
  /// the scope in which the mute configuration is being created. E.g.,
  /// If a filter contains project = X but is created under the
  /// project = Y scope, it might not match any findings.
  late final pulumi.Output<String> filter;

  /// location Id is provided by project. If not provided, Use global as default.
  late final pulumi.Output<String?> location;

  /// Email address of the user who last edited the mute config. This
  /// field is set by the server and will be ignored if provided on
  /// config creation or update.
  late final pulumi.Output<String> mostRecentEditor;

  /// Unique identifier provided by the client within the parent scope.
  late final pulumi.Output<String> muteConfigId;

  /// Name of the mute config. Its format is
  /// projects/{project}/locations/global/muteConfigs/{configId},
  /// folders/{folder}/locations/global/muteConfigs/{configId},
  /// or organizations/{organization}/locations/global/muteConfigs/{configId}
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The type of the mute config.
  late final pulumi.Output<String> type;

  /// Output only. The most recent time at which the mute config was
  /// updated. This field is set by the server and will be ignored if
  /// provided on config creation or update.
  late final pulumi.Output<String> updateTime;

  V2ProjectMuteConfig(
    String name, {
    V2ProjectMuteConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/v2ProjectMuteConfig:V2ProjectMuteConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
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
