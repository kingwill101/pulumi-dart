// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../automation_rule_action_finding_fields_update_note/automation_rule_action_finding_fields_update_note.dart';
import '../automation_rule_action_finding_fields_update_related_finding/automation_rule_action_finding_fields_update_related_finding.dart';
import '../automation_rule_action_finding_fields_update_severity/automation_rule_action_finding_fields_update_severity.dart';
import '../automation_rule_action_finding_fields_update_workflow/automation_rule_action_finding_fields_update_workflow.dart';

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
    final map = <String, dynamic>{};
    final confidenceValue = confidence;
    if (confidenceValue != null) {
      map['confidence'] = confidenceValue;
    }
    final criticalityValue = criticality;
    if (criticalityValue != null) {
      map['criticality'] = criticalityValue;
    }
    final noteValue = note;
    if (noteValue != null) {
      map['note'] = noteValue.toMap();
    }
    final relatedFindingsValue = relatedFindings;
    if (relatedFindingsValue != null) {
      map['relatedFindings'] = Input.encodeList<
          AutomationRuleActionFindingFieldsUpdateRelatedFinding,
          Map<String, dynamic>>(relatedFindingsValue, (value) => value.toMap());
    }
    final severityValue = severity;
    if (severityValue != null) {
      map['severity'] = severityValue.toMap();
    }
    final typesValue = types;
    if (typesValue != null) {
      map['types'] = typesValue;
    }
    final userDefinedFieldsValue = userDefinedFields;
    if (userDefinedFieldsValue != null) {
      map['userDefinedFields'] = userDefinedFieldsValue;
    }
    final verificationStateValue = verificationState;
    if (verificationStateValue != null) {
      map['verificationState'] = verificationStateValue;
    }
    final workflowValue = workflow;
    if (workflowValue != null) {
      map['workflow'] = workflowValue.toMap();
    }
    return map;
  }

  factory AutomationRuleActionFindingFieldsUpdate.fromMap(
      Map<String, dynamic> map) {
    return AutomationRuleActionFindingFieldsUpdate(
      confidence: map['confidence'] == null ? null : map['confidence'] as int,
      criticality:
          map['criticality'] == null ? null : map['criticality'] as int,
      note: map['note'] == null
          ? null
          : AutomationRuleActionFindingFieldsUpdateNote.fromMap(
              (map['note'] as Map).cast<String, dynamic>()),
      relatedFindings: map['relatedFindings'] == null
          ? null
          : Input.decodeList<
                  AutomationRuleActionFindingFieldsUpdateRelatedFinding>(
              map['relatedFindings'],
              (value) =>
                  AutomationRuleActionFindingFieldsUpdateRelatedFinding.fromMap(
                      (value as Map).cast<String, dynamic>())),
      severity: map['severity'] == null
          ? null
          : AutomationRuleActionFindingFieldsUpdateSeverity.fromMap(
              (map['severity'] as Map).cast<String, dynamic>()),
      types:
          map['types'] == null ? null : (map['types'] as List).cast<String>(),
      userDefinedFields: map['userDefinedFields'] == null
          ? null
          : (map['userDefinedFields'] as Map).cast<String, String>(),
      verificationState: map['verificationState'] == null
          ? null
          : map['verificationState'] as String,
      workflow: map['workflow'] == null
          ? null
          : AutomationRuleActionFindingFieldsUpdateWorkflow.fromMap(
              (map['workflow'] as Map).cast<String, dynamic>()),
    );
  }
}
