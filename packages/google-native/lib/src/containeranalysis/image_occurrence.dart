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

  /// Creates a new [ImageOccurrence].
  /// [fingerprint] The fingerprint of the derived image.
  /// [layerInfo] This contains layer-specific metadata, if populated it has length "distance" and is ordered with [distance] being the layer immediately following the base image and [1] being the final layer.
  ImageOccurrence({required this.fingerprint, this.layerInfo});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fingerprint': fingerprint.toMap(),
      'layerInfo': ?layerInfo == null
          ? null
          : pulumi.Input.encodeList<Layer, Map<String, dynamic>>(
              layerInfo!,
              (value) => value.toMap(),
            ),
    };
  }

  factory ImageOccurrence.fromMap(Map<String, dynamic> map) {
    return ImageOccurrence(
      fingerprint: Fingerprint.fromMap(
        (map['fingerprint'] as Map).cast<String, dynamic>(),
      ),
      layerInfo: map['layerInfo'] == null
          ? null
          : pulumi.Input.decodeList<Layer>(
              map['layerInfo'],
              (value) => Layer.fromMap((value as Map).cast<String, dynamic>()),
            ),
    );
  }
}
