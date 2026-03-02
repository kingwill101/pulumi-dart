// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eds_get_network_packages_get_network_packages_args_doc}
/// Arguments for getNetworkPackages.
/// {@endtemplate}
/// {@macro pulumi_eds_get_network_packages_get_network_packages_args_doc}
class GetNetworkPackagesArgs {
  /// A list of Network Package IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of network package. Valid values: `Creating`, `InUse`, `Releasing`,`Released`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetNetworkPackagesArgs].
  /// [ids] A list of Network Package IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of network package. Valid values: `Creating`, `InUse`, `Releasing`,`Released`.
  GetNetworkPackagesArgs({
    this.ids,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetNetworkPackagesArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkPackagesArgs(
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

