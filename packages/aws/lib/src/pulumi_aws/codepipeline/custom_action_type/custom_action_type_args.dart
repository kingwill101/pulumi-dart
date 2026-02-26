// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../custom_action_type_configuration_property/custom_action_type_configuration_property.dart';
import '../custom_action_type_input_artifact_details/custom_action_type_input_artifact_details.dart';
import '../custom_action_type_output_artifact_details/custom_action_type_output_artifact_details.dart';
import '../custom_action_type_settings/custom_action_type_settings.dart';

/// The set of arguments for CustomActionType.
class CustomActionTypeArgs {
  /// The category of the custom action. Valid values: `Source`, `Build`, `Deploy`, `Test`, `Invoke`, `Approval`
  final Input<String> category;

  /// The configuration properties for the custom action. Max 10 items.
  final Input<List<CustomActionTypeConfigurationProperty>>?
      configurationProperties;
  final Input<CustomActionTypeInputArtifactDetails> inputArtifactDetails;
  final Input<CustomActionTypeOutputArtifactDetails> outputArtifactDetails;
  final Input<String> providerName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;
  final Input<CustomActionTypeSettings>? settings;
  final Input<Map<String, String>>? tags;
  final Input<String> version;

  CustomActionTypeArgs({
    required this.category,
    this.configurationProperties,
    required this.inputArtifactDetails,
    required this.outputArtifactDetails,
    required this.providerName,
    this.region,
    this.settings,
    this.tags,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['category'] = category;
    final configurationPropertiesValue = configurationProperties;
    if (configurationPropertiesValue != null) {
      map['configurationProperties'] = Input.mapOptionalInputValue<
              List<CustomActionTypeConfigurationProperty>,
              List<Map<String, dynamic>>>(
          configurationPropertiesValue,
          (value) => Input.encodeList<CustomActionTypeConfigurationProperty,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['inputArtifactDetails'] = Input.mapInputValue<
        CustomActionTypeInputArtifactDetails,
        Map<String, dynamic>>(inputArtifactDetails, (value) => value.toMap());
    map['outputArtifactDetails'] = Input.mapInputValue<
        CustomActionTypeOutputArtifactDetails,
        Map<String, dynamic>>(outputArtifactDetails, (value) => value.toMap());
    map['providerName'] = providerName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final settingsValue = settings;
    if (settingsValue != null) {
      map['settings'] = Input.mapOptionalInputValue<CustomActionTypeSettings,
          Map<String, dynamic>>(settingsValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['version'] = version;
    return map;
  }

  factory CustomActionTypeArgs.fromMap(Map<String, dynamic> map) {
    return CustomActionTypeArgs(
      category: Input.asInput<String>(map['category']),
      configurationProperties:
          Input.asOptionalInput<List<CustomActionTypeConfigurationProperty>>(
              map['configurationProperties']),
      inputArtifactDetails: Input.asInput<CustomActionTypeInputArtifactDetails>(
          map['inputArtifactDetails']),
      outputArtifactDetails:
          Input.asInput<CustomActionTypeOutputArtifactDetails>(
              map['outputArtifactDetails']),
      providerName: Input.asInput<String>(map['providerName']),
      region: Input.asOptionalInput<String>(map['region']),
      settings:
          Input.asOptionalInput<CustomActionTypeSettings>(map['settings']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      version: Input.asInput<String>(map['version']),
    );
  }
}
