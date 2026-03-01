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
  AssessmentArgs({
    AssessmentAssessmentReportsDestination? assessmentReportsDestination,
    String? description,
    required String frameworkId,
    String? name,
    String? region,
    required List<AssessmentRole> roles,
    AssessmentScope? scope,
    Map<String, String>? tags,
  }) :
      assessmentReportsDestination = pulumi.Input.asOptionalInput<AssessmentAssessmentReportsDestination>(assessmentReportsDestination),
      description = pulumi.Input.asOptionalInput<String>(description),
      frameworkId = pulumi.Input.asInput<String>(frameworkId),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      roles = pulumi.Input.asInput<List<AssessmentRole>>(roles),
      scope = pulumi.Input.asOptionalInput<AssessmentScope>(scope),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      assessmentReportsDestination: map['assessmentReportsDestination'] == null ? null : AssessmentAssessmentReportsDestination.fromMap((map['assessmentReportsDestination'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      frameworkId: map['frameworkId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      roles: pulumi.Input.decodeList<AssessmentRole>(map['roles'], (value) => AssessmentRole.fromMap((value as Map).cast<String, dynamic>())),
      scope: map['scope'] == null ? null : AssessmentScope.fromMap((map['scope'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

