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
  const ZoneAttachmentVpc({
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
      regionId: (() { final guardedValue = map['regionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}

