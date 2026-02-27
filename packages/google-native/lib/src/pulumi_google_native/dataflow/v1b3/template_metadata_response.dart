// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'parameter_metadata_response.dart';

/// Metadata describing a template.
class TemplateMetadataResponse {
  /// Optional. A description of the template.
  final String description;

  /// The name of the template.
  final String name;

  /// The parameters for the template.
  final List<ParameterMetadataResponse> parameters;

  TemplateMetadataResponse({
    required this.description,
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['name'] = name;
    map['parameters'] =
        Input.encodeList<ParameterMetadataResponse, Map<String, dynamic>>(
            parameters, (value) => value.toMap());
    return map;
  }

  factory TemplateMetadataResponse.fromMap(Map<String, dynamic> map) {
    return TemplateMetadataResponse(
      description: map['description'] as String,
      name: map['name'] as String,
      parameters: Input.decodeList<ParameterMetadataResponse>(
          map['parameters'],
          (value) => ParameterMetadataResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
