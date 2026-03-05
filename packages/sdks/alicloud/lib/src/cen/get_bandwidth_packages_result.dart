// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bandwidth_packages_package.dart';

/// Result data returned by getBandwidthPackages.
class GetBandwidthPackagesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of specific CEN Bandwidth Package IDs.
  final List<String> ids;
  final bool? includeReservationData;
  /// The ID of the CEN instance that are associated with the bandwidth package.
  final String? instanceId;
  final String? nameRegex;
  /// (Available in 1.98.0+) - A list of CEN Bandwidth Package Names.
  final List<String> names;
  final String? outputFile;
  /// A list of CEN bandwidth package. Each element contains the following attributes:
  final List<GetBandwidthPackagesPackage> packages;
  /// Status of the CEN Bandwidth Package in CEN instance, including `Idle` and `InUse`.
  final String? status;

  /// Creates a new [GetBandwidthPackagesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of specific CEN Bandwidth Package IDs.
  /// [includeReservationData] Optional.
  /// [instanceId] The ID of the CEN instance that are associated with the bandwidth package.
  /// [nameRegex] Optional.
  /// [names] (Available in 1.98.0+) - A list of CEN Bandwidth Package Names.
  /// [outputFile] Optional.
  /// [packages] A list of CEN bandwidth package. Each element contains the following attributes:
  /// [status] Status of the CEN Bandwidth Package in CEN instance, including `Idle` and `InUse`.
  GetBandwidthPackagesResult({
    required this.id,
    required this.ids,
    this.includeReservationData,
    this.instanceId,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.packages,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'includeReservationData': ?includeReservationData,
      'instanceId': ?instanceId,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'packages': pulumi.Input.encodeList<GetBandwidthPackagesPackage, Map<String, dynamic>>(packages, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory GetBandwidthPackagesResult.fromMap(Map<String, dynamic> map) {
    return GetBandwidthPackagesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      includeReservationData: (() { final guardedValue = map['includeReservationData']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      packages: pulumi.Input.decodeList<GetBandwidthPackagesPackage>(map['packages']!, (value) => GetBandwidthPackagesPackage.fromMap((value as Map).cast<String, dynamic>())),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

