// ignore_for_file: unused_element, unnecessary_cast

import '../object_copy_override_provider_default_tags/object_copy_override_provider_default_tags.dart';

class ObjectCopyOverrideProvider {
  /// Override the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  final ObjectCopyOverrideProviderDefaultTags? defaultTags;

  ObjectCopyOverrideProvider({
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

  factory ObjectCopyOverrideProvider.fromMap(Map<String, dynamic> map) {
    return ObjectCopyOverrideProvider(
      defaultTags: map['defaultTags'] == null
          ? null
          : ObjectCopyOverrideProviderDefaultTags.fromMap(
              (map['defaultTags'] as Map).cast<String, dynamic>()),
    );
  }
}
