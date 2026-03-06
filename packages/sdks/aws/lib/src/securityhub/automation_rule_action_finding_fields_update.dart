// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_rule_action_finding_fields_update_note.dart';
import 'automation_rule_action_finding_fields_update_related_finding.dart';
import 'automation_rule_action_finding_fields_update_severity.dart';
import 'automation_rule_action_finding_fields_update_workflow.dart';

class AutomationRuleActionFindingFieldsUpdate {
  /// The rule action updates the `Confidence` field of a finding.
  final pulumi.Input<int>? confidence;
  /// The rule action updates the `Criticality` field of a finding.
  final pulumi.Input<int>? criticality;
  /// A resource block that updates the note. Documented below.
  final pulumi.Input<AutomationRuleActionFindingFieldsUpdateNote>? note;
  /// A resource block that the rule action updates the `RelatedFindings` field of a finding. Documented below.
  final pulumi.Input<List<AutomationRuleActionFindingFieldsUpdateRelatedFinding>>? relatedFindings;
  /// A resource block that updates to the severity information for a finding. Documented below.
  final pulumi.Input<AutomationRuleActionFindingFieldsUpdateSeverity>? severity;
  /// The rule action updates the `Types` field of a finding.
  final pulumi.Input<List<String>>? types;
  /// The rule action updates the `UserDefinedFields` field of a finding.
  final pulumi.Input<Map<String, String>>? userDefinedFields;
  /// The rule action updates the `VerificationState` field of a finding. The allowed values are the following `UNKNOWN`, `TRUE_POSITIVE`, `FALSE_POSITIVE` and `BENIGN_POSITIVE`.
  final pulumi.Input<String>? verificationState;
  /// A resource block that is used to update information about the investigation into the finding. Documented below.
  final pulumi.Input<AutomationRuleActionFindingFieldsUpdateWorkflow>? workflow;

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
  const AutomationRuleActionFindingFieldsUpdate({
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
      'note': ?pulumi.Input.mapOptionalInputValue<AutomationRuleActionFindingFieldsUpdateNote, Map<String, dynamic>>(note, (value) => value.toMap()),
      'relatedFindings': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleActionFindingFieldsUpdateRelatedFinding>, List<Map<String, dynamic>>>(relatedFindings, (value) => pulumi.Input.encodeList<AutomationRuleActionFindingFieldsUpdateRelatedFinding, Map<String, dynamic>>(value, (value) => value.toMap())),
      'severity': ?pulumi.Input.mapOptionalInputValue<AutomationRuleActionFindingFieldsUpdateSeverity, Map<String, dynamic>>(severity, (value) => value.toMap()),
      'types': ?types,
      'userDefinedFields': ?userDefinedFields,
      'verificationState': ?verificationState,
      'workflow': ?pulumi.Input.mapOptionalInputValue<AutomationRuleActionFindingFieldsUpdateWorkflow, Map<String, dynamic>>(workflow, (value) => value.toMap()),
    };
  }

  factory AutomationRuleActionFindingFieldsUpdate.fromMap(Map<String, dynamic> map) {
    return AutomationRuleActionFindingFieldsUpdate(
      confidence: (() { final guardedValue = map['confidence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      criticality: (() { final guardedValue = map['criticality']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      note: (() { final guardedValue = map['note']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutomationRuleActionFindingFieldsUpdateNote.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      relatedFindings: (() { final guardedValue = map['relatedFindings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AutomationRuleActionFindingFieldsUpdateRelatedFinding>(guardedValue, (value) => AutomationRuleActionFindingFieldsUpdateRelatedFinding.fromMap((value as Map).cast<String, dynamic>()))); })(),
      severity: (() { final guardedValue = map['severity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutomationRuleActionFindingFieldsUpdateSeverity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      types: (() { final guardedValue = map['types']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      userDefinedFields: (() { final guardedValue = map['userDefinedFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      verificationState: (() { final guardedValue = map['verificationState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workflow: (() { final guardedValue = map['workflow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutomationRuleActionFindingFieldsUpdateWorkflow.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

