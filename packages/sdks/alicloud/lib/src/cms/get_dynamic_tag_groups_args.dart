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
  GetDynamicTagGroupsArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
    pulumi.Output<String>? tagKey,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status),
      tagKey = pulumi.Input.asOptionalInput<String>(tagKey);

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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tagKey: map['tagKey'] == null ? null : pulumi.Output.create<String>(map['tagKey'] as String),
    );
  }
}

