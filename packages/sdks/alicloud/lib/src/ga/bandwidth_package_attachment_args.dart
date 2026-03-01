// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ga_bandwidth_package_attachment_bandwidth_package_attachment_args_doc}
/// The set of arguments for BandwidthPackageAttachment.
/// {@endtemplate}
/// {@macro pulumi_ga_bandwidth_package_attachment_bandwidth_package_attachment_args_doc}
class BandwidthPackageAttachmentArgs {
  /// The ID of the Global Accelerator instance.
  final pulumi.Input<String> acceleratorId;
  /// The ID of the Bandwidth Package. **NOTE:** From version 1.192.0, `bandwidth_package_id` can be modified.
  final pulumi.Input<String> bandwidthPackageId;

  /// Creates a new [BandwidthPackageAttachmentArgs].
  /// [acceleratorId] The ID of the Global Accelerator instance.
  /// [bandwidthPackageId] The ID of the Bandwidth Package. **NOTE:** From version 1.192.0, `bandwidth_package_id` can be modified.
  BandwidthPackageAttachmentArgs({
    required pulumi.Output<String> acceleratorId,
    required pulumi.Output<String> bandwidthPackageId,
  }) :
      acceleratorId = pulumi.Input.asInput<String>(acceleratorId),
      bandwidthPackageId = pulumi.Input.asInput<String>(bandwidthPackageId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': acceleratorId,
      'bandwidthPackageId': bandwidthPackageId,
    };
  }

  factory BandwidthPackageAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return BandwidthPackageAttachmentArgs(
      acceleratorId: pulumi.Output.create<String>(map['acceleratorId'] as String),
      bandwidthPackageId: pulumi.Output.create<String>(map['bandwidthPackageId'] as String),
    );
  }
}

