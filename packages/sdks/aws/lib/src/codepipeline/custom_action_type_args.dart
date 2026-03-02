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
  final pulumi.Input<List<CustomActionTypeConfigurationProperty>>? configurationProperties;
  final pulumi.Input<CustomActionTypeInputArtifactDetails> inputArtifactDetails;
  final pulumi.Input<CustomActionTypeOutputArtifactDetails> outputArtifactDetails;
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
    return <String, dynamic>{
      'category': category,
      'configurationProperties': ?pulumi.Input.mapOptionalInputValue<List<CustomActionTypeConfigurationProperty>, List<Map<String, dynamic>>>(configurationProperties, (value) => pulumi.Input.encodeList<CustomActionTypeConfigurationProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inputArtifactDetails': pulumi.Input.mapInputValue<CustomActionTypeInputArtifactDetails, Map<String, dynamic>>(inputArtifactDetails, (value) => value.toMap()),
      'outputArtifactDetails': pulumi.Input.mapInputValue<CustomActionTypeOutputArtifactDetails, Map<String, dynamic>>(outputArtifactDetails, (value) => value.toMap()),
      'providerName': providerName,
      'region': ?region,
      'settings': ?pulumi.Input.mapOptionalInputValue<CustomActionTypeSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
      'tags': ?tags,
      'version': version,
    };
  }

  factory CustomActionTypeArgs.fromMap(Map<String, dynamic> map) {
    return CustomActionTypeArgs(
      category: (map['category'] as String).input(),
      configurationProperties: map['configurationProperties'] == null ? null : (pulumi.Input.decodeList<CustomActionTypeConfigurationProperty>(map['configurationProperties'], (value) => CustomActionTypeConfigurationProperty.fromMap((value as Map).cast<String, dynamic>()))).input(),
      inputArtifactDetails: (CustomActionTypeInputArtifactDetails.fromMap((map['inputArtifactDetails'] as Map).cast<String, dynamic>())).input(),
      outputArtifactDetails: (CustomActionTypeOutputArtifactDetails.fromMap((map['outputArtifactDetails'] as Map).cast<String, dynamic>())).input(),
      providerName: (map['providerName'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      settings: map['settings'] == null ? null : (CustomActionTypeSettings.fromMap((map['settings'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      version: (map['version'] as String).input(),
    );
  }
}

