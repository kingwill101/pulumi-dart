// ignore_for_file: unused_element, unnecessary_cast

import 'simple_criterion_for_job_response.dart';
import 'tag_criterion_for_job_response.dart';

/// Definition of CriteriaForJob
class CriteriaForJobResponse {
  /// <p>A property-based condition that defines a property, operator, and one or more values for including or excluding buckets from the job.</p>
  final SimpleCriterionForJobResponse? simpleCriterion;
  /// <p>A tag-based condition that defines an operator and tag keys, tag values, or tag key and value pairs for including or excluding buckets from the job.</p>
  final TagCriterionForJobResponse? tagCriterion;

  /// Creates a new [CriteriaForJobResponse].
  /// [simpleCriterion] <p>A property-based condition that defines a property, operator, and one or more values for including or excluding buckets from the job.</p>
  /// [tagCriterion] <p>A tag-based condition that defines an operator and tag keys, tag values, or tag key and value pairs for including or excluding buckets from the job.</p>
  CriteriaForJobResponse({
    this.simpleCriterion,
    this.tagCriterion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'simpleCriterion': ?simpleCriterion == null ? null : simpleCriterion!.toMap(),
      'tagCriterion': ?tagCriterion == null ? null : tagCriterion!.toMap(),
    };
  }

  factory CriteriaForJobResponse.fromMap(Map<String, dynamic> map) {
    return CriteriaForJobResponse(
      simpleCriterion: map['simpleCriterion'] == null ? null : SimpleCriterionForJobResponse.fromMap((map['simpleCriterion'] as Map).cast<String, dynamic>()),
      tagCriterion: map['tagCriterion'] == null ? null : TagCriterionForJobResponse.fromMap((map['tagCriterion'] as Map).cast<String, dynamic>()),
    );
  }
}

