// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamProcessorOutputS3Destination {
  /// Name of the Amazon S3 bucket you want to associate with the streaming video project.
  final pulumi.Input<String>? bucket;
  /// The prefix value of the location within the bucket that you want the information to be published to.
  final pulumi.Input<String>? keyPrefix;

  /// Creates a new [StreamProcessorOutputS3Destination].
  /// [bucket] Name of the Amazon S3 bucket you want to associate with the streaming video project.
  /// [keyPrefix] The prefix value of the location within the bucket that you want the information to be published to.
  StreamProcessorOutputS3Destination({
    this.bucket,
    this.keyPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'keyPrefix': ?keyPrefix,
    };
  }

  factory StreamProcessorOutputS3Destination.fromMap(Map<String, dynamic> map) {
    return StreamProcessorOutputS3Destination(
      bucket: map['bucket'] == null ? null : (map['bucket'] as String).input(),
      keyPrefix: map['keyPrefix'] == null ? null : (map['keyPrefix'] as String).input(),
    );
  }
}

