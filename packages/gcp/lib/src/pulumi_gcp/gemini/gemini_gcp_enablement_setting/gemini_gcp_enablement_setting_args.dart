// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for GeminiGcpEnablementSetting.
class GeminiGcpEnablementSettingArgs {
  /// (Optional, Deprecated)
  /// Whether web grounding should be disabled.
  ///
  /// > **Warning:** `disable_web_grounding` is deprecated. Use `web_grounding_type` instead.
  final Input<bool>? disableWebGrounding;

  /// Whether customer data sharing should be enabled.
  final Input<bool>? enableCustomerDataSharing;

  /// Id of the Gemini Gcp Enablement setting.
  final Input<String> geminiGcpEnablementSettingId;

  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Web grounding type.
  /// Possible values:
  /// GROUNDING_WITH_GOOGLE_SEARCH
  /// WEB_GROUNDING_FOR_ENTERPRISE
  final Input<String>? webGroundingType;

  GeminiGcpEnablementSettingArgs({
    this.disableWebGrounding,
    this.enableCustomerDataSharing,
    required this.geminiGcpEnablementSettingId,
    this.labels,
    required this.location,
    this.project,
    this.webGroundingType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disableWebGroundingValue = disableWebGrounding;
    if (disableWebGroundingValue != null) {
      map['disableWebGrounding'] = disableWebGroundingValue;
    }
    final enableCustomerDataSharingValue = enableCustomerDataSharing;
    if (enableCustomerDataSharingValue != null) {
      map['enableCustomerDataSharing'] = enableCustomerDataSharingValue;
    }
    map['geminiGcpEnablementSettingId'] = geminiGcpEnablementSettingId;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final webGroundingTypeValue = webGroundingType;
    if (webGroundingTypeValue != null) {
      map['webGroundingType'] = webGroundingTypeValue;
    }
    return map;
  }

  factory GeminiGcpEnablementSettingArgs.fromMap(Map<String, dynamic> map) {
    return GeminiGcpEnablementSettingArgs(
      disableWebGrounding:
          Input.asOptionalInput<bool>(map['disableWebGrounding']),
      enableCustomerDataSharing:
          Input.asOptionalInput<bool>(map['enableCustomerDataSharing']),
      geminiGcpEnablementSettingId:
          Input.asInput<String>(map['geminiGcpEnablementSettingId']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      webGroundingType: Input.asOptionalInput<String>(map['webGroundingType']),
    );
  }
}
