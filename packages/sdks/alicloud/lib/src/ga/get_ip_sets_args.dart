// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ga_get_ip_sets_get_ip_sets_args_doc}
/// Arguments for getIpSets.
/// {@endtemplate}
/// {@macro pulumi_ga_get_ip_sets_get_ip_sets_args_doc}
class GetIpSetsArgs {
  /// The ID of the Global Accelerator (GA) instance.
  final pulumi.Input<String> acceleratorId;
  /// A list of Ip Set IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the acceleration region. Valid values: `active`, `deleting`, `init`, `updating`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetIpSetsArgs].
  /// [acceleratorId] The ID of the Global Accelerator (GA) instance.
  /// [ids] A list of Ip Set IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the acceleration region. Valid values: `active`, `deleting`, `init`, `updating`.
  GetIpSetsArgs({
    required this.acceleratorId,
    this.ids,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': acceleratorId,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetIpSetsArgs.fromMap(Map<String, dynamic> map) {
    return GetIpSetsArgs(
      acceleratorId: (map['acceleratorId'] as String).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

