// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BandwidthPackageAttachment resources.
class BandwidthPackageAttachmentState {
  /// The ID of the Global Accelerator instance.
  final pulumi.Input<String>? acceleratorId;
  /// Accelerators bound with current Bandwidth Package.
  final pulumi.Input<List<String>>? accelerators;
  /// The ID of the Bandwidth Package. **NOTE:** From version 1.192.0, `bandwidth_package_id` can be modified.
  final pulumi.Input<String>? bandwidthPackageId;
  /// State of Bandwidth Package.
  final pulumi.Input<String>? status;

  /// Creates a new [BandwidthPackageAttachmentState].
  /// [acceleratorId] The ID of the Global Accelerator instance.
  /// [accelerators] Accelerators bound with current Bandwidth Package.
  /// [bandwidthPackageId] The ID of the Bandwidth Package. **NOTE:** From version 1.192.0, `bandwidth_package_id` can be modified.
  /// [status] State of Bandwidth Package.
  BandwidthPackageAttachmentState({
    this.acceleratorId,
    this.accelerators,
    this.bandwidthPackageId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': ?acceleratorId,
      'accelerators': ?accelerators,
      'bandwidthPackageId': ?bandwidthPackageId,
      'status': ?status,
    };
  }

  factory BandwidthPackageAttachmentState.fromMap(Map<String, dynamic> map) {
    return BandwidthPackageAttachmentState(
      acceleratorId: map['acceleratorId'] == null ? null : (map['acceleratorId']! as String).input(),
      accelerators: map['accelerators'] == null ? null : ((map['accelerators']! as List).cast<String>()).input(),
      bandwidthPackageId: map['bandwidthPackageId'] == null ? null : (map['bandwidthPackageId']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

