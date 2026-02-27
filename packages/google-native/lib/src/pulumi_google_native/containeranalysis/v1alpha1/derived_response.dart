// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fingerprint_response_containeranalysis_v1alpha1.dart';
import 'layer_response_containeranalysis_v1alpha1.dart';

/// Derived describes the derived image portion (Occurrence) of the DockerImage relationship. This image would be produced from a Dockerfile with FROM .
class DerivedResponse {
  /// This contains the base image URL for the derived image occurrence.
  final String baseResourceUrl;

  /// The number of layers by which this image differs from the associated image basis.
  final int distance;

  /// The fingerprint of the derived image.
  final FingerprintResponseContaineranalysisV1alpha1 fingerprint;

  /// This contains layer-specific metadata, if populated it has length "distance" and is ordered with [distance] being the layer immediately following the base image and [1] being the final layer.
  final List<LayerResponseContaineranalysisV1alpha1> layerInfo;

  DerivedResponse({
    required this.baseResourceUrl,
    required this.distance,
    required this.fingerprint,
    required this.layerInfo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['baseResourceUrl'] = baseResourceUrl;
    map['distance'] = distance;
    map['fingerprint'] = fingerprint.toMap();
    map['layerInfo'] = pulumi.Input.encodeList<
        LayerResponseContaineranalysisV1alpha1,
        Map<String, dynamic>>(layerInfo, (value) => value.toMap());
    return map;
  }

  factory DerivedResponse.fromMap(Map<String, dynamic> map) {
    return DerivedResponse(
      baseResourceUrl: map['baseResourceUrl'] as String,
      distance: map['distance'] as int,
      fingerprint: FingerprintResponseContaineranalysisV1alpha1.fromMap(
          (map['fingerprint'] as Map).cast<String, dynamic>()),
      layerInfo:
          pulumi.Input.decodeList<LayerResponseContaineranalysisV1alpha1>(
              map['layerInfo'],
              (value) => LayerResponseContaineranalysisV1alpha1.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
