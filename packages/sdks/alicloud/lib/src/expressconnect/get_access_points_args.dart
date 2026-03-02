// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_expressconnect_get_access_points_get_access_points_args_doc}
/// Arguments for getAccessPoints.
/// {@endtemplate}
/// {@macro pulumi_expressconnect_get_access_points_get_access_points_args_doc}
class GetAccessPointsArgs {
  /// A list of Access Point IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Access Point name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The Physical Connection to Which the Access Point State. Valid values: `disabled`, `full`, `hot`, `recommended`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetAccessPointsArgs].
  /// [ids] A list of Access Point IDs.
  /// [nameRegex] A regex string to filter results by Access Point name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The Physical Connection to Which the Access Point State. Valid values: `disabled`, `full`, `hot`, `recommended`.
  GetAccessPointsArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetAccessPointsArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessPointsArgs(
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

