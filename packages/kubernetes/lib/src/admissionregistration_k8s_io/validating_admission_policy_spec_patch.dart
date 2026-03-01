// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'audit_annotation_patch.dart';
import 'match_condition_patch.dart';
import 'match_resources_patch.dart';
import 'param_kind_patch.dart';
import 'validation_patch.dart';
import 'variable_patch.dart';

/// ValidatingAdmissionPolicySpec is the specification of the desired behavior of the AdmissionPolicy.
class ValidatingAdmissionPolicySpecPatch {
  /// auditAnnotations contains CEL expressions which are used to produce audit annotations for the audit event of the API request. validations and auditAnnotations may not both be empty; a least one of validations or auditAnnotations is required.
  final List<AuditAnnotationPatch>? auditAnnotations;
  /// failurePolicy defines how to handle failures for the admission policy. Failures can occur from CEL expression parse errors, type check errors, runtime errors and invalid or mis-configured policy definitions or bindings.
  ///
  /// A policy is invalid if spec.paramKind refers to a non-existent Kind. A binding is invalid if spec.paramRef.name refers to a non-existent resource.
  ///
  /// failurePolicy does not define how validations that evaluate to false are handled.
  ///
  /// When failurePolicy is set to Fail, ValidatingAdmissionPolicyBinding validationActions define how failures are enforced.
  ///
  /// Allowed values are Ignore or Fail. Defaults to Fail.
  final String? failurePolicy;
  /// MatchConditions is a list of conditions that must be met for a request to be validated. Match conditions filter requests that have already been matched by the rules, namespaceSelector, and objectSelector. An empty list of matchConditions matches all requests. There are a maximum of 64 match conditions allowed.
  ///
  /// If a parameter object is provided, it can be accessed via the `params` handle in the same manner as validation expressions.
  ///
  /// The exact matching logic is (in order):
  /// 1. If ANY matchCondition evaluates to FALSE, the policy is skipped.
  /// 2. If ALL matchConditions evaluate to TRUE, the policy is evaluated.
  /// 3. If any matchCondition evaluates to an error (but none are FALSE):
  /// - If failurePolicy=Fail, reject the request
  /// - If failurePolicy=Ignore, the policy is skipped
  final List<MatchConditionPatch>? matchConditions;
  /// MatchConstraints specifies what resources this policy is designed to validate. The AdmissionPolicy cares about a request if it matches _all_ Constraints. However, in order to prevent clusters from being put into an unstable state that cannot be recovered from via the API ValidatingAdmissionPolicy cannot match ValidatingAdmissionPolicy and ValidatingAdmissionPolicyBinding. Required.
  final MatchResourcesPatch? matchConstraints;
  /// ParamKind specifies the kind of resources used to parameterize this policy. If absent, there are no parameters for this policy and the param CEL variable will not be provided to validation expressions. If ParamKind refers to a non-existent kind, this policy definition is mis-configured and the FailurePolicy is applied. If paramKind is specified but paramRef is unset in ValidatingAdmissionPolicyBinding, the params variable will be null.
  final ParamKindPatch? paramKind;
  /// Validations contain CEL expressions which is used to apply the validation. Validations and AuditAnnotations may not both be empty; a minimum of one Validations or AuditAnnotations is required.
  final List<ValidationPatch>? validations;
  /// Variables contain definitions of variables that can be used in composition of other expressions. Each variable is defined as a named CEL expression. The variables defined here will be available under `variables` in other expressions of the policy except MatchConditions because MatchConditions are evaluated before the rest of the policy.
  ///
  /// The expression of a variable can refer to other variables defined earlier in the list but not those after. Thus, Variables must be sorted by the order of first appearance and acyclic.
  final List<VariablePatch>? variables;

