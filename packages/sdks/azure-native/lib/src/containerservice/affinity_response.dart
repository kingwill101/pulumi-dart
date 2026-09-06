// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_affinity_response.dart';

/// Affinity is a group of cluster affinity scheduling rules. More to be added.
class AffinityResponse {
  /// ClusterAffinity contains cluster affinity scheduling rules for the selected resources.
  final pulumi.Input<ClusterAffinityResponse?>? clusterAffinity;

  /// Creates a new [AffinityResponse].
  /// [clusterAffinity] ClusterAffinity contains cluster affinity scheduling rules for the selected resources.
  const AffinityResponse({
    this.clusterAffinity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterAffinity': ?pulumi.Input.mapOptionalInputValue<ClusterAffinityResponse, Map<String, dynamic>>(clusterAffinity, (value) => value.toMap()),
    };
  }

  factory AffinityResponse.fromMap(Map<String, dynamic> map) {
    return AffinityResponse(
      clusterAffinity: (() { final guardedValue = map['clusterAffinity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterAffinityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
