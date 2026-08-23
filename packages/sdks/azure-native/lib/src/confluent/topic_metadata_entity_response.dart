// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata of the data record
class TopicMetadataEntityResponse {
  /// Resource name of the record
  final pulumi.Input<String>? resourceName;
  /// Self lookup url
  final pulumi.Input<String>? self;

  /// Creates a new [TopicMetadataEntityResponse].
  /// [resourceName] Resource name of the record
  /// [self] Self lookup url
  const TopicMetadataEntityResponse({
    this.resourceName,
    this.self,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceName': ?resourceName,
      'self': ?self,
    };
  }

  factory TopicMetadataEntityResponse.fromMap(Map<String, dynamic> map) {
    return TopicMetadataEntityResponse(
      resourceName: (() { final guardedValue = map['resourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      self: (() { final guardedValue = map['self']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
