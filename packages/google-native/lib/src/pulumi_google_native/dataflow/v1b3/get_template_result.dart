// ignore_for_file: unused_element, unnecessary_cast

import 'runtime_metadata_response.dart';
import 'status_response13.dart';
import 'template_metadata_response.dart';

/// Result data returned by getTemplate.
class GetTemplateResult {
  /// The template metadata describing the template name, available parameters, etc.
  final TemplateMetadataResponse metadata;

  /// Describes the runtime metadata with SDKInfo and available parameters.
  final RuntimeMetadataResponse runtimeMetadata;

  /// The status of the get template request. Any problems with the request will be indicated in the error_details.
  final StatusResponse13 status;

  /// Template Type.
  final String templateType;

  GetTemplateResult({
    required this.metadata,
    required this.runtimeMetadata,
    required this.status,
    required this.templateType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metadata'] = metadata.toMap();
    map['runtimeMetadata'] = runtimeMetadata.toMap();
    map['status'] = status.toMap();
    map['templateType'] = templateType;
    return map;
  }

  factory GetTemplateResult.fromMap(Map<String, dynamic> map) {
    return GetTemplateResult(
      metadata: TemplateMetadataResponse.fromMap(
          (map['metadata'] as Map).cast<String, dynamic>()),
      runtimeMetadata: RuntimeMetadataResponse.fromMap(
          (map['runtimeMetadata'] as Map).cast<String, dynamic>()),
      status: StatusResponse13.fromMap(
          (map['status'] as Map).cast<String, dynamic>()),
      templateType: map['templateType'] as String,
    );
  }
}
