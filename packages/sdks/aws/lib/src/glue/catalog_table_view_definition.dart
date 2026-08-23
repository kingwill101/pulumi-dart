// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_table_view_definition_representation.dart';

class CatalogTableViewDefinition {
  /// Definer of a view in SQL.
  final pulumi.Input<String>? definer;
  /// You can set this flag as true to instruct the engine not to push user-provided operations into the logical plan of the view during query planning. However, setting this flag does not guarantee that the engine will comply. Refer to the engine's documentation to understand the guarantees provided, if any.
  final pulumi.Input<bool>? isProtected;
  /// Type of the materialized view's last refresh. Valid values: `Full`, `Incremental`.
  final pulumi.Input<String>? lastRefreshType;
  /// Auto refresh interval in seconds for the materialized view.
  final pulumi.Input<int>? refreshSeconds;
  /// List of structures that contains the dialect of the view, and the query that defines the view. See `representations` below.
  final pulumi.Input<List<CatalogTableViewDefinitionRepresentation>>? representations;
  /// List of the Apache Iceberg table versions referenced by the materialized view.
  final pulumi.Input<List<int>>? subObjectVersionIds;
  /// List of base table ARNs that make up the view.
  final pulumi.Input<List<String>>? subObjects;
  /// ID value that identifies this view's version. For materialized views, the version ID is the Apache Iceberg table's snapshot ID.
  final pulumi.Input<int>? viewVersionId;
  /// Version ID of the Apache Iceberg table.
  final pulumi.Input<String>? viewVersionToken;

  /// Creates a new [CatalogTableViewDefinition].
  /// [definer] Definer of a view in SQL.
  /// [isProtected] You can set this flag as true to instruct the engine not to push user-provided operations into the logical plan of the view during query planning. However, setting this flag does not guarantee that the engine will comply. Refer to the engine's documentation to understand the guarantees provided, if any.
  /// [lastRefreshType] Type of the materialized view's last refresh. Valid values: `Full`, `Incremental`.
  /// [refreshSeconds] Auto refresh interval in seconds for the materialized view.
  /// [representations] List of structures that contains the dialect of the view, and the query that defines the view. See `representations` below.
  /// [subObjectVersionIds] List of the Apache Iceberg table versions referenced by the materialized view.
  /// [subObjects] List of base table ARNs that make up the view.
  /// [viewVersionId] ID value that identifies this view's version. For materialized views, the version ID is the Apache Iceberg table's snapshot ID.
  /// [viewVersionToken] Version ID of the Apache Iceberg table.
  const CatalogTableViewDefinition({
    this.definer,
    this.isProtected,
    this.lastRefreshType,
    this.refreshSeconds,
    this.representations,
    this.subObjectVersionIds,
    this.subObjects,
    this.viewVersionId,
    this.viewVersionToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definer': ?definer,
      'isProtected': ?isProtected,
      'lastRefreshType': ?lastRefreshType,
      'refreshSeconds': ?refreshSeconds,
      'representations': ?pulumi.Input.mapOptionalInputValue<List<CatalogTableViewDefinitionRepresentation>, List<Map<String, dynamic>>>(representations, (value) => pulumi.Input.encodeList<CatalogTableViewDefinitionRepresentation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subObjectVersionIds': ?subObjectVersionIds,
      'subObjects': ?subObjects,
      'viewVersionId': ?viewVersionId,
      'viewVersionToken': ?viewVersionToken,
    };
  }

  factory CatalogTableViewDefinition.fromMap(Map<String, dynamic> map) {
    return CatalogTableViewDefinition(
      definer: (() { final guardedValue = map['definer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isProtected: (() { final guardedValue = map['isProtected']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lastRefreshType: (() { final guardedValue = map['lastRefreshType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      refreshSeconds: (() { final guardedValue = map['refreshSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      representations: (() { final guardedValue = map['representations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CatalogTableViewDefinitionRepresentation>(guardedValue, (value) => CatalogTableViewDefinitionRepresentation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      subObjectVersionIds: (() { final guardedValue = map['subObjectVersionIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      subObjects: (() { final guardedValue = map['subObjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      viewVersionId: (() { final guardedValue = map['viewVersionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      viewVersionToken: (() { final guardedValue = map['viewVersionToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
