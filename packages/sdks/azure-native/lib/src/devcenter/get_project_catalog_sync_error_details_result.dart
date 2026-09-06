// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_conflict_error_response.dart';
import 'catalog_error_details_response.dart';
import 'catalog_sync_error_response.dart';

/// Result data returned by getProjectCatalogSyncErrorDetails.
class GetProjectCatalogSyncErrorDetailsResult {
  /// Catalog items that have conflicting names.
  final List<CatalogConflictErrorResponse>? conflicts;
  /// Errors that occured during synchronization.
  final List<CatalogSyncErrorResponse>? errors;
  /// Error information for the overall synchronization operation.
  final CatalogErrorDetailsResponse? operationError;

  /// Creates a new [GetProjectCatalogSyncErrorDetailsResult].
  /// [conflicts] Catalog items that have conflicting names.
  /// [errors] Errors that occured during synchronization.
  /// [operationError] Error information for the overall synchronization operation.
  const GetProjectCatalogSyncErrorDetailsResult({
    this.conflicts,
    this.errors,
    this.operationError,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conflicts': ?(() { final guardedValue = conflicts; if (guardedValue == null) return null; return pulumi.Input.encodeList<CatalogConflictErrorResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'errors': ?(() { final guardedValue = errors; if (guardedValue == null) return null; return pulumi.Input.encodeList<CatalogSyncErrorResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'operationError': ?operationError?.toMap(),
    };
  }

  factory GetProjectCatalogSyncErrorDetailsResult.fromMap(Map<String, dynamic> map) {
    return GetProjectCatalogSyncErrorDetailsResult(
      conflicts: (() { final guardedValue = map['conflicts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<CatalogConflictErrorResponse>(guardedValue, (value) => CatalogConflictErrorResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.decodeList<CatalogSyncErrorResponse>(guardedValue, (value) => CatalogSyncErrorResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      operationError: (() { final guardedValue = map['operationError']; if (guardedValue == null) return null; return CatalogErrorDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
