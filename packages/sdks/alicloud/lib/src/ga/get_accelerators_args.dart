// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ga_get_accelerators_get_accelerators_args_doc}
/// Arguments for getAccelerators.
/// {@endtemplate}
/// {@macro pulumi_ga_get_accelerators_get_accelerators_args_doc}
class GetAcceleratorsArgs {
  /// The bandwidth billing method. Default value: `BandwidthPackage`. Valid values:
  /// - `BandwidthPackage`: billed based on bandwidth plans.
  /// - `CDT`: billed based on data transfer.
  final pulumi.Input<String>? bandwidthBillingType;
  /// A list of Accelerator IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Accelerator name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the GA instance. Valid values: `active`, `binding`, `configuring`, `deleting`, `finacialLocked`, `init`, `unbinding`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetAcceleratorsArgs].
  /// [bandwidthBillingType] The bandwidth billing method. Default value: `BandwidthPackage`. Valid values:
  /// [ids] A list of Accelerator IDs.
  /// [nameRegex] A regex string to filter results by Accelerator name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the GA instance. Valid values: `active`, `binding`, `configuring`, `deleting`, `finacialLocked`, `init`, `unbinding`.
  GetAcceleratorsArgs({
    this.bandwidthBillingType,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthBillingType': ?bandwidthBillingType,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetAcceleratorsArgs.fromMap(Map<String, dynamic> map) {
    return GetAcceleratorsArgs(
      bandwidthBillingType: map['bandwidthBillingType'] == null ? null : (map['bandwidthBillingType']! as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

