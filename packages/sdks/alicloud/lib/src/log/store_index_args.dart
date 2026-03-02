// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'store_index_field_search.dart';
import 'store_index_full_text.dart';

/// {@template pulumi_log_store_index_store_index_args_doc}
/// The set of arguments for StoreIndex.
/// {@endtemplate}
/// {@macro pulumi_log_store_index_store_index_args_doc}
class StoreIndexArgs {
  /// List configurations of field search index. See `field_search` below.
  ///
  /// > **Note:** At least one of the "full_text" and "field_search" should be specified.
  final pulumi.Input<List<StoreIndexFieldSearch>>? fieldSearches;
  /// The configuration of full text index. See `full_text` below.
  final pulumi.Input<StoreIndexFullText>? fullText;
  /// Whether to enable log reduce. Default to false.
  final pulumi.Input<bool>? logReduce;
  /// The black list of log reduce.
  final pulumi.Input<List<String>>? logReduceBlackLists;
  /// The white list of log reduce.
  final pulumi.Input<List<String>>? logReduceWhiteLists;
  /// The log store name to the query index belongs.
  final pulumi.Input<String> logstore;
  /// The max text length.
  final pulumi.Input<int>? maxTextLen;
  /// The project name to the log store belongs.
  final pulumi.Input<String> project;

  /// Creates a new [StoreIndexArgs].
  /// [fieldSearches] List configurations of field search index. See `field_search` below.
  /// [fullText] The configuration of full text index. See `full_text` below.
  /// [logReduce] Whether to enable log reduce. Default to false.
  /// [logReduceBlackLists] The black list of log reduce.
  /// [logReduceWhiteLists] The white list of log reduce.
  /// [logstore] The log store name to the query index belongs.
  /// [maxTextLen] The max text length.
  /// [project] The project name to the log store belongs.
  StoreIndexArgs({
    this.fieldSearches,
    this.fullText,
    this.logReduce,
    this.logReduceBlackLists,
    this.logReduceWhiteLists,
    required this.logstore,
    this.maxTextLen,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldSearches': ?pulumi.Input.mapOptionalInputValue<List<StoreIndexFieldSearch>, List<Map<String, dynamic>>>(fieldSearches, (value) => pulumi.Input.encodeList<StoreIndexFieldSearch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fullText': ?pulumi.Input.mapOptionalInputValue<StoreIndexFullText, Map<String, dynamic>>(fullText, (value) => value.toMap()),
      'logReduce': ?logReduce,
      'logReduceBlackLists': ?logReduceBlackLists,
      'logReduceWhiteLists': ?logReduceWhiteLists,
      'logstore': logstore,
      'maxTextLen': ?maxTextLen,
      'project': project,
    };
  }

  factory StoreIndexArgs.fromMap(Map<String, dynamic> map) {
    return StoreIndexArgs(
      fieldSearches: map['fieldSearches'] == null ? null : (pulumi.Input.decodeList<StoreIndexFieldSearch>(map['fieldSearches']!, (value) => StoreIndexFieldSearch.fromMap((value as Map).cast<String, dynamic>()))).input(),
      fullText: map['fullText'] == null ? null : (StoreIndexFullText.fromMap((map['fullText']! as Map).cast<String, dynamic>())).input(),
      logReduce: map['logReduce'] == null ? null : (map['logReduce']! as bool).input(),
      logReduceBlackLists: map['logReduceBlackLists'] == null ? null : ((map['logReduceBlackLists']! as List).cast<String>()).input(),
      logReduceWhiteLists: map['logReduceWhiteLists'] == null ? null : ((map['logReduceWhiteLists']! as List).cast<String>()).input(),
      logstore: (map['logstore'] as String).input(),
      maxTextLen: map['maxTextLen'] == null ? null : (map['maxTextLen']! as int).input(),
      project: (map['project'] as String).input(),
    );
  }
}

