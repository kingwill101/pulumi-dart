// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 's3_access_point_attachment_openzfs_configuration.dart';
import 's3_access_point_attachment_s3_access_point.dart';
import 's3_access_point_attachment_timeouts.dart';

/// Input properties used for looking up and filtering S3AccessPointAttachment resources.
class S3AccessPointAttachmentState {
  /// Name of the S3 access point.
  final pulumi.Input<String?>? name;
  /// Configuration to use when creating and attaching an S3 access point to an FSx for OpenZFS volume. See `openzfsConfiguration` Block for details.
  final pulumi.Input<S3AccessPointAttachmentOpenzfsConfiguration?>? openzfsConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// S3 access point configuration. See `s3AccessPoint` Block for details.
  final pulumi.Input<S3AccessPointAttachmentS3AccessPoint?>? s3AccessPoint;
  /// S3 access point's alias.
  final pulumi.Input<String?>? s3AccessPointAlias;
  /// S3 access point's ARN.
  final pulumi.Input<String?>? s3AccessPointArn;
  final pulumi.Input<S3AccessPointAttachmentTimeouts?>? timeouts;
  /// Type of S3 access point. Valid values: `OpenZFS`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? type;

  /// Creates a new [S3AccessPointAttachmentState].
  /// [name] Name of the S3 access point.
  /// [openzfsConfiguration] Configuration to use when creating and attaching an S3 access point to an FSx for OpenZFS volume. See `openzfsConfiguration` Block for details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [s3AccessPoint] S3 access point configuration. See `s3AccessPoint` Block for details.
  /// [s3AccessPointAlias] S3 access point's alias.
  /// [s3AccessPointArn] S3 access point's ARN.
  /// [timeouts] Optional.
  /// [type] Type of S3 access point. Valid values: `OpenZFS`.
  const S3AccessPointAttachmentState({
    this.name,
    this.openzfsConfiguration,
    this.region,
    this.s3AccessPoint,
    this.s3AccessPointAlias,
    this.s3AccessPointArn,
    this.timeouts,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'openzfsConfiguration': ?pulumi.Input.mapOptionalInputValue<S3AccessPointAttachmentOpenzfsConfiguration, Map<String, dynamic>>(openzfsConfiguration, (value) => value.toMap()),
      'region': ?region,
      's3AccessPoint': ?pulumi.Input.mapOptionalInputValue<S3AccessPointAttachmentS3AccessPoint, Map<String, dynamic>>(s3AccessPoint, (value) => value.toMap()),
      's3AccessPointAlias': ?s3AccessPointAlias,
      's3AccessPointArn': ?s3AccessPointArn,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<S3AccessPointAttachmentTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory S3AccessPointAttachmentState.fromMap(Map<String, dynamic> map) {
    return S3AccessPointAttachmentState(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      openzfsConfiguration: (() { final guardedValue = map['openzfsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(S3AccessPointAttachmentOpenzfsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3AccessPoint: (() { final guardedValue = map['s3AccessPoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(S3AccessPointAttachmentS3AccessPoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      s3AccessPointAlias: (() { final guardedValue = map['s3AccessPointAlias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3AccessPointArn: (() { final guardedValue = map['s3AccessPointArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(S3AccessPointAttachmentTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
