import 'package:pulumi/pulumi.dart';
import 'gemini_gcp_enablement_setting_args.dart';

/// The resource for managing GeminiGcpEnablement settings for Admin Control.
///
///
///
/// ## Example Usage
///
/// ### Gemini Gemini Gcp Enablement Setting Basic
///
///
///
///
/// ## Import
///
/// GeminiGcpEnablementSetting can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/geminiGcpEnablementSettings/{{gemini_gcp_enablement_setting_id}}`
///
/// * `{{project}}/{{location}}/{{gemini_gcp_enablement_setting_id}}`
///
/// * `{{location}}/{{gemini_gcp_enablement_setting_id}}`
///
/// When using the `pulumi import` command, GeminiGcpEnablementSetting can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gemini/geminiGcpEnablementSetting:GeminiGcpEnablementSetting default projects/{{project}}/locations/{{location}}/geminiGcpEnablementSettings/{{gemini_gcp_enablement_setting_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gemini/geminiGcpEnablementSetting:GeminiGcpEnablementSetting default {{project}}/{{location}}/{{gemini_gcp_enablement_setting_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gemini/geminiGcpEnablementSetting:GeminiGcpEnablementSetting default {{location}}/{{gemini_gcp_enablement_setting_id}}
/// ```
class GeminiGcpEnablementSetting extends CustomResource {
  /// Create time stamp.
  late final Output<String> createTime;

  /// (Optional, Deprecated)
  /// Whether web grounding should be disabled.
  ///
  /// > **Warning:** `disable_web_grounding` is deprecated. Use `web_grounding_type` instead.
  late final Output<bool?> disableWebGrounding;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Whether customer data sharing should be enabled.
  late final Output<bool?> enableCustomerDataSharing;

  /// Id of the Gemini Gcp Enablement setting.
  late final Output<String> geminiGcpEnablementSettingId;

  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String> location;

  /// Identifier. Name of the resource.
  /// Format:projects/{project}/locations/{location}/geminiGcpEnablementSettings/{geminiGcpEnablementSetting}
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Update time stamp.
  late final Output<String> updateTime;

  /// Web grounding type.
  /// Possible values:
  /// GROUNDING_WITH_GOOGLE_SEARCH
  /// WEB_GROUNDING_FOR_ENTERPRISE
  late final Output<String?> webGroundingType;

  GeminiGcpEnablementSetting(
    String name, {
    GeminiGcpEnablementSettingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:gemini/geminiGcpEnablementSetting:GeminiGcpEnablementSetting',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.disableWebGrounding = registerOutput<bool?>('disableWebGrounding');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.enableCustomerDataSharing =
        registerOutput<bool?>('enableCustomerDataSharing');
    this.geminiGcpEnablementSettingId =
        registerOutput<String>('geminiGcpEnablementSettingId');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.updateTime = registerOutput<String>('updateTime');
    this.webGroundingType = registerOutput<String?>('webGroundingType');
  }
}
