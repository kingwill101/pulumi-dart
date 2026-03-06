// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AssociationOutputLocation {
  /// The S3 bucket name.
  final pulumi.Input<String> s3BucketName;
  /// The S3 bucket prefix. Results stored in the root if not configured.
  final pulumi.Input<String>? s3KeyPrefix;
  /// The S3 bucket region.
  ///
  /// Targets specify what instance IDs or tags to apply the document to and has these keys:
  final pulumi.Input<String>? s3Region;

  /// Creates a new [AssociationOutputLocation].
  /// [s3BucketName] The S3 bucket name.
  /// [s3KeyPrefix] The S3 bucket prefix. Results stored in the root if not configured.
  /// [s3Region] The S3 bucket region.
  const AssociationOutputLocation({
    required this.s3BucketName,
    this.s3KeyPrefix,
    this.s3Region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3BucketName': s3BucketName,
      's3KeyPrefix': ?s3KeyPrefix,
      's3Region': ?s3Region,
    };
  }

  factory AssociationOutputLocation.fromMap(Map<String, dynamic> map) {
    return AssociationOutputLocation(
      s3BucketName: pulumi.Input.fromValue(map['s3BucketName'] as String),
      s3KeyPrefix: (() { final guardedValue = map['s3KeyPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3Region: (() { final guardedValue = map['s3Region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

