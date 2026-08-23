// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'associated_identity.dart';
import 'metrics_to_track.dart';

/// Metrics properties.
class MetricsPropertiesOfDrill {
  /// Identity to use for metrics operations.
  final pulumi.Input<AssociatedIdentity> identity;
  /// Metrics associated with this Drill. These will be tracked through the Drill Run.
  final pulumi.Input<List<MetricsToTrack>> metricsToTrack;

  /// Creates a new [MetricsPropertiesOfDrill].
  /// [identity] Identity to use for metrics operations.
  /// [metricsToTrack] Metrics associated with this Drill. These will be tracked through the Drill Run.
  const MetricsPropertiesOfDrill({
    required this.identity,
    required this.metricsToTrack,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': pulumi.Input.mapInputValue<AssociatedIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'metricsToTrack': pulumi.Input.mapInputValue<List<MetricsToTrack>, List<Map<String, dynamic>>>(metricsToTrack, (value) => pulumi.Input.encodeList<MetricsToTrack, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MetricsPropertiesOfDrill.fromMap(Map<String, dynamic> map) {
    return MetricsPropertiesOfDrill(
      identity: pulumi.Input.fromValue(AssociatedIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())),
      metricsToTrack: pulumi.Input.fromValue(pulumi.Input.decodeList<MetricsToTrack>(map['metricsToTrack']!, (value) => MetricsToTrack.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
