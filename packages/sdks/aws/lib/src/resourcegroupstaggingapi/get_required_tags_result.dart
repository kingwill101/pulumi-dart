// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_required_tags_required_tag.dart';

/// Result data returned by getRequiredTags.
class GetRequiredTagsResult {
  final String? region;
  /// List of required tag configurations. See `requiredTags` below.
  final List<GetRequiredTagsRequiredTag>? requiredTags;

  /// Creates a new [GetRequiredTagsResult].
  /// [region] Optional.
  /// [requiredTags] List of required tag configurations. See `requiredTags` below.
  const GetRequiredTagsResult({
    this.region,
    this.requiredTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'requiredTags': ?(() { final guardedValue = requiredTags; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRequiredTagsRequiredTag, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetRequiredTagsResult.fromMap(Map<String, dynamic> map) {
    return GetRequiredTagsResult(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      requiredTags: (() { final guardedValue = map['requiredTags']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRequiredTagsRequiredTag>(guardedValue, (value) => GetRequiredTagsRequiredTag.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
