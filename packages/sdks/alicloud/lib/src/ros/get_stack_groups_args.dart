// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ros_get_stack_groups_get_stack_groups_args_doc}
/// Arguments for getStackGroups.
/// {@endtemplate}
/// {@macro pulumi_ros_get_stack_groups_get_stack_groups_args_doc}
class GetStackGroupsArgs {
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Stack Group IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Stack Group name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of Stack Group. Valid Values: `ACTIVE`, `DELETED`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetStackGroupsArgs].
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of Stack Group IDs.
  /// [nameRegex] A regex string to filter results by Stack Group name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of Stack Group. Valid Values: `ACTIVE`, `DELETED`.
  GetStackGroupsArgs({
    this.enableDetails,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetStackGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetStackGroupsArgs(
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails'] as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

