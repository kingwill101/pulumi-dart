// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_copy_override_provider_default_tags.dart';

class ObjectCopyOverrideProvider {
  /// Configuration block to override the provider `defaultTags` configuration block. See `defaultTags` Block below.
  final pulumi.Input<ObjectCopyOverrideProviderDefaultTags?>? defaultTags;

  /// Creates a new [ObjectCopyOverrideProvider].
  /// [defaultTags] Configuration block to override the provider `defaultTags` configuration block. See `defaultTags` Block below.
  const ObjectCopyOverrideProvider({
    this.defaultTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultTags': ?pulumi.Input.mapOptionalInputValue<ObjectCopyOverrideProviderDefaultTags, Map<String, dynamic>>(defaultTags, (value) => value.toMap()),
    };
  }

  factory ObjectCopyOverrideProvider.fromMap(Map<String, dynamic> map) {
    return ObjectCopyOverrideProvider(
      defaultTags: (() { final guardedValue = map['defaultTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObjectCopyOverrideProviderDefaultTags.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
