// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFaq.
class GetFaqArgs {
  /// Identifier of the FAQ.
  final pulumi.Input<String> faqId;

  /// Identifier of the index that contains the FAQ.
  final pulumi.Input<String> indexId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Metadata that helps organize the FAQs you create.
  final pulumi.Input<Map<String, String>>? tags;

  GetFaqArgs({
    required this.faqId,
    required this.indexId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['faqId'] = faqId;
    map['indexId'] = indexId;
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

  factory GetFaqArgs.fromMap(Map<String, dynamic> map) {
    return GetFaqArgs(
      faqId: pulumi.Input.asInput<String>(map['faqId']),
      indexId: pulumi.Input.asInput<String>(map['indexId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
