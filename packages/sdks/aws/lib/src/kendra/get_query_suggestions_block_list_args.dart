// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kendra_get_query_suggestions_block_list_get_query_suggestions_block_list_args_doc}
/// Arguments for getQuerySuggestionsBlockList.
/// {@endtemplate}
/// {@macro pulumi_kendra_get_query_suggestions_block_list_get_query_suggestions_block_list_args_doc}
class GetQuerySuggestionsBlockListArgs {
  /// Identifier of the index that contains the block list.
  final pulumi.Input<String> indexId;
  /// Identifier of the block list.
  final pulumi.Input<String> querySuggestionsBlockListId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Metadata that helps organize the block list you create.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetQuerySuggestionsBlockListArgs].
  /// [indexId] Identifier of the index that contains the block list.
  /// [querySuggestionsBlockListId] Identifier of the block list.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Metadata that helps organize the block list you create.
  const GetQuerySuggestionsBlockListArgs({
    required this.indexId,
    required this.querySuggestionsBlockListId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indexId': indexId,
      'querySuggestionsBlockListId': querySuggestionsBlockListId,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetQuerySuggestionsBlockListArgs.fromMap(Map<String, dynamic> map) {
    return GetQuerySuggestionsBlockListArgs(
      indexId: pulumi.Input.fromValue(map['indexId'] as String),
      querySuggestionsBlockListId: pulumi.Input.fromValue(map['querySuggestionsBlockListId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
