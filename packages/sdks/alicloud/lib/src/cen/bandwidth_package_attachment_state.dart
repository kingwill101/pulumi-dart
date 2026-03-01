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
    pulumi.Output<String>? bandwidthPackageId,
    pulumi.Output<String>? instanceId,
  }) :
      bandwidthPackageId = pulumi.Input.asOptionalInput<String>(bandwidthPackageId),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthPackageId': ?bandwidthPackageId,
      'instanceId': ?instanceId,
    };
  }

  factory BandwidthPackageAttachmentState.fromMap(Map<String, dynamic> map) {
    return BandwidthPackageAttachmentState(
      bandwidthPackageId: map['bandwidthPackageId'] == null ? null : pulumi.Output.create<String>(map['bandwidthPackageId'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
    );
  }
}

