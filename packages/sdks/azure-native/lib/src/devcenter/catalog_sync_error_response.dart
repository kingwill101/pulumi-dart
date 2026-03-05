// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_error_details_response.dart';

/// An individual synchronization error.
class CatalogSyncErrorResponse {
  /// Errors associated with the file.
  final pulumi.Input<List<CatalogErrorDetailsResponse>> errorDetails;
  /// The path of the file the error is associated with.
  final pulumi.Input<String> path;

  /// Creates a new [CatalogSyncErrorResponse].
  /// [errorDetails] Errors associated with the file.
  /// [path] The path of the file the error is associated with.
  CatalogSyncErrorResponse({
    required this.errorDetails,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorDetails': pulumi.Input.mapInputValue<List<CatalogErrorDetailsResponse>, List<Map<String, dynamic>>>(errorDetails, (value) => pulumi.Input.encodeList<CatalogErrorDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'path': path,
    };
  }

  factory CatalogSyncErrorResponse.fromMap(Map<String, dynamic> map) {
    return CatalogSyncErrorResponse(
      errorDetails: pulumi.Input.fromValue(pulumi.Input.decodeList<CatalogErrorDetailsResponse>(map['errorDetails']!, (value) => CatalogErrorDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))),
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}

