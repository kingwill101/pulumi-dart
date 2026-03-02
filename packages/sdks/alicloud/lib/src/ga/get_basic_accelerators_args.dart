// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ga_get_basic_accelerators_get_basic_accelerators_args_doc}
/// Arguments for getBasicAccelerators.
/// {@endtemplate}
/// {@macro pulumi_ga_get_basic_accelerators_get_basic_accelerators_args_doc}
class GetBasicAcceleratorsArgs {
  /// The ID of the Global Accelerator Basic Accelerator instance.
  final pulumi.Input<String>? acceleratorId;
  /// The bandwidth billing method. Valid values:
  /// - `BandwidthPackage`: billed based on bandwidth plans.
  /// - `CDT`: billed through Cloud Data Transfer (CDT) and based on data transfer.
  /// - `CDT95`: billed through CDT and based on the 95th percentile bandwidth. This bandwidth billing method is available only for users that are included in the whitelist.
  final pulumi.Input<String>? bandwidthBillingType;
  /// A list of Global Accelerator Basic Accelerator IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Global Accelerator Basic Accelerator name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;
  /// The status of the Global Accelerator Basic Accelerator instance. Valid Value: `init`, `active`, `configuring`, `binding`, `unbinding`, `deleting`, `finacialLocked`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetBasicAcceleratorsArgs].
  /// [acceleratorId] The ID of the Global Accelerator Basic Accelerator instance.
  /// [bandwidthBillingType] The bandwidth billing method. Valid values:
  /// [ids] A list of Global Accelerator Basic Accelerator IDs.
  /// [nameRegex] A regex string to filter results by Global Accelerator Basic Accelerator name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [status] The status of the Global Accelerator Basic Accelerator instance. Valid Value: `init`, `active`, `configuring`, `binding`, `unbinding`, `deleting`, `finacialLocked`.
  GetBasicAcceleratorsArgs({
    this.acceleratorId,
    this.bandwidthBillingType,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': ?acceleratorId,
      'bandwidthBillingType': ?bandwidthBillingType,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'status': ?status,
    };
  }

  factory GetBasicAcceleratorsArgs.fromMap(Map<String, dynamic> map) {
    return GetBasicAcceleratorsArgs(
      acceleratorId: map['acceleratorId'] == null ? null : (map['acceleratorId']! as String).input(),
      bandwidthBillingType: map['bandwidthBillingType'] == null ? null : (map['bandwidthBillingType']! as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      pageNumber: map['pageNumber'] == null ? null : (map['pageNumber']! as int).input(),
      pageSize: map['pageSize'] == null ? null : (map['pageSize']! as int).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

