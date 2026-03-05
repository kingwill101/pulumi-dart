// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of NoncurrentVersionExpiration
class NoncurrentVersionExpirationResponse {
  /// Specifies how many noncurrent versions S3 will retain. If there are this many more recent noncurrent versions, S3 will take the associated action. For more information about noncurrent versions, see [Lifecycle configuration elements](https://docs.aws.amazon.com/AmazonS3/latest/userguide/intro-lifecycle-rules.html) in the *Amazon S3 User Guide*.
  final pulumi.Input<int>? newerNoncurrentVersions;
  /// Specifies the number of days an object is noncurrent before S3 can perform the associated action. For information about the noncurrent days calculations, see [How Amazon S3 Calculates When an Object Became Noncurrent](https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html#non-current-days-calculations) in the *Amazon S3 User Guide*.
  final pulumi.Input<int>? noncurrentDays;

  /// Creates a new [NoncurrentVersionExpirationResponse].
  /// [newerNoncurrentVersions] Specifies how many noncurrent versions S3 will retain. If there are this many more recent noncurrent versions, S3 will take the associated action. For more information about noncurrent versions, see [Lifecycle configuration elements](https://docs.aws.amazon.com/AmazonS3/latest/userguide/intro-lifecycle-rules.html) in the *Amazon S3 User Guide*.
  /// [noncurrentDays] Specifies the number of days an object is noncurrent before S3 can perform the associated action. For information about the noncurrent days calculations, see [How Amazon S3 Calculates When an Object Became Noncurrent](https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html#non-current-days-calculations) in the *Amazon S3 User Guide*.
  NoncurrentVersionExpirationResponse({
    this.newerNoncurrentVersions,
    this.noncurrentDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'newerNoncurrentVersions': ?newerNoncurrentVersions,
      'noncurrentDays': ?noncurrentDays,
    };
  }

  factory NoncurrentVersionExpirationResponse.fromMap(Map<String, dynamic> map) {
    return NoncurrentVersionExpirationResponse(
      newerNoncurrentVersions: (() { final guardedValue = map['newerNoncurrentVersions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      noncurrentDays: (() { final guardedValue = map['noncurrentDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

