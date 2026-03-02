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
  TopicMetadataEntityResponse({
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
      resourceName: map['resourceName'] == null ? null : (map['resourceName']! as String).input(),
      self: map['self'] == null ? null : (map['self']! as String).input(),
    );
  }
}

