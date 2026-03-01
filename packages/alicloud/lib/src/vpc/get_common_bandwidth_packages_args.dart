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
    String? bandwidthPackageName,
    bool? dryRun,
    List<String>? ids,
    bool? includeReservationData,
    String? nameRegex,
    String? outputFile,
    String? resourceGroupId,
    String? status,
  }) :
      bandwidthPackageName = pulumi.Input.asOptionalInput<String>(bandwidthPackageName),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      includeReservationData = pulumi.Input.asOptionalInput<bool>(includeReservationData),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      bandwidthPackageName: map['bandwidthPackageName'] == null ? null : map['bandwidthPackageName'] as String,
      dryRun: map['dryRun'] == null ? null : map['dryRun'] as bool,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      includeReservationData: map['includeReservationData'] == null ? null : map['includeReservationData'] as bool,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

