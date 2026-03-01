// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dfs_get_access_groups_get_access_groups_args_doc}
/// Arguments for getAccessGroups.
/// {@endtemplate}
/// {@macro pulumi_dfs_get_access_groups_get_access_groups_args_doc}
class GetAccessGroupsArgs {
  /// A list of Access Group IDs.
  final pulumi.Input<List<String>>? ids;
  final pulumi.Input<int>? limit;
  /// A regex string to filter results by Access Group name.
  final pulumi.Input<String>? nameRegex;
  final pulumi.Input<String>? orderBy;
  final pulumi.Input<String>? orderType;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? startOffset;

  /// Creates a new [GetAccessGroupsArgs].
  /// [ids] A list of Access Group IDs.
  /// [limit] Optional.
  /// [nameRegex] A regex string to filter results by Access Group name.
  /// [orderBy] Optional.
  /// [orderType] Optional.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [startOffset] Optional.
  GetAccessGroupsArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<int>? limit,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? orderBy,
    pulumi.Output<String>? orderType,
    pulumi.Output<String>? outputFile,
    pulumi.Output<int>? startOffset,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      limit = pulumi.Input.asOptionalInput<int>(limit),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      orderBy = pulumi.Input.asOptionalInput<String>(orderBy),
      orderType = pulumi.Input.asOptionalInput<String>(orderType),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      startOffset = pulumi.Input.asOptionalInput<int>(startOffset);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'limit': ?limit,
      'nameRegex': ?nameRegex,
      'orderBy': ?orderBy,
      'orderType': ?orderType,
      'outputFile': ?outputFile,
      'startOffset': ?startOffset,
    };
  }

  factory GetAccessGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessGroupsArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      limit: map['limit'] == null ? null : pulumi.Output.create<int>(map['limit'] as int),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      orderBy: map['orderBy'] == null ? null : pulumi.Output.create<String>(map['orderBy'] as String),
      orderType: map['orderType'] == null ? null : pulumi.Output.create<String>(map['orderType'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      startOffset: map['startOffset'] == null ? null : pulumi.Output.create<int>(map['startOffset'] as int),
    );
  }
}

