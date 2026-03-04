// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_nas_get_auto_snapshot_policies_get_auto_snapshot_policies_args_doc}
/// Arguments for getAutoSnapshotPolicies.
/// {@endtemplate}
/// {@macro pulumi_nas_get_auto_snapshot_policies_get_auto_snapshot_policies_args_doc}
class GetAutoSnapshotPoliciesArgs {
  /// A list of Auto Snapshot Policies IDs.
  final pulumi.Input<List<String>>? ids;

  /// A regex string to filter results by Auto Snapshot Policy name.
  final pulumi.Input<String>? nameRegex;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// The status of the automatic snapshot policy. Valid values: `Creating`, `Available`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetAutoSnapshotPoliciesArgs].
  /// [ids] A list of Auto Snapshot Policies IDs.
  /// [nameRegex] A regex string to filter results by Auto Snapshot Policy name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the automatic snapshot policy. Valid values: `Creating`, `Available`.
  GetAutoSnapshotPoliciesArgs({
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

  factory GetAutoSnapshotPoliciesArgs.fromMap(Map<String, dynamic> map) {
    return GetAutoSnapshotPoliciesArgs(
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
