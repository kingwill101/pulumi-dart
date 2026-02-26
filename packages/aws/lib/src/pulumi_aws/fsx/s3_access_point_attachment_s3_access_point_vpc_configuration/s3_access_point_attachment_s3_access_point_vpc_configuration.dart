// ignore_for_file: unused_element, unnecessary_cast

class S3AccessPointAttachmentS3AccessPointVpcConfiguration {
  /// VPC ID.
  final String? vpcId;

  S3AccessPointAttachmentS3AccessPointVpcConfiguration({
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final vpcIdValue = vpcId;
    if (vpcIdValue != null) {
      map['vpcId'] = vpcIdValue;
    }
    return map;
  }

  factory S3AccessPointAttachmentS3AccessPointVpcConfiguration.fromMap(
      Map<String, dynamic> map) {
    return S3AccessPointAttachmentS3AccessPointVpcConfiguration(
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}
