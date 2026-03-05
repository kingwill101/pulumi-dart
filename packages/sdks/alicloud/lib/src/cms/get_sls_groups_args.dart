// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cms_get_sls_groups_get_sls_groups_args_doc}
/// Arguments for getSlsGroups.
/// {@endtemplate}
/// {@macro pulumi_cms_get_sls_groups_get_sls_groups_args_doc}
class GetSlsGroupsArgs {
  /// A list of Sls Group IDs. Its element value is same as Sls Group Name.
  final pulumi.Input<List<String>>? ids;
  /// The keywords of the `sls_group_name` or `sls_group_description` of the Sls Group.
  final pulumi.Input<String>? keyword;
  /// A regex string to filter results by Sls Group name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;

  /// Creates a new [GetSlsGroupsArgs].
  /// [ids] A list of Sls Group IDs. Its element value is same as Sls Group Name.
  /// [keyword] The keywords of the `sls_group_name` or `sls_group_description` of the Sls Group.
  /// [nameRegex] A regex string to filter results by Sls Group name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  GetSlsGroupsArgs({
    this.ids,
    this.keyword,
    this.nameRegex,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'keyword': ?keyword,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
    };
  }

  factory GetSlsGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetSlsGroupsArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      keyword: (() { final guardedValue = map['keyword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

