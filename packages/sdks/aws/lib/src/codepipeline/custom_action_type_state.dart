// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_action_type_configuration_property.dart';
import 'custom_action_type_input_artifact_details.dart';
import 'custom_action_type_output_artifact_details.dart';
import 'custom_action_type_settings.dart';

/// Input properties used for looking up and filtering CustomActionType resources.
class CustomActionTypeState {
  /// The action ARN.
  final pulumi.Input<String>? arn;
  /// The category of the custom action. Valid values: `Source`, `Build`, `Deploy`, `Test`, `Invoke`, `Approval`
  final pulumi.Input<String>? category;
  /// The configuration properties for the custom action. Max 10 items.
  final pulumi.Input<List<CustomActionTypeConfigurationProperty>>? configurationProperties;
  final pulumi.Input<CustomActionTypeInputArtifactDetails>? inputArtifactDetails;
  final pulumi.Input<CustomActionTypeOutputArtifactDetails>? outputArtifactDetails;
  /// The creator of the action being called.
  final pulumi.Input<String>? owner;
  final pulumi.Input<String>? providerName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<CustomActionTypeSettings>? settings;
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<String>? version;

  /// Creates a new [CustomActionTypeState].
  /// [arn] The action ARN.
  /// [category] The category of the custom action. Valid values: `Source`, `Build`, `Deploy`, `Test`, `Invoke`, `Approval`
  /// [configurationProperties] The configuration properties for the custom action. Max 10 items.
  /// [inputArtifactDetails] Optional.
  /// [outputArtifactDetails] Optional.
  /// [owner] The creator of the action being called.
  /// [providerName] Optional.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [settings] Optional.
  /// [tags] Optional.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [version] Optional.
  CustomActionTypeState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? category,
    pulumi.Output<List<CustomActionTypeConfigurationProperty>>? configurationProperties,
    pulumi.Output<CustomActionTypeInputArtifactDetails>? inputArtifactDetails,
    pulumi.Output<CustomActionTypeOutputArtifactDetails>? outputArtifactDetails,
    pulumi.Output<String>? owner,
    pulumi.Output<String>? providerName,
    pulumi.Output<String>? region,
    pulumi.Output<CustomActionTypeSettings>? settings,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? version,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      category = pulumi.Input.asOptionalInput<String>(category),
      configurationProperties = pulumi.Input.asOptionalInput<List<CustomActionTypeConfigurationProperty>>(configurationProperties),
      inputArtifactDetails = pulumi.Input.asOptionalInput<CustomActionTypeInputArtifactDetails>(inputArtifactDetails),
      outputArtifactDetails = pulumi.Input.asOptionalInput<CustomActionTypeOutputArtifactDetails>(outputArtifactDetails),
      owner = pulumi.Input.asOptionalInput<String>(owner),
      providerName = pulumi.Input.asOptionalInput<String>(providerName),
      region = pulumi.Input.asOptionalInput<String>(region),
      settings = pulumi.Input.asOptionalInput<CustomActionTypeSettings>(settings),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'category': ?category,
      'configurationProperties': ?pulumi.Input.mapOptionalInputValue<List<CustomActionTypeConfigurationProperty>, List<Map<String, dynamic>>>(configurationProperties, (value) => pulumi.Input.encodeList<CustomActionTypeConfigurationProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inputArtifactDetails': ?pulumi.Input.mapOptionalInputValue<CustomActionTypeInputArtifactDetails, Map<String, dynamic>>(inputArtifactDetails, (value) => value.toMap()),
      'outputArtifactDetails': ?pulumi.Input.mapOptionalInputValue<CustomActionTypeOutputArtifactDetails, Map<String, dynamic>>(outputArtifactDetails, (value) => value.toMap()),
      'owner': ?owner,
      'providerName': ?providerName,
      'region': ?region,
      'settings': ?pulumi.Input.mapOptionalInputValue<CustomActionTypeSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'version': ?version,
    };
  }

  factory CustomActionTypeState.fromMap(Map<String, dynamic> map) {
    return CustomActionTypeState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      category: map['category'] == null ? null : pulumi.Output.create<String>(map['category'] as String),
      configurationProperties: map['configurationProperties'] == null ? null : pulumi.Output.create<List<CustomActionTypeConfigurationProperty>>(pulumi.Input.decodeList<CustomActionTypeConfigurationProperty>(map['configurationProperties'], (value) => CustomActionTypeConfigurationProperty.fromMap((value as Map).cast<String, dynamic>()))),
      inputArtifactDetails: map['inputArtifactDetails'] == null ? null : pulumi.Output.create<CustomActionTypeInputArtifactDetails>(CustomActionTypeInputArtifactDetails.fromMap((map['inputArtifactDetails'] as Map).cast<String, dynamic>())),
      outputArtifactDetails: map['outputArtifactDetails'] == null ? null : pulumi.Output.create<CustomActionTypeOutputArtifactDetails>(CustomActionTypeOutputArtifactDetails.fromMap((map['outputArtifactDetails'] as Map).cast<String, dynamic>())),
      owner: map['owner'] == null ? null : pulumi.Output.create<String>(map['owner'] as String),
      providerName: map['providerName'] == null ? null : pulumi.Output.create<String>(map['providerName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      settings: map['settings'] == null ? null : pulumi.Output.create<CustomActionTypeSettings>(CustomActionTypeSettings.fromMap((map['settings'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

