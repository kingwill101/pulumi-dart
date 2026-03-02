// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketWebsiteConfigurationErrorDocument {
  /// Object key name to use when a 4XX class error occurs.
  final pulumi.Input<String> key;

  /// Creates a new [BucketWebsiteConfigurationErrorDocument].
  /// [key] Object key name to use when a 4XX class error occurs.
  BucketWebsiteConfigurationErrorDocument({
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
    };
  }

  factory BucketWebsiteConfigurationErrorDocument.fromMap(Map<String, dynamic> map) {
    return BucketWebsiteConfigurationErrorDocument(
      key: (map['key'] as String).input(),
    );
  }
}

