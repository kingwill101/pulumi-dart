// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_videosurveillance_get_system_groups_get_system_groups_args_doc}
/// Arguments for getSystemGroups.
/// {@endtemplate}
/// {@macro pulumi_videosurveillance_get_system_groups_get_system_groups_args_doc}
class GetSystemGroupsArgs {
  /// A list of Group IDs.
  final pulumi.Input<List<String>>? ids;
  /// The use of the access protocol support gb28181, Real Time Messaging Protocol (rtmp). Valid values: `gb28181`, `rtmp`.
  final pulumi.Input<String>? inProtocol;
  /// The name.
  final pulumi.Input<String>? name;
  /// A regex string to filter results by Group name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status. Valid values: `on`,`off`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetSystemGroupsArgs].
  /// [ids] A list of Group IDs.
  /// [inProtocol] The use of the access protocol support gb28181, Real Time Messaging Protocol (rtmp). Valid values: `gb28181`, `rtmp`.
  /// [name] The name.
  /// [nameRegex] A regex string to filter results by Group name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status. Valid values: `on`,`off`.
  GetSystemGroupsArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? inProtocol,
    pulumi.Output<String>? name,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      inProtocol = pulumi.Input.asOptionalInput<String>(inProtocol),
      name = pulumi.Input.asOptionalInput<String>(name),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'inProtocol': ?inProtocol,
      'name': ?name,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetSystemGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetSystemGroupsArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      inProtocol: map['inProtocol'] == null ? null : pulumi.Output.create<String>(map['inProtocol'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

