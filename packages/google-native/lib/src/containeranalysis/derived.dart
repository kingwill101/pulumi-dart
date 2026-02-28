// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fingerprint_containeranalysis_v1alpha1.dart';
import 'layer_containeranalysis_v1alpha1.dart';

/// Derived describes the derived image portion (Occurrence) of the DockerImage relationship. This image would be produced from a Dockerfile with FROM .
class Derived {
  /// The fingerprint of the derived image.
  final FingerprintContaineranalysisV1alpha1? fingerprint;

  /// This contains layer-specific metadata, if populated it has length "distance" and is ordered with [distance] being the layer immediately following the base image and [1] being the final layer.
  final List<LayerContaineranalysisV1alpha1>? layerInfo;

  /// Creates a new [Derived].
  /// [fingerprint] The fingerprint of the derived image.
  /// [layerInfo] This contains layer-specific metadata, if populated it has length "distance" and is ordered with [distance] being the layer immediately following the base image and [1] being the final layer.
  Derived({
    this.fingerprint,
    this.layerInfo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fingerprintValue = fingerprint;
    if (fingerprintValue != null) {
      map['fingerprint'] = fingerprintValue.toMap();
    }
    final layerInfoValue = layerInfo;
    if (layerInfoValue != null) {
      map['layerInfo'] = pulumi.Input.encodeList<LayerContaineranalysisV1alpha1,
          Map<String, dynamic>>(layerInfoValue, (value) => value.toMap());
    }
    return map;
  }

  factory Derived.fromMap(Map<String, dynamic> map) {
    return Derived(
      fingerprint: map['fingerprint'] == null
          ? null
          : FingerprintContaineranalysisV1alpha1.fromMap(
              (map['fingerprint'] as Map).cast<String, dynamic>()),
      layerInfo: map['layerInfo'] == null
          ? null
          : pulumi.Input.decodeList<LayerContaineranalysisV1alpha1>(
              map['layerInfo'],
              (value) => LayerContaineranalysisV1alpha1.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
