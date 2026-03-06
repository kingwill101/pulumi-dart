// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assessment_assessment_reports_destination.dart';
import 'assessment_role.dart';
import 'assessment_scope.dart';

/// {@template pulumi_auditmanager_assessment_assessment_args_doc}
/// The set of arguments for Assessment.
/// {@endtemplate}
/// {@macro pulumi_auditmanager_assessment_assessment_args_doc}
class AssessmentArgs {
  /// Assessment report storage destination configuration. See `assessment_reports_destination` below.
  final pulumi.Input<AssessmentAssessmentReportsDestination>? assessmentReportsDestination;
  /// Description of the assessment.
  final pulumi.Input<String>? description;
  /// Unique identifier of the framework the assessment will be created from.
  final pulumi.Input<String> frameworkId;
  /// Name of the assessment.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// List of roles for the assessment. See `roles` below.
  final pulumi.Input<List<AssessmentRole>> roles;
  /// Amazon Web Services accounts and services that are in scope for the assessment. See `scope` below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<AssessmentScope>? scope;
  /// A map of tags to assign to the assessment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AssessmentArgs].
  /// [assessmentReportsDestination] Assessment report storage destination configuration. See `assessment_reports_destination` below.
  /// [description] Description of the assessment.
  /// [frameworkId] Unique identifier of the framework the assessment will be created from.
  /// [name] Name of the assessment.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roles] List of roles for the assessment. See `roles` below.
  /// [scope] Amazon Web Services accounts and services that are in scope for the assessment. See `scope` below.
  /// [tags] A map of tags to assign to the assessment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const AssessmentArgs({
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
    return <String, dynamic>{
      'assessmentReportsDestination': ?pulumi.Input.mapOptionalInputValue<AssessmentAssessmentReportsDestination, Map<String, dynamic>>(assessmentReportsDestination, (value) => value.toMap()),
      'description': ?description,
      'frameworkId': frameworkId,
      'name': ?name,
      'region': ?region,
      'roles': pulumi.Input.mapInputValue<List<AssessmentRole>, List<Map<String, dynamic>>>(roles, (value) => pulumi.Input.encodeList<AssessmentRole, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scope': ?pulumi.Input.mapOptionalInputValue<AssessmentScope, Map<String, dynamic>>(scope, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory AssessmentArgs.fromMap(Map<String, dynamic> map) {
    return AssessmentArgs(
      assessmentReportsDestination: (() { final guardedValue = map['assessmentReportsDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssessmentAssessmentReportsDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frameworkId: pulumi.Input.fromValue(map['frameworkId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roles: pulumi.Input.fromValue(pulumi.Input.decodeList<AssessmentRole>(map['roles']!, (value) => AssessmentRole.fromMap((value as Map).cast<String, dynamic>()))),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssessmentScope.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

