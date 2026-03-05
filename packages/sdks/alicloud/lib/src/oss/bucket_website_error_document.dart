// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketWebsiteErrorDocument {
  /// The HTTP status code when the error page is returned. The default 404.
  final pulumi.Input<int>? httpStatus;
  /// The error page file. If the Object accessed does not exist, this error page is returned.
  final pulumi.Input<String>? key;

  /// Creates a new [BucketWebsiteErrorDocument].
  /// [httpStatus] The HTTP status code when the error page is returned. The default 404.
  /// [key] The error page file. If the Object accessed does not exist, this error page is returned.
  BucketWebsiteErrorDocument({
    this.httpStatus,
    this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpStatus': ?httpStatus,
      'key': ?key,
    };
  }

  factory BucketWebsiteErrorDocument.fromMap(Map<String, dynamic> map) {
    return BucketWebsiteErrorDocument(
      httpStatus: (() { final guardedValue = map['httpStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

