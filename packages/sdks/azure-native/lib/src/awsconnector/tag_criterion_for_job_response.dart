// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_comparator_enum_value_response.dart';
import 'tag_criterion_pair_for_job_response.dart';

/// Definition of TagCriterionForJob
class TagCriterionForJobResponse {
  /// <p>The operator to use in the condition. Valid values are EQ (equals) and NE (not equals).</p>
  final JobComparatorEnumValueResponse? comparator;
  /// <p>The tag keys, tag values, or tag key and value pairs to use in the condition.</p>
  final List<TagCriterionPairForJobResponse>? tagValues;

  /// Creates a new [TagCriterionForJobResponse].
  /// [comparator] <p>The operator to use in the condition. Valid values are EQ (equals) and NE (not equals).</p>
  /// [tagValues] <p>The tag keys, tag values, or tag key and value pairs to use in the condition.</p>
  TagCriterionForJobResponse({
    this.comparator,
    this.tagValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparator': ?comparator == null ? null : comparator!.toMap(),
      'tagValues': ?tagValues == null ? null : pulumi.Input.encodeList<TagCriterionPairForJobResponse, Map<String, dynamic>>(tagValues!, (value) => value.toMap()),
    };
  }

  factory TagCriterionForJobResponse.fromMap(Map<String, dynamic> map) {
    return TagCriterionForJobResponse(
      comparator: map['comparator'] == null ? null : JobComparatorEnumValueResponse.fromMap((map['comparator'] as Map).cast<String, dynamic>()),
      tagValues: map['tagValues'] == null ? null : pulumi.Input.decodeList<TagCriterionPairForJobResponse>(map['tagValues'], (value) => TagCriterionPairForJobResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

