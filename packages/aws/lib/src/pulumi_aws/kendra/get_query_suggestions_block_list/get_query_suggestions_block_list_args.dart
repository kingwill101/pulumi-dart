// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getQuerySuggestionsBlockList.
class GetQuerySuggestionsBlockListArgs {
  /// Identifier of the index that contains the block list.
  final Input<String> indexId;

  /// Identifier of the block list.
  final Input<String> querySuggestionsBlockListId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Metadata that helps organize the block list you create.
  final Input<Map<String, String>>? tags;

  GetQuerySuggestionsBlockListArgs({
    required this.indexId,
    required this.querySuggestionsBlockListId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['indexId'] = indexId;
    map['querySuggestionsBlockListId'] = querySuggestionsBlockListId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetQuerySuggestionsBlockListArgs.fromMap(Map<String, dynamic> map) {
    return GetQuerySuggestionsBlockListArgs(
      indexId: Input.asInput<String>(map['indexId']),
      querySuggestionsBlockListId:
          Input.asInput<String>(map['querySuggestionsBlockListId']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
