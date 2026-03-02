// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_threatdetection_get_check_item_configs_get_check_item_configs_args_doc}
/// Arguments for getCheckItemConfigs.
/// {@endtemplate}
/// {@macro pulumi_threatdetection_get_check_item_configs_get_check_item_configs_args_doc}
class GetCheckItemConfigsArgs {
  /// A list of Check Item Config IDs.
  final pulumi.Input<List<String>>? ids;
  /// The language of the content within the request and response. Default value: **zh**. Valid value:*   **zh**: Chinese*   **en**: English
  final pulumi.Input<String>? lang;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Current page number.
  final pulumi.Input<int>? pageNumber;
  /// Number of records per page.
  final pulumi.Input<int>? pageSize;
  /// List of task sources.
  final pulumi.Input<List<String>>? taskSources;

  /// Creates a new [GetCheckItemConfigsArgs].
  /// [ids] A list of Check Item Config IDs.
  /// [lang] The language of the content within the request and response. Default value: **zh**. Valid value:*   **zh**: Chinese*   **en**: English
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Current page number.
  /// [pageSize] Number of records per page.
  /// [taskSources] List of task sources.
  GetCheckItemConfigsArgs({
    this.ids,
    this.lang,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.taskSources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'lang': ?lang,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'taskSources': ?taskSources,
    };
  }

  factory GetCheckItemConfigsArgs.fromMap(Map<String, dynamic> map) {
    return GetCheckItemConfigsArgs(
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      lang: map['lang'] == null ? null : (map['lang'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      pageNumber: map['pageNumber'] == null ? null : (map['pageNumber'] as int).input(),
      pageSize: map['pageSize'] == null ? null : (map['pageSize'] as int).input(),
      taskSources: map['taskSources'] == null ? null : ((map['taskSources'] as List).cast<String>()).input(),
    );
  }
}

