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
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? lang,
    pulumi.Output<String>? outputFile,
    pulumi.Output<int>? pageNumber,
    pulumi.Output<int>? pageSize,
    pulumi.Output<List<String>>? taskSources,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      lang = pulumi.Input.asOptionalInput<String>(lang),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      taskSources = pulumi.Input.asOptionalInput<List<String>>(taskSources);

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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      lang: map['lang'] == null ? null : pulumi.Output.create<String>(map['lang'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      pageNumber: map['pageNumber'] == null ? null : pulumi.Output.create<int>(map['pageNumber'] as int),
      pageSize: map['pageSize'] == null ? null : pulumi.Output.create<int>(map['pageSize'] as int),
      taskSources: map['taskSources'] == null ? null : pulumi.Output.create<List<String>>((map['taskSources'] as List).cast<String>()),
    );
  }
}

