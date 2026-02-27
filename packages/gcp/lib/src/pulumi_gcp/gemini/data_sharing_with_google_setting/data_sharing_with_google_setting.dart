import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_sharing_with_google_setting_args.dart';

/// The resource for managing DataSharingWithGoogle settings for Admin Control.
///
///
///
/// ## Example Usage
///
/// ### Gemini Data Sharing With Google Setting Basic
///
///
///
///
/// ## Import
///
/// DataSharingWithGoogleSetting can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/dataSharingWithGoogleSettings/{{data_sharing_with_google_setting_id}}`
///
/// * `{{project}}/{{location}}/{{data_sharing_with_google_setting_id}}`
///
/// * `{{location}}/{{data_sharing_with_google_setting_id}}`
///
/// When using the `pulumi import` command, DataSharingWithGoogleSetting can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gemini/dataSharingWithGoogleSetting:DataSharingWithGoogleSetting default projects/{{project}}/locations/{{location}}/dataSharingWithGoogleSettings/{{data_sharing_with_google_setting_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gemini/dataSharingWithGoogleSetting:DataSharingWithGoogleSetting default {{project}}/{{location}}/{{data_sharing_with_google_setting_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gemini/dataSharingWithGoogleSetting:DataSharingWithGoogleSetting default {{location}}/{{data_sharing_with_google_setting_id}}
/// ```
class DataSharingWithGoogleSetting extends pulumi.CustomResource {
  /// Create time stamp.
  late final pulumi.Output<String> createTime;

  /// Id of the Data Sharing With Google Setting.
  late final pulumi.Output<String> dataSharingWithGoogleSettingId;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Whether data sharing should be enabled in GA products.
  late final pulumi.Output<bool?> enableDataSharing;

  /// Whether data sharing should be enabled in Preview products.
  late final pulumi.Output<bool?> enablePreviewDataSharing;

  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String?> location;

  /// Identifier. Name of the resource.
  /// Format:projects/{project}/locations/{location}/dataSharingWithGoogleSettings/{dataSharingWithGoogleSetting}
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Update time stamp.
  late final pulumi.Output<String> updateTime;

  DataSharingWithGoogleSetting(
    String name, {
    DataSharingWithGoogleSettingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gemini/dataSharingWithGoogleSetting:DataSharingWithGoogleSetting',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.dataSharingWithGoogleSettingId =
        registerOutput<String>('dataSharingWithGoogleSettingId');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.enableDataSharing = registerOutput<bool?>('enableDataSharing');
    this.enablePreviewDataSharing =
        registerOutput<bool?>('enablePreviewDataSharing');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
