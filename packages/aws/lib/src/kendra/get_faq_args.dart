// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kendra_get_faq_get_faq_args_doc}
/// Arguments for getFaq.
/// {@endtemplate}
/// {@macro pulumi_kendra_get_faq_get_faq_args_doc}
class GetFaqArgs {
  /// Identifier of the FAQ.
  final pulumi.Input<String> faqId;
  /// Identifier of the index that contains the FAQ.
  final pulumi.Input<String> indexId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Metadata that helps organize the FAQs you create.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetFaqArgs].
  /// [faqId] Identifier of the FAQ.
  /// [indexId] Identifier of the index that contains the FAQ.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Metadata that helps organize the FAQs you create.
  GetFaqArgs({
    required String faqId,
    required String indexId,
    String? region,
    Map<String, String>? tags,
  }) :
      faqId = pulumi.Input.asInput<String>(faqId),
      indexId = pulumi.Input.asInput<String>(indexId),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'faqId': faqId,
      'indexId': indexId,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetFaqArgs.fromMap(Map<String, dynamic> map) {
    return GetFaqArgs(
      faqId: map['faqId'] as String,
      indexId: map['indexId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

