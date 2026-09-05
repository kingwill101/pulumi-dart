// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketObjectv2OverrideProviderDefaultTags {
  /// Map of tags to override the provider-level `defaultTags`. Must be an empty map to suppress all provider-level `defaultTags`.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [BucketObjectv2OverrideProviderDefaultTags].
  /// [tags] Map of tags to override the provider-level `defaultTags`. Must be an empty map to suppress all provider-level `defaultTags`.
  const BucketObjectv2OverrideProviderDefaultTags({
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tags': ?tags,
    };
  }

  factory BucketObjectv2OverrideProviderDefaultTags.fromMap(Map<String, dynamic> map) {
    return BucketObjectv2OverrideProviderDefaultTags(
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
