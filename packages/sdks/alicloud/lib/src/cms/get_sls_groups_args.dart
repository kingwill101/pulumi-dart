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
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      keyword: map['keyword'] == null ? null : (map['keyword']! as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      pageNumber: map['pageNumber'] == null ? null : (map['pageNumber']! as int).input(),
      pageSize: map['pageSize'] == null ? null : (map['pageSize']! as int).input(),
    );
  }
}

