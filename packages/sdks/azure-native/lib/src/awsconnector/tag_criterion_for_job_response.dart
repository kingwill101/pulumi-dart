// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_comparator_enum_value_response.dart';
import 'tag_criterion_pair_for_job_response.dart';

/// Definition of TagCriterionForJob
class TagCriterionForJobResponse {
  /// &lt;p&gt;The operator to use in the condition. Valid values are EQ (equals) and NE (not equals).&lt;/p&gt;
  final pulumi.Input<JobComparatorEnumValueResponse>? comparator;
  /// &lt;p&gt;The tag keys, tag values, or tag key and value pairs to use in the condition.&lt;/p&gt;
  final pulumi.Input<List<TagCriterionPairForJobResponse>>? tagValues;

  /// Creates a new [TagCriterionForJobResponse].
  /// [comparator] &lt;p&gt;The operator to use in the condition. Valid values are EQ (equals) and NE (not equals).&lt;/p&gt;
  /// [tagValues] &lt;p&gt;The tag keys, tag values, or tag key and value pairs to use in the condition.&lt;/p&gt;
  const TagCriterionForJobResponse({
    this.comparator,
    this.tagValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparator': ?pulumi.Input.mapOptionalInputValue<JobComparatorEnumValueResponse, Map<String, dynamic>>(comparator, (value) => value.toMap()),
      'tagValues': ?pulumi.Input.mapOptionalInputValue<List<TagCriterionPairForJobResponse>, List<Map<String, dynamic>>>(tagValues, (value) => pulumi.Input.encodeList<TagCriterionPairForJobResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TagCriterionForJobResponse.fromMap(Map<String, dynamic> map) {
    return TagCriterionForJobResponse(
      comparator: (() { final guardedValue = map['comparator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobComparatorEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tagValues: (() { final guardedValue = map['tagValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TagCriterionPairForJobResponse>(guardedValue, (value) => TagCriterionPairForJobResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
