// ignore_for_file: unused_element, unnecessary_cast

import 'dashboard_part_metadata.dart';
import 'dashboard_parts_position.dart';

/// A dashboard part.
class DashboardParts {
  /// The dashboard's part metadata.
  final DashboardPartMetadata? metadata;
  /// The dashboard's part position.
  final DashboardPartsPosition position;

  /// Creates a new [DashboardParts].
  /// [metadata] The dashboard's part metadata.
  /// [position] The dashboard's part position.
  DashboardParts({
    this.metadata,
    required this.position,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'position': position.toMap(),
    };
  }

  factory DashboardParts.fromMap(Map<String, dynamic> map) {
    return DashboardParts(
      metadata: map['metadata'] == null ? null : DashboardPartMetadata.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      position: DashboardPartsPosition.fromMap((map['position'] as Map).cast<String, dynamic>()),
    );
  }
}

