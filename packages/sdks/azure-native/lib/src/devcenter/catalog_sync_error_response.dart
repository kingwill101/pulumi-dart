// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_error_details_response.dart';

/// An individual synchronization error.
class CatalogSyncErrorResponse {
  /// Errors associated with the file.
  final List<CatalogErrorDetailsResponse> errorDetails;
  /// The path of the file the error is associated with.
  final String path;

  /// Creates a new [CatalogSyncErrorResponse].
  /// [errorDetails] Errors associated with the file.
  /// [path] The path of the file the error is associated with.
  CatalogSyncErrorResponse({
    required this.errorDetails,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorDetails': pulumi.Input.encodeList<CatalogErrorDetailsResponse, Map<String, dynamic>>(errorDetails, (value) => value.toMap()),
      'path': path,
    };
  }

  factory CatalogSyncErrorResponse.fromMap(Map<String, dynamic> map) {
    return CatalogSyncErrorResponse(
      errorDetails: pulumi.Input.decodeList<CatalogErrorDetailsResponse>(map['errorDetails'], (value) => CatalogErrorDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      path: map['path'] as String,
    );
  }
}

