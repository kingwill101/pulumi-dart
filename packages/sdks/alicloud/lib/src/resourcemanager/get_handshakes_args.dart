// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resourcemanager_get_handshakes_get_handshakes_args_doc}
/// Arguments for getHandshakes.
/// {@endtemplate}
/// {@macro pulumi_resourcemanager_get_handshakes_get_handshakes_args_doc}
class GetHandshakesArgs {
  /// Default to `false`. Set it to true can output more details.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Resource Manager Handshake IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of handshake, valid values: `Accepted`, `Cancelled`, `Declined`, `Deleted`, `Expired` and `Pending`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetHandshakesArgs].
  /// [enableDetails] Default to `false`. Set it to true can output more details.
  /// [ids] A list of Resource Manager Handshake IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of handshake, valid values: `Accepted`, `Cancelled`, `Declined`, `Deleted`, `Expired` and `Pending`.
  GetHandshakesArgs({
    this.enableDetails,
    this.ids,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetHandshakesArgs.fromMap(Map<String, dynamic> map) {
    return GetHandshakesArgs(
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails'] as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

