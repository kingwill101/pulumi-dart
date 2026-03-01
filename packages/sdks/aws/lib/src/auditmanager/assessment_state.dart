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
    pulumi.Output<String>? arn,
    pulumi.Output<AssessmentAssessmentReportsDestination>? assessmentReportsDestination,
    pulumi.Output<String>? description,
    pulumi.Output<String>? frameworkId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<List<AssessmentRole>>? roles,
    pulumi.Output<List<AssessmentRolesAll>>? rolesAlls,
    pulumi.Output<AssessmentScope>? scope,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      assessmentReportsDestination = pulumi.Input.asOptionalInput<AssessmentAssessmentReportsDestination>(assessmentReportsDestination),
      description = pulumi.Input.asOptionalInput<String>(description),
      frameworkId = pulumi.Input.asOptionalInput<String>(frameworkId),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      roles = pulumi.Input.asOptionalInput<List<AssessmentRole>>(roles),
      rolesAlls = pulumi.Input.asOptionalInput<List<AssessmentRolesAll>>(rolesAlls),
      scope = pulumi.Input.asOptionalInput<AssessmentScope>(scope),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      assessmentReportsDestination: map['assessmentReportsDestination'] == null ? null : pulumi.Output.create<AssessmentAssessmentReportsDestination>(AssessmentAssessmentReportsDestination.fromMap((map['assessmentReportsDestination'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      frameworkId: map['frameworkId'] == null ? null : pulumi.Output.create<String>(map['frameworkId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roles: map['roles'] == null ? null : pulumi.Output.create<List<AssessmentRole>>(pulumi.Input.decodeList<AssessmentRole>(map['roles'], (value) => AssessmentRole.fromMap((value as Map).cast<String, dynamic>()))),
      rolesAlls: map['rolesAlls'] == null ? null : pulumi.Output.create<List<AssessmentRolesAll>>(pulumi.Input.decodeList<AssessmentRolesAll>(map['rolesAlls'], (value) => AssessmentRolesAll.fromMap((value as Map).cast<String, dynamic>()))),
      scope: map['scope'] == null ? null : pulumi.Output.create<AssessmentScope>(AssessmentScope.fromMap((map['scope'] as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

