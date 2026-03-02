// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VideoStream resources.
class VideoStreamState {
  /// The Amazon Resource Name (ARN) specifying the Stream (same as `id`)
  final pulumi.Input<String>? arn;
  /// A time stamp that indicates when the stream was created.
  final pulumi.Input<String>? creationTime;
  /// The number of hours that you want to retain the data in the stream. Kinesis Video Streams retains the data in a data store that is associated with the stream. The default value is `0`, indicating that the stream does not persist data.
  final pulumi.Input<int>? dataRetentionInHours;
  /// The name of the device that is writing to the stream. **In the current implementation, Kinesis Video Streams does not use this name.**
  final pulumi.Input<String>? deviceName;
  /// The ID of the AWS Key Management Service (AWS KMS) key that you want Kinesis Video Streams to use to encrypt stream data. If no key ID is specified, the default, Kinesis Video-managed key (`aws/kinesisvideo`) is used.
  final pulumi.Input<String>? kmsKeyId;
  /// The media type of the stream. Consumers of the stream can use this information when processing the stream. For more information about media types, see [Media Types](http://www.iana.org/assignments/media-types/media-types.xhtml). If you choose to specify the MediaType, see [Naming Requirements](https://tools.ietf.org/html/rfc6838#section-4.2) for guidelines.
  final pulumi.Input<String>? mediaType;
  /// A name to identify the stream. This is unique to the
  /// AWS account and region the Stream is created in.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The version of the stream.
  final pulumi.Input<String>? version;

  /// Creates a new [VideoStreamState].
  /// [arn] The Amazon Resource Name (ARN) specifying the Stream (same as `id`)
  /// [creationTime] A time stamp that indicates when the stream was created.
  /// [dataRetentionInHours] The number of hours that you want to retain the data in the stream. Kinesis Video Streams retains the data in a data store that is associated with the stream. The default value is `0`, indicating that the stream does not persist data.
  /// [deviceName] The name of the device that is writing to the stream. **In the current implementation, Kinesis Video Streams does not use this name.**
  /// [kmsKeyId] The ID of the AWS Key Management Service (AWS KMS) key that you want Kinesis Video Streams to use to encrypt stream data. If no key ID is specified, the default, Kinesis Video-managed key (`aws/kinesisvideo`) is used.
  /// [mediaType] The media type of the stream. Consumers of the stream can use this information when processing the stream. For more information about media types, see [Media Types](http://www.iana.org/assignments/media-types/media-types.xhtml). If you choose to specify the MediaType, see [Naming Requirements](https://tools.ietf.org/html/rfc6838#section-4.2) for guidelines.
  /// [name] A name to identify the stream. This is unique to the
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [version] The version of the stream.
  VideoStreamState({
    this.arn,
    this.creationTime,
    this.dataRetentionInHours,
    this.deviceName,
    this.kmsKeyId,
    this.mediaType,
    this.name,
    this.region,
    this.tags,
    this.tagsAll,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'creationTime': ?creationTime,
      'dataRetentionInHours': ?dataRetentionInHours,
      'deviceName': ?deviceName,
      'kmsKeyId': ?kmsKeyId,
      'mediaType': ?mediaType,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'version': ?version,
    };
  }

  factory VideoStreamState.fromMap(Map<String, dynamic> map) {
    return VideoStreamState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      creationTime: map['creationTime'] == null ? null : ((map['creationTime'] as String).input()).input(),
      dataRetentionInHours: map['dataRetentionInHours'] == null ? null : ((map['dataRetentionInHours'] as int).input()).input(),
      deviceName: map['deviceName'] == null ? null : ((map['deviceName'] as String).input()).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : ((map['kmsKeyId'] as String).input()).input(),
      mediaType: map['mediaType'] == null ? null : ((map['mediaType'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      version: map['version'] == null ? null : ((map['version'] as String).input()).input(),
    );
  }
}

