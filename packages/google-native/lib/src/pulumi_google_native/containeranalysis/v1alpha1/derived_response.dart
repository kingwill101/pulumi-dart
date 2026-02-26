// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'fingerprint_response2.dart';
import 'layer_response2.dart';

/// Derived describes the derived image portion (Occurrence) of the DockerImage relationship. This image would be produced from a Dockerfile with FROM .
class DerivedResponse {
  /// This contains the base image URL for the derived image occurrence.
  final String baseResourceUrl;

  /// The number of layers by which this image differs from the associated image basis.
  final int distance;

  /// The fingerprint of the derived image.
  final FingerprintResponse2 fingerprint;

  /// This contains layer-specific metadata, if populated it has length "distance" and is ordered with [distance] being the layer immediately following the base image and [1] being the final layer.
  final List<LayerResponse2> layerInfo;

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
    map['layerInfo'] = Input.encodeList<LayerResponse2, Map<String, dynamic>>(
        layerInfo, (value) => value.toMap());
    return map;
  }

  factory DerivedResponse.fromMap(Map<String, dynamic> map) {
    return DerivedResponse(
      baseResourceUrl: map['baseResourceUrl'] as String,
      distance: map['distance'] as int,
      fingerprint: FingerprintResponse2.fromMap(
          (map['fingerprint'] as Map).cast<String, dynamic>()),
      layerInfo: Input.decodeList<LayerResponse2>(
          map['layerInfo'],
          (value) =>
              LayerResponse2.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
