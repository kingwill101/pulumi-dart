// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BandwidthPackageAttachment resources.
class BandwidthPackageAttachmentState {
  /// The ID of the bandwidth package.
  final pulumi.Input<String>? bandwidthPackageId;
  /// The ID of the CEN.
  final pulumi.Input<String>? instanceId;

  /// Creates a new [BandwidthPackageAttachmentState].
  /// [bandwidthPackageId] The ID of the bandwidth package.
  /// [instanceId] The ID of the CEN.
  BandwidthPackageAttachmentState({
    this.bandwidthPackageId,
    this.instanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthPackageId': ?bandwidthPackageId,
      'instanceId': ?instanceId,
    };
  }

  factory BandwidthPackageAttachmentState.fromMap(Map<String, dynamic> map) {
    return BandwidthPackageAttachmentState(
      bandwidthPackageId: map['bandwidthPackageId'] == null ? null : (map['bandwidthPackageId']! as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId']! as String).input(),
    );
  }
}

