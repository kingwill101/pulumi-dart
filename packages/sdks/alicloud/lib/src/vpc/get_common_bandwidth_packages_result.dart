// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_common_bandwidth_packages_package.dart';

/// Result data returned by getCommonBandwidthPackages.
class GetCommonBandwidthPackagesResult {
  /// The name of bandwidth package.
  final String? bandwidthPackageName;
  final bool? dryRun;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// (Optional) A list of Common Bandwidth Packages IDs.
  final List<String> ids;
  final bool? includeReservationData;
  final String? nameRegex;

  /// A list of Common Bandwidth Packages names.
  final List<String> names;
  final String? outputFile;

  /// A list of Common Bandwidth Packages. Each element contains the following attributes:
  final List<GetCommonBandwidthPackagesPackage> packages;

  /// The Id of resource group which the common bandwidth package belongs.
  final String? resourceGroupId;

  /// Status of the Common Bandwidth Package.
  final String? status;

  /// Creates a new [GetCommonBandwidthPackagesResult].
  /// [bandwidthPackageName] The name of bandwidth package.
  /// [dryRun] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] (Optional) A list of Common Bandwidth Packages IDs.
  /// [includeReservationData] Optional.
  /// [nameRegex] Optional.
  /// [names] A list of Common Bandwidth Packages names.
  /// [outputFile] Optional.
  /// [packages] A list of Common Bandwidth Packages. Each element contains the following attributes:
  /// [resourceGroupId] The Id of resource group which the common bandwidth package belongs.
  /// [status] Status of the Common Bandwidth Package.
  GetCommonBandwidthPackagesResult({
    this.bandwidthPackageName,
    this.dryRun,
    required this.id,
    required this.ids,
    this.includeReservationData,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.packages,
    this.resourceGroupId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthPackageName': ?bandwidthPackageName,
      'dryRun': ?dryRun,
      'id': id,
      'ids': ids,
      'includeReservationData': ?includeReservationData,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'packages':
          pulumi.Input.encodeList<
            GetCommonBandwidthPackagesPackage,
            Map<String, dynamic>
          >(packages, (value) => value.toMap()),
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
    };
  }

  factory GetCommonBandwidthPackagesResult.fromMap(Map<String, dynamic> map) {
    return GetCommonBandwidthPackagesResult(
      bandwidthPackageName: (() {
        final guardedValue = map['bandwidthPackageName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      dryRun: (() {
        final guardedValue = map['dryRun'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      includeReservationData: (() {
        final guardedValue = map['includeReservationData'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      packages: pulumi.Input.decodeList<GetCommonBandwidthPackagesPackage>(
        map['packages']!,
        (value) => GetCommonBandwidthPackagesPackage.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
