// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_conflict_error_response.dart';
import 'catalog_error_details_response.dart';
import 'catalog_sync_error_response.dart';

/// Result data returned by getCatalogSyncErrorDetails.
class GetCatalogSyncErrorDetailsResult {
  /// Catalog items that have conflicting names.
  final List<CatalogConflictErrorResponse> conflicts;

  /// Errors that occured during synchronization.
  final List<CatalogSyncErrorResponse> errors;

  /// Error information for the overall synchronization operation.
  final CatalogErrorDetailsResponse operationError;

  /// Creates a new [GetCatalogSyncErrorDetailsResult].
  /// [conflicts] Catalog items that have conflicting names.
  /// [errors] Errors that occured during synchronization.
  /// [operationError] Error information for the overall synchronization operation.
  GetCatalogSyncErrorDetailsResult({
    required this.conflicts,
    required this.errors,
    required this.operationError,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conflicts':
          pulumi.Input.encodeList<
            CatalogConflictErrorResponse,
            Map<String, dynamic>
          >(conflicts, (value) => value.toMap()),
      'errors':
          pulumi.Input.encodeList<
            CatalogSyncErrorResponse,
            Map<String, dynamic>
          >(errors, (value) => value.toMap()),
      'operationError': operationError.toMap(),
    };
  }

  factory GetCatalogSyncErrorDetailsResult.fromMap(Map<String, dynamic> map) {
    return GetCatalogSyncErrorDetailsResult(
      conflicts: pulumi.Input.decodeList<CatalogConflictErrorResponse>(
        map['conflicts']!,
        (value) => CatalogConflictErrorResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      errors: pulumi.Input.decodeList<CatalogSyncErrorResponse>(
        map['errors']!,
        (value) => CatalogSyncErrorResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      operationError: CatalogErrorDetailsResponse.fromMap(
        (map['operationError']! as Map).cast<String, dynamic>(),
      ),
    );
  }
}
