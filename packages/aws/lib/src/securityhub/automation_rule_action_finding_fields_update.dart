// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_rule_action_finding_fields_update_note.dart';
import 'automation_rule_action_finding_fields_update_related_finding.dart';
import 'automation_rule_action_finding_fields_update_severity.dart';
import 'automation_rule_action_finding_fields_update_workflow.dart';

class AutomationRuleActionFindingFieldsUpdate {
  /// The rule action updates the `Confidence` field of a finding.
  final int? confidence;

  /// The rule action updates the `Criticality` field of a finding.
  final int? criticality;

  /// A resource block that updates the note. Documented below.
  final AutomationRuleActionFindingFieldsUpdateNote? note;

  /// A resource block that the rule action updates the `RelatedFindings` field of a finding. Documented below.
  final List<AutomationRuleActionFindingFieldsUpdateRelatedFinding>?
  relatedFindings;

  /// A resource block that updates to the severity information for a finding. Documented below.
  final AutomationRuleActionFindingFieldsUpdateSeverity? severity;

  /// The rule action updates the `Types` field of a finding.
  final List<String>? types;

  /// The rule action updates the `UserDefinedFields` field of a finding.
  final Map<String, String>? userDefinedFields;

  /// The rule action updates the `VerificationState` field of a finding. The allowed values are the following `UNKNOWN`, `TRUE_POSITIVE`, `FALSE_POSITIVE` and `BENIGN_POSITIVE`.
  final String? verificationState;

  /// A resource block that is used to update information about the investigation into the finding. Documented below.
  final AutomationRuleActionFindingFieldsUpdateWorkflow? workflow;

  /// Creates a new [AutomationRuleActionFindingFieldsUpdate].
  /// [confidence] The rule action updates the `Confidence` field of a finding.
  /// [criticality] The rule action updates the `Criticality` field of a finding.
  /// [note] A resource block that updates the note. Documented below.
  /// [relatedFindings] A resource block that the rule action updates the `RelatedFindings` field of a finding. Documented below.
  /// [severity] A resource block that updates to the severity information for a finding. Documented below.
  /// [types] The rule action updates the `Types` field of a finding.
  /// [userDefinedFields] The rule action updates the `UserDefinedFields` field of a finding.
  /// [verificationState] The rule action updates the `VerificationState` field of a finding. The allowed values are the following `UNKNOWN`, `TRUE_POSITIVE`, `FALSE_POSITIVE` and `BENIGN_POSITIVE`.
  /// [workflow] A resource block that is used to update information about the investigation into the finding. Documented below.
  AutomationRuleActionFindingFieldsUpdate({
    this.confidence,
    this.criticality,
    this.note,
    this.relatedFindings,
    this.severity,
    this.types,
    this.userDefinedFields,
    this.verificationState,
    this.workflow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidence': ?confidence,
      'criticality': ?criticality,
      'note': ?note == null ? null : note!.toMap(),
      'relatedFindings': ?relatedFindings == null
          ? null
          : pulumi.Input.encodeList<
              AutomationRuleActionFindingFieldsUpdateRelatedFinding,
              Map<String, dynamic>
            >(relatedFindings!, (value) => value.toMap()),
      'severity': ?severity == null ? null : severity!.toMap(),
      'types': ?types,
      'userDefinedFields': ?userDefinedFields,
      'verificationState': ?verificationState,
      'workflow': ?workflow == null ? null : workflow!.toMap(),
    };
  }

  factory AutomationRuleActionFindingFieldsUpdate.fromMap(
    Map<String, dynamic> map,
  ) {
    return AutomationRuleActionFindingFieldsUpdate(
      confidence: map['confidence'] == null ? null : map['confidence'] as int,
      criticality: map['criticality'] == null
          ? null
          : map['criticality'] as int,
      note: map['note'] == null
          ? null
          : AutomationRuleActionFindingFieldsUpdateNote.fromMap(
              (map['note'] as Map).cast<String, dynamic>(),
            ),
      relatedFindings: map['relatedFindings'] == null
          ? null
          : pulumi.Input.decodeList<
              AutomationRuleActionFindingFieldsUpdateRelatedFinding
            >(
              map['relatedFindings'],
              (value) =>
                  AutomationRuleActionFindingFieldsUpdateRelatedFinding.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      severity: map['severity'] == null
          ? null
          : AutomationRuleActionFindingFieldsUpdateSeverity.fromMap(
              (map['severity'] as Map).cast<String, dynamic>(),
            ),
      types: map['types'] == null
          ? null
          : (map['types'] as List).cast<String>(),
      userDefinedFields: map['userDefinedFields'] == null
          ? null
          : (map['userDefinedFields'] as Map).cast<String, String>(),
      verificationState: map['verificationState'] == null
          ? null
          : map['verificationState'] as String,
      workflow: map['workflow'] == null
          ? null
          : AutomationRuleActionFindingFieldsUpdateWorkflow.fromMap(
              (map['workflow'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
