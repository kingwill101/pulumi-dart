// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingestion_sources_properties_format_response.dart';

/// Ingestion Policy properties.
class IngestionPolicyPropertiesFormatResponse {
  /// Ingestion Sources.
  final List<IngestionSourcesPropertiesFormatResponse>? ingestionSources;
  /// The ingestion type.
  final String? ingestionType;

  /// Creates a new [IngestionPolicyPropertiesFormatResponse].
  /// [ingestionSources] Ingestion Sources.
  /// [ingestionType] The ingestion type.
  IngestionPolicyPropertiesFormatResponse({
    this.ingestionSources,
    this.ingestionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ingestionSources': ?ingestionSources == null ? null : pulumi.Input.encodeList<IngestionSourcesPropertiesFormatResponse, Map<String, dynamic>>(ingestionSources!, (value) => value.toMap()),
      'ingestionType': ?ingestionType,
    };
  }

  factory IngestionPolicyPropertiesFormatResponse.fromMap(Map<String, dynamic> map) {
    return IngestionPolicyPropertiesFormatResponse(
      ingestionSources: map['ingestionSources'] == null ? null : pulumi.Input.decodeList<IngestionSourcesPropertiesFormatResponse>(map['ingestionSources'], (value) => IngestionSourcesPropertiesFormatResponse.fromMap((value as Map).cast<String, dynamic>())),
      ingestionType: map['ingestionType'] == null ? null : map['ingestionType'] as String,
    );
  }
}

