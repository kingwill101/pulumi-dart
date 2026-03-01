// ignore_for_file: unused_element, unnecessary_cast

import 'object_copy_override_provider_default_tags.dart';

class ObjectCopyOverrideProvider {
  /// Override the provider `default_tags` configuration block.
  final ObjectCopyOverrideProviderDefaultTags? defaultTags;

  /// Creates a new [ObjectCopyOverrideProvider].
  /// [defaultTags] Override the provider `default_tags` configuration block.
  ObjectCopyOverrideProvider({this.defaultTags});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultTags': ?defaultTags == null ? null : defaultTags!.toMap(),
    };
  }

  factory ObjectCopyOverrideProvider.fromMap(Map<String, dynamic> map) {
    return ObjectCopyOverrideProvider(
      defaultTags: map['defaultTags'] == null
          ? null
          : ObjectCopyOverrideProviderDefaultTags.fromMap(
              (map['defaultTags'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
