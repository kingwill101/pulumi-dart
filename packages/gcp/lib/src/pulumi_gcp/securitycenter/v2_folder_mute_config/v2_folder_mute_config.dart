import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_folder_mute_config_args.dart';

/// Mute Findings is a volume management feature in Security Command Center
/// that lets you manually or programmatically hide irrelevant findings,
/// and create filters to automatically silence existing and future
/// findings based on criteria you specify.
///
///
/// To get more information about FolderMuteConfig, see:
///
/// * [API documentation](https://cloud.google.com/security-command-center/docs/reference/rest/v2/folders.muteConfigs)
///
/// ## Example Usage
///
/// ### Scc V2 Folder Mute Config Basic
///
///
///
///
/// ## Import
///
/// FolderMuteConfig can be imported using any of these accepted formats:
///
/// * `folders/{{folder}}/locations/{{location}}/muteConfigs/{{mute_config_id}}`
///
/// * `{{folder}}/{{location}}/{{mute_config_id}}`
///
/// When using the `pulumi import` command, FolderMuteConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securitycenter/v2FolderMuteConfig:V2FolderMuteConfig default folders/{{folder}}/locations/{{location}}/muteConfigs/{{mute_config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securitycenter/v2FolderMuteConfig:V2FolderMuteConfig default {{folder}}/{{location}}/{{mute_config_id}}
/// ```
class V2FolderMuteConfig extends pulumi.CustomResource {
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

  /// The folder whose Cloud Security Command Center the Mute
  /// Config lives in.
  late final pulumi.Output<String> folder;

  /// location Id is provided by folder. If not provided, Use global as default.
  late final pulumi.Output<String?> location;

  /// Email address of the user who last edited the mute config. This
  /// field is set by the server and will be ignored if provided on
  /// config creation or update.
  late final pulumi.Output<String> mostRecentEditor;

  /// Unique identifier provided by the client within the parent scope.
  late final pulumi.Output<String> muteConfigId;

  /// Name of the mute config. Its format is
  /// organizations/{organization}/locations/global/muteConfigs/{configId},
  /// folders/{folder}/locations/global/muteConfigs/{configId},
  /// or projects/{project}/locations/global/muteConfigs/{configId}
  late final pulumi.Output<String> name;

  /// The type of the mute config.
  late final pulumi.Output<String> type;

  /// Output only. The most recent time at which the mute config was
  /// updated. This field is set by the server and will be ignored if
  /// provided on config creation or update.
  late final pulumi.Output<String> updateTime;

  V2FolderMuteConfig(
    String name, {
    V2FolderMuteConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/v2FolderMuteConfig:V2FolderMuteConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.filter = registerOutput<String>('filter');
    this.folder = registerOutput<String>('folder');
    this.location = registerOutput<String?>('location');
    this.mostRecentEditor = registerOutput<String>('mostRecentEditor');
    this.muteConfigId = registerOutput<String>('muteConfigId');
    this.name = registerOutput<String>('name');
    this.type = registerOutput<String>('type');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
