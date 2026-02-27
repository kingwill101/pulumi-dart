import 'package:pulumi/pulumi.dart' as pulumi;
import 'mute_config_args.dart';

/// Mute Findings is a volume management feature in Security Command Center
/// that lets you manually or programmatically hide irrelevant findings,
/// and create filters to automatically silence existing and future
/// findings based on criteria you specify.
///
///
/// To get more information about MuteConfig, see:
///
/// * [API documentation](https://cloud.google.com/security-command-center/docs/reference/rest/v1/organizations.muteConfigs)
///
/// ## Example Usage
///
/// ### Scc Mute Config
///
///
///
///
/// ## Import
///
/// MuteConfig can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, MuteConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securitycenter/muteConfig:MuteConfig default {{name}}
/// ```
class MuteConfig extends pulumi.CustomResource {
  /// The time at which the mute config was created. This field is set by
  /// the server and will be ignored if provided on config creation.
  late final pulumi.Output<String> createTime;

  /// A description of the mute config.
  late final pulumi.Output<String?> description;

  /// Optional. The expiry of the mute config. Only applicable for dynamic configs.
  /// If the expiry is set, when the config expires, it is removed from all findings.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to
  /// nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String?> expiryTime;

  /// An expression that defines the filter to apply across create/update
  /// events of findings. While creating a filter string, be mindful of
  /// the scope in which the mute configuration is being created. E.g.,
  /// If a filter contains project = X but is created under the
  /// project = Y scope, it might not match any findings.
  late final pulumi.Output<String> filter;

  /// Email address of the user who last edited the mute config. This
  /// field is set by the server and will be ignored if provided on
  /// config creation or update.
  late final pulumi.Output<String> mostRecentEditor;

  /// Unique identifier provided by the client within the parent scope.
  late final pulumi.Output<String> muteConfigId;

  /// Name of the mute config. Its format is
  /// organizations/{organization}/muteConfigs/{configId},
  /// folders/{folder}/muteConfigs/{configId},
  /// or projects/{project}/muteConfigs/{configId}
  late final pulumi.Output<String> name;

  /// Resource name of the new mute configs's parent. Its format is
  /// "organizations/[organization_id]", "folders/[folder_id]", or
  /// "projects/[project_id]".
  late final pulumi.Output<String> parent;

  /// The type of the mute config, which determines what type of mute state the config affects.
  /// Default value is `DYNAMIC`.
  /// Possible values are: `MUTE_CONFIG_TYPE_UNSPECIFIED`, `STATIC`, `DYNAMIC`.
  late final pulumi.Output<String?> type;

  /// Output only. The most recent time at which the mute config was
  /// updated. This field is set by the server and will be ignored if
  /// provided on config creation or update.
  late final pulumi.Output<String> updateTime;

  MuteConfig(
    String name, {
    MuteConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/muteConfig:MuteConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.expiryTime = registerOutput<String?>('expiryTime');
    this.filter = registerOutput<String>('filter');
    this.mostRecentEditor = registerOutput<String>('mostRecentEditor');
    this.muteConfigId = registerOutput<String>('muteConfigId');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.type = registerOutput<String?>('type');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
