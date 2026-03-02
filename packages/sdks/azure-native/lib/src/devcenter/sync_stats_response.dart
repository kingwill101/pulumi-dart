// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Stats of the synchronization.
class SyncStatsResponse {
  /// Count of catalog items added during synchronization.
  final pulumi.Input<int> added;
  /// Count of catalog items removed during synchronization.
  final pulumi.Input<int> removed;
  /// Indicates catalog item types that were synced.
  final pulumi.Input<List<String>>? syncedCatalogItemTypes;
  /// Count of synchronization errors that occured during synchronization.
  final pulumi.Input<int> synchronizationErrors;
  /// Count of catalog items that were unchanged during synchronization.
  final pulumi.Input<int> unchanged;
  /// Count of catalog items updated during synchronization.
  final pulumi.Input<int> updated;
  /// Count of catalog items that had validation errors during synchronization.
  final pulumi.Input<int> validationErrors;

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
      added: (map['added'] as int).input(),
      removed: (map['removed'] as int).input(),
      syncedCatalogItemTypes: map['syncedCatalogItemTypes'] == null ? null : ((map['syncedCatalogItemTypes'] as List).cast<String>()).input(),
      synchronizationErrors: (map['synchronizationErrors'] as int).input(),
      unchanged: (map['unchanged'] as int).input(),
      updated: (map['updated'] as int).input(),
      validationErrors: (map['validationErrors'] as int).input(),
    );
  }
}

