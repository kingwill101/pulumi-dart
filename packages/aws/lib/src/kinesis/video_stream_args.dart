// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kinesis_video_stream_video_stream_args_doc}
/// The set of arguments for VideoStream.
/// {@endtemplate}
/// {@macro pulumi_kinesis_video_stream_video_stream_args_doc}
class VideoStreamArgs {
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

  /// Creates a new [VideoStreamArgs].
  /// [dataRetentionInHours] The number of hours that you want to retain the data in the stream. Kinesis Video Streams retains the data in a data store that is associated with the stream. The default value is `0`, indicating that the stream does not persist data.
  /// [deviceName] The name of the device that is writing to the stream. **In the current implementation, Kinesis Video Streams does not use this name.**
  /// [kmsKeyId] The ID of the AWS Key Management Service (AWS KMS) key that you want Kinesis Video Streams to use to encrypt stream data. If no key ID is specified, the default, Kinesis Video-managed key (`aws/kinesisvideo`) is used.
  /// [mediaType] The media type of the stream. Consumers of the stream can use this information when processing the stream. For more information about media types, see [Media Types](http://www.iana.org/assignments/media-types/media-types.xhtml). If you choose to specify the MediaType, see [Naming Requirements](https://tools.ietf.org/html/rfc6838#section-4.2) for guidelines.
  /// [name] A name to identify the stream. This is unique to the
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  VideoStreamArgs({
    int? dataRetentionInHours,
    String? deviceName,
    String? kmsKeyId,
    String? mediaType,
    String? name,
    String? region,
    Map<String, String>? tags,
  }) : dataRetentionInHours = pulumi.Input.asOptionalInput<int>(
         dataRetentionInHours,
       ),
       deviceName = pulumi.Input.asOptionalInput<String>(deviceName),
       kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
       mediaType = pulumi.Input.asOptionalInput<String>(mediaType),
       name = pulumi.Input.asOptionalInput<String>(name),
       region = pulumi.Input.asOptionalInput<String>(region),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataRetentionInHours': ?dataRetentionInHours,
      'deviceName': ?deviceName,
      'kmsKeyId': ?kmsKeyId,
      'mediaType': ?mediaType,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory VideoStreamArgs.fromMap(Map<String, dynamic> map) {
    return VideoStreamArgs(
      dataRetentionInHours: map['dataRetentionInHours'] == null
          ? null
          : map['dataRetentionInHours'] as int,
      deviceName: map['deviceName'] == null
          ? null
          : map['deviceName'] as String,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      mediaType: map['mediaType'] == null ? null : map['mediaType'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
