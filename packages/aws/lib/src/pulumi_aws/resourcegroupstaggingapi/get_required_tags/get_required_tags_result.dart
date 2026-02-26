// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_required_tags_required_tag/get_required_tags_required_tag.dart';

/// Result data returned by getRequiredTags.
class GetRequiredTagsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  /// List of required tag configurations. See <span pulumi-lang-nodejs="`requiredTags`" pulumi-lang-dotnet="`RequiredTags`" pulumi-lang-go="`requiredTags`" pulumi-lang-python="`required_tags`" pulumi-lang-yaml="`requiredTags`" pulumi-lang-java="`requiredTags`">`required_tags`</span> below.
  final List<GetRequiredTagsRequiredTag> requiredTags;

  GetRequiredTagsResult({
    required this.id,
    required this.region,
    required this.requiredTags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['region'] = region;
    map['requiredTags'] =
        Input.encodeList<GetRequiredTagsRequiredTag, Map<String, dynamic>>(
            requiredTags, (value) => value.toMap());
    return map;
  }

  factory GetRequiredTagsResult.fromMap(Map<String, dynamic> map) {
    return GetRequiredTagsResult(
      id: map['id'] as String,
      region: map['region'] as String,
      requiredTags: Input.decodeList<GetRequiredTagsRequiredTag>(
          map['requiredTags'],
          (value) => GetRequiredTagsRequiredTag.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
