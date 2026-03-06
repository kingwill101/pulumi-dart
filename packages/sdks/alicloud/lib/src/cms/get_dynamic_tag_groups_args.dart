// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cms_get_dynamic_tag_groups_get_dynamic_tag_groups_args_doc}
/// Arguments for getDynamicTagGroups.
/// {@endtemplate}
/// {@macro pulumi_cms_get_dynamic_tag_groups_get_dynamic_tag_groups_args_doc}
class GetDynamicTagGroupsArgs {
  /// A list of Dynamic Tag Group IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the resource. Valid values: `RUNNING`, `FINISH`.
  final pulumi.Input<String>? status;
  /// The tag key of the tag.
  final pulumi.Input<String>? tagKey;

  /// Creates a new [GetDynamicTagGroupsArgs].
  /// [ids] A list of Dynamic Tag Group IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the resource. Valid values: `RUNNING`, `FINISH`.
  /// [tagKey] The tag key of the tag.
  const GetDynamicTagGroupsArgs({
    this.ids,
    this.outputFile,
    this.status,
    this.tagKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'outputFile': ?outputFile,
      'status': ?status,
      'tagKey': ?tagKey,
    };
  }

  factory GetDynamicTagGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetDynamicTagGroupsArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tagKey: (() { final guardedValue = map['tagKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

