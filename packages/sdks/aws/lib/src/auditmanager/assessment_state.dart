// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assessment_assessment_reports_destination.dart';
import 'assessment_role.dart';
import 'assessment_roles_all.dart';
import 'assessment_scope.dart';

/// Input properties used for looking up and filtering Assessment resources.
class AssessmentState {
  /// Amazon Resource Name (ARN) of the assessment.
  final pulumi.Input<String>? arn;
  /// Assessment report storage destination configuration. See `assessment_reports_destination` below.
  final pulumi.Input<AssessmentAssessmentReportsDestination>? assessmentReportsDestination;
  /// Description of the assessment.
  final pulumi.Input<String>? description;
  /// Unique identifier of the framework the assessment will be created from.
  final pulumi.Input<String>? frameworkId;
  /// Name of the assessment.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// List of roles for the assessment. See `roles` below.
  final pulumi.Input<List<AssessmentRole>>? roles;
  /// Complete list of all roles with access to the assessment. This includes both roles explicitly configured via the `roles` block, and any roles which have access to all Audit Manager assessments by default.
  final pulumi.Input<List<AssessmentRolesAll>>? rolesAlls;
  /// Amazon Web Services accounts and services that are in scope for the assessment. See `scope` below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<AssessmentScope>? scope;
  /// Status of the assessment. Valid values are `ACTIVE` and `INACTIVE`.
  final pulumi.Input<String>? status;
  /// A map of tags to assign to the assessment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [AssessmentState].
  /// [arn] Amazon Resource Name (ARN) of the assessment.
  /// [assessmentReportsDestination] Assessment report storage destination configuration. See `assessment_reports_destination` below.
  /// [description] Description of the assessment.
  /// [frameworkId] Unique identifier of the framework the assessment will be created from.
  /// [name] Name of the assessment.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roles] List of roles for the assessment. See `roles` below.
  /// [rolesAlls] Complete list of all roles with access to the assessment. This includes both roles explicitly configured via the `roles` block, and any roles which have access to all Audit Manager assessments by default.
  /// [scope] Amazon Web Services accounts and services that are in scope for the assessment. See `scope` below.
  /// [status] Status of the assessment. Valid values are `ACTIVE` and `INACTIVE`.
  /// [tags] A map of tags to assign to the assessment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  AssessmentState({
    this.arn,
    this.assessmentReportsDestination,
    this.description,
    this.frameworkId,
    this.name,
    this.region,
    this.roles,
    this.rolesAlls,
    this.scope,
    this.status,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'assessmentReportsDestination': ?pulumi.Input.mapOptionalInputValue<AssessmentAssessmentReportsDestination, Map<String, dynamic>>(assessmentReportsDestination, (value) => value.toMap()),
      'description': ?description,
      'frameworkId': ?frameworkId,
      'name': ?name,
      'region': ?region,
      'roles': ?pulumi.Input.mapOptionalInputValue<List<AssessmentRole>, List<Map<String, dynamic>>>(roles, (value) => pulumi.Input.encodeList<AssessmentRole, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rolesAlls': ?pulumi.Input.mapOptionalInputValue<List<AssessmentRolesAll>, List<Map<String, dynamic>>>(rolesAlls, (value) => pulumi.Input.encodeList<AssessmentRolesAll, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scope': ?pulumi.Input.mapOptionalInputValue<AssessmentScope, Map<String, dynamic>>(scope, (value) => value.toMap()),
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory AssessmentState.fromMap(Map<String, dynamic> map) {
    return AssessmentState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      assessmentReportsDestination: (() { final guardedValue = map['assessmentReportsDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssessmentAssessmentReportsDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frameworkId: (() { final guardedValue = map['frameworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roles: (() { final guardedValue = map['roles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AssessmentRole>(guardedValue, (value) => AssessmentRole.fromMap((value as Map).cast<String, dynamic>()))); })(),
      rolesAlls: (() { final guardedValue = map['rolesAlls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AssessmentRolesAll>(guardedValue, (value) => AssessmentRolesAll.fromMap((value as Map).cast<String, dynamic>()))); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssessmentScope.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

