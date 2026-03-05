// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'detector_parameter_definition_response.dart';

/// The detector information. By default this is not populated, unless it's specified in expandDetector
class DetectorResponse {
  /// The Smart Detector description.
  final pulumi.Input<String> description;
  /// The detector id.
  final pulumi.Input<String> id;
  /// The Smart Detector image path. By default this is not populated, unless it's specified in expandDetector
  final pulumi.Input<List<String>> imagePaths;
  /// The Smart Detector name.
  final pulumi.Input<String> name;
  /// The Smart Detector parameters definitions.'
  final pulumi.Input<List<DetectorParameterDefinitionResponse>> parameterDefinitions;
  /// The detector's parameters.'
  final pulumi.Input<Map<String, dynamic>>? parameters;
  /// The Smart Detector supported cadences.
  final pulumi.Input<List<int>> supportedCadences;
  /// The Smart Detector supported resource types.
  final pulumi.Input<List<String>> supportedResourceTypes;

  /// Creates a new [DetectorResponse].
  /// [description] The Smart Detector description.
  /// [id] The detector id.
  /// [imagePaths] The Smart Detector image path. By default this is not populated, unless it's specified in expandDetector
  /// [name] The Smart Detector name.
  /// [parameterDefinitions] The Smart Detector parameters definitions.'
  /// [parameters] The detector's parameters.'
  /// [supportedCadences] The Smart Detector supported cadences.
  /// [supportedResourceTypes] The Smart Detector supported resource types.
  DetectorResponse({
    required this.description,
    required this.id,
    required this.imagePaths,
    required this.name,
    required this.parameterDefinitions,
    this.parameters,
    required this.supportedCadences,
    required this.supportedResourceTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'id': id,
      'imagePaths': imagePaths,
      'name': name,
      'parameterDefinitions': pulumi.Input.mapInputValue<List<DetectorParameterDefinitionResponse>, List<Map<String, dynamic>>>(parameterDefinitions, (value) => pulumi.Input.encodeList<DetectorParameterDefinitionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parameters': ?parameters,
      'supportedCadences': supportedCadences,
      'supportedResourceTypes': supportedResourceTypes,
    };
  }

  factory DetectorResponse.fromMap(Map<String, dynamic> map) {
    return DetectorResponse(
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      imagePaths: pulumi.Input.fromValue((map['imagePaths'] as List).cast<String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      parameterDefinitions: pulumi.Input.fromValue(pulumi.Input.decodeList<DetectorParameterDefinitionResponse>(map['parameterDefinitions']!, (value) => DetectorParameterDefinitionResponse.fromMap((value as Map).cast<String, dynamic>()))),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      supportedCadences: pulumi.Input.fromValue((map['supportedCadences'] as List).cast<int>()),
      supportedResourceTypes: pulumi.Input.fromValue((map['supportedResourceTypes'] as List).cast<String>()),
    );
  }
}

