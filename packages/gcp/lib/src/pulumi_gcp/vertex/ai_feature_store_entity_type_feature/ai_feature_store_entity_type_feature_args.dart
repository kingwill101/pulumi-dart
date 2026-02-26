// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for AiFeatureStoreEntityTypeFeature.
class AiFeatureStoreEntityTypeFeatureArgs {
  /// Description of the feature.
  final Input<String>? description;

  /// The name of the Featurestore to use, in the format projects/{project}/locations/{location}/featurestores/{featurestore}/entityTypes/{entitytype}.
  final Input<String> entitytype;

  /// A set of key/value label pairs to assign to the feature.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The name of the feature. The feature can be up to 64 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscore(_), and ASCII digits 0-9 starting with a letter. The value will be unique given an entity type.
  final Input<String>? name;

  /// Type of Feature value. Immutable. https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.featurestores.entityTypes.features#ValueType
  final Input<String> valueType;

  AiFeatureStoreEntityTypeFeatureArgs({
    this.description,
    required this.entitytype,
    this.labels,
    this.name,
    required this.valueType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['entitytype'] = entitytype;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['valueType'] = valueType;
    return map;
  }

  factory AiFeatureStoreEntityTypeFeatureArgs.fromMap(
      Map<String, dynamic> map) {
    return AiFeatureStoreEntityTypeFeatureArgs(
      description: Input.asOptionalInput<String>(map['description']),
      entitytype: Input.asInput<String>(map['entitytype']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: Input.asOptionalInput<String>(map['name']),
      valueType: Input.asInput<String>(map['valueType']),
    );
  }
}
