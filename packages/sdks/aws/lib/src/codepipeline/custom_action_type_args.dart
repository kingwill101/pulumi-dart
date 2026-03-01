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
    required pulumi.Output<String> category,
    pulumi.Output<List<CustomActionTypeConfigurationProperty>>? configurationProperties,
    required pulumi.Output<CustomActionTypeInputArtifactDetails> inputArtifactDetails,
    required pulumi.Output<CustomActionTypeOutputArtifactDetails> outputArtifactDetails,
    required pulumi.Output<String> providerName,
    pulumi.Output<String>? region,
    pulumi.Output<CustomActionTypeSettings>? settings,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> version,
  }) :
      category = pulumi.Input.asInput<String>(category),
      configurationProperties = pulumi.Input.asOptionalInput<List<CustomActionTypeConfigurationProperty>>(configurationProperties),
      inputArtifactDetails = pulumi.Input.asInput<CustomActionTypeInputArtifactDetails>(inputArtifactDetails),
      outputArtifactDetails = pulumi.Input.asInput<CustomActionTypeOutputArtifactDetails>(outputArtifactDetails),
      providerName = pulumi.Input.asInput<String>(providerName),
      region = pulumi.Input.asOptionalInput<String>(region),
      settings = pulumi.Input.asOptionalInput<CustomActionTypeSettings>(settings),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      version = pulumi.Input.asInput<String>(version);

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
      category: pulumi.Output.create<String>(map['category'] as String),
      configurationProperties: map['configurationProperties'] == null ? null : pulumi.Output.create<List<CustomActionTypeConfigurationProperty>>(pulumi.Input.decodeList<CustomActionTypeConfigurationProperty>(map['configurationProperties'], (value) => CustomActionTypeConfigurationProperty.fromMap((value as Map).cast<String, dynamic>()))),
      inputArtifactDetails: pulumi.Output.create<CustomActionTypeInputArtifactDetails>(CustomActionTypeInputArtifactDetails.fromMap((map['inputArtifactDetails'] as Map).cast<String, dynamic>())),
      outputArtifactDetails: pulumi.Output.create<CustomActionTypeOutputArtifactDetails>(CustomActionTypeOutputArtifactDetails.fromMap((map['outputArtifactDetails'] as Map).cast<String, dynamic>())),
      providerName: pulumi.Output.create<String>(map['providerName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      settings: map['settings'] == null ? null : pulumi.Output.create<CustomActionTypeSettings>(CustomActionTypeSettings.fromMap((map['settings'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      version: pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

