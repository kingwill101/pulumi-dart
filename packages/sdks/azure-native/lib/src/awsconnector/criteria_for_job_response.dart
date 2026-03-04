// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'simple_criterion_for_job_response.dart';
import 'tag_criterion_for_job_response.dart';

/// Definition of CriteriaForJob
class CriteriaForJobResponse {
  /// &lt;p&gt;A property-based condition that defines a property, operator, and one or more values for including or excluding buckets from the job.&lt;/p&gt;
  final pulumi.Input<SimpleCriterionForJobResponse>? simpleCriterion;

  /// &lt;p&gt;A tag-based condition that defines an operator and tag keys, tag values, or tag key and value pairs for including or excluding buckets from the job.&lt;/p&gt;
  final pulumi.Input<TagCriterionForJobResponse>? tagCriterion;

  /// Creates a new [CriteriaForJobResponse].
  /// [simpleCriterion] &lt;p&gt;A property-based condition that defines a property, operator, and one or more values for including or excluding buckets from the job.&lt;/p&gt;
  /// [tagCriterion] &lt;p&gt;A tag-based condition that defines an operator and tag keys, tag values, or tag key and value pairs for including or excluding buckets from the job.&lt;/p&gt;
  CriteriaForJobResponse({this.simpleCriterion, this.tagCriterion});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'simpleCriterion':
          ?pulumi.Input.mapOptionalInputValue<
            SimpleCriterionForJobResponse,
            Map<String, dynamic>
          >(simpleCriterion, (value) => value.toMap()),
      'tagCriterion':
          ?pulumi.Input.mapOptionalInputValue<
            TagCriterionForJobResponse,
            Map<String, dynamic>
          >(tagCriterion, (value) => value.toMap()),
    };
  }

  factory CriteriaForJobResponse.fromMap(Map<String, dynamic> map) {
    return CriteriaForJobResponse(
      simpleCriterion: (() {
        final guardedValue = map['simpleCriterion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SimpleCriterionForJobResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tagCriterion: (() {
        final guardedValue = map['tagCriterion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TagCriterionForJobResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
