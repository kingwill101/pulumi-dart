// ignore_for_file: unused_element, unnecessary_cast


/// Stats of the synchronization.
class SyncStatsResponse {
  /// Count of catalog items added during synchronization.
  final int added;
  /// Count of catalog items removed during synchronization.
  final int removed;
  /// Indicates catalog item types that were synced.
  final List<String>? syncedCatalogItemTypes;
  /// Count of synchronization errors that occured during synchronization.
  final int synchronizationErrors;
  /// Count of catalog items that were unchanged during synchronization.
  final int unchanged;
  /// Count of catalog items updated during synchronization.
  final int updated;
  /// Count of catalog items that had validation errors during synchronization.
  final int validationErrors;

  /// Creates a new [SyncStatsResponse].
  /// [added] Count of catalog items added during synchronization.
  /// [removed] Count of catalog items removed during synchronization.
  /// [syncedCatalogItemTypes] Indicates catalog item types that were synced.
  /// [synchronizationErrors] Count of synchronization errors that occured during synchronization.
  /// [unchanged] Count of catalog items that were unchanged during synchronization.
  /// [updated] Count of catalog items updated during synchronization.
  /// [validationErrors] Count of catalog items that had validation errors during synchronization.
  SyncStatsResponse({
    required this.added,
    required this.removed,
    this.syncedCatalogItemTypes,
    required this.synchronizationErrors,
    required this.unchanged,
    required this.updated,
    required this.validationErrors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'added': added,
      'removed': removed,
      'syncedCatalogItemTypes': ?syncedCatalogItemTypes,
      'synchronizationErrors': synchronizationErrors,
      'unchanged': unchanged,
      'updated': updated,
      'validationErrors': validationErrors,
    };
  }

  factory SyncStatsResponse.fromMap(Map<String, dynamic> map) {
    return SyncStatsResponse(
      added: map['added'] as int,
      removed: map['removed'] as int,
      syncedCatalogItemTypes: map['syncedCatalogItemTypes'] == null ? null : (map['syncedCatalogItemTypes'] as List).cast<String>(),
      synchronizationErrors: map['synchronizationErrors'] as int,
      unchanged: map['unchanged'] as int,
      updated: map['updated'] as int,
      validationErrors: map['validationErrors'] as int,
    );
  }
}

