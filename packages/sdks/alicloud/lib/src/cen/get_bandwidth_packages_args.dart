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
  const GetBandwidthPackagesArgs({
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
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includeReservationData: (() { final guardedValue = map['includeReservationData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

