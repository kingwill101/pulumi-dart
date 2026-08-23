// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBucketsBucket {
  /// Bucket ARN.
  final pulumi.Input<String> bucketArn;
  /// Limits the response to buckets that are located in the specified AWS Region. The AWS Region must be expressed according to the AWS Region code.
  final pulumi.Input<String> bucketRegion;
  /// Bucket creation date.
  final pulumi.Input<String> creationDate;
  /// Bucket name.
  final pulumi.Input<String> name;

  /// Creates a new [GetBucketsBucket].
  /// [bucketArn] Bucket ARN.
  /// [bucketRegion] Limits the response to buckets that are located in the specified AWS Region. The AWS Region must be expressed according to the AWS Region code.
  /// [creationDate] Bucket creation date.
  /// [name] Bucket name.
  const GetBucketsBucket({
    required this.bucketArn,
    required this.bucketRegion,
    required this.creationDate,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketArn': bucketArn,
      'bucketRegion': bucketRegion,
      'creationDate': creationDate,
      'name': name,
    };
  }

  factory GetBucketsBucket.fromMap(Map<String, dynamic> map) {
    return GetBucketsBucket(
      bucketArn: pulumi.Input.fromValue(map['bucketArn'] as String),
      bucketRegion: pulumi.Input.fromValue(map['bucketRegion'] as String),
      creationDate: pulumi.Input.fromValue(map['creationDate'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
