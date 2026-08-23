// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An Elastic SAN volume from Microsoft.ElasticSan provider
class ElasticSanVolumeResponse {
  /// Azure resource ID of the Elastic SAN Volume
  final pulumi.Input<String> targetId;

  /// Creates a new [ElasticSanVolumeResponse].
  /// [targetId] Azure resource ID of the Elastic SAN Volume
  const ElasticSanVolumeResponse({
    required this.targetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetId': targetId,
    };
  }

  factory ElasticSanVolumeResponse.fromMap(Map<String, dynamic> map) {
    return ElasticSanVolumeResponse(
      targetId: pulumi.Input.fromValue(map['targetId'] as String),
    );
  }
}
