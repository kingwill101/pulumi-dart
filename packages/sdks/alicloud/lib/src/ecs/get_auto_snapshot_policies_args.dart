// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_get_auto_snapshot_policies_get_auto_snapshot_policies_args_doc}
/// Arguments for getAutoSnapshotPolicies.
/// {@endtemplate}
/// {@macro pulumi_ecs_get_auto_snapshot_policies_get_auto_snapshot_policies_args_doc}
class GetAutoSnapshotPoliciesArgs {
  /// A list of Auto Snapshot Policy IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Auto Snapshot Policy name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of Auto Snapshot Policy. Valid Values: `Expire`, `Normal`.
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetAutoSnapshotPoliciesArgs].
  /// [ids] A list of Auto Snapshot Policy IDs.
  /// [nameRegex] A regex string to filter results by Auto Snapshot Policy name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of Auto Snapshot Policy. Valid Values: `Expire`, `Normal`.
  /// [tags] A mapping of tags to assign to the resource.
  GetAutoSnapshotPoliciesArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetAutoSnapshotPoliciesArgs.fromMap(Map<String, dynamic> map) {
    return GetAutoSnapshotPoliciesArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

