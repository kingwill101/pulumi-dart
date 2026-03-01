// ignore_for_file: unused_element, unnecessary_cast

import 'simple_criterion_for_job.dart';
import 'tag_criterion_for_job.dart';

/// Definition of CriteriaForJob
class CriteriaForJob {
  /// <p>A property-based condition that defines a property, operator, and one or more values for including or excluding buckets from the job.</p>
  final SimpleCriterionForJob? simpleCriterion;
  /// <p>A tag-based condition that defines an operator and tag keys, tag values, or tag key and value pairs for including or excluding buckets from the job.</p>
  final TagCriterionForJob? tagCriterion;

  /// Creates a new [CriteriaForJob].
  /// [simpleCriterion] <p>A property-based condition that defines a property, operator, and one or more values for including or excluding buckets from the job.</p>
  /// [tagCriterion] <p>A tag-based condition that defines an operator and tag keys, tag values, or tag key and value pairs for including or excluding buckets from the job.</p>
  CriteriaForJob({
    this.simpleCriterion,
    this.tagCriterion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'simpleCriterion': ?simpleCriterion == null ? null : simpleCriterion!.toMap(),
      'tagCriterion': ?tagCriterion == null ? null : tagCriterion!.toMap(),
    };
  }

  factory CriteriaForJob.fromMap(Map<String, dynamic> map) {
    return CriteriaForJob(
      simpleCriterion: map['simpleCriterion'] == null ? null : SimpleCriterionForJob.fromMap((map['simpleCriterion'] as Map).cast<String, dynamic>()),
      tagCriterion: map['tagCriterion'] == null ? null : TagCriterionForJob.fromMap((map['tagCriterion'] as Map).cast<String, dynamic>()),
    );
  }
}

