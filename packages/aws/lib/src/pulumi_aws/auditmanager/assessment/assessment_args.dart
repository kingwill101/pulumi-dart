// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../assessment_assessment_reports_destination/assessment_assessment_reports_destination.dart';
import '../assessment_role/assessment_role.dart';
import '../assessment_scope/assessment_scope.dart';

/// The set of arguments for Assessment.
class AssessmentArgs {
  /// Assessment report storage destination configuration. See `assessment_reports_destination` below.
  final Input<AssessmentAssessmentReportsDestination>?
      assessmentReportsDestination;

  /// Description of the assessment.
  final Input<String>? description;

  /// Unique identifier of the framework the assessment will be created from.
  final Input<String> frameworkId;

  /// Name of the assessment.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// List of roles for the assessment. See `roles` below.
  final Input<List<AssessmentRole>> roles;

  /// Amazon Web Services accounts and services that are in scope for the assessment. See `scope` below.
  ///
  /// The following arguments are optional:
  final Input<AssessmentScope>? scope;

  /// A map of tags to assign to the assessment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  AssessmentArgs({
    this.assessmentReportsDestination,
    this.description,
    required this.frameworkId,
    this.name,
    this.region,
    required this.roles,
    this.scope,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final assessmentReportsDestinationValue = assessmentReportsDestination;
    if (assessmentReportsDestinationValue != null) {
      map['assessmentReportsDestination'] = Input.mapOptionalInputValue<
              AssessmentAssessmentReportsDestination, Map<String, dynamic>>(
          assessmentReportsDestinationValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['frameworkId'] = frameworkId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['roles'] =
        Input.mapInputValue<List<AssessmentRole>, List<Map<String, dynamic>>>(
            roles,
            (value) => Input.encodeList<AssessmentRole, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    final scopeValue = scope;
    if (scopeValue != null) {
      map['scope'] =
          Input.mapOptionalInputValue<AssessmentScope, Map<String, dynamic>>(
              scopeValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory AssessmentArgs.fromMap(Map<String, dynamic> map) {
    return AssessmentArgs(
      assessmentReportsDestination:
          Input.asOptionalInput<AssessmentAssessmentReportsDestination>(
              map['assessmentReportsDestination']),
      description: Input.asOptionalInput<String>(map['description']),
      frameworkId: Input.asInput<String>(map['frameworkId']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      roles: Input.asInput<List<AssessmentRole>>(map['roles']),
      scope: Input.asOptionalInput<AssessmentScope>(map['scope']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
