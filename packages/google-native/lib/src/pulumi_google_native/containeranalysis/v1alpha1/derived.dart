// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'fingerprint2.dart';
import 'layer2.dart';

/// Derived describes the derived image portion (Occurrence) of the DockerImage relationship. This image would be produced from a Dockerfile with FROM .
class Derived {
  /// The fingerprint of the derived image.
  final Fingerprint2? fingerprint;

  /// This contains layer-specific metadata, if populated it has length "distance" and is ordered with [distance] being the layer immediately following the base image and [1] being the final layer.
  final List<Layer2>? layerInfo;

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
      map['layerInfo'] = Input.encodeList<Layer2, Map<String, dynamic>>(
          layerInfoValue, (value) => value.toMap());
    }
    return map;
  }

  factory Derived.fromMap(Map<String, dynamic> map) {
    return Derived(
      fingerprint: map['fingerprint'] == null
          ? null
          : Fingerprint2.fromMap(
              (map['fingerprint'] as Map).cast<String, dynamic>()),
      layerInfo: map['layerInfo'] == null
          ? null
          : Input.decodeList<Layer2>(
              map['layerInfo'],
              (value) =>
                  Layer2.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
