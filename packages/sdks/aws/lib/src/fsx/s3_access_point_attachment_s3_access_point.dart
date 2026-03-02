// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 's3_access_point_attachment_s3_access_point_vpc_configuration.dart';

class S3AccessPointAttachmentS3AccessPoint {
  /// Access policy associated with the S3 access point configuration.
  final pulumi.Input<String>? policy;
  /// Amazon S3 restricts access to the S3 access point to requests made from the specified VPC. See `vpc_configuration` Block for details.
  final pulumi.Input<S3AccessPointAttachmentS3AccessPointVpcConfiguration>? vpcConfiguration;

  /// Creates a new [S3AccessPointAttachmentS3AccessPoint].
  /// [policy] Access policy associated with the S3 access point configuration.
  /// [vpcConfiguration] Amazon S3 restricts access to the S3 access point to requests made from the specified VPC. See `vpc_configuration` Block for details.
  S3AccessPointAttachmentS3AccessPoint({
    this.policy,
    this.vpcConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?policy,
      'vpcConfiguration': ?pulumi.Input.mapOptionalInputValue<S3AccessPointAttachmentS3AccessPointVpcConfiguration, Map<String, dynamic>>(vpcConfiguration, (value) => value.toMap()),
    };
  }

  factory S3AccessPointAttachmentS3AccessPoint.fromMap(Map<String, dynamic> map) {
    return S3AccessPointAttachmentS3AccessPoint(
      policy: map['policy'] == null ? null : ((map['policy'] as String).input()).input(),
      vpcConfiguration: map['vpcConfiguration'] == null ? null : ((S3AccessPointAttachmentS3AccessPointVpcConfiguration.fromMap((map['vpcConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

