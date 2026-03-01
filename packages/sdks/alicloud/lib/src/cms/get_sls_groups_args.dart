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
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? keyword,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<int>? pageNumber,
    pulumi.Output<int>? pageSize,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      keyword = pulumi.Input.asOptionalInput<String>(keyword),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize);

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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      keyword: map['keyword'] == null ? null : pulumi.Output.create<String>(map['keyword'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      pageNumber: map['pageNumber'] == null ? null : pulumi.Output.create<int>(map['pageNumber'] as int),
      pageSize: map['pageSize'] == null ? null : pulumi.Output.create<int>(map['pageSize'] as int),
    );
  }
}

