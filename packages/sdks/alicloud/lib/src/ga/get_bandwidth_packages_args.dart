// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ga_get_bandwidth_packages_get_bandwidth_packages_args_doc}
/// Arguments for getBandwidthPackages.
/// {@endtemplate}
/// {@macro pulumi_ga_get_bandwidth_packages_get_bandwidth_packages_args_doc}
class GetBandwidthPackagesArgs {
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Bandwidth Package IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Bandwidth Package name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the bandwidth plan. Valid values: `active`, `binded`, `binding`, `finacialLocked`, `init`, `unbinding`, `updating`.
  final pulumi.Input<String>? status;
  /// The type of the bandwidth plan. Valid values: `Basic`, `CrossDomain`.
  final pulumi.Input<String>? type;

  /// Creates a new [GetBandwidthPackagesArgs].
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of Bandwidth Package IDs.
  /// [nameRegex] A regex string to filter results by Bandwidth Package name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the bandwidth plan. Valid values: `active`, `binded`, `binding`, `finacialLocked`, `init`, `unbinding`, `updating`.
  /// [type] The type of the bandwidth plan. Valid values: `Basic`, `CrossDomain`.
  GetBandwidthPackagesArgs({
    this.enableDetails,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.status,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
      'type': ?type,
    };
  }

  factory GetBandwidthPackagesArgs.fromMap(Map<String, dynamic> map) {
    return GetBandwidthPackagesArgs(
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails'] as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

