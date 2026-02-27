// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for StandardsControlAssociation.
class StandardsControlAssociationArgs {
  /// The desired enablement status of the control in the standard. Valid values: `ENABLED`, `DISABLED`.
  final pulumi.Input<String> associationStatus;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The unique identifier for the security control whose enablement status you want to update.
  final pulumi.Input<String> securityControlId;

  /// The Amazon Resource Name (ARN) of the standard in which you want to update the control's enablement status.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> standardsArn;

  /// The reason for updating the control's enablement status in the standard. Required when `association_status` is `DISABLED`.
  final pulumi.Input<String>? updatedReason;

  StandardsControlAssociationArgs({
    required this.associationStatus,
    this.region,
    required this.securityControlId,
    required this.standardsArn,
    this.updatedReason,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['associationStatus'] = associationStatus;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['securityControlId'] = securityControlId;
    map['standardsArn'] = standardsArn;
    final updatedReasonValue = updatedReason;
    if (updatedReasonValue != null) {
      map['updatedReason'] = updatedReasonValue;
    }
    return map;
  }

  factory StandardsControlAssociationArgs.fromMap(Map<String, dynamic> map) {
    return StandardsControlAssociationArgs(
      associationStatus: pulumi.Input.asInput<String>(map['associationStatus']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      securityControlId: pulumi.Input.asInput<String>(map['securityControlId']),
      standardsArn: pulumi.Input.asInput<String>(map['standardsArn']),
      updatedReason: pulumi.Input.asOptionalInput<String>(map['updatedReason']),
    );
  }
}
