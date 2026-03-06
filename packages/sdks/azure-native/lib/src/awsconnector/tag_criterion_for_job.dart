// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_comparator_enum_value.dart';
import 'tag_criterion_pair_for_job.dart';

/// Definition of TagCriterionForJob
class TagCriterionForJob {
  /// &lt;p&gt;The operator to use in the condition. Valid values are EQ (equals) and NE (not equals).&lt;/p&gt;
  final pulumi.Input<JobComparatorEnumValue>? comparator;
  /// &lt;p&gt;The tag keys, tag values, or tag key and value pairs to use in the condition.&lt;/p&gt;
  final pulumi.Input<List<TagCriterionPairForJob>>? tagValues;

  /// Creates a new [TagCriterionForJob].
  /// [comparator] &lt;p&gt;The operator to use in the condition. Valid values are EQ (equals) and NE (not equals).&lt;/p&gt;
  /// [tagValues] &lt;p&gt;The tag keys, tag values, or tag key and value pairs to use in the condition.&lt;/p&gt;
  const TagCriterionForJob({
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
      comparator: (() { final guardedValue = map['comparator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobComparatorEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tagValues: (() { final guardedValue = map['tagValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TagCriterionPairForJob>(guardedValue, (value) => TagCriterionPairForJob.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

