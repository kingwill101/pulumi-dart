// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of NoncurrentVersionTransition
class NoncurrentVersionTransitionResponse {
  /// Specifies how many noncurrent versions S3 will retain. If there are this many more recent noncurrent versions, S3 will take the associated action. For more information about noncurrent versions, see [Lifecycle configuration elements](https://docs.aws.amazon.com/AmazonS3/latest/userguide/intro-lifecycle-rules.html) in the *Amazon S3 User Guide*.
  final pulumi.Input<int>? newerNoncurrentVersions;
  /// The class of storage used to store the object.
  final pulumi.Input<String>? storageClass;
  /// Specifies the number of days an object is noncurrent before Amazon S3 can perform the associated action. For information about the noncurrent days calculations, see [How Amazon S3 Calculates How Long an Object Has Been Noncurrent](https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html#non-current-days-calculations) in the *Amazon S3 User Guide*.
  final pulumi.Input<int>? transitionInDays;

  /// Creates a new [NoncurrentVersionTransitionResponse].
  /// [newerNoncurrentVersions] Specifies how many noncurrent versions S3 will retain. If there are this many more recent noncurrent versions, S3 will take the associated action. For more information about noncurrent versions, see [Lifecycle configuration elements](https://docs.aws.amazon.com/AmazonS3/latest/userguide/intro-lifecycle-rules.html) in the *Amazon S3 User Guide*.
  /// [storageClass] The class of storage used to store the object.
  /// [transitionInDays] Specifies the number of days an object is noncurrent before Amazon S3 can perform the associated action. For information about the noncurrent days calculations, see [How Amazon S3 Calculates How Long an Object Has Been Noncurrent](https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html#non-current-days-calculations) in the *Amazon S3 User Guide*.
  NoncurrentVersionTransitionResponse({
    this.newerNoncurrentVersions,
    this.storageClass,
    this.transitionInDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'newerNoncurrentVersions': ?newerNoncurrentVersions,
      'storageClass': ?storageClass,
      'transitionInDays': ?transitionInDays,
    };
  }

  factory NoncurrentVersionTransitionResponse.fromMap(Map<String, dynamic> map) {
    return NoncurrentVersionTransitionResponse(
      newerNoncurrentVersions: map['newerNoncurrentVersions'] == null ? null : (map['newerNoncurrentVersions']! as int).input(),
      storageClass: map['storageClass'] == null ? null : (map['storageClass']! as String).input(),
      transitionInDays: map['transitionInDays'] == null ? null : (map['transitionInDays']! as int).input(),
    );
  }
}

