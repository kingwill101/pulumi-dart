// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_objectv2_override_provider_default_tags.dart';

class BucketObjectv2OverrideProvider {
  /// Override the provider `defaultTags` configuration block. See `defaultTags` Block below for more details.
  final pulumi.Input<BucketObjectv2OverrideProviderDefaultTags?>? defaultTags;

  /// Creates a new [BucketObjectv2OverrideProvider].
  /// [defaultTags] Override the provider `defaultTags` configuration block. See `defaultTags` Block below for more details.
  const BucketObjectv2OverrideProvider({
    this.defaultTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultTags': ?pulumi.Input.mapOptionalInputValue<BucketObjectv2OverrideProviderDefaultTags, Map<String, dynamic>>(defaultTags, (value) => value.toMap()),
    };
  }

  factory BucketObjectv2OverrideProvider.fromMap(Map<String, dynamic> map) {
    return BucketObjectv2OverrideProvider(
      defaultTags: (() { final guardedValue = map['defaultTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketObjectv2OverrideProviderDefaultTags.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
