// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'store_index_field_search.dart';
import 'store_index_full_text.dart';

/// Input properties used for looking up and filtering StoreIndex resources.
class StoreIndexState {
  /// List configurations of field search index. See `field_search` below.
  ///
  /// &gt; **Note:** At least one of the "full_text" and "field_search" should be specified.
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
  final pulumi.Input<String>? logstore;
  /// The max text length.
  final pulumi.Input<int>? maxTextLen;
  /// The project name to the log store belongs.
  final pulumi.Input<String>? project;

  /// Creates a new [StoreIndexState].
  /// [fieldSearches] List configurations of field search index. See `field_search` below.
  /// [fullText] The configuration of full text index. See `full_text` below.
  /// [logReduce] Whether to enable log reduce. Default to false.
  /// [logReduceBlackLists] The black list of log reduce.
  /// [logReduceWhiteLists] The white list of log reduce.
  /// [logstore] The log store name to the query index belongs.
  /// [maxTextLen] The max text length.
  /// [project] The project name to the log store belongs.
  const StoreIndexState({
    this.fieldSearches,
    this.fullText,
    this.logReduce,
    this.logReduceBlackLists,
    this.logReduceWhiteLists,
    this.logstore,
    this.maxTextLen,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldSearches': ?pulumi.Input.mapOptionalInputValue<List<StoreIndexFieldSearch>, List<Map<String, dynamic>>>(fieldSearches, (value) => pulumi.Input.encodeList<StoreIndexFieldSearch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fullText': ?pulumi.Input.mapOptionalInputValue<StoreIndexFullText, Map<String, dynamic>>(fullText, (value) => value.toMap()),
      'logReduce': ?logReduce,
      'logReduceBlackLists': ?logReduceBlackLists,
      'logReduceWhiteLists': ?logReduceWhiteLists,
      'logstore': ?logstore,
      'maxTextLen': ?maxTextLen,
      'project': ?project,
    };
  }

  factory StoreIndexState.fromMap(Map<String, dynamic> map) {
    return StoreIndexState(
      fieldSearches: (() { final guardedValue = map['fieldSearches']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StoreIndexFieldSearch>(guardedValue, (value) => StoreIndexFieldSearch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      fullText: (() { final guardedValue = map['fullText']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StoreIndexFullText.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logReduce: (() { final guardedValue = map['logReduce']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      logReduceBlackLists: (() { final guardedValue = map['logReduceBlackLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      logReduceWhiteLists: (() { final guardedValue = map['logReduceWhiteLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      logstore: (() { final guardedValue = map['logstore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxTextLen: (() { final guardedValue = map['maxTextLen']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

