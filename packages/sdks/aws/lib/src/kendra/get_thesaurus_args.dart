// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kendra_get_thesaurus_get_thesaurus_args_doc}
/// Arguments for getThesaurus.
/// {@endtemplate}
/// {@macro pulumi_kendra_get_thesaurus_get_thesaurus_args_doc}
class GetThesaurusArgs {
  /// Identifier of the index that contains the Thesaurus.
  final pulumi.Input<String> indexId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Metadata that helps organize the Thesaurus you create.
  final pulumi.Input<Map<String, String>>? tags;
  /// Identifier of the Thesaurus.
  final pulumi.Input<String> thesaurusId;

  /// Creates a new [GetThesaurusArgs].
  /// [indexId] Identifier of the index that contains the Thesaurus.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Metadata that helps organize the Thesaurus you create.
  /// [thesaurusId] Identifier of the Thesaurus.
  GetThesaurusArgs({
    required this.indexId,
    this.region,
    this.tags,
    required this.thesaurusId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indexId': indexId,
      'region': ?region,
      'tags': ?tags,
      'thesaurusId': thesaurusId,
    };
  }

  factory GetThesaurusArgs.fromMap(Map<String, dynamic> map) {
    return GetThesaurusArgs(
      indexId: (map['indexId'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      thesaurusId: (map['thesaurusId'] as String).input(),
    );
  }
}

