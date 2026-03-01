// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_threatdetection_get_check_structures_get_check_structures_args_doc}
/// Arguments for getCheckStructures.
/// {@endtemplate}
/// {@macro pulumi_threatdetection_get_check_structures_get_check_structures_args_doc}
class GetCheckStructuresArgs {
  /// The page number.
  final pulumi.Input<int>? currentPage;
  /// A list of Check Structure IDs.
  final pulumi.Input<List<String>>? ids;
  /// The language of the content within the request and response. Default value: zh. Valid values:- **zh**: Chinese- **en**: English
  final pulumi.Input<String>? lang;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// List of task sources.
  final pulumi.Input<List<String>>? taskSources;

  /// Creates a new [GetCheckStructuresArgs].
  /// [currentPage] The page number.
  /// [ids] A list of Check Structure IDs.
  /// [lang] The language of the content within the request and response. Default value: zh. Valid values:- **zh**: Chinese- **en**: English
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [taskSources] List of task sources.
  GetCheckStructuresArgs({
    int? currentPage,
    List<String>? ids,
    String? lang,
    String? outputFile,
    List<String>? taskSources,
  }) :
      currentPage = pulumi.Input.asOptionalInput<int>(currentPage),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      lang = pulumi.Input.asOptionalInput<String>(lang),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      taskSources = pulumi.Input.asOptionalInput<List<String>>(taskSources);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentPage': ?currentPage,
      'ids': ?ids,
      'lang': ?lang,
      'outputFile': ?outputFile,
      'taskSources': ?taskSources,
    };
  }

  factory GetCheckStructuresArgs.fromMap(Map<String, dynamic> map) {
    return GetCheckStructuresArgs(
      currentPage: map['currentPage'] == null ? null : map['currentPage'] as int,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      lang: map['lang'] == null ? null : map['lang'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      taskSources: map['taskSources'] == null ? null : (map['taskSources'] as List).cast<String>(),
    );
  }
}

