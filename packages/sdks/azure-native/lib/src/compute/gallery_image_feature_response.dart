// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A feature for gallery image.
class GalleryImageFeatureResponse {
  /// The name of the gallery image feature.
  final pulumi.Input<String>? name;
  /// The minimum gallery image version which supports this feature.
  final pulumi.Input<String>? startsAtVersion;
  /// The value of the gallery image feature.
  final pulumi.Input<String>? value;

  /// Creates a new [GalleryImageFeatureResponse].
  /// [name] The name of the gallery image feature.
  /// [startsAtVersion] The minimum gallery image version which supports this feature.
  /// [value] The value of the gallery image feature.
  GalleryImageFeatureResponse({
    this.name,
    this.startsAtVersion,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'startsAtVersion': ?startsAtVersion,
      'value': ?value,
    };
  }

  factory GalleryImageFeatureResponse.fromMap(Map<String, dynamic> map) {
    return GalleryImageFeatureResponse(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      startsAtVersion: map['startsAtVersion'] == null ? null : (map['startsAtVersion']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

