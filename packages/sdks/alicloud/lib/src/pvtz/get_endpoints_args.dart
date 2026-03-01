// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pvtz_get_endpoints_get_endpoints_args_doc}
/// Arguments for getEndpoints.
/// {@endtemplate}
/// {@macro pulumi_pvtz_get_endpoints_get_endpoints_args_doc}
class GetEndpointsArgs {
  /// A list of Endpoint IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Endpoint name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the resource. Valid values: `CHANGE_FAILED`, `CHANGE_INIT`, `EXCEPTION`, `FAILED`, `INIT`, `SUCCESS`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetEndpointsArgs].
  /// [ids] A list of Endpoint IDs.
  /// [nameRegex] A regex string to filter results by Endpoint name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the resource. Valid values: `CHANGE_FAILED`, `CHANGE_INIT`, `EXCEPTION`, `FAILED`, `INIT`, `SUCCESS`.
  GetEndpointsArgs({
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

  factory GetEndpointsArgs.fromMap(Map<String, dynamic> map) {
    return GetEndpointsArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

