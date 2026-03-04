// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_packages_package.dart';

/// Result data returned by getNetworkPackages.
class GetNetworkPackagesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  final List<GetNetworkPackagesPackage> packages;
  final String? status;

  /// Creates a new [GetNetworkPackagesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [packages] Required.
  /// [status] Optional.
  GetNetworkPackagesResult({
    required this.id,
    required this.ids,
    this.outputFile,
    required this.packages,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'packages':
          pulumi.Input.encodeList<
            GetNetworkPackagesPackage,
            Map<String, dynamic>
          >(packages, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory GetNetworkPackagesResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkPackagesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      packages: pulumi.Input.decodeList<GetNetworkPackagesPackage>(
        map['packages']!,
        (value) => GetNetworkPackagesPackage.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
