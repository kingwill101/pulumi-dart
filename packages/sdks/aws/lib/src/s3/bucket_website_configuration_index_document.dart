// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketWebsiteConfigurationIndexDocument {
  /// Suffix that is appended to a request that is for a directory on the website endpoint.
  /// For example, if the suffix is `index.html` and you make a request to `samplebucket/images/`, the data that is returned will be for the object with the key name `images/index.html`.
  /// The suffix must not be empty and must not include a slash character.
  final pulumi.Input<String> suffix;

  /// Creates a new [BucketWebsiteConfigurationIndexDocument].
  /// [suffix] Suffix that is appended to a request that is for a directory on the website endpoint.
  BucketWebsiteConfigurationIndexDocument({
    required this.suffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'suffix': suffix,
    };
  }

  factory BucketWebsiteConfigurationIndexDocument.fromMap(Map<String, dynamic> map) {
    return BucketWebsiteConfigurationIndexDocument(
      suffix: (map['suffix'] as String).input(),
    );
  }
}

