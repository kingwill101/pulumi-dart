// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fingerprint_response_containeranalysis_v1beta1.dart';
import 'layer_response_containeranalysis_v1beta1.dart';

/// Derived describes the derived image portion (Occurrence) of the DockerImage relationship. This image would be produced from a Dockerfile with FROM .
class DerivedResponseContaineranalysisV1beta1 {
  /// This contains the base image URL for the derived image occurrence.
  final String baseResourceUrl;

  /// The number of layers by which this image differs from the associated image basis.
  final int distance;

  /// The fingerprint of the derived image.
  final FingerprintResponseContaineranalysisV1beta1 fingerprint;

  /// This contains layer-specific metadata, if populated it has length "distance" and is ordered with [distance] being the layer immediately following the base image and [1] being the final layer.
  final List<LayerResponseContaineranalysisV1beta1> layerInfo;

  /// Creates a new [DerivedResponseContaineranalysisV1beta1].
  /// [baseResourceUrl] This contains the base image URL for the derived image occurrence.
  /// [distance] The number of layers by which this image differs from the associated image basis.
  /// [fingerprint] The fingerprint of the derived image.
  /// [layerInfo] This contains layer-specific metadata, if populated it has length "distance" and is ordered with [distance] being the layer immediately following the base image and [1] being the final layer.
  DerivedResponseContaineranalysisV1beta1({
    required this.baseResourceUrl,
    required this.distance,
    required this.fingerprint,
    required this.layerInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseResourceUrl': baseResourceUrl,
      'distance': distance,
      'fingerprint': fingerprint.toMap(),
      'layerInfo':
          pulumi.Input.encodeList<
            LayerResponseContaineranalysisV1beta1,
            Map<String, dynamic>
          >(layerInfo, (value) => value.toMap()),
    };
  }

  factory DerivedResponseContaineranalysisV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return DerivedResponseContaineranalysisV1beta1(
      baseResourceUrl: map['baseResourceUrl'] as String,
      distance: map['distance'] as int,
      fingerprint: FingerprintResponseContaineranalysisV1beta1.fromMap(
        (map['fingerprint'] as Map).cast<String, dynamic>(),
      ),
      layerInfo: pulumi.Input.decodeList<LayerResponseContaineranalysisV1beta1>(
        map['layerInfo'],
        (value) => LayerResponseContaineranalysisV1beta1.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
