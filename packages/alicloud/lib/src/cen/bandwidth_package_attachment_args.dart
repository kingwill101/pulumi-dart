// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_bandwidth_package_attachment_bandwidth_package_attachment_args_doc}
/// The set of arguments for BandwidthPackageAttachment.
/// {@endtemplate}
/// {@macro pulumi_cen_bandwidth_package_attachment_bandwidth_package_attachment_args_doc}
class BandwidthPackageAttachmentArgs {
  /// The ID of the bandwidth package.
  final pulumi.Input<String> bandwidthPackageId;
  /// The ID of the CEN.
  final pulumi.Input<String> instanceId;

  /// Creates a new [BandwidthPackageAttachmentArgs].
  /// [bandwidthPackageId] The ID of the bandwidth package.
  /// [instanceId] The ID of the CEN.
  BandwidthPackageAttachmentArgs({
    required String bandwidthPackageId,
    required String instanceId,
  }) :
      bandwidthPackageId = pulumi.Input.asInput<String>(bandwidthPackageId),
      instanceId = pulumi.Input.asInput<String>(instanceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthPackageId': bandwidthPackageId,
      'instanceId': instanceId,
    };
  }

  factory BandwidthPackageAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return BandwidthPackageAttachmentArgs(
      bandwidthPackageId: map['bandwidthPackageId'] as String,
      instanceId: map['instanceId'] as String,
    );
  }
}

