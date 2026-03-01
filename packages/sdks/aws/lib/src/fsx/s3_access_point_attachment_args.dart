// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 's3_access_point_attachment_openzfs_configuration.dart';
import 's3_access_point_attachment_s3_access_point.dart';
import 's3_access_point_attachment_timeouts.dart';

/// {@template pulumi_fsx_s3_access_point_attachment_s3_access_point_attachment_args_doc}
/// The set of arguments for S3AccessPointAttachment.
/// {@endtemplate}
/// {@macro pulumi_fsx_s3_access_point_attachment_s3_access_point_attachment_args_doc}
class S3AccessPointAttachmentArgs {
  /// Name of the S3 access point.
  final pulumi.Input<String>? name;
  /// Configuration to use when creating and attaching an S3 access point to an FSx for OpenZFS volume. See `openzfs_configuration` Block for details.
  final pulumi.Input<S3AccessPointAttachmentOpenzfsConfiguration> openzfsConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// S3 access point configuration. See `s3_access_point` Block for details.
  final pulumi.Input<S3AccessPointAttachmentS3AccessPoint>? s3AccessPoint;
  final pulumi.Input<S3AccessPointAttachmentTimeouts>? timeouts;
  /// Type of S3 access point. Valid values: `OpenZFS`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> type;

  /// Creates a new [S3AccessPointAttachmentArgs].
  /// [name] Name of the S3 access point.
  /// [openzfsConfiguration] Configuration to use when creating and attaching an S3 access point to an FSx for OpenZFS volume. See `openzfs_configuration` Block for details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [s3AccessPoint] S3 access point configuration. See `s3_access_point` Block for details.
  /// [timeouts] Optional.
  /// [type] Type of S3 access point. Valid values: `OpenZFS`.
  S3AccessPointAttachmentArgs({
    pulumi.Output<String>? name,
    required pulumi.Output<S3AccessPointAttachmentOpenzfsConfiguration> openzfsConfiguration,
    pulumi.Output<String>? region,
    pulumi.Output<S3AccessPointAttachmentS3AccessPoint>? s3AccessPoint,
    pulumi.Output<S3AccessPointAttachmentTimeouts>? timeouts,
    required pulumi.Output<String> type,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      openzfsConfiguration = pulumi.Input.asInput<S3AccessPointAttachmentOpenzfsConfiguration>(openzfsConfiguration),
      region = pulumi.Input.asOptionalInput<String>(region),
      s3AccessPoint = pulumi.Input.asOptionalInput<S3AccessPointAttachmentS3AccessPoint>(s3AccessPoint),
      timeouts = pulumi.Input.asOptionalInput<S3AccessPointAttachmentTimeouts>(timeouts),
      type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'openzfsConfiguration': pulumi.Input.mapInputValue<S3AccessPointAttachmentOpenzfsConfiguration, Map<String, dynamic>>(openzfsConfiguration, (value) => value.toMap()),
      'region': ?region,
      's3AccessPoint': ?pulumi.Input.mapOptionalInputValue<S3AccessPointAttachmentS3AccessPoint, Map<String, dynamic>>(s3AccessPoint, (value) => value.toMap()),
      'timeouts': ?pulumi.Input.mapOptionalInputValue<S3AccessPointAttachmentTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'type': type,
    };
  }

  factory S3AccessPointAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return S3AccessPointAttachmentArgs(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      openzfsConfiguration: pulumi.Output.create<S3AccessPointAttachmentOpenzfsConfiguration>(S3AccessPointAttachmentOpenzfsConfiguration.fromMap((map['openzfsConfiguration'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      s3AccessPoint: map['s3AccessPoint'] == null ? null : pulumi.Output.create<S3AccessPointAttachmentS3AccessPoint>(S3AccessPointAttachmentS3AccessPoint.fromMap((map['s3AccessPoint'] as Map).cast<String, dynamic>())),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<S3AccessPointAttachmentTimeouts>(S3AccessPointAttachmentTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      type: pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

