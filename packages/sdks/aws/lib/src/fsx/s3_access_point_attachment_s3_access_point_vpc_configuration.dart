// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class S3AccessPointAttachmentS3AccessPointVpcConfiguration {
  /// VPC ID.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [S3AccessPointAttachmentS3AccessPointVpcConfiguration].
  /// [vpcId] VPC ID.
  S3AccessPointAttachmentS3AccessPointVpcConfiguration({
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vpcId': ?vpcId,
    };
  }

  factory S3AccessPointAttachmentS3AccessPointVpcConfiguration.fromMap(Map<String, dynamic> map) {
    return S3AccessPointAttachmentS3AccessPointVpcConfiguration(
      vpcId: map['vpcId'] == null ? null : ((map['vpcId'] as String).input()).input(),
    );
  }
}

