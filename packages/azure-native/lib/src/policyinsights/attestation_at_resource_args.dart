// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attestation_evidence.dart';

/// {@template pulumi_policyinsights_attestation_at_resource_args_doc}
/// The set of arguments for AttestationAtResource.
/// {@endtemplate}
/// {@macro pulumi_policyinsights_attestation_at_resource_args_doc}
class AttestationAtResourceArgs {
  /// The time the evidence was assessed
  final pulumi.Input<String>? assessmentDate;
  /// The name of the attestation.
  final pulumi.Input<String>? attestationName;
  /// Comments describing why this attestation was created.
  final pulumi.Input<String>? comments;
  /// The compliance state that should be set on the resource.
  final pulumi.Input<String>? complianceState;
  /// The evidence supporting the compliance state set in this attestation.
  final pulumi.Input<List<AttestationEvidence>>? evidence;
  /// The time the compliance state should expire.
  final pulumi.Input<String>? expiresOn;
  /// Additional metadata for this attestation
  final pulumi.Input<dynamic>? metadata;
  /// The person responsible for setting the state of the resource. This value is typically an Azure Active Directory object ID.
  final pulumi.Input<String>? owner;
  /// The resource ID of the policy assignment that the attestation is setting the state for.
  final pulumi.Input<String> policyAssignmentId;
  /// The policy definition reference ID from a policy set definition that the attestation is setting the state for. If the policy assignment assigns a policy set definition the attestation can choose a definition within the set definition with this property or omit this and set the state for the entire set definition.
  final pulumi.Input<String>? policyDefinitionReferenceId;
  /// Resource ID.
  final pulumi.Input<String> resourceId;

  /// Creates a new [AttestationAtResourceArgs].
  /// [assessmentDate] The time the evidence was assessed
  /// [attestationName] The name of the attestation.
  /// [comments] Comments describing why this attestation was created.
  /// [complianceState] The compliance state that should be set on the resource.
  /// [evidence] The evidence supporting the compliance state set in this attestation.
  /// [expiresOn] The time the compliance state should expire.
  /// [metadata] Additional metadata for this attestation
  /// [owner] The person responsible for setting the state of the resource. This value is typically an Azure Active Directory object ID.
  /// [policyAssignmentId] The resource ID of the policy assignment that the attestation is setting the state for.
  /// [policyDefinitionReferenceId] The policy definition reference ID from a policy set definition that the attestation is setting the state for. If the policy assignment assigns a policy set definition the attestation can choose a definition within the set definition with this property or omit this and set the state for the entire set definition.
  /// [resourceId] Resource ID.
  AttestationAtResourceArgs({
    String? assessmentDate,
    String? attestationName,
    String? comments,
    String? complianceState,
    List<AttestationEvidence>? evidence,
    String? expiresOn,
    dynamic metadata,
    String? owner,
    required String policyAssignmentId,
    String? policyDefinitionReferenceId,
    required String resourceId,
  }) :
      assessmentDate = pulumi.Input.asOptionalInput<String>(assessmentDate),
      attestationName = pulumi.Input.asOptionalInput<String>(attestationName),
      comments = pulumi.Input.asOptionalInput<String>(comments),
      complianceState = pulumi.Input.asOptionalInput<String>(complianceState),
      evidence = pulumi.Input.asOptionalInput<List<AttestationEvidence>>(evidence),
      expiresOn = pulumi.Input.asOptionalInput<String>(expiresOn),
      metadata = pulumi.Input.asOptionalInput<dynamic>(metadata),
      owner = pulumi.Input.asOptionalInput<String>(owner),
      policyAssignmentId = pulumi.Input.asInput<String>(policyAssignmentId),
      policyDefinitionReferenceId = pulumi.Input.asOptionalInput<String>(policyDefinitionReferenceId),
      resourceId = pulumi.Input.asInput<String>(resourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentDate': ?assessmentDate,
      'attestationName': ?attestationName,
      'comments': ?comments,
      'complianceState': ?complianceState,
      'evidence': ?pulumi.Input.mapOptionalInputValue<List<AttestationEvidence>, List<Map<String, dynamic>>>(evidence, (value) => pulumi.Input.encodeList<AttestationEvidence, Map<String, dynamic>>(value, (value) => value.toMap())),
      'expiresOn': ?expiresOn,
      'metadata': ?metadata,
      'owner': ?owner,
      'policyAssignmentId': policyAssignmentId,
      'policyDefinitionReferenceId': ?policyDefinitionReferenceId,
      'resourceId': resourceId,
    };
  }

  factory AttestationAtResourceArgs.fromMap(Map<String, dynamic> map) {
    return AttestationAtResourceArgs(
      assessmentDate: map['assessmentDate'] == null ? null : map['assessmentDate'] as String,
      attestationName: map['attestationName'] == null ? null : map['attestationName'] as String,
      comments: map['comments'] == null ? null : map['comments'] as String,
      complianceState: map['complianceState'] == null ? null : map['complianceState'] as String,
      evidence: map['evidence'] == null ? null : pulumi.Input.decodeList<AttestationEvidence>(map['evidence'], (value) => AttestationEvidence.fromMap((value as Map).cast<String, dynamic>())),
      expiresOn: map['expiresOn'] == null ? null : map['expiresOn'] as String,
      metadata: map['metadata'] == null ? null : map['metadata'],
      owner: map['owner'] == null ? null : map['owner'] as String,
      policyAssignmentId: map['policyAssignmentId'] as String,
      policyDefinitionReferenceId: map['policyDefinitionReferenceId'] == null ? null : map['policyDefinitionReferenceId'] as String,
      resourceId: map['resourceId'] as String,
    );
  }
}