  /// Creates a new [ValidatingAdmissionPolicySpecPatch].
  /// [auditAnnotations] auditAnnotations contains CEL expressions which are used to produce audit annotations for the audit event of the API request. validations and auditAnnotations may not both be empty; a least one of validations or auditAnnotations is required.
  /// [failurePolicy] failurePolicy defines how to handle failures for the admission policy. Failures can occur from CEL expression parse errors, type check errors, runtime errors and invalid or mis-configured policy definitions or bindings.
  /// [matchConditions] MatchConditions is a list of conditions that must be met for a request to be validated. Match conditions filter requests that have already been matched by the rules, namespaceSelector, and objectSelector. An empty list of matchConditions matches all requests. There are a maximum of 64 match conditions allowed.
  /// [matchConstraints] MatchConstraints specifies what resources this policy is designed to validate. The AdmissionPolicy cares about a request if it matches _all_ Constraints. However, in order to prevent clusters from being put into an unstable state that cannot be recovered from via the API ValidatingAdmissionPolicy cannot match ValidatingAdmissionPolicy and ValidatingAdmissionPolicyBinding. Required.
  /// [paramKind] ParamKind specifies the kind of resources used to parameterize this policy. If absent, there are no parameters for this policy and the param CEL variable will not be provided to validation expressions. If ParamKind refers to a non-existent kind, this policy definition is mis-configured and the FailurePolicy is applied. If paramKind is specified but paramRef is unset in ValidatingAdmissionPolicyBinding, the params variable will be null.
  /// [validations] Validations contain CEL expressions which is used to apply the validation. Validations and AuditAnnotations may not both be empty; a minimum of one Validations or AuditAnnotations is required.
  /// [variables] Variables contain definitions of variables that can be used in composition of other expressions. Each variable is defined as a named CEL expression. The variables defined here will be available under `variables` in other expressions of the policy except MatchConditions because MatchConditions are evaluated before the rest of the policy.
  ValidatingAdmissionPolicySpecPatch({
    this.auditAnnotations,
    this.failurePolicy,
    this.matchConditions,
    this.matchConstraints,
    this.paramKind,
    this.validations,
    this.variables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditAnnotations': ?auditAnnotations == null ? null : pulumi.Input.encodeList<AuditAnnotationPatch, Map<String, dynamic>>(auditAnnotations!, (value) => value.toMap()),
      'failurePolicy': ?failurePolicy,
      'matchConditions': ?matchConditions == null ? null : pulumi.Input.encodeList<MatchConditionPatch, Map<String, dynamic>>(matchConditions!, (value) => value.toMap()),
      'matchConstraints': ?matchConstraints == null ? null : matchConstraints!.toMap(),
      'paramKind': ?paramKind == null ? null : paramKind!.toMap(),
      'validations': ?validations == null ? null : pulumi.Input.encodeList<ValidationPatch, Map<String, dynamic>>(validations!, (value) => value.toMap()),
      'variables': ?variables == null ? null : pulumi.Input.encodeList<VariablePatch, Map<String, dynamic>>(variables!, (value) => value.toMap()),
    };
  }

  factory ValidatingAdmissionPolicySpecPatch.fromMap(Map<String, dynamic> map) {
    return ValidatingAdmissionPolicySpecPatch(
      auditAnnotations: map['auditAnnotations'] == null ? null : pulumi.Input.decodeList<AuditAnnotationPatch>(map['auditAnnotations'], (value) => AuditAnnotationPatch.fromMap((value as Map).cast<String, dynamic>())),
      failurePolicy: map['failurePolicy'] == null ? null : map['failurePolicy'] as String,
      matchConditions: map['matchConditions'] == null ? null : pulumi.Input.decodeList<MatchConditionPatch>(map['matchConditions'], (value) => MatchConditionPatch.fromMap((value as Map).cast<String, dynamic>())),
      matchConstraints: map['matchConstraints'] == null ? null : MatchResourcesPatch.fromMap((map['matchConstraints'] as Map).cast<String, dynamic>()),
      paramKind: map['paramKind'] == null ? null : ParamKindPatch.fromMap((map['paramKind'] as Map).cast<String, dynamic>()),
      validations: map['validations'] == null ? null : pulumi.Input.decodeList<ValidationPatch>(map['validations'], (value) => ValidationPatch.fromMap((value as Map).cast<String, dynamic>())),
      variables: map['variables'] == null ? null : pulumi.Input.decodeList<VariablePatch>(map['variables'], (value) => VariablePatch.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

