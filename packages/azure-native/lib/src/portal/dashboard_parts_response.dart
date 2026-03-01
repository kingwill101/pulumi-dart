// ignore_for_file: unused_element, unnecessary_cast

import 'dashboard_part_metadata_response.dart';
import 'dashboard_parts_position_response.dart';

/// A dashboard part.
class DashboardPartsResponse {
  /// The dashboard's part metadata.
  final DashboardPartMetadataResponse? metadata;
  /// The dashboard's part position.
  final DashboardPartsPositionResponse position;

  /// Creates a new [DashboardPartsResponse].
  /// [metadata] The dashboard's part metadata.
  /// [position] The dashboard's part position.
  DashboardPartsResponse({
    this.metadata,
    required this.position,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'position': position.toMap(),
    };
  }

  factory DashboardPartsResponse.fromMap(Map<String, dynamic> map) {
    return DashboardPartsResponse(
      metadata: map['metadata'] == null ? null : DashboardPartMetadataResponse.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      position: DashboardPartsPositionResponse.fromMap((map['position'] as Map).cast<String, dynamic>()),
    );
  }
}

