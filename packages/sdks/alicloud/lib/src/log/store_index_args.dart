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
    pulumi.Output<List<StoreIndexFieldSearch>>? fieldSearches,
    pulumi.Output<StoreIndexFullText>? fullText,
    pulumi.Output<bool>? logReduce,
    pulumi.Output<List<String>>? logReduceBlackLists,
    pulumi.Output<List<String>>? logReduceWhiteLists,
    required pulumi.Output<String> logstore,
    pulumi.Output<int>? maxTextLen,
    required pulumi.Output<String> project,
  }) :
      fieldSearches = pulumi.Input.asOptionalInput<List<StoreIndexFieldSearch>>(fieldSearches),
      fullText = pulumi.Input.asOptionalInput<StoreIndexFullText>(fullText),
      logReduce = pulumi.Input.asOptionalInput<bool>(logReduce),
      logReduceBlackLists = pulumi.Input.asOptionalInput<List<String>>(logReduceBlackLists),
      logReduceWhiteLists = pulumi.Input.asOptionalInput<List<String>>(logReduceWhiteLists),
      logstore = pulumi.Input.asInput<String>(logstore),
      maxTextLen = pulumi.Input.asOptionalInput<int>(maxTextLen),
      project = pulumi.Input.asInput<String>(project);

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
      fieldSearches: map['fieldSearches'] == null ? null : pulumi.Output.create<List<StoreIndexFieldSearch>>(pulumi.Input.decodeList<StoreIndexFieldSearch>(map['fieldSearches'], (value) => StoreIndexFieldSearch.fromMap((value as Map).cast<String, dynamic>()))),
      fullText: map['fullText'] == null ? null : pulumi.Output.create<StoreIndexFullText>(StoreIndexFullText.fromMap((map['fullText'] as Map).cast<String, dynamic>())),
      logReduce: map['logReduce'] == null ? null : pulumi.Output.create<bool>(map['logReduce'] as bool),
      logReduceBlackLists: map['logReduceBlackLists'] == null ? null : pulumi.Output.create<List<String>>((map['logReduceBlackLists'] as List).cast<String>()),
      logReduceWhiteLists: map['logReduceWhiteLists'] == null ? null : pulumi.Output.create<List<String>>((map['logReduceWhiteLists'] as List).cast<String>()),
      logstore: pulumi.Output.create<String>(map['logstore'] as String),
      maxTextLen: map['maxTextLen'] == null ? null : pulumi.Output.create<int>(map['maxTextLen'] as int),
      project: pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

