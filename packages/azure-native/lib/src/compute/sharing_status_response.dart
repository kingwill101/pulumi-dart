// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'regional_sharing_status_response.dart';

/// Sharing status of current gallery.
class SharingStatusResponse {
  /// Aggregated sharing state of current gallery.
  final String aggregatedState;
  /// Summary of all regional sharing status.
  final List<RegionalSharingStatusResponse>? summary;

  /// Creates a new [SharingStatusResponse].
  /// [aggregatedState] Aggregated sharing state of current gallery.
  /// [summary] Summary of all regional sharing status.
  SharingStatusResponse({
    required this.aggregatedState,
    this.summary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregatedState': aggregatedState,
      'summary': ?summary == null ? null : pulumi.Input.encodeList<RegionalSharingStatusResponse, Map<String, dynamic>>(summary!, (value) => value.toMap()),
    };
  }

  factory SharingStatusResponse.fromMap(Map<String, dynamic> map) {
    return SharingStatusResponse(
      aggregatedState: map['aggregatedState'] as String,
      summary: map['summary'] == null ? null : pulumi.Input.decodeList<RegionalSharingStatusResponse>(map['summary'], (value) => RegionalSharingStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

