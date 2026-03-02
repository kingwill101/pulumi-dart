// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZoneAttachmentVpc {
  /// The region of the vpc. If not set, the current region will instead of.
  final pulumi.Input<String>? regionId;
  /// The Id of the vpc.
  final pulumi.Input<String> vpcId;

  /// Creates a new [ZoneAttachmentVpc].
  /// [regionId] The region of the vpc. If not set, the current region will instead of.
  /// [vpcId] The Id of the vpc.
  ZoneAttachmentVpc({
    this.regionId,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regionId': ?regionId,
      'vpcId': vpcId,
    };
  }

  factory ZoneAttachmentVpc.fromMap(Map<String, dynamic> map) {
    return ZoneAttachmentVpc(
      regionId: map['regionId'] == null ? null : (map['regionId']! as String).input(),
      vpcId: (map['vpcId'] as String).input(),
    );
  }
}

