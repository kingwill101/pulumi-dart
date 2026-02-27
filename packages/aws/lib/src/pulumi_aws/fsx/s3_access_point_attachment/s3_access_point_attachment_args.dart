// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../s3_access_point_attachment_openzfs_configuration/s3_access_point_attachment_openzfs_configuration.dart';
import '../s3_access_point_attachment_s3_access_point/s3_access_point_attachment_s3_access_point.dart';
import '../s3_access_point_attachment_timeouts/s3_access_point_attachment_timeouts.dart';

/// The set of arguments for S3AccessPointAttachment.
class S3AccessPointAttachmentArgs {
  /// Name of the S3 access point.
  final Input<String>? name;

  /// Configuration to use when creating and attaching an S3 access point to an FSx for OpenZFS volume. See `openzfs_configuration` Block for details.
  final Input<S3AccessPointAttachmentOpenzfsConfiguration> openzfsConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// S3 access point configuration. See `s3_access_point` Block for details.
  final Input<S3AccessPointAttachmentS3AccessPoint>? s3AccessPoint;
  final Input<S3AccessPointAttachmentTimeouts>? timeouts;

  /// Type of S3 access point. Valid values: `OpenZFS`.
  ///
  /// The following arguments are optional:
  final Input<String> type;

  S3AccessPointAttachmentArgs({
    this.name,
    required this.openzfsConfiguration,
    this.region,
    this.s3AccessPoint,
    this.timeouts,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['openzfsConfiguration'] = Input.mapInputValue<
        S3AccessPointAttachmentOpenzfsConfiguration,
        Map<String, dynamic>>(openzfsConfiguration, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final s3AccessPointValue = s3AccessPoint;
    if (s3AccessPointValue != null) {
      map['s3AccessPoint'] = Input.mapOptionalInputValue<
          S3AccessPointAttachmentS3AccessPoint,
          Map<String, dynamic>>(s3AccessPointValue, (value) => value.toMap());
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<
          S3AccessPointAttachmentTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    map['type'] = type;
    return map;
  }

  factory S3AccessPointAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return S3AccessPointAttachmentArgs(
      name: Input.asOptionalInput<String>(map['name']),
      openzfsConfiguration:
          Input.asInput<S3AccessPointAttachmentOpenzfsConfiguration>(
              map['openzfsConfiguration']),
      region: Input.asOptionalInput<String>(map['region']),
      s3AccessPoint:
          Input.asOptionalInput<S3AccessPointAttachmentS3AccessPoint>(
              map['s3AccessPoint']),
      timeouts: Input.asOptionalInput<S3AccessPointAttachmentTimeouts>(
          map['timeouts']),
      type: Input.asInput<String>(map['type']),
    );
  }
}
