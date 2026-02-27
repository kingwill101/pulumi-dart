// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'fingerprint_response.dart';
import 'layer_response.dart';

/// Details of the derived image portion of the DockerImage relationship. This image would be produced from a Dockerfile with FROM .
class ImageOccurrenceResponse {
  /// This contains the base image URL for the derived image occurrence.
  final String baseResourceUrl;

  /// The number of layers by which this image differs from the associated image basis.
  final int distance;

  /// The fingerprint of the derived image.
  final FingerprintResponse fingerprint;

  /// This contains layer-specific metadata, if populated it has length "distance" and is ordered with [distance] being the layer immediately following the base image and [1] being the final layer.
  final List<LayerResponse> layerInfo;

  ImageOccurrenceResponse({
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
    map['layerInfo'] = Input.encodeList<LayerResponse, Map<String, dynamic>>(
        layerInfo, (value) => value.toMap());
    return map;
  }

  factory ImageOccurrenceResponse.fromMap(Map<String, dynamic> map) {
    return ImageOccurrenceResponse(
      baseResourceUrl: map['baseResourceUrl'] as String,
      distance: map['distance'] as int,
      fingerprint: FingerprintResponse.fromMap(
          (map['fingerprint'] as Map).cast<String, dynamic>()),
      layerInfo: Input.decodeList<LayerResponse>(
          map['layerInfo'],
          (value) =>
              LayerResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
