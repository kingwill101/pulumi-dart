// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetStandardsControlAssociationsStandardsControlAssociation {
  /// Enablement status of a control in a specific standard.
  final pulumi.Input<String> associationStatus;
  /// List of underlying requirements in the compliance framework related to the standard.
  final pulumi.Input<List<String>> relatedRequirements;
  /// ARN of the security control.
  final pulumi.Input<String> securityControlArn;
  /// The identifier of the control (identified with `SecurityControlId`, `SecurityControlArn`, or a mix of both parameters).
  final pulumi.Input<String> securityControlId;
  /// ARN of the standard.
  final pulumi.Input<String> standardsArn;
  /// Description of the standard.
  final pulumi.Input<String> standardsControlDescription;
  /// Title of the standard.
  final pulumi.Input<String> standardsControlTitle;
  /// Last time that a control's enablement status in a specified standard was updated.
  final pulumi.Input<String> updatedAt;
  /// Reason for updating a control's enablement status in a specified standard.
  final pulumi.Input<String> updatedReason;

  /// Creates a new [GetStandardsControlAssociationsStandardsControlAssociation].
  /// [associationStatus] Enablement status of a control in a specific standard.
  /// [relatedRequirements] List of underlying requirements in the compliance framework related to the standard.
  /// [securityControlArn] ARN of the security control.
  /// [securityControlId] The identifier of the control (identified with `SecurityControlId`, `SecurityControlArn`, or a mix of both parameters).
  /// [standardsArn] ARN of the standard.
  /// [standardsControlDescription] Description of the standard.
  /// [standardsControlTitle] Title of the standard.
  /// [updatedAt] Last time that a control's enablement status in a specified standard was updated.
  /// [updatedReason] Reason for updating a control's enablement status in a specified standard.
  GetStandardsControlAssociationsStandardsControlAssociation({
    required this.associationStatus,
    required this.relatedRequirements,
    required this.securityControlArn,
    required this.securityControlId,
    required this.standardsArn,
    required this.standardsControlDescription,
    required this.standardsControlTitle,
    required this.updatedAt,
    required this.updatedReason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associationStatus': associationStatus,
      'relatedRequirements': relatedRequirements,
      'securityControlArn': securityControlArn,
      'securityControlId': securityControlId,
      'standardsArn': standardsArn,
      'standardsControlDescription': standardsControlDescription,
      'standardsControlTitle': standardsControlTitle,
      'updatedAt': updatedAt,
      'updatedReason': updatedReason,
    };
  }

  factory GetStandardsControlAssociationsStandardsControlAssociation.fromMap(Map<String, dynamic> map) {
    return GetStandardsControlAssociationsStandardsControlAssociation(
      associationStatus: (map['associationStatus'] as String).input(),
      relatedRequirements: ((map['relatedRequirements'] as List).cast<String>()).input(),
      securityControlArn: (map['securityControlArn'] as String).input(),
      securityControlId: (map['securityControlId'] as String).input(),
      standardsArn: (map['standardsArn'] as String).input(),
      standardsControlDescription: (map['standardsControlDescription'] as String).input(),
      standardsControlTitle: (map['standardsControlTitle'] as String).input(),
      updatedAt: (map['updatedAt'] as String).input(),
      updatedReason: (map['updatedReason'] as String).input(),
    );
  }
}

