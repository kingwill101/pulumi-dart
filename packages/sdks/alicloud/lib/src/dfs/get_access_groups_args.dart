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
    this.ids,
    this.limit,
    this.nameRegex,
    this.orderBy,
    this.orderType,
    this.outputFile,
    this.startOffset,
  });

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
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      limit: map['limit'] == null ? null : (map['limit'] as int).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      orderBy: map['orderBy'] == null ? null : (map['orderBy'] as String).input(),
      orderType: map['orderType'] == null ? null : (map['orderType'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      startOffset: map['startOffset'] == null ? null : (map['startOffset'] as int).input(),
    );
  }
}

