// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketWebsiteConfigurationV2ErrorDocument {
  /// Object key name to use when a 4XX class error occurs.
  final pulumi.Input<String> key;

  /// Creates a new [BucketWebsiteConfigurationV2ErrorDocument].
  /// [key] Object key name to use when a 4XX class error occurs.
  BucketWebsiteConfigurationV2ErrorDocument({required this.key});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key};
  }

  factory BucketWebsiteConfigurationV2ErrorDocument.fromMap(
    Map<String, dynamic> map,
  ) {
    return BucketWebsiteConfigurationV2ErrorDocument(
      key: pulumi.Input.fromValue(map['key'] as String),
    );
  }
}
