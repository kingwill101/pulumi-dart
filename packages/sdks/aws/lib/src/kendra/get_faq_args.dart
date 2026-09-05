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
  final pulumi.Input<String?>? region;
  /// Metadata that helps organize the FAQs you create.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [GetFaqArgs].
  /// [faqId] Identifier of the FAQ.
  /// [indexId] Identifier of the index that contains the FAQ.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Metadata that helps organize the FAQs you create.
  const GetFaqArgs({
    required this.faqId,
    required this.indexId,
    this.region,
    this.tags,
  });

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
      faqId: pulumi.Input.fromValue(map['faqId'] as String),
      indexId: pulumi.Input.fromValue(map['indexId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
