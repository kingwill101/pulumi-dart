// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fingerprint.dart';
import 'layer.dart';

/// Details of the derived image portion of the DockerImage relationship. This image would be produced from a Dockerfile with FROM .
class ImageOccurrence {
  /// The fingerprint of the derived image.
  final Fingerprint fingerprint;

  /// This contains layer-specific metadata, if populated it has length "distance" and is ordered with [distance] being the layer immediately following the base image and [1] being the final layer.
  final List<Layer>? layerInfo;

  ImageOccurrence({
    required this.fingerprint,
    this.layerInfo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fingerprint'] = fingerprint.toMap();
    final layerInfoValue = layerInfo;
    if (layerInfoValue != null) {
      map['layerInfo'] = pulumi.Input.encodeList<Layer, Map<String, dynamic>>(
          layerInfoValue, (value) => value.toMap());
    }
    return map;
  }

  factory ImageOccurrence.fromMap(Map<String, dynamic> map) {
    return ImageOccurrence(
      fingerprint: Fingerprint.fromMap(
          (map['fingerprint'] as Map).cast<String, dynamic>()),
      layerInfo: map['layerInfo'] == null
          ? null
          : pulumi.Input.decodeList<Layer>(map['layerInfo'],
              (value) => Layer.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
