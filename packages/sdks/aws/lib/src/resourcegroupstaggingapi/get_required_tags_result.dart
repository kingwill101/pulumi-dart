// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_required_tags_required_tag.dart';

/// Result data returned by getRequiredTags.
class GetRequiredTagsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;
  /// List of required tag configurations. See `required_tags` below.
  final List<GetRequiredTagsRequiredTag> requiredTags;

  /// Creates a new [GetRequiredTagsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  /// [requiredTags] List of required tag configurations. See `required_tags` below.
  GetRequiredTagsResult({
    required this.id,
    required this.region,
    required this.requiredTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'region': region,
      'requiredTags': pulumi.Input.encodeList<GetRequiredTagsRequiredTag, Map<String, dynamic>>(requiredTags, (value) => value.toMap()),
    };
  }

  factory GetRequiredTagsResult.fromMap(Map<String, dynamic> map) {
    return GetRequiredTagsResult(
      id: map['id'] as String,
      region: map['region'] as String,
      requiredTags: pulumi.Input.decodeList<GetRequiredTagsRequiredTag>(map['requiredTags']!, (value) => GetRequiredTagsRequiredTag.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

