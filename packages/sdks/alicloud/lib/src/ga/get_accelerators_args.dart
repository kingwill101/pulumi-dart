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
    pulumi.Output<String>? bandwidthBillingType,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
  }) :
      bandwidthBillingType = pulumi.Input.asOptionalInput<String>(bandwidthBillingType),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      bandwidthBillingType: map['bandwidthBillingType'] == null ? null : pulumi.Output.create<String>(map['bandwidthBillingType'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

