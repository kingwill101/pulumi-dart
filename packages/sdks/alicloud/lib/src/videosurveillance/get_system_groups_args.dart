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
    this.ids,
    this.inProtocol,
    this.name,
    this.nameRegex,
    this.outputFile,
    this.status,
  });

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
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      inProtocol: map['inProtocol'] == null ? null : (map['inProtocol']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

