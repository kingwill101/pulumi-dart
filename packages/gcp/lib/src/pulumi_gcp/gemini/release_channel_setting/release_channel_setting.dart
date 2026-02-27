import 'package:pulumi/pulumi.dart' as pulumi;
import 'release_channel_setting_args.dart';

/// The resource for managing ReleaseChannel settings for Admin Control.
///
///
///
/// ## Example Usage
///
/// ### Gemini Release Channel Setting Basic
///
///
///
///
/// ## Import
///
/// ReleaseChannelSetting can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/releaseChannelSettings/{{release_channel_setting_id}}`
///
/// * `{{project}}/{{location}}/{{release_channel_setting_id}}`
///
/// * `{{location}}/{{release_channel_setting_id}}`
///
/// When using the `pulumi import` command, ReleaseChannelSetting can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gemini/releaseChannelSetting:ReleaseChannelSetting default projects/{{project}}/locations/{{location}}/releaseChannelSettings/{{release_channel_setting_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gemini/releaseChannelSetting:ReleaseChannelSetting default {{project}}/{{location}}/{{release_channel_setting_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gemini/releaseChannelSetting:ReleaseChannelSetting default {{location}}/{{release_channel_setting_id}}
/// ```
class ReleaseChannelSetting extends pulumi.CustomResource {
  /// Create time stamp.
  late final pulumi.Output<String> createTime;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;

  /// Identifier. Name of the resource.
  /// Format:projects/{project}/locations/{location}/releaseChannelSettings/{releaseChannelSetting}
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Release channel to be used.
  /// Possible values:
  /// STABLE
  /// EXPERIMENTAL
  late final pulumi.Output<String?> releaseChannel;

  /// Id of the Release Channel Setting.
  late final pulumi.Output<String> releaseChannelSettingId;

  /// Update time stamp.
  late final pulumi.Output<String> updateTime;

  ReleaseChannelSetting(
    String name, {
    ReleaseChannelSettingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gemini/releaseChannelSetting:ReleaseChannelSetting',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.releaseChannel = registerOutput<String?>('releaseChannel');
    this.releaseChannelSettingId =
        registerOutput<String>('releaseChannelSettingId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
