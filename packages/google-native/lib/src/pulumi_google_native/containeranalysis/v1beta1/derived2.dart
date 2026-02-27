// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'fingerprint3.dart';
import 'layer3.dart';

/// Derived describes the derived image portion (Occurrence) of the DockerImage relationship. This image would be produced from a Dockerfile with FROM .
class Derived2 {
  /// The fingerprint of the derived image.
  final Fingerprint3 fingerprint;

  /// This contains layer-specific metadata, if populated it has length "distance" and is ordered with [distance] being the layer immediately following the base image and [1] being the final layer.
  final List<Layer3>? layerInfo;

  Derived2({
    required this.fingerprint,
    this.layerInfo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fingerprint'] = fingerprint.toMap();
    final layerInfoValue = layerInfo;
    if (layerInfoValue != null) {
      map['layerInfo'] = Input.encodeList<Layer3, Map<String, dynamic>>(
          layerInfoValue, (value) => value.toMap());
    }
    return map;
  }

  factory Derived2.fromMap(Map<String, dynamic> map) {
    return Derived2(
      fingerprint: Fingerprint3.fromMap(
          (map['fingerprint'] as Map).cast<String, dynamic>()),
      layerInfo: map['layerInfo'] == null
          ? null
          : Input.decodeList<Layer3>(
              map['layerInfo'],
              (value) =>
                  Layer3.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
