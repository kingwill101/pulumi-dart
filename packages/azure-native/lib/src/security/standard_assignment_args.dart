// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assigned_standard_item.dart';
import 'standard_assignment_properties_attestation_data.dart';
import 'standard_assignment_properties_exemption_data.dart';

/// {@template pulumi_security_standard_assignment_args_doc}
/// The set of arguments for StandardAssignment.
/// {@endtemplate}
/// {@macro pulumi_security_standard_assignment_args_doc}
class StandardAssignmentArgs {
  /// Standard item with key as applied to this standard assignment over the given scope
  final pulumi.Input<AssignedStandardItem>? assignedStandard;
  /// Additional data about assignment that has Attest effect
  final pulumi.Input<StandardAssignmentPropertiesAttestationData>? attestationData;
  /// Description of the standardAssignment
  final pulumi.Input<String>? description;
  /// Display name of the standardAssignment
  final pulumi.Input<String>? displayName;
  /// Expected effect of this assignment (Audit/Exempt/Attest)
  final pulumi.Input<String>? effect;
  /// Excluded scopes, filter out the descendants of the scope (on management scopes)
  final pulumi.Input<List<String>>? excludedScopes;
  /// Additional data about assignment that has Exempt effect
  final pulumi.Input<StandardAssignmentPropertiesExemptionData>? exemptionData;
  /// Expiration date of this assignment as a full ISO date
  final pulumi.Input<String>? expiresOn;
  /// The identifier of the resource.
  final pulumi.Input<String> resourceId;
  /// The standard assignments assignment key - unique key for the standard assignment
  final pulumi.Input<String>? standardAssignmentName;

  /// Creates a new [StandardAssignmentArgs].
  /// [assignedStandard] Standard item with key as applied to this standard assignment over the given scope
  /// [attestationData] Additional data about assignment that has Attest effect
  /// [description] Description of the standardAssignment
  /// [displayName] Display name of the standardAssignment
  /// [effect] Expected effect of this assignment (Audit/Exempt/Attest)
  /// [excludedScopes] Excluded scopes, filter out the descendants of the scope (on management scopes)
  /// [exemptionData] Additional data about assignment that has Exempt effect
  /// [expiresOn] Expiration date of this assignment as a full ISO date
  /// [resourceId] The identifier of the resource.
  /// [standardAssignmentName] The standard assignments assignment key - unique key for the standard assignment
  StandardAssignmentArgs({
    AssignedStandardItem? assignedStandard,
    StandardAssignmentPropertiesAttestationData? attestationData,
    String? description,
    String? displayName,
    String? effect,
    List<String>? excludedScopes,
    StandardAssignmentPropertiesExemptionData? exemptionData,
    String? expiresOn,
    required String resourceId,
    String? standardAssignmentName,
  }) :
      assignedStandard = pulumi.Input.asOptionalInput<AssignedStandardItem>(assignedStandard),
      attestationData = pulumi.Input.asOptionalInput<StandardAssignmentPropertiesAttestationData>(attestationData),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      effect = pulumi.Input.asOptionalInput<String>(effect),
      excludedScopes = pulumi.Input.asOptionalInput<List<String>>(excludedScopes),
      exemptionData = pulumi.Input.asOptionalInput<StandardAssignmentPropertiesExemptionData>(exemptionData),
      expiresOn = pulumi.Input.asOptionalInput<String>(expiresOn),
      resourceId = pulumi.Input.asInput<String>(resourceId),
      standardAssignmentName = pulumi.Input.asOptionalInput<String>(standardAssignmentName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignedStandard': ?pulumi.Input.mapOptionalInputValue<AssignedStandardItem, Map<String, dynamic>>(assignedStandard, (value) => value.toMap()),
      'attestationData': ?pulumi.Input.mapOptionalInputValue<StandardAssignmentPropertiesAttestationData, Map<String, dynamic>>(attestationData, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'effect': ?effect,
      'excludedScopes': ?excludedScopes,
      'exemptionData': ?pulumi.Input.mapOptionalInputValue<StandardAssignmentPropertiesExemptionData, Map<String, dynamic>>(exemptionData, (value) => value.toMap()),
      'expiresOn': ?expiresOn,
      'resourceId': resourceId,
      'standardAssignmentName': ?standardAssignmentName,
    };
  }

  factory StandardAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return StandardAssignmentArgs(
      assignedStandard: map['assignedStandard'] == null ? null : AssignedStandardItem.fromMap((map['assignedStandard'] as Map).cast<String, dynamic>()),
      attestationData: map['attestationData'] == null ? null : StandardAssignmentPropertiesAttestationData.fromMap((map['attestationData'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      effect: map['effect'] == null ? null : map['effect'] as String,
      excludedScopes: map['excludedScopes'] == null ? null : (map['excludedScopes'] as List).cast<String>(),
      exemptionData: map['exemptionData'] == null ? null : StandardAssignmentPropertiesExemptionData.fromMap((map['exemptionData'] as Map).cast<String, dynamic>()),
      expiresOn: map['expiresOn'] == null ? null : map['expiresOn'] as String,
      resourceId: map['resourceId'] as String,
      standardAssignmentName: map['standardAssignmentName'] == null ? null : map['standardAssignmentName'] as String,
    );
  }
}

