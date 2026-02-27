// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for VideoStream.
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

  VideoStreamArgs({
    this.dataRetentionInHours,
    this.deviceName,
    this.kmsKeyId,
    this.mediaType,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataRetentionInHoursValue = dataRetentionInHours;
    if (dataRetentionInHoursValue != null) {
      map['dataRetentionInHours'] = dataRetentionInHoursValue;
    }
    final deviceNameValue = deviceName;
    if (deviceNameValue != null) {
      map['deviceName'] = deviceNameValue;
    }
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final mediaTypeValue = mediaType;
    if (mediaTypeValue != null) {
      map['mediaType'] = mediaTypeValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory VideoStreamArgs.fromMap(Map<String, dynamic> map) {
    return VideoStreamArgs(
      dataRetentionInHours:
          pulumi.Input.asOptionalInput<int>(map['dataRetentionInHours']),
      deviceName: pulumi.Input.asOptionalInput<String>(map['deviceName']),
      kmsKeyId: pulumi.Input.asOptionalInput<String>(map['kmsKeyId']),
      mediaType: pulumi.Input.asOptionalInput<String>(map['mediaType']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
