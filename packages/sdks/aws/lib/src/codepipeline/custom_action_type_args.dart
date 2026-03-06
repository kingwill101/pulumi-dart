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
  const CustomActionTypeArgs({
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
      category: pulumi.Input.fromValue(map['category'] as String),
      configurationProperties: (() { final guardedValue = map['configurationProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CustomActionTypeConfigurationProperty>(guardedValue, (value) => CustomActionTypeConfigurationProperty.fromMap((value as Map).cast<String, dynamic>()))); })(),
      inputArtifactDetails: pulumi.Input.fromValue(CustomActionTypeInputArtifactDetails.fromMap((map['inputArtifactDetails']! as Map).cast<String, dynamic>())),
      outputArtifactDetails: pulumi.Input.fromValue(CustomActionTypeOutputArtifactDetails.fromMap((map['outputArtifactDetails']! as Map).cast<String, dynamic>())),
      providerName: pulumi.Input.fromValue(map['providerName'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomActionTypeSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

