// ignore_for_file: unused_element, unnecessary_cast

import 's3_access_point_attachment_s3_access_point_vpc_configuration.dart';

class S3AccessPointAttachmentS3AccessPoint {
  /// Access policy associated with the S3 access point configuration.
  final String? policy;

  /// Amazon S3 restricts access to the S3 access point to requests made from the specified VPC. See `vpc_configuration` Block for details.
  final S3AccessPointAttachmentS3AccessPointVpcConfiguration? vpcConfiguration;

  /// Creates a new [S3AccessPointAttachmentS3AccessPoint].
  /// [policy] Access policy associated with the S3 access point configuration.
  /// [vpcConfiguration] Amazon S3 restricts access to the S3 access point to requests made from the specified VPC. See `vpc_configuration` Block for details.
  S3AccessPointAttachmentS3AccessPoint({
    this.policy,
    this.vpcConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final policyValue = policy;
    if (policyValue != null) {
      map['policy'] = policyValue;
    }
    final vpcConfigurationValue = vpcConfiguration;
    if (vpcConfigurationValue != null) {
      map['vpcConfiguration'] = vpcConfigurationValue.toMap();
    }
    return map;
  }

  factory S3AccessPointAttachmentS3AccessPoint.fromMap(
      Map<String, dynamic> map) {
    return S3AccessPointAttachmentS3AccessPoint(
      policy: map['policy'] == null ? null : map['policy'] as String,
      vpcConfiguration: map['vpcConfiguration'] == null
          ? null
          : S3AccessPointAttachmentS3AccessPointVpcConfiguration.fromMap(
              (map['vpcConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}
