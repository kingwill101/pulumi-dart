// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_get_bandwidth_packages_get_bandwidth_packages_args_doc}
/// Arguments for getBandwidthPackages.
/// {@endtemplate}
/// {@macro pulumi_cen_get_bandwidth_packages_get_bandwidth_packages_args_doc}
class GetBandwidthPackagesArgs {
  /// Limit search to a list of specific CEN Bandwidth Package IDs.
  final pulumi.Input<List<String>>? ids;
  /// Indicates whether to include renewal data. Valid values: `true`: Return renewal data in the response. `false`: Do not return renewal data in the response.
  final pulumi.Input<bool>? includeReservationData;
  /// ID of a CEN instance.
  final pulumi.Input<String>? instanceId;
  /// A regex string to filter CEN Bandwidth Package by name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Status of the CEN Bandwidth Package in CEN instance, Valid value: `Idle` and `InUse`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetBandwidthPackagesArgs].
  /// [ids] Limit search to a list of specific CEN Bandwidth Package IDs.
  /// [includeReservationData] Indicates whether to include renewal data. Valid values: `true`: Return renewal data in the response. `false`: Do not return renewal data in the response.
  /// [instanceId] ID of a CEN instance.
  /// [nameRegex] A regex string to filter CEN Bandwidth Package by name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] Status of the CEN Bandwidth Package in CEN instance, Valid value: `Idle` and `InUse`.
  GetBandwidthPackagesArgs({
    this.ids,
    this.includeReservationData,
    this.instanceId,
    this.nameRegex,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'includeReservationData': ?includeReservationData,
      'instanceId': ?instanceId,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetBandwidthPackagesArgs.fromMap(Map<String, dynamic> map) {
    return GetBandwidthPackagesArgs(
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      includeReservationData: map['includeReservationData'] == null ? null : (map['includeReservationData']! as bool).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId']! as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

