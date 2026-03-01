// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_expressconnect_get_physical_connections_get_physical_connections_args_doc}
/// Arguments for getPhysicalConnections.
/// {@endtemplate}
/// {@macro pulumi_expressconnect_get_physical_connections_get_physical_connections_args_doc}
class GetPhysicalConnectionsArgs {
  /// A list of Physical Connection IDs.
  final pulumi.Input<List<String>>? ids;
  /// The include reservation data.
  final pulumi.Input<bool>? includeReservationData;
  /// A regex string to filter results by Physical Connection name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Resources on Behalf of a State of the Resource Attribute Field. Valid values: `Canceled`, `Enabled`, `Terminated`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetPhysicalConnectionsArgs].
  /// [ids] A list of Physical Connection IDs.
  /// [includeReservationData] The include reservation data.
  /// [nameRegex] A regex string to filter results by Physical Connection name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] Resources on Behalf of a State of the Resource Attribute Field. Valid values: `Canceled`, `Enabled`, `Terminated`.
  GetPhysicalConnectionsArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<bool>? includeReservationData,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      includeReservationData = pulumi.Input.asOptionalInput<bool>(includeReservationData),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'includeReservationData': ?includeReservationData,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetPhysicalConnectionsArgs.fromMap(Map<String, dynamic> map) {
    return GetPhysicalConnectionsArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      includeReservationData: map['includeReservationData'] == null ? null : pulumi.Output.create<bool>(map['includeReservationData'] as bool),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

