// ignore_for_file: unused_element, unnecessary_cast

import 'elastic_san_volume_properties_response.dart';

/// Properties of the volume
class VolumeTypeResponse {
  /// Properties of the ElasticSAN iSCSI target
  final ElasticSanVolumePropertiesResponse elasticSan;

  /// Creates a new [VolumeTypeResponse].
  /// [elasticSan] Properties of the ElasticSAN iSCSI target
  VolumeTypeResponse({
    required this.elasticSan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elasticSan': elasticSan.toMap(),
    };
  }

  factory VolumeTypeResponse.fromMap(Map<String, dynamic> map) {
    return VolumeTypeResponse(
      elasticSan: ElasticSanVolumePropertiesResponse.fromMap((map['elasticSan'] as Map).cast<String, dynamic>()),
    );
  }
}

