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
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      limit: (() { final guardedValue = map['limit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orderType: (() { final guardedValue = map['orderType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startOffset: (() { final guardedValue = map['startOffset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

