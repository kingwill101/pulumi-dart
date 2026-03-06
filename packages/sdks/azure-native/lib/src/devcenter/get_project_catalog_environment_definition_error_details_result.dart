// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_error_details_response.dart';

/// Result data returned by getProjectCatalogEnvironmentDefinitionErrorDetails.
class GetProjectCatalogEnvironmentDefinitionErrorDetailsResult {
  /// Errors associated with resources synchronized from the catalog.
  final List<CatalogErrorDetailsResponse> errors;

  /// Creates a new [GetProjectCatalogEnvironmentDefinitionErrorDetailsResult].
  /// [errors] Errors associated with resources synchronized from the catalog.
  const GetProjectCatalogEnvironmentDefinitionErrorDetailsResult({
    required this.errors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errors': pulumi.Input.encodeList<CatalogErrorDetailsResponse, Map<String, dynamic>>(errors, (value) => value.toMap()),
    };
  }

  factory GetProjectCatalogEnvironmentDefinitionErrorDetailsResult.fromMap(Map<String, dynamic> map) {
    return GetProjectCatalogEnvironmentDefinitionErrorDetailsResult(
      errors: pulumi.Input.decodeList<CatalogErrorDetailsResponse>(map['errors']!, (value) => CatalogErrorDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

