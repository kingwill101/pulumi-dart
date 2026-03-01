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
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

