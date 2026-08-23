// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'associated_identity_response.dart';
import 'metrics_to_track_response.dart';

/// Metrics properties.
class MetricsPropertiesOfDrillResponse {
  /// Identity to use for metrics operations.
  final pulumi.Input<AssociatedIdentityResponse> identity;
  /// Metrics associated with this Drill. These will be tracked through the Drill Run.
  final pulumi.Input<List<MetricsToTrackResponse>> metricsToTrack;

  /// Creates a new [MetricsPropertiesOfDrillResponse].
  /// [identity] Identity to use for metrics operations.
  /// [metricsToTrack] Metrics associated with this Drill. These will be tracked through the Drill Run.
  const MetricsPropertiesOfDrillResponse({
    required this.identity,
    required this.metricsToTrack,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': pulumi.Input.mapInputValue<AssociatedIdentityResponse, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'metricsToTrack': pulumi.Input.mapInputValue<List<MetricsToTrackResponse>, List<Map<String, dynamic>>>(metricsToTrack, (value) => pulumi.Input.encodeList<MetricsToTrackResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MetricsPropertiesOfDrillResponse.fromMap(Map<String, dynamic> map) {
    return MetricsPropertiesOfDrillResponse(
      identity: pulumi.Input.fromValue(AssociatedIdentityResponse.fromMap((map['identity']! as Map).cast<String, dynamic>())),
      metricsToTrack: pulumi.Input.fromValue(pulumi.Input.decodeList<MetricsToTrackResponse>(map['metricsToTrack']!, (value) => MetricsToTrackResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
