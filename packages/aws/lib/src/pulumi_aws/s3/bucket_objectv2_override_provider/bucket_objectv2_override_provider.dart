// ignore_for_file: unused_element, unnecessary_cast

import '../bucket_objectv2_override_provider_default_tags/bucket_objectv2_override_provider_default_tags.dart';

class BucketObjectv2OverrideProvider {
  /// Override the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  final BucketObjectv2OverrideProviderDefaultTags? defaultTags;

  BucketObjectv2OverrideProvider({
    this.defaultTags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultTagsValue = defaultTags;
    if (defaultTagsValue != null) {
      map['defaultTags'] = defaultTagsValue.toMap();
    }
    return map;
  }

  factory BucketObjectv2OverrideProvider.fromMap(Map<String, dynamic> map) {
    return BucketObjectv2OverrideProvider(
      defaultTags: map['defaultTags'] == null
          ? null
          : BucketObjectv2OverrideProviderDefaultTags.fromMap(
              (map['defaultTags'] as Map).cast<String, dynamic>()),
    );
  }
}
