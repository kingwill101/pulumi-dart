// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fingerprint_containeranalysis_v1beta1.dart';
import 'layer_containeranalysis_v1beta1.dart';

/// Derived describes the derived image portion (Occurrence) of the DockerImage relationship. This image would be produced from a Dockerfile with FROM .
class DerivedContaineranalysisV1beta1 {
  /// The fingerprint of the derived image.
  final FingerprintContaineranalysisV1beta1 fingerprint;

  /// This contains layer-specific metadata, if populated it has length "distance" and is ordered with [distance] being the layer immediately following the base image and [1] being the final layer.
  final List<LayerContaineranalysisV1beta1>? layerInfo;

  /// Creates a new [DerivedContaineranalysisV1beta1].
  /// [fingerprint] The fingerprint of the derived image.
  /// [layerInfo] This contains layer-specific metadata, if populated it has length "distance" and is ordered with [distance] being the layer immediately following the base image and [1] being the final layer.
  DerivedContaineranalysisV1beta1({required this.fingerprint, this.layerInfo});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fingerprint': fingerprint.toMap(),
      'layerInfo': ?layerInfo == null
          ? null
          : pulumi.Input.encodeList<
              LayerContaineranalysisV1beta1,
              Map<String, dynamic>
            >(layerInfo!, (value) => value.toMap()),
    };
  }

  factory DerivedContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return DerivedContaineranalysisV1beta1(
      fingerprint: FingerprintContaineranalysisV1beta1.fromMap(
        (map['fingerprint'] as Map).cast<String, dynamic>(),
      ),
      layerInfo: map['layerInfo'] == null
          ? null
          : pulumi.Input.decodeList<LayerContaineranalysisV1beta1>(
              map['layerInfo'],
              (value) => LayerContaineranalysisV1beta1.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
