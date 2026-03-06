// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'regional_sharing_status_response.dart';

/// Sharing status of current gallery.
class SharingStatusResponse {
  /// Aggregated sharing state of current gallery.
  final pulumi.Input<String> aggregatedState;
  /// Summary of all regional sharing status.
  final pulumi.Input<List<RegionalSharingStatusResponse>>? summary;

  /// Creates a new [SharingStatusResponse].
  /// [aggregatedState] Aggregated sharing state of current gallery.
  /// [summary] Summary of all regional sharing status.
  const SharingStatusResponse({
    required this.aggregatedState,
    this.summary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregatedState': aggregatedState,
      'summary': ?pulumi.Input.mapOptionalInputValue<List<RegionalSharingStatusResponse>, List<Map<String, dynamic>>>(summary, (value) => pulumi.Input.encodeList<RegionalSharingStatusResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SharingStatusResponse.fromMap(Map<String, dynamic> map) {
    return SharingStatusResponse(
      aggregatedState: pulumi.Input.fromValue(map['aggregatedState'] as String),
      summary: (() { final guardedValue = map['summary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionalSharingStatusResponse>(guardedValue, (value) => RegionalSharingStatusResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

