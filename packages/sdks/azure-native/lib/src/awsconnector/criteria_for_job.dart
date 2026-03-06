// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'simple_criterion_for_job.dart';
import 'tag_criterion_for_job.dart';

/// Definition of CriteriaForJob
class CriteriaForJob {
  /// &lt;p&gt;A property-based condition that defines a property, operator, and one or more values for including or excluding buckets from the job.&lt;/p&gt;
  final pulumi.Input<SimpleCriterionForJob>? simpleCriterion;
  /// &lt;p&gt;A tag-based condition that defines an operator and tag keys, tag values, or tag key and value pairs for including or excluding buckets from the job.&lt;/p&gt;
  final pulumi.Input<TagCriterionForJob>? tagCriterion;

  /// Creates a new [CriteriaForJob].
  /// [simpleCriterion] &lt;p&gt;A property-based condition that defines a property, operator, and one or more values for including or excluding buckets from the job.&lt;/p&gt;
  /// [tagCriterion] &lt;p&gt;A tag-based condition that defines an operator and tag keys, tag values, or tag key and value pairs for including or excluding buckets from the job.&lt;/p&gt;
  const CriteriaForJob({
    this.simpleCriterion,
    this.tagCriterion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'simpleCriterion': ?pulumi.Input.mapOptionalInputValue<SimpleCriterionForJob, Map<String, dynamic>>(simpleCriterion, (value) => value.toMap()),
      'tagCriterion': ?pulumi.Input.mapOptionalInputValue<TagCriterionForJob, Map<String, dynamic>>(tagCriterion, (value) => value.toMap()),
    };
  }

  factory CriteriaForJob.fromMap(Map<String, dynamic> map) {
    return CriteriaForJob(
      simpleCriterion: (() { final guardedValue = map['simpleCriterion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SimpleCriterionForJob.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tagCriterion: (() { final guardedValue = map['tagCriterion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TagCriterionForJob.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

