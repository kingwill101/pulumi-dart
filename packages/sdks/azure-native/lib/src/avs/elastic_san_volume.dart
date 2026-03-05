// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An Elastic SAN volume from Microsoft.ElasticSan provider
class ElasticSanVolume {
  /// Azure resource ID of the Elastic SAN Volume
  final pulumi.Input<String> targetId;

  /// Creates a new [ElasticSanVolume].
  /// [targetId] Azure resource ID of the Elastic SAN Volume
  ElasticSanVolume({
    required this.targetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetId': targetId,
    };
  }

  factory ElasticSanVolume.fromMap(Map<String, dynamic> map) {
    return ElasticSanVolume(
      targetId: pulumi.Input.fromValue(map['targetId'] as String),
    );
  }
}

