// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'detector_parameter_definition_response.dart';

/// The detector information. By default this is not populated, unless it's specified in expandDetector
class DetectorResponse {
  /// The Smart Detector description.
  final String description;
  /// The detector id.
  final String id;
  /// The Smart Detector image path. By default this is not populated, unless it's specified in expandDetector
  final List<String> imagePaths;
  /// The Smart Detector name.
  final String name;
  /// The Smart Detector parameters definitions.'
  final List<DetectorParameterDefinitionResponse> parameterDefinitions;
  /// The detector's parameters.'
  final Map<String, dynamic>? parameters;
  /// The Smart Detector supported cadences.
  final List<int> supportedCadences;
  /// The Smart Detector supported resource types.
  final List<String> supportedResourceTypes;

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
      'parameterDefinitions': pulumi.Input.encodeList<DetectorParameterDefinitionResponse, Map<String, dynamic>>(parameterDefinitions, (value) => value.toMap()),
      'parameters': ?parameters,
      'supportedCadences': supportedCadences,
      'supportedResourceTypes': supportedResourceTypes,
    };
  }

  factory DetectorResponse.fromMap(Map<String, dynamic> map) {
    return DetectorResponse(
      description: map['description'] as String,
      id: map['id'] as String,
      imagePaths: (map['imagePaths'] as List).cast<String>(),
      name: map['name'] as String,
      parameterDefinitions: pulumi.Input.decodeList<DetectorParameterDefinitionResponse>(map['parameterDefinitions'], (value) => DetectorParameterDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())),
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, dynamic>(),
      supportedCadences: (map['supportedCadences'] as List).cast<int>(),
      supportedResourceTypes: (map['supportedResourceTypes'] as List).cast<String>(),
    );
  }
}

