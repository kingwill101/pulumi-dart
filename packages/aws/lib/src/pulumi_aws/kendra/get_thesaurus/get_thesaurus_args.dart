// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getThesaurus.
class GetThesaurusArgs {
  /// Identifier of the index that contains the Thesaurus.
  final pulumi.Input<String> indexId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Metadata that helps organize the Thesaurus you create.
  final pulumi.Input<Map<String, String>>? tags;

  /// Identifier of the Thesaurus.
  final pulumi.Input<String> thesaurusId;

  GetThesaurusArgs({
    required this.indexId,
    this.region,
    this.tags,
    required this.thesaurusId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['indexId'] = indexId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['thesaurusId'] = thesaurusId;
    return map;
  }

  factory GetThesaurusArgs.fromMap(Map<String, dynamic> map) {
    return GetThesaurusArgs(
      indexId: pulumi.Input.asInput<String>(map['indexId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      thesaurusId: pulumi.Input.asInput<String>(map['thesaurusId']),
    );
  }
}
