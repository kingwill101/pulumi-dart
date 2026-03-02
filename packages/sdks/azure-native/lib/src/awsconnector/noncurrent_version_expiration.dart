// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of NoncurrentVersionExpiration
class NoncurrentVersionExpiration {
  /// Specifies how many noncurrent versions S3 will retain. If there are this many more recent noncurrent versions, S3 will take the associated action. For more information about noncurrent versions, see [Lifecycle configuration elements](https://docs.aws.amazon.com/AmazonS3/latest/userguide/intro-lifecycle-rules.html) in the *Amazon S3 User Guide*.
  final pulumi.Input<int>? newerNoncurrentVersions;
  /// Specifies the number of days an object is noncurrent before S3 can perform the associated action. For information about the noncurrent days calculations, see [How Amazon S3 Calculates When an Object Became Noncurrent](https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html#non-current-days-calculations) in the *Amazon S3 User Guide*.
  final pulumi.Input<int>? noncurrentDays;

  /// Creates a new [NoncurrentVersionExpiration].
  /// [newerNoncurrentVersions] Specifies how many noncurrent versions S3 will retain. If there are this many more recent noncurrent versions, S3 will take the associated action. For more information about noncurrent versions, see [Lifecycle configuration elements](https://docs.aws.amazon.com/AmazonS3/latest/userguide/intro-lifecycle-rules.html) in the *Amazon S3 User Guide*.
  /// [noncurrentDays] Specifies the number of days an object is noncurrent before S3 can perform the associated action. For information about the noncurrent days calculations, see [How Amazon S3 Calculates When an Object Became Noncurrent](https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html#non-current-days-calculations) in the *Amazon S3 User Guide*.
  NoncurrentVersionExpiration({
    this.newerNoncurrentVersions,
    this.noncurrentDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'newerNoncurrentVersions': ?newerNoncurrentVersions,
      'noncurrentDays': ?noncurrentDays,
    };
  }

  factory NoncurrentVersionExpiration.fromMap(Map<String, dynamic> map) {
    return NoncurrentVersionExpiration(
      newerNoncurrentVersions: map['newerNoncurrentVersions'] == null ? null : (map['newerNoncurrentVersions'] as int).input(),
      noncurrentDays: map['noncurrentDays'] == null ? null : (map['noncurrentDays'] as int).input(),
    );
  }
}

