// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../custom_action_type_configuration_property/custom_action_type_configuration_property.dart';
import '../custom_action_type_input_artifact_details/custom_action_type_input_artifact_details.dart';
import '../custom_action_type_output_artifact_details/custom_action_type_output_artifact_details.dart';
import '../custom_action_type_settings/custom_action_type_settings.dart';

/// The set of arguments for CustomActionType.
class CustomActionTypeArgs {
  /// The category of the custom action. Valid values: `Source`, `Build`, `Deploy`, `Test`, `Invoke`, `Approval`
  final pulumi.Input<String> category;

  /// The configuration properties for the custom action. Max 10 items.
  final pulumi.Input<List<CustomActionTypeConfigurationProperty>>?
      configurationProperties;
  final pulumi.Input<CustomActionTypeInputArtifactDetails> inputArtifactDetails;
  final pulumi.Input<CustomActionTypeOutputArtifactDetails>
      outputArtifactDetails;
  final pulumi.Input<String> providerName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<CustomActionTypeSettings>? settings;
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<String> version;

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
      map['configurationProperties'] = pulumi.Input.mapOptionalInputValue<
              List<CustomActionTypeConfigurationProperty>,
              List<Map<String, dynamic>>>(
          configurationPropertiesValue,
          (value) => pulumi.Input.encodeList<
              CustomActionTypeConfigurationProperty,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['inputArtifactDetails'] = pulumi.Input.mapInputValue<
        CustomActionTypeInputArtifactDetails,
        Map<String, dynamic>>(inputArtifactDetails, (value) => value.toMap());
    map['outputArtifactDetails'] = pulumi.Input.mapInputValue<
        CustomActionTypeOutputArtifactDetails,
        Map<String, dynamic>>(outputArtifactDetails, (value) => value.toMap());
    map['providerName'] = providerName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final settingsValue = settings;
    if (settingsValue != null) {
      map['settings'] = pulumi.Input.mapOptionalInputValue<
          CustomActionTypeSettings,
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
      category: pulumi.Input.asInput<String>(map['category']),
      configurationProperties: pulumi.Input.asOptionalInput<
              List<CustomActionTypeConfigurationProperty>>(
          map['configurationProperties']),
      inputArtifactDetails:
          pulumi.Input.asInput<CustomActionTypeInputArtifactDetails>(
              map['inputArtifactDetails']),
      outputArtifactDetails:
          pulumi.Input.asInput<CustomActionTypeOutputArtifactDetails>(
              map['outputArtifactDetails']),
      providerName: pulumi.Input.asInput<String>(map['providerName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      settings: pulumi.Input.asOptionalInput<CustomActionTypeSettings>(
          map['settings']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      version: pulumi.Input.asInput<String>(map['version']),
    );
  }
}
