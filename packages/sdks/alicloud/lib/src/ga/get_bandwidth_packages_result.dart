// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bandwidth_packages_package.dart';

/// Result data returned by getBandwidthPackages.
class GetBandwidthPackagesResult {
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  /// A list of Bandwidth Package names.
  final List<String> names;
  final String? outputFile;
  /// A list of Ga Bandwidth Packages. Each element contains the following attributes:
  final List<GetBandwidthPackagesPackage> packages;
  /// The status of the bandwidth plan.
  final String? status;
  /// The type of the bandwidth packet. China station only supports return to basic.
  final String? type;

  /// Creates a new [GetBandwidthPackagesResult].
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of Bandwidth Package names.
  /// [outputFile] Optional.
  /// [packages] A list of Ga Bandwidth Packages. Each element contains the following attributes:
  /// [status] The status of the bandwidth plan.
  /// [type] The type of the bandwidth packet. China station only supports return to basic.
  const GetBandwidthPackagesResult({
    this.enableDetails,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.packages,
    this.status,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'packages': pulumi.Input.encodeList<GetBandwidthPackagesPackage, Map<String, dynamic>>(packages, (value) => value.toMap()),
      'status': ?status,
      'type': ?type,
    };
  }

  factory GetBandwidthPackagesResult.fromMap(Map<String, dynamic> map) {
    return GetBandwidthPackagesResult(
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      packages: pulumi.Input.decodeList<GetBandwidthPackagesPackage>(map['packages']!, (value) => GetBandwidthPackagesPackage.fromMap((value as Map).cast<String, dynamic>())),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

