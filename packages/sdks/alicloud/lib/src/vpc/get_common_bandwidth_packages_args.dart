// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_get_common_bandwidth_packages_get_common_bandwidth_packages_args_doc}
/// Arguments for getCommonBandwidthPackages.
/// {@endtemplate}
/// {@macro pulumi_vpc_get_common_bandwidth_packages_get_common_bandwidth_packages_args_doc}
class GetCommonBandwidthPackagesArgs {
  /// The name of bandwidth package.
  final pulumi.Input<String>? bandwidthPackageName;

  /// Specifies whether to precheck only the request.
  final pulumi.Input<bool>? dryRun;

  /// A list of Common Bandwidth Packages IDs.
  final pulumi.Input<List<String>>? ids;

  /// Specifies whether to return data of orders that have not taken effect.
  final pulumi.Input<bool>? includeReservationData;

  /// A regex string to filter results by name.
  final pulumi.Input<String>? nameRegex;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// The Id of resource group which the common bandwidth package belongs.
  final pulumi.Input<String>? resourceGroupId;

  /// The status of bandwidth package. Valid values: `Available` and `Pending`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetCommonBandwidthPackagesArgs].
  /// [bandwidthPackageName] The name of bandwidth package.
  /// [dryRun] Specifies whether to precheck only the request.
  /// [ids] A list of Common Bandwidth Packages IDs.
  /// [includeReservationData] Specifies whether to return data of orders that have not taken effect.
  /// [nameRegex] A regex string to filter results by name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [resourceGroupId] The Id of resource group which the common bandwidth package belongs.
  /// [status] The status of bandwidth package. Valid values: `Available` and `Pending`.
  GetCommonBandwidthPackagesArgs({
    this.bandwidthPackageName,
    this.dryRun,
    this.ids,
    this.includeReservationData,
    this.nameRegex,
    this.outputFile,
    this.resourceGroupId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthPackageName': ?bandwidthPackageName,
      'dryRun': ?dryRun,
      'ids': ?ids,
      'includeReservationData': ?includeReservationData,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
    };
  }

  factory GetCommonBandwidthPackagesArgs.fromMap(Map<String, dynamic> map) {
    return GetCommonBandwidthPackagesArgs(
      bandwidthPackageName: (() {
        final guardedValue = map['bandwidthPackageName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dryRun: (() {
        final guardedValue = map['dryRun'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      includeReservationData: (() {
        final guardedValue = map['includeReservationData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
