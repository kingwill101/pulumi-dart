// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketWebsiteIndexDocument {
  /// The default home page.
  final pulumi.Input<String>? suffix;
  /// Whether to jump to the default home page of a subdirectory when accessing a subdirectory.
  final pulumi.Input<bool>? supportSubDir;
  /// After the default homepage is set, the behavior when an Object that ends with a non-forward slash (/) is accessed and the Object does not exist.
  final pulumi.Input<String>? type;

  /// Creates a new [BucketWebsiteIndexDocument].
  /// [suffix] The default home page.
  /// [supportSubDir] Whether to jump to the default home page of a subdirectory when accessing a subdirectory.
  /// [type] After the default homepage is set, the behavior when an Object that ends with a non-forward slash (/) is accessed and the Object does not exist.
  BucketWebsiteIndexDocument({
    this.suffix,
    this.supportSubDir,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'suffix': ?suffix,
      'supportSubDir': ?supportSubDir,
      'type': ?type,
    };
  }

  factory BucketWebsiteIndexDocument.fromMap(Map<String, dynamic> map) {
    return BucketWebsiteIndexDocument(
      suffix: (() { final guardedValue = map['suffix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      supportSubDir: (() { final guardedValue = map['supportSubDir']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

