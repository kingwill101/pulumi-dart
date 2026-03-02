// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_comparator_enum_value.dart';
import 'tag_criterion_pair_for_job.dart';

/// Definition of TagCriterionForJob
class TagCriterionForJob {
  /// <p>The operator to use in the condition. Valid values are EQ (equals) and NE (not equals).</p>
  final pulumi.Input<JobComparatorEnumValue>? comparator;
  /// <p>The tag keys, tag values, or tag key and value pairs to use in the condition.</p>
  final pulumi.Input<List<TagCriterionPairForJob>>? tagValues;

  /// Creates a new [TagCriterionForJob].
  /// [comparator] <p>The operator to use in the condition. Valid values are EQ (equals) and NE (not equals).</p>
  /// [tagValues] <p>The tag keys, tag values, or tag key and value pairs to use in the condition.</p>
  TagCriterionForJob({
    this.comparator,
    this.tagValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparator': ?pulumi.Input.mapOptionalInputValue<JobComparatorEnumValue, Map<String, dynamic>>(comparator, (value) => value.toMap()),
      'tagValues': ?pulumi.Input.mapOptionalInputValue<List<TagCriterionPairForJob>, List<Map<String, dynamic>>>(tagValues, (value) => pulumi.Input.encodeList<TagCriterionPairForJob, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TagCriterionForJob.fromMap(Map<String, dynamic> map) {
    return TagCriterionForJob(
      comparator: map['comparator'] == null ? null : (JobComparatorEnumValue.fromMap((map['comparator'] as Map).cast<String, dynamic>())).input(),
      tagValues: map['tagValues'] == null ? null : (pulumi.Input.decodeList<TagCriterionPairForJob>(map['tagValues'], (value) => TagCriterionPairForJob.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

