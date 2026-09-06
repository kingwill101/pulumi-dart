// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_error_details_response.dart';

/// Result data returned by getDevCenterCatalogImageDefinitionErrorDetails.
class GetDevCenterCatalogImageDefinitionErrorDetailsResult {
  /// Errors associated with resources synchronized from the catalog.
  final List<CatalogErrorDetailsResponse>? errors;

  /// Creates a new [GetDevCenterCatalogImageDefinitionErrorDetailsResult].
  /// [errors] Errors associated with resources synchronized from the catalog.
  const GetDevCenterCatalogImageDefinitionErrorDetailsResult({
    this.errors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errors': ?(() { final guardedValue = errors; if (guardedValue == null) return null; return pulumi.Input.encodeList<CatalogErrorDetailsResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetDevCenterCatalogImageDefinitionErrorDetailsResult.fromMap(Map<String, dynamic> map) {
    return GetDevCenterCatalogImageDefinitionErrorDetailsResult(
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.decodeList<CatalogErrorDetailsResponse>(guardedValue, (value) => CatalogErrorDetailsResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
