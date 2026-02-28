// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_action_type_configuration_property.dart';
import 'custom_action_type_input_artifact_details.dart';
import 'custom_action_type_output_artifact_details.dart';
import 'custom_action_type_settings.dart';

/// {@template pulumi_codepipeline_custom_action_type_custom_action_type_args_doc}
/// The set of arguments for CustomActionType.
/// {@endtemplate}
/// {@macro pulumi_codepipeline_custom_action_type_custom_action_type_args_doc}
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

  /// Creates a new [CustomActionTypeArgs].
  /// [category] The category of the custom action. Valid values: `Source`, `Build`, `Deploy`, `Test`, `Invoke`, `Approval`
  /// [configurationProperties] The configuration properties for the custom action. Max 10 items.
  /// [inputArtifactDetails] Required.
  /// [outputArtifactDetails] Required.
  /// [providerName] Required.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [settings] Optional.
  /// [tags] Optional.
  /// [version] Required.
  CustomActionTypeArgs({
    required String category,
    List<CustomActionTypeConfigurationProperty>? configurationProperties,
    required CustomActionTypeInputArtifactDetails inputArtifactDetails,
    required CustomActionTypeOutputArtifactDetails outputArtifactDetails,
    required String providerName,
    String? region,
    CustomActionTypeSettings? settings,
    Map<String, String>? tags,
    required String version,
  })  : category = pulumi.Input.asInput<String>(category),
        configurationProperties = pulumi.Input.asOptionalInput<
                List<CustomActionTypeConfigurationProperty>>(
            configurationProperties),
        inputArtifactDetails =
            pulumi.Input.asInput<CustomActionTypeInputArtifactDetails>(
                inputArtifactDetails),
        outputArtifactDetails =
            pulumi.Input.asInput<CustomActionTypeOutputArtifactDetails>(
                outputArtifactDetails),
        providerName = pulumi.Input.asInput<String>(providerName),
        region = pulumi.Input.asOptionalInput<String>(region),
        settings =
            pulumi.Input.asOptionalInput<CustomActionTypeSettings>(settings),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        version = pulumi.Input.asInput<String>(version);

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
      category: map['category'] as String,
      configurationProperties: map['configurationProperties'] == null
          ? null
          : pulumi.Input.decodeList<CustomActionTypeConfigurationProperty>(
              map['configurationProperties'],
              (value) => CustomActionTypeConfigurationProperty.fromMap(
                  (value as Map).cast<String, dynamic>())),
      inputArtifactDetails: CustomActionTypeInputArtifactDetails.fromMap(
          (map['inputArtifactDetails'] as Map).cast<String, dynamic>()),
      outputArtifactDetails: CustomActionTypeOutputArtifactDetails.fromMap(
          (map['outputArtifactDetails'] as Map).cast<String, dynamic>()),
      providerName: map['providerName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      settings: map['settings'] == null
          ? null
          : CustomActionTypeSettings.fromMap(
              (map['settings'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      version: map['version'] as String,
    );
  }
}
